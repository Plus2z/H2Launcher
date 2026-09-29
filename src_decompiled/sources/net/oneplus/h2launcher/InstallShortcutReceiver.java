package net.oneplus.h2launcher;

import android.annotation.TargetApi;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Parcelable;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.compat.LauncherAppsCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.shortcuts.ShortcutInfoCompat;
import net.oneplus.h2launcher.util.Logger;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;

/* loaded from: classes.dex */
public class InstallShortcutReceiver extends BroadcastReceiver {
    private static final String ACTION_INSTALL_SHORTCUT = "com.android.launcher.action.INSTALL_SHORTCUT";
    private static final String APPS_PENDING_INSTALL = "apps_to_install";
    private static final String APP_SHORTCUT_TYPE_KEY = "isAppShortcut";
    private static final String APP_WIDGET_TYPE_KEY = "isAppWidget";
    private static final boolean DBG = false;
    private static final String DEEPSHORTCUT_TYPE_KEY = "isDeepShortcut";
    private static final int FLAG_GET_ALL = 11;
    private static final String ICON_KEY = "icon";
    private static final String ICON_RESOURCE_NAME_KEY = "iconResource";
    private static final String ICON_RESOURCE_PACKAGE_NAME_KEY = "iconResourcePackage";
    private static final String LAUNCH_INTENT_KEY = "intent.launch";
    private static final String NAME_KEY = "name";
    public static final int NEW_SHORTCUT_BOUNCE_DURATION = 450;
    public static final int NEW_SHORTCUT_STAGGER_DELAY = 85;
    private static final String TAG = "InstallShortcutReceiver";
    private static final String USER_HANDLE_KEY = "userHandle";
    private static final Object sLock = new Object();
    private static boolean mUseInstallQueue = false;

    private static void addToInstallQueue(SharedPreferences sharedPrefs, PendingInstallShortcutInfo info) {
        Set<String> strings;
        synchronized (sLock) {
            String encoded = info.encodeToString();
            if (encoded != null) {
                Set<String> strings2 = sharedPrefs.getStringSet(APPS_PENDING_INSTALL, null);
                if (strings2 == null) {
                    strings = new HashSet<>(1);
                } else {
                    strings = new HashSet<>(strings2);
                }
                strings.add(encoded);
                sharedPrefs.edit().putStringSet(APPS_PENDING_INSTALL, strings).apply();
            }
        }
    }

    public static void removeFromInstallQueue(Context context, ArrayList<String> packageNames, UserHandleCompat user) {
        if (!packageNames.isEmpty()) {
            String spKey = LauncherAppState.getSharedPreferencesKey();
            SharedPreferences sp = context.getSharedPreferences(spKey, 0);
            synchronized (sLock) {
                Set<String> strings = sp.getStringSet(APPS_PENDING_INSTALL, null);
                if (strings != null) {
                    Set<String> newStrings = new HashSet<>(strings);
                    Iterator<String> newStringsIter = newStrings.iterator();
                    while (newStringsIter.hasNext()) {
                        String encoded = newStringsIter.next();
                        PendingInstallShortcutInfo info = decode(encoded, context);
                        if (info == null || (packageNames.contains(info.getTargetPackage()) && user.equals(info.user))) {
                            newStringsIter.remove();
                        }
                    }
                    sp.edit().putStringSet(APPS_PENDING_INSTALL, newStrings).apply();
                }
            }
        }
    }

    private static ArrayList<PendingInstallShortcutInfo> getAndClearInstallQueue(SharedPreferences sharedPrefs, Context context) {
        ArrayList<PendingInstallShortcutInfo> infos;
        synchronized (sLock) {
            Set<String> strings = sharedPrefs.getStringSet(APPS_PENDING_INSTALL, null);
            if (strings == null) {
                infos = new ArrayList<>();
            } else {
                infos = new ArrayList<>();
                for (String encoded : strings) {
                    PendingInstallShortcutInfo info = decode(encoded, context);
                    if (info != null) {
                        infos.add(info);
                    }
                }
                sharedPrefs.edit().putStringSet(APPS_PENDING_INSTALL, new HashSet()).apply();
            }
        }
        return infos;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent data) {
        if (ACTION_INSTALL_SHORTCUT.equals(data.getAction())) {
            PendingInstallShortcutInfo info = createPendingInfo(context, data);
            StyleManager.init(context);
            if ((info == null || !StyleManager.getInstance().disallowSameIconOnDesktop() || !LauncherModel.haveSameItemOnDesktop(context, info.launchIntent.getComponent()) || info.getShortcutInfo().itemType != 0) && info != null) {
                queuePendingShortcutInfo(info, context);
            }
        }
    }

    private static boolean isValidExtraType(Intent intent, String key, Class type) {
        Parcelable extra = intent.getParcelableExtra(key);
        return extra == null || type.isInstance(extra);
    }

    private static PendingInstallShortcutInfo createPendingInfo(Context context, Intent data) {
        if (!isValidExtraType(data, "android.intent.extra.shortcut.INTENT", Intent.class) || !isValidExtraType(data, "android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.class) || !isValidExtraType(data, "android.intent.extra.shortcut.ICON", Bitmap.class)) {
            Logger.e(TAG, "Invalid install shortcut intent");
            return null;
        }
        PendingInstallShortcutInfo info = new PendingInstallShortcutInfo(data, context);
        if (info.launchIntent == null || info.label == null) {
            Logger.e(TAG, "Invalid install shortcut intent");
            return null;
        }
        return convertToLauncherActivityIfPossible(info);
    }

    public static ShortcutInfo fromShortcutIntent(Context context, Intent data) {
        PendingInstallShortcutInfo info = createPendingInfo(context, data);
        if (info == null) {
            return null;
        }
        return (ShortcutInfo) info.getItemInfo();
    }

    public static void queueShortcut(ShortcutInfoCompat info, Context context) {
        queuePendingShortcutInfo(new PendingInstallShortcutInfo(info, context), context);
    }

    public static void queueWidget(AppWidgetProviderInfo info, int widgetId, Context context) {
        queuePendingShortcutInfo(new PendingInstallShortcutInfo(info, widgetId, context), context);
    }

    private static void queuePendingShortcutInfo(PendingInstallShortcutInfo info, Context context) {
        LauncherAppState app = LauncherAppState.getInstance();
        boolean launcherNotLoaded = app.getModel().getCallback() == null;
        addToInstallQueue(Utilities.getPrefs(context), info);
        if (!mUseInstallQueue && !launcherNotLoaded) {
            flushInstallQueue(context);
        }
    }

    public static void queueActivityInfo(LauncherActivityInfoCompat activity, Context context) {
        queuePendingShortcutInfo(new PendingInstallShortcutInfo(activity, context), context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void enableInstallQueue() {
        mUseInstallQueue = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void disableAndFlushInstallQueue(Context context) {
        mUseInstallQueue = false;
        flushInstallQueue(context);
    }

    static void flushInstallQueue(Context context) {
        String spKey = LauncherAppState.getSharedPreferencesKey();
        SharedPreferences sp = context.getSharedPreferences(spKey, 0);
        ArrayList<PendingInstallShortcutInfo> installQueue = getAndClearInstallQueue(sp, context);
        if (!installQueue.isEmpty()) {
            Iterator<PendingInstallShortcutInfo> iter = installQueue.iterator();
            ArrayList<ItemInfo> addShortcuts = new ArrayList<>();
            while (iter.hasNext()) {
                PendingInstallShortcutInfo pendingInfo = iter.next();
                Intent intent = pendingInfo.launchIntent;
                String packageName = pendingInfo.getTargetPackage();
                if (!TextUtils.isEmpty(packageName)) {
                    UserHandleCompat myUserHandle = UserHandleCompat.myUserHandle();
                    if (LauncherModel.isValidPackage(context, packageName, myUserHandle)) {
                    }
                }
                ItemInfo info = pendingInfo.getItemInfo();
                if (info instanceof ShortcutInfo) {
                    ShortcutInfo shortcutInfo = (ShortcutInfo) info;
                    if (info.itemType == 0 && !isExistAppComponent(context, shortcutInfo.getTargetComponent())) {
                        shortcutInfo.itemType = 1;
                        shortcutInfo.flags = 0;
                        shortcutInfo.mForceUseAppResource = true;
                        shortcutInfo.updateIconForApplicationShortcutCreate(LauncherAppState.getInstance().getAssetCache(), false);
                        Logger.d(TAG, "install shortcut but can't find app, transfer its itemType to shortcut " + info);
                    }
                }
                addShortcuts.add(info);
            }
            if (!addShortcuts.isEmpty()) {
                LauncherAppState app = LauncherAppState.getInstance();
                app.getModel().addAndBindAddedWorkspaceItems(context, addShortcuts);
                return;
            }
            return;
        }
        Logger.d(TAG, "flushInstallQueue: installQueue isEmpty ");
    }

    static boolean isExistAppComponent(Context context, ComponentName component) {
        List<LauncherActivityInfoCompat> apps = LauncherAppsCompat.getInstance(context).getActivityList(null, UserHandleCompat.myUserHandle());
        if (apps == null || apps.isEmpty()) {
            return false;
        }
        for (int i = 0; i < apps.size(); i++) {
            LauncherActivityInfoCompat app = apps.get(i);
            ComponentName appComponent = app.getComponentName();
            if (appComponent != null && appComponent.equals(component)) {
                return true;
            }
        }
        return false;
    }

    static CharSequence ensureValidName(Context context, Intent intent, CharSequence name) {
        if (name == null) {
            try {
                PackageManager pm = context.getPackageManager();
                ActivityInfo info = pm.getActivityInfo(intent.getComponent(), 0);
                name = info.loadLabel(pm);
            } catch (PackageManager.NameNotFoundException e) {
                return "";
            }
        }
        return name;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class PendingInstallShortcutInfo {
        final LauncherActivityInfoCompat activityInfo;
        final Intent data;
        final String label;
        final Intent launchIntent;
        final Context mContext;
        final AppWidgetProviderInfo providerInfo;
        final ShortcutInfoCompat shortcutInfo;
        final UserHandleCompat user;

        public PendingInstallShortcutInfo(Intent data, Context context) {
            this.data = data;
            this.mContext = context;
            this.launchIntent = (Intent) data.getParcelableExtra("android.intent.extra.shortcut.INTENT");
            this.label = data.getStringExtra("android.intent.extra.shortcut.NAME");
            this.user = UserHandleCompat.myUserHandle();
            this.activityInfo = null;
            this.shortcutInfo = null;
            this.providerInfo = null;
        }

        public PendingInstallShortcutInfo(LauncherActivityInfoCompat info, Context context) {
            this.data = null;
            this.mContext = context;
            this.activityInfo = info;
            this.shortcutInfo = null;
            this.providerInfo = null;
            this.user = info.getUser();
            this.launchIntent = AppInfo.makeLaunchIntent(context, info, this.user);
            this.label = info.getLabel().toString();
        }

        public PendingInstallShortcutInfo(ShortcutInfoCompat info, Context context) {
            this.activityInfo = null;
            this.shortcutInfo = info;
            this.providerInfo = null;
            this.data = null;
            this.mContext = context;
            this.user = info.getUserHandle();
            this.launchIntent = info.makeIntent(context);
            this.label = info.getShortLabel().toString();
        }

        public PendingInstallShortcutInfo(AppWidgetProviderInfo info, int widgetId, Context context) {
            this.activityInfo = null;
            this.shortcutInfo = null;
            this.providerInfo = info;
            this.data = null;
            this.mContext = context;
            this.user = UserHandleCompat.fromUser(info.getProfile());
            this.launchIntent = new Intent().setComponent(info.provider).putExtra(LauncherSettings.Favorites.APPWIDGET_ID, widgetId);
            this.label = info.label;
        }

        public String encodeToString() {
            if (this.activityInfo != null) {
                try {
                    return new JSONStringer().object().key(InstallShortcutReceiver.LAUNCH_INTENT_KEY).value(this.launchIntent.toUri(0)).key(InstallShortcutReceiver.APP_SHORTCUT_TYPE_KEY).value(true).key(InstallShortcutReceiver.USER_HANDLE_KEY).value(UserManagerCompat.getInstance(this.mContext).getSerialNumberForUser(this.user)).endObject().toString();
                } catch (JSONException e) {
                    Log.d(InstallShortcutReceiver.TAG, "Exception when adding shortcut: " + e);
                    return null;
                }
            }
            if (this.shortcutInfo != null) {
                try {
                    return new JSONStringer().object().key(InstallShortcutReceiver.LAUNCH_INTENT_KEY).value(this.launchIntent.toUri(0)).key(InstallShortcutReceiver.USER_HANDLE_KEY).value(UserManagerCompat.getInstance(this.mContext).getSerialNumberForUser(this.user)).endObject().toString();
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            } else if (this.providerInfo != null) {
                try {
                    return new JSONStringer().object().key(InstallShortcutReceiver.LAUNCH_INTENT_KEY).value(this.launchIntent.toUri(0)).key(InstallShortcutReceiver.APP_WIDGET_TYPE_KEY).value(true).key(InstallShortcutReceiver.USER_HANDLE_KEY).value(UserManagerCompat.getInstance(this.mContext).getSerialNumberForUser(this.user)).endObject().toString();
                } catch (JSONException e3) {
                    e3.printStackTrace();
                }
            }
            if (this.launchIntent.getAction() == null) {
                this.launchIntent.setAction("android.intent.action.VIEW");
            } else if (this.launchIntent.getAction().equals("android.intent.action.MAIN") && this.launchIntent.getCategories() != null && this.launchIntent.getCategories().contains("android.intent.category.LAUNCHER")) {
                this.launchIntent.addFlags(270532608);
            }
            String name = InstallShortcutReceiver.ensureValidName(this.mContext, this.launchIntent, this.label).toString();
            Bitmap icon = (Bitmap) this.data.getParcelableExtra("android.intent.extra.shortcut.ICON");
            Intent.ShortcutIconResource iconResource = (Intent.ShortcutIconResource) this.data.getParcelableExtra("android.intent.extra.shortcut.ICON_RESOURCE");
            try {
                JSONStringer json = new JSONStringer().object().key(InstallShortcutReceiver.LAUNCH_INTENT_KEY).value(this.launchIntent.toUri(0)).key("name").value(name);
                if (icon != null) {
                    byte[] iconByteArray = Utilities.flattenBitmap(icon);
                    json = json.key("icon").value(Base64.encodeToString(iconByteArray, 0, iconByteArray.length, 0));
                }
                if (iconResource != null) {
                    json = json.key("iconResource").value(iconResource.resourceName).key(InstallShortcutReceiver.ICON_RESOURCE_PACKAGE_NAME_KEY).value(iconResource.packageName);
                }
                return json.endObject().toString();
            } catch (JSONException e4) {
                Log.d(InstallShortcutReceiver.TAG, "Exception when adding shortcut: " + e4);
                return null;
            }
        }

        public ShortcutInfo getShortcutInfo() {
            return this.activityInfo != null ? ShortcutInfo.fromActivityInfo(this.activityInfo, this.mContext) : LauncherAppState.getInstance().getModel().infoFromShortcutIntent(this.mContext, this.data);
        }

        public String getTargetPackage() {
            String packageName = this.launchIntent.getPackage();
            if (packageName == null) {
                if (this.launchIntent.getComponent() == null) {
                    return null;
                }
                return this.launchIntent.getComponent().getPackageName();
            }
            return packageName;
        }

        public ItemInfo getItemInfo() {
            if (this.activityInfo != null) {
                return new ShortcutInfo(this.activityInfo, this.mContext);
            }
            if (this.shortcutInfo != null) {
                ShortcutInfo si = new ShortcutInfo(this.shortcutInfo, this.mContext);
                si.iconBitmap = Utilities.createShortcutIcon(this.shortcutInfo, this.mContext);
                return si;
            }
            if (this.providerInfo == null) {
                return InstallShortcutReceiver.createShortcutInfo(this.data, LauncherAppState.getInstance());
            }
            LauncherAppWidgetProviderInfo info = LauncherAppWidgetProviderInfo.fromProviderInfo(this.mContext, this.providerInfo);
            LauncherAppWidgetInfo widgetInfo = new LauncherAppWidgetInfo(this.launchIntent.getIntExtra(LauncherSettings.Favorites.APPWIDGET_ID, 0), info.provider);
            InvariantDeviceProfile idp = LauncherAppState.getInstance().getInvariantDeviceProfile();
            widgetInfo.minSpanX = info.minSpanX;
            widgetInfo.minSpanY = info.minSpanY;
            widgetInfo.spanX = Math.min(info.spanX, idp.numColumns);
            widgetInfo.spanY = Math.min(info.spanY, idp.numRows);
            return widgetInfo;
        }

        public boolean isLuncherActivity() {
            return this.activityInfo != null;
        }
    }

    private static PendingInstallShortcutInfo decode(String encoded, Context context) {
        try {
            Decoder decoder = new Decoder(encoded, context);
            if (decoder.optBoolean(APP_SHORTCUT_TYPE_KEY)) {
                LauncherActivityInfoCompat info = LauncherAppsCompat.getInstance(context).resolveActivity(decoder.launcherIntent, decoder.user);
                if (info == null) {
                    return null;
                }
                return new PendingInstallShortcutInfo(info, context);
            }
            if (decoder.optBoolean(DEEPSHORTCUT_TYPE_KEY) || isDeepShortcutCategory(decoder)) {
                List<ShortcutInfoCompat> si = queryForFullDetails(context, decoder.launcherIntent.getPackage(), Arrays.asList(decoder.launcherIntent.getStringExtra(ShortcutInfoCompat.EXTRA_SHORTCUT_ID)), decoder.user.getUser());
                if (si.isEmpty()) {
                    return null;
                }
                return new PendingInstallShortcutInfo(si.get(0), context);
            }
            if (decoder.optBoolean(APP_WIDGET_TYPE_KEY)) {
                int widgetId = decoder.launcherIntent.getIntExtra(LauncherSettings.Favorites.APPWIDGET_ID, 0);
                AppWidgetProviderInfo info2 = AppWidgetManager.getInstance(context).getAppWidgetInfo(widgetId);
                if (info2 == null || !info2.provider.equals(decoder.launcherIntent.getComponent()) || !info2.getProfile().equals(decoder.user)) {
                    return null;
                }
                return new PendingInstallShortcutInfo(info2, widgetId, context);
            }
            Intent data = new Intent();
            data.putExtra("android.intent.extra.shortcut.INTENT", decoder.launcherIntent);
            data.putExtra("android.intent.extra.shortcut.NAME", decoder.getString("name"));
            String iconBase64 = decoder.optString("icon");
            String iconResourceName = decoder.optString("iconResource");
            String iconResourcePackageName = decoder.optString(ICON_RESOURCE_PACKAGE_NAME_KEY);
            if (iconBase64 != null && !iconBase64.isEmpty()) {
                byte[] iconArray = Base64.decode(iconBase64, 0);
                Bitmap b = BitmapFactory.decodeByteArray(iconArray, 0, iconArray.length);
                data.putExtra("android.intent.extra.shortcut.ICON", b);
            } else if (iconResourceName != null && !iconResourceName.isEmpty()) {
                Intent.ShortcutIconResource iconResource = new Intent.ShortcutIconResource();
                iconResource.resourceName = iconResourceName;
                iconResource.packageName = iconResourcePackageName;
                data.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", iconResource);
            }
            return new PendingInstallShortcutInfo(data, context);
        } catch (URISyntaxException e) {
            Log.d(TAG, "Exception reading shortcut to add: " + e);
            e.printStackTrace();
            return null;
        } catch (JSONException e2) {
            Log.d(TAG, "Exception reading shortcut to add: " + e2);
            e2.printStackTrace();
            return null;
        }
    }

    private static boolean isDeepShortcutCategory(Decoder decoder) {
        if (decoder == null) {
            Logger.w(TAG, "isDeepShortcutCategory: decoder is null");
            return false;
        }
        if (decoder.launcherIntent == null) {
            Logger.w(TAG, "isDeepShortcutCategory: launcherIntent is null");
            return false;
        }
        Set<String> categories = decoder.launcherIntent.getCategories();
        if (categories == null) {
            Logger.w(TAG, "isDeepShortcutCategory: categories is null");
            return false;
        }
        return categories.contains(ShortcutInfoCompat.INTENT_CATEGORY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Decoder extends JSONObject {
        public final Intent launcherIntent;
        public final UserHandleCompat user;

        private Decoder(String encoded, Context context) throws JSONException, URISyntaxException {
            super(encoded);
            UserHandleCompat myUserHandle;
            this.launcherIntent = Intent.parseUri(getString(InstallShortcutReceiver.LAUNCH_INTENT_KEY), 0);
            if (has(InstallShortcutReceiver.USER_HANDLE_KEY)) {
                myUserHandle = UserManagerCompat.getInstance(context).getUserForSerialNumber(getLong(InstallShortcutReceiver.USER_HANDLE_KEY));
            } else {
                myUserHandle = UserHandleCompat.myUserHandle();
            }
            this.user = myUserHandle;
            if (this.user == null) {
                throw new JSONException("Invalid user");
            }
        }
    }

    public static List<ShortcutInfoCompat> queryForFullDetails(Context context, String packageName, List<String> shortcutIds, UserHandle user) {
        return query(context, 11, packageName, null, shortcutIds, user);
    }

    @TargetApi(25)
    private static List<ShortcutInfoCompat> query(Context context, int flags, String packageName, ComponentName activity, List<String> shortcutIds, UserHandle user) {
        if (Utilities.ATLEAST_ANDROID_N_MR1) {
            LauncherApps.ShortcutQuery q = new LauncherApps.ShortcutQuery();
            q.setQueryFlags(flags);
            if (packageName != null) {
                q.setPackage(packageName);
                q.setActivity(activity);
                q.setShortcutIds(shortcutIds);
            }
            List<android.content.pm.ShortcutInfo> shortcutInfos = null;
            try {
                LauncherApps launcherApps = (LauncherApps) context.getSystemService("launcherapps");
                shortcutInfos = launcherApps.getShortcuts(q, user);
            } catch (IllegalStateException | SecurityException e) {
                Log.e(TAG, "Failed to query for shortcuts", e);
            }
            if (shortcutInfos == null) {
                return Collections.EMPTY_LIST;
            }
            List<ShortcutInfoCompat> shortcutInfoCompats = new ArrayList<>(shortcutInfos.size());
            for (android.content.pm.ShortcutInfo shortcutInfo : shortcutInfos) {
                shortcutInfoCompats.add(new ShortcutInfoCompat(shortcutInfo));
            }
            return shortcutInfoCompats;
        }
        return Collections.EMPTY_LIST;
    }

    private static PendingInstallShortcutInfo convertToLauncherActivityIfPossible(PendingInstallShortcutInfo original) {
        if (!original.isLuncherActivity() && Utilities.isLauncherAppTarget(original.launchIntent) && original.user.equals(UserHandleCompat.myUserHandle())) {
            PackageManager pm = original.mContext.getPackageManager();
            ResolveInfo info = pm.resolveActivity(original.launchIntent, 0);
            if (info != null) {
                LauncherActivityInfoCompat launcherInfo = LauncherActivityInfoCompat.fromResolveInfo(info, original.mContext);
                return new PendingInstallShortcutInfo(launcherInfo, original.mContext);
            }
            return original;
        }
        return original;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ShortcutInfo createShortcutInfo(Intent data, LauncherAppState app) {
        Intent intent = (Intent) data.getParcelableExtra("android.intent.extra.shortcut.INTENT");
        String name = data.getStringExtra("android.intent.extra.shortcut.NAME");
        Parcelable bitmap = data.getParcelableExtra("android.intent.extra.shortcut.ICON");
        if (intent == null) {
            Log.e(TAG, "Can't construct ShorcutInfo with null intent");
            return null;
        }
        ShortcutInfo info = new ShortcutInfo();
        info.user = UserHandleCompat.myUserHandle();
        if (bitmap instanceof Bitmap) {
            info.iconBitmap = Utilities.createIconBitmap((Bitmap) bitmap, app.getContext());
        } else {
            Parcelable extra = data.getParcelableExtra("android.intent.extra.shortcut.ICON_RESOURCE");
            if (extra instanceof Intent.ShortcutIconResource) {
                info.iconResource = (Intent.ShortcutIconResource) extra;
                info.iconBitmap = Utilities.createIconBitmap(info.iconResource, app.getContext());
            }
        }
        if (info.iconBitmap == null) {
            info.iconBitmap = app.getAssetCache().getDefaultIcon(info.user);
        }
        info.mIcon = info.iconBitmap;
        info.title = Utilities.trim(name);
        info.contentDescription = UserManagerCompat.getInstance(app.getContext()).getBadgedLabelForUser(info.title, info.user);
        info.intent = intent;
        return info;
    }
}
