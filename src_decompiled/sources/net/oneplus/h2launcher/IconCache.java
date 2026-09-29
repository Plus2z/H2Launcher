package net.oneplus.h2launcher;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.PaintDrawable;
import android.graphics.drawable.VectorDrawable;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.Stack;
import net.oneplus.h2launcher.IconDBHelper;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.compat.LauncherAppsCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.config.CustomInfoHelper;
import net.oneplus.h2launcher.dynamicicon.DynamicIconManager;
import net.oneplus.h2launcher.model.PackageItemInfo;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.ComponentKey;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class IconCache {
    private static final boolean DEBUG = false;
    private static final int INITIAL_ICON_CACHE_CAPACITY = 50;
    private static final int LOW_RES_SCALE_FACTOR = 5;
    private static final String TAG = "Launcher.IconCache";
    private final int mActivityBgColor;
    private final AssetCache mAssetCache;
    private final Context mContext;
    private String mCurrentLocale;
    private final int mIconDpi;
    private Runnable mIconUpdateTask;
    private final LauncherAppsCompat mLauncherApps;
    private Bitmap mLowResBitmap;
    private Canvas mLowResCanvas;
    private final BitmapFactory.Options mLowResOptions;
    private Paint mLowResPaint;
    private final int mPackageBgColor;
    private final PackageManager mPackageManager;
    private Runnable mPreloadTask;
    final UserManagerCompat mUserManager;
    final Handler mWorkerHandler;
    static final Object ICON_UPDATE_TOKEN = new Object();
    static final Object PRELOAD_ICON_TOKEN = new Object();
    private static final CacheEntry EMPTY_ENTRY = new CacheEntry();
    private ArrayList<Runnable> mPreloadTaskQueue = new ArrayList<>();
    private final HashMap<UserHandleCompat, Bitmap> mDefaultIcons = new HashMap<>();
    final MainThreadExecutor mMainThreadExecutor = new MainThreadExecutor();
    private final HashMap<ComponentKey, CacheEntry> mOriginalCache = new HashMap<>(50);
    private final HashMap<ComponentKey, CacheEntry> mAssetPackCache = new HashMap<>(50);
    private final HashMap<ComponentKey, CacheEntry> mCustomIconCache = new HashMap<>(50);
    private final HashMap<ComponentKey, CacheEntry> mDynamicIconCache = new HashMap<>(50);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class CacheEntry {
        public Bitmap icon;
        public boolean isLowResIcon;
        public String locale;
        public CharSequence title = "";
        public CharSequence contentDescription = "";
        public String assetPackName = "";

        CacheEntry() {
        }
    }

    public IconCache(Context context, InvariantDeviceProfile inv, AssetCache assetCache) {
        this.mAssetCache = assetCache;
        this.mContext = context;
        this.mPackageManager = context.getPackageManager();
        this.mUserManager = UserManagerCompat.getInstance(this.mContext);
        this.mLauncherApps = LauncherAppsCompat.getInstance(this.mContext);
        updateCurrentLocale();
        this.mIconDpi = inv.fillResIconDpi;
        this.mWorkerHandler = new Handler(LauncherModel.getWorkerLooper());
        this.mActivityBgColor = context.getResources().getColor(R.color.quantum_panel_bg_color);
        this.mPackageBgColor = context.getResources().getColor(R.color.quantum_panel_bg_color_dark);
        this.mLowResOptions = new BitmapFactory.Options();
        this.mLowResOptions.inPreferredConfig = Bitmap.Config.RGB_565;
    }

    public void updateCurrentLocale() {
        String newLocalString;
        if (Utilities.ATLEAST_ANDROID_N) {
            try {
                Class<?> localeListClass = Class.forName("android.os.LocaleList");
                Class[] emptyParameter = new Class[0];
                Method getDefaultMethod = localeListClass.getMethod("getDefault", emptyParameter);
                Object localeListObject = getDefaultMethod.invoke(null, new Object[0]);
                Method toStringMethod = localeListClass.getMethod("toString", emptyParameter);
                newLocalString = (String) toStringMethod.invoke(localeListObject, new Object[0]);
            } catch (Exception e) {
                Logger.w(TAG, "getLocalList fail, using locale, message = " + e.getMessage());
                newLocalString = Locale.getDefault().toString();
            }
        } else {
            newLocalString = Locale.getDefault().toString();
        }
        if (!newLocalString.equals(this.mCurrentLocale) || this.mCurrentLocale == null) {
            Logger.d(TAG, "updateNowLocaleString from " + this.mCurrentLocale + " to " + newLocalString);
            this.mCurrentLocale = newLocalString;
        }
    }

    public void checkAndPreloadAllTask() {
        if (!this.mAssetCache.isPreloadCache(IconCache.class)) {
            this.mWorkerHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.IconCache.1
                @Override // java.lang.Runnable
                public void run() {
                    IconCache.this.preloadAllAssetPackTask();
                    IconCache.this.mAssetCache.setPreloadCache(IconCache.class, true);
                }
            });
        }
    }

    private Drawable getFullResDefaultActivityIcon() {
        return getFullResIcon(Resources.getSystem(), android.R.mipmap.sym_def_app_icon);
    }

    private Drawable getFullResIcon(Resources resources, int iconId) {
        Drawable d;
        try {
            d = resources.getDrawableForDensity(iconId, this.mIconDpi);
        } catch (Resources.NotFoundException e) {
            d = null;
        }
        if (d != null) {
            return d;
        }
        Drawable d2 = getFullResDefaultActivityIcon();
        return d2;
    }

    public Drawable getFullResIcon(String packageName, int iconId) {
        Resources resources;
        try {
            resources = this.mPackageManager.getResourcesForApplication(packageName);
        } catch (PackageManager.NameNotFoundException e) {
            resources = null;
        }
        if (resources != null && iconId != 0) {
            return getFullResIcon(resources, iconId);
        }
        return getFullResDefaultActivityIcon();
    }

    public Drawable getFullResIcon(ActivityInfo info) {
        Resources resources;
        int iconId;
        try {
            resources = this.mPackageManager.getResourcesForApplication(info.applicationInfo);
        } catch (PackageManager.NameNotFoundException e) {
            resources = null;
        }
        if (resources != null && (iconId = info.getIconResource()) != 0) {
            return getFullResIcon(resources, iconId);
        }
        return getFullResDefaultActivityIcon();
    }

    private Bitmap makeDefaultIcon(UserHandleCompat user) {
        Drawable unbadged = getFullResDefaultActivityIcon();
        Drawable d = this.mUserManager.getBadgedDrawableForUser(unbadged, user);
        Bitmap b = Bitmap.createBitmap(Math.max(d.getIntrinsicWidth(), 1), Math.max(d.getIntrinsicHeight(), 1), Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(b);
        d.setBounds(0, 0, b.getWidth(), b.getHeight());
        d.draw(c);
        c.setBitmap(null);
        return b;
    }

    public void remove(ComponentName componentName, UserHandleCompat user) {
        remove(componentName, user, 3);
    }

    public synchronized void remove(ComponentName componentName, UserHandleCompat user, int cacheType) {
        if ((cacheType & 1) != 0) {
            this.mOriginalCache.remove(new ComponentKey(componentName, user));
        }
        if ((cacheType & 2) != 0) {
            this.mAssetPackCache.remove(new ComponentKey(componentName, user));
        }
        if ((cacheType & 8) != 0) {
            this.mCustomIconCache.remove(new ComponentKey(componentName, user));
        }
        if ((cacheType & 16) != 0) {
            this.mDynamicIconCache.remove(new ComponentKey(componentName, user));
        }
    }

    public void removeFromMemCacheLocked(String packageName, UserHandleCompat user, int cacheType) {
        if ((cacheType & 1) != 0) {
            removeFromMemCacheLocked(packageName, user, this.mOriginalCache);
        }
        if ((cacheType & 2) != 0) {
            removeFromMemCacheLocked(packageName, user, this.mAssetPackCache);
        }
        if ((cacheType & 8) != 0) {
            removeFromMemCacheLocked(packageName, user, this.mCustomIconCache);
        }
        if ((cacheType & 16) != 0) {
            removeFromMemCacheLocked(packageName, user, this.mDynamicIconCache);
        }
    }

    private void removeFromMemCacheLocked(String packageName, UserHandleCompat user, HashMap<ComponentKey, CacheEntry> cache) {
        HashSet<ComponentKey> forDeletion = new HashSet<>();
        for (ComponentKey key : cache.keySet()) {
            if (key.componentName.getPackageName().equals(packageName) && key.user.equals(user)) {
                forDeletion.add(key);
            }
        }
        Iterator<ComponentKey> it = forDeletion.iterator();
        while (it.hasNext()) {
            ComponentKey condemned = it.next();
            cache.remove(condemned);
        }
    }

    public void updateIconsForPkg(String packageName, UserHandleCompat user) {
        updateIconsForPkg(packageName, user, false);
    }

    public synchronized void updateIconsForPkg(String packageName, UserHandleCompat user, boolean resetToDefault) {
        removeIconForPackageUpdate(packageName, user);
        try {
            PackageInfo info = this.mPackageManager.getPackageInfo(packageName, 8192);
            long userSerial = this.mUserManager.getSerialNumberForUser(user);
            String currentAssetPackName = this.mAssetCache.getCurrentAssetPackName();
            if (!AssetCache.ASSET_PACK_NAME_NONE.equals(currentAssetPackName) && !"SYSTEM_DEFAULT_ICONS".equals(currentAssetPackName)) {
                for (LauncherActivityInfoCompat app : this.mLauncherApps.getActivityList(packageName, user)) {
                    addIconToDBAndMemCache(app, info, this.mAssetCache.getCurrentAssetPackName(), userSerial);
                }
            }
            for (LauncherActivityInfoCompat app2 : this.mLauncherApps.getActivityList(packageName, user)) {
                addIconToDBAndMemCache(app2, info, AssetCache.ASSET_PACK_NAME_NONE, userSerial);
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.d(TAG, "Package not found", e);
        }
    }

    public void updateIconsForComponentName(ComponentName componentName, UserHandleCompat user) {
        updateIconsForComponentName(componentName, user, false);
    }

    public synchronized void updateIconsForComponentName(ComponentName componentName, UserHandleCompat user, boolean resetToDefault) {
        remove(componentName, user, 11);
        try {
            PackageInfo info = this.mPackageManager.getPackageInfo(componentName.getPackageName(), 8192);
            long userSerial = this.mUserManager.getSerialNumberForUser(user);
            String currentAssetPackName = this.mAssetCache.getCurrentAssetPackName();
            if (!AssetCache.ASSET_PACK_NAME_NONE.equals(currentAssetPackName) && !"SYSTEM_DEFAULT_ICONS".equals(currentAssetPackName)) {
                for (LauncherActivityInfoCompat app : this.mLauncherApps.getActivityList(componentName.getPackageName(), user)) {
                    if (componentName.flattenToString().equals(app.getComponentName().flattenToString())) {
                        addIconToDBAndMemCache(app, info, this.mAssetCache.getCurrentAssetPackName(), userSerial);
                    }
                }
            }
            for (LauncherActivityInfoCompat app2 : this.mLauncherApps.getActivityList(componentName.getPackageName(), user)) {
                if (componentName.flattenToString().equals(app2.getComponentName().flattenToString())) {
                    addIconToDBAndMemCache(app2, info, AssetCache.ASSET_PACK_NAME_NONE, userSerial);
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.d(TAG, "Package not found", e);
        }
    }

    public synchronized void flush(int cacheType) {
        if ((cacheType & 1) != 0) {
            this.mOriginalCache.clear();
        }
        if ((cacheType & 2) != 0) {
            this.mAssetPackCache.clear();
        }
        if ((cacheType & 16) != 0) {
            this.mDynamicIconCache.clear();
        }
    }

    public synchronized void changeAssetPack() {
        this.mAssetPackCache.clear();
    }

    public synchronized void updateDbIconsForIconPackChanged() {
        HashSet<String> packagesToIgnore = new HashSet<>();
        Iterator<ItemInfo> it = LauncherModel.sBgItemsIdMap.iterator();
        while (it.hasNext()) {
            ItemInfo info = it.next();
            if (info instanceof ShortcutInfo) {
                ShortcutInfo si = (ShortcutInfo) info;
                if (si.isPromise() && si.getTargetComponent() != null) {
                    packagesToIgnore.add(si.getTargetComponent().getPackageName());
                }
            } else if (info instanceof LauncherAppWidgetInfo) {
                LauncherAppWidgetInfo lawi = (LauncherAppWidgetInfo) info;
                if (lawi.hasRestoreFlag(2)) {
                    packagesToIgnore.add(lawi.providerName.getPackageName());
                }
            }
        }
        updateDbIcons(packagesToIgnore);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void flushAssetPackIcon(String assetPackName) {
        if (assetPackName != null) {
            if (assetPackName.equals(this.mAssetCache.getCurrentAssetPackName())) {
                this.mAssetPackCache.clear();
            }
            String[] args = {assetPackName};
            this.mContext.getContentResolver().delete(IconProvider.ICON_URI, "assetPackName = ?", args);
        }
    }

    public void addPreloadAssetPackTask(String assetPackName) {
        if (!"SYSTEM_DEFAULT_ICONS".equals(assetPackName)) {
            UserHandleCompat user = UserHandleCompat.myUserHandle();
            long userSerial = this.mUserManager.getSerialNumberForUser(user);
            PackageManager pm = this.mContext.getPackageManager();
            HashMap<String, PackageInfo> pkgInfoMap = new HashMap<>();
            for (PackageInfo info : pm.getInstalledPackages(8192)) {
                pkgInfoMap.put(info.packageName, info);
            }
            List<LauncherActivityInfoCompat> apps = this.mLauncherApps.getActivityList(null, user);
            HashMap<ComponentName, LauncherActivityInfoCompat> componentMap = new HashMap<>();
            for (LauncherActivityInfoCompat app : apps) {
                componentMap.put(app.getComponentName(), app);
            }
            if (!componentMap.isEmpty()) {
                Stack<LauncherActivityInfoCompat> appsToAdd = new Stack<>();
                appsToAdd.addAll(componentMap.values());
                PreloadIconTask task = new PreloadIconTask(assetPackName, userSerial, pkgInfoMap, appsToAdd);
                this.mPreloadTaskQueue.add(task);
                this.mWorkerHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.IconCache.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (IconCache.this.mPreloadTask == null) {
                            IconCache.this.mPreloadTask = (Runnable) IconCache.this.mPreloadTaskQueue.remove(0);
                            ((PreloadIconTask) IconCache.this.mPreloadTask).scheduleNext();
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean needReloadAssetPack(String packageName) {
        if ("SYSTEM_DEFAULT_ICONS".equals(packageName)) {
            return false;
        }
        Cursor c = this.mContext.getContentResolver().query(IconProvider.ASSET_PACK_URI, null, "assetPackName = ?", new String[]{packageName}, null);
        PackageInfo info = null;
        try {
            info = this.mPackageManager.getPackageInfo(packageName, 8192);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        if (info == null) {
            return false;
        }
        if (c.getCount() <= 0 || !c.moveToFirst()) {
            return true;
        }
        int version = c.getInt(c.getColumnIndex("version"));
        long lastUpdateTime = c.getLong(c.getColumnIndex("lastUpdated"));
        return info.versionCode > version || info.lastUpdateTime > lastUpdateTime;
    }

    public void preloadAllAssetPackTask() {
        this.mWorkerHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.IconCache.3
            @Override // java.lang.Runnable
            public void run() {
                IconCache.this.addPreloadAssetPackTask(AssetCache.ASSET_PACK_NAME_NONE);
                String currentAssetPackName = IconCache.this.mAssetCache.getCurrentAssetPackName();
                IconCache.this.addPreloadAssetPackTask(currentAssetPackName);
                CharSequence[][] assetPackArray = IconPackHelper.getIconPackList(IconCache.this.mContext, false);
                for (int i = 0; i < assetPackArray[1].length; i++) {
                    if (IconCache.this.needReloadAssetPack(String.valueOf(assetPackArray[1][i]))) {
                        IconCache.this.flushAssetPackIcon(String.valueOf(assetPackArray[1][i]));
                    }
                    IconCache.this.addPreloadAssetPackTask(String.valueOf(assetPackArray[1][i]));
                }
            }
        });
    }

    public synchronized void removeIconForPackageUpdate(String packageName, UserHandleCompat user) {
        removeFromMemCacheLocked(packageName, user, 11);
        long userSerial = this.mUserManager.getSerialNumberForUser(user);
        this.mContext.getContentResolver().delete(IconProvider.ICON_URI, "componentName LIKE ? AND profileId = ? AND iconType = ? ", new String[]{packageName + "/%", Long.toString(userSerial), String.valueOf(0)});
    }

    public void updateDbIcons(Set<String> ignorePackagesForMainUser) {
        UserHandleCompat user;
        List<LauncherActivityInfoCompat> apps;
        this.mWorkerHandler.removeCallbacksAndMessages(ICON_UPDATE_TOKEN);
        this.mIconUpdateTask = null;
        Iterator<UserHandleCompat> it = this.mUserManager.getUserProfiles().iterator();
        while (it.hasNext() && (apps = this.mLauncherApps.getActivityList(null, (user = it.next()))) != null && !apps.isEmpty()) {
            updateDBIcons(user, apps, UserHandleCompat.myUserHandle().equals(user) ? ignorePackagesForMainUser : Collections.emptySet());
        }
    }

    private void updateDBIcons(UserHandleCompat user, List<LauncherActivityInfoCompat> apps, Set<String> ignorePackages) {
        long userSerial = this.mUserManager.getSerialNumberForUser(user);
        PackageManager pm = this.mContext.getPackageManager();
        HashMap<String, PackageInfo> pkgInfoMap = new HashMap<>();
        for (PackageInfo info : pm.getInstalledPackages(8192)) {
            pkgInfoMap.put(info.packageName, info);
        }
        HashMap<ComponentName, LauncherActivityInfoCompat> componentMap = new HashMap<>();
        for (LauncherActivityInfoCompat app : apps) {
            componentMap.put(app.getComponentName(), app);
        }
        Cursor c = this.mContext.getContentResolver().query(IconProvider.ICON_URI, new String[]{"rowid", "componentName", "lastUpdated", "version"}, "profileId = ? AND assetPackName = ? AND iconType = ? ", new String[]{Long.toString(userSerial), AssetCache.ASSET_PACK_NAME_NONE, String.valueOf(0)}, null, null);
        int indexComponent = c.getColumnIndex("componentName");
        int indexLastUpdate = c.getColumnIndex("lastUpdated");
        int indexVersion = c.getColumnIndex("version");
        int rowIndex = c.getColumnIndex("rowid");
        HashSet<Integer> itemsToRemove = new HashSet<>();
        Stack<LauncherActivityInfoCompat> appsToUpdate = new Stack<>();
        while (c.moveToNext()) {
            String cn = c.getString(indexComponent);
            ComponentName component = ComponentName.unflattenFromString(cn);
            PackageInfo info2 = pkgInfoMap.get(component.getPackageName());
            if (info2 == null) {
                if (!ignorePackages.contains(component.getPackageName())) {
                    remove(component, user, 1);
                }
            } else if ((info2.applicationInfo.flags & 16777216) == 0) {
                long updateTime = c.getLong(indexLastUpdate);
                int version = c.getInt(indexVersion);
                LauncherActivityInfoCompat app2 = componentMap.remove(component);
                if (version != info2.versionCode || updateTime != info2.lastUpdateTime) {
                    if (app2 == null) {
                        remove(component, user, 1);
                        itemsToRemove.add(Integer.valueOf(c.getInt(rowIndex)));
                    } else {
                        appsToUpdate.add(app2);
                    }
                }
            }
        }
        c.close();
        if (!itemsToRemove.isEmpty()) {
            this.mContext.getContentResolver().delete(IconProvider.ICON_URI, Utilities.createDbSelectionQuery("rowid", itemsToRemove), null);
        }
        if (!componentMap.isEmpty() || !appsToUpdate.isEmpty()) {
            Stack<LauncherActivityInfoCompat> appsToAdd = new Stack<>();
            appsToAdd.addAll(componentMap.values());
            SerializedIconUpdateTask task = new SerializedIconUpdateTask(userSerial, pkgInfoMap, appsToAdd, appsToUpdate);
            this.mIconUpdateTask = task;
            task.scheduleNext();
        }
    }

    void addIconToDBAndMemCache(LauncherActivityInfoCompat app, PackageInfo info, String assetPackName, long userSerial) {
        ContentValues values = updateCacheAndGetContentValues(app, assetPackName, false);
        if (values != null) {
            addIconToDB(values, app.getComponentName(), assetPackName, info, userSerial);
        }
    }

    private void addIconToDB(ContentValues values, ComponentName key, String assetPackName, PackageInfo info, long userSerial) {
        values.put("componentName", key.flattenToString());
        values.put("profileId", Long.valueOf(userSerial));
        values.put("lastUpdated", Long.valueOf(info.lastUpdateTime));
        values.put("version", Integer.valueOf(info.versionCode));
        values.put("assetPackName", assetPackName);
        int iconType = 2;
        if (AssetCache.ASSET_PACK_NAME_CUSTOM.equals(assetPackName)) {
            iconType = 3;
        } else if (AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
            iconType = 0;
        } else if (AssetCache.ASSET_PACK_NAME_DYNAMIC.equals(assetPackName)) {
            iconType = 4;
        }
        values.put("iconType", Integer.valueOf(iconType));
        this.mContext.getContentResolver().insert(IconProvider.ICON_URI, values);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x004c, code lost:
    
        if (getEntryFromDB(r3, net.oneplus.h2launcher.AssetCache.ASSET_PACK_NAME_CUSTOM, r0, false) != false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    android.content.ContentValues updateCacheAndGetContentValues(net.oneplus.h2launcher.compat.LauncherActivityInfoCompat r13, java.lang.String r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.IconCache.updateCacheAndGetContentValues(net.oneplus.h2launcher.compat.LauncherActivityInfoCompat, java.lang.String, boolean):android.content.ContentValues");
    }

    public IconLoadRequest updateIconInBackground(final BubbleTextView caller, final ItemInfo info) {
        Runnable request = new Runnable() { // from class: net.oneplus.h2launcher.IconCache.4
            @Override // java.lang.Runnable
            public void run() {
                if (info instanceof AppInfo) {
                    IconCache.this.getTitleAndIcon((AppInfo) info, null, false);
                } else if (info instanceof ShortcutInfo) {
                    ShortcutInfo st = (ShortcutInfo) info;
                    IconCache.this.getTitleAndIcon(st, st.promisedIntent != null ? st.promisedIntent : st.intent, st.user, false);
                } else if (info instanceof PackageItemInfo) {
                    PackageItemInfo pti = (PackageItemInfo) info;
                    IconCache.this.getTitleAndIconForApp(pti.packageName, pti.user, false, pti);
                }
                IconCache.this.mMainThreadExecutor.execute(new Runnable() { // from class: net.oneplus.h2launcher.IconCache.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        caller.reapplyItemInfo(info);
                    }
                });
            }
        };
        this.mWorkerHandler.post(request);
        return new IconLoadRequest(request, this.mWorkerHandler);
    }

    private Bitmap getNonNullIcon(CacheEntry entry, UserHandleCompat user) {
        return entry.icon == null ? getDefaultIcon(user) : entry.icon;
    }

    public synchronized void getTitleAndIcon(AppInfo application, LauncherActivityInfoCompat info, boolean useLowResIcon) {
        UserHandleCompat user = info == null ? application.user : info.getUser();
        String assetPackName = this.mAssetCache.getCurrentAssetPackName();
        CacheEntry entry = cacheLocked(application.componentName, info, user, AssetCache.ASSET_PACK_NAME_DYNAMIC, false, useLowResIcon);
        if (entry == null) {
            entry = cacheLocked(application.componentName, info, user, AssetCache.ASSET_PACK_NAME_CUSTOM, false, useLowResIcon);
        }
        if (entry == null && !AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
            entry = cacheLocked(application.componentName, info, user, assetPackName, false, useLowResIcon);
        }
        if (entry == null) {
            entry = cacheLocked(application.componentName, info, user, AssetCache.ASSET_PACK_NAME_NONE, false, useLowResIcon);
        }
        application.title = Utilities.trim(entry.title);
        application.iconBitmap = getNonNullIcon(entry, user);
        Logger.d(AssetCache.ASSET_PACK_TAG, application.componentName.flattenToString() + " iconBitmap = " + application.iconBitmap);
        application.contentDescription = entry.contentDescription;
        application.usingLowResIcon = entry.isLowResIcon;
    }

    public synchronized void updateTitleAndIcon(AppInfo application) {
        String assetPackName = this.mAssetCache.getCurrentAssetPackName();
        LauncherActivityInfoCompat info = null;
        if (application.componentName != null) {
            List<LauncherActivityInfoCompat> matches = this.mLauncherApps.getActivityList(application.componentName.getPackageName(), UserHandleCompat.myUserHandle());
            Iterator<LauncherActivityInfoCompat> infoCompatIterator = matches.iterator();
            while (true) {
                if (!infoCompatIterator.hasNext()) {
                    break;
                }
                LauncherActivityInfoCompat infoCompat = infoCompatIterator.next();
                if (infoCompat.getComponentName().equals(application.componentName)) {
                    info = infoCompat;
                    break;
                }
            }
        }
        CacheEntry entry = cacheLocked(application.componentName, info, application.user, AssetCache.ASSET_PACK_NAME_DYNAMIC, false, application.usingLowResIcon);
        if (entry == null) {
            entry = cacheLocked(application.componentName, info, application.user, AssetCache.ASSET_PACK_NAME_CUSTOM, false, application.usingLowResIcon);
        }
        if (entry == null && !AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
            entry = cacheLocked(application.componentName, info, application.user, assetPackName, false, application.usingLowResIcon);
        }
        if (entry == null) {
            entry = cacheLocked(application.componentName, info, application.user, AssetCache.ASSET_PACK_NAME_NONE, false, application.usingLowResIcon);
        }
        if (entry.icon != null && !isDefaultIcon(entry.icon, application.user)) {
            application.title = Utilities.trim(entry.title);
            application.iconBitmap = entry.icon;
            application.contentDescription = entry.contentDescription;
            application.usingLowResIcon = entry.isLowResIcon;
        }
    }

    public Bitmap getIcon(Intent intent, UserHandleCompat user) {
        return getIcon(intent, user, false);
    }

    public synchronized Bitmap getIcon(Intent intent, UserHandleCompat user, boolean ignoreCustomIcons) {
        Bitmap bitmap;
        ComponentName component = intent != null ? intent.getComponent() : null;
        if (component == null) {
            bitmap = getDefaultIcon(user);
        } else {
            LauncherActivityInfoCompat launcherActInfo = this.mLauncherApps.resolveActivity(intent, user);
            String assetPackName = this.mAssetCache.getCurrentAssetPackName();
            CacheEntry entry = cacheLocked(component, launcherActInfo, user, AssetCache.ASSET_PACK_NAME_DYNAMIC, true, false);
            if (entry == null && !ignoreCustomIcons) {
                entry = cacheLocked(component, launcherActInfo, user, AssetCache.ASSET_PACK_NAME_CUSTOM, true, false);
            }
            if (entry == null && !AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
                entry = cacheLocked(component, launcherActInfo, user, assetPackName, true, false);
            }
            if (entry == null) {
                entry = cacheLocked(component, launcherActInfo, user, AssetCache.ASSET_PACK_NAME_NONE, true, false);
            }
            bitmap = entry.icon;
        }
        return bitmap;
    }

    public Bitmap getIcon(ComponentName component, UserHandleCompat user) {
        return getIcon(component, user, false);
    }

    public synchronized Bitmap getIcon(ComponentName component, UserHandleCompat user, boolean ignoreCustomIcon) {
        Bitmap bitmap;
        bitmap = null;
        if (component != null) {
            Intent intent = new Intent();
            intent.setComponent(component);
            LauncherActivityInfoCompat launcherActInfo = this.mLauncherApps.resolveActivity(intent, user);
            if (launcherActInfo != null) {
                String assetPackName = this.mAssetCache.getCurrentAssetPackName();
                CacheEntry entry = cacheLocked(component, launcherActInfo, user, AssetCache.ASSET_PACK_NAME_DYNAMIC, true, false);
                if (entry == null && !ignoreCustomIcon) {
                    entry = cacheLocked(component, launcherActInfo, user, AssetCache.ASSET_PACK_NAME_CUSTOM, true, false);
                }
                if (entry == null && !AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
                    entry = cacheLocked(component, launcherActInfo, user, assetPackName, true, false);
                }
                if (entry == null) {
                    entry = cacheLocked(component, launcherActInfo, user, AssetCache.ASSET_PACK_NAME_NONE, true, false);
                }
                bitmap = entry.icon;
            }
        }
        return bitmap;
    }

    public synchronized String getTitle(Intent intent, UserHandleCompat user) {
        String str = null;
        synchronized (this) {
            ComponentName component = intent.getComponent();
            if (component != null) {
                LauncherActivityInfoCompat launcherActInfo = this.mLauncherApps.resolveActivity(intent, user);
                Cursor c = this.mContext.getContentResolver().query(IconProvider.CUSTOM_LABEL_URI, null, "componentName = ? ", new String[]{component.flattenToString()}, null);
                if (c != null && c.getCount() > 0 && c.moveToFirst()) {
                    str = c.getString(c.getColumnIndex("label"));
                } else {
                    CacheEntry entry = cacheLocked(component, launcherActInfo, user, AssetCache.ASSET_PACK_NAME_NONE, true, true);
                    str = entry.title.toString();
                }
            }
        }
        return str;
    }

    public synchronized void getTitleAndIcon(ShortcutInfo shortcutInfo, Intent intent, UserHandleCompat user, boolean useLowResIcon) {
        getTitleAndIcon(shortcutInfo, intent, user, useLowResIcon, false);
    }

    public synchronized void getTitleAndIcon(ShortcutInfo shortcutInfo, Intent intent, UserHandleCompat user, boolean useLowResIcon, boolean ignoreCache) {
        ComponentName component = null;
        if (intent != null) {
            component = intent.getComponent();
        } else {
            Logger.i(TAG, "invalid shortcut: %s", shortcutInfo.toString());
        }
        if (component == null) {
            shortcutInfo.setIcon(getDefaultIcon(user));
            shortcutInfo.title = "";
            shortcutInfo.usingFallbackIcon = true;
            shortcutInfo.usingLowResIcon = false;
        } else {
            LauncherActivityInfoCompat info = this.mLauncherApps.resolveActivity(intent, user);
            getTitleAndIcon(shortcutInfo, component, info, user, true, useLowResIcon, ignoreCache);
        }
    }

    public synchronized void getTitleAndIcon(ShortcutInfo shortcutInfo, ComponentName component, LauncherActivityInfoCompat info, UserHandleCompat user, boolean usePkgIcon, boolean useLowResIcon) {
        getTitleAndIcon(shortcutInfo, component, info, user, usePkgIcon, useLowResIcon, false);
    }

    public synchronized void getTitleAndIcon(ShortcutInfo shortcutInfo, ComponentName component, LauncherActivityInfoCompat info, UserHandleCompat user, boolean usePkgIcon, boolean useLowResIcon, boolean ignoreCache) {
        String assetPackName = this.mAssetCache.getCurrentAssetPackName();
        CacheEntry entry = cacheLocked(component, info, user, AssetCache.ASSET_PACK_NAME_DYNAMIC, usePkgIcon, useLowResIcon, ignoreCache);
        if (entry == null) {
            entry = cacheLocked(component, info, user, AssetCache.ASSET_PACK_NAME_CUSTOM, usePkgIcon, useLowResIcon, ignoreCache);
        }
        if (entry == null && !AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
            entry = cacheLocked(component, info, user, assetPackName, usePkgIcon, useLowResIcon, ignoreCache);
        }
        if (entry == null) {
            entry = cacheLocked(component, info, user, AssetCache.ASSET_PACK_NAME_NONE, usePkgIcon, useLowResIcon, ignoreCache);
        }
        Logger.d(AssetCache.ASSET_PACK_TAG, component.flattenToString() + " get icon entry = " + entry.icon + ", assetPack = " + assetPackName);
        shortcutInfo.setIcon(getNonNullIcon(entry, user));
        shortcutInfo.title = Utilities.trim(entry.title);
        shortcutInfo.usingFallbackIcon = isDefaultIcon(entry.icon, user);
        shortcutInfo.usingLowResIcon = entry.isLowResIcon;
    }

    public synchronized void getTitleAndIconForApp(String packageName, UserHandleCompat user, boolean useLowResIcon, PackageItemInfo infoOut) {
        String assetPackName = this.mAssetCache.getCurrentAssetPackName();
        CacheEntry entry = getEntryForPackageLocked(packageName, user, AssetCache.ASSET_PACK_NAME_DYNAMIC, useLowResIcon);
        if (entry == null) {
            entry = getEntryForPackageLocked(packageName, user, AssetCache.ASSET_PACK_NAME_CUSTOM, useLowResIcon);
        }
        if (entry == null && !AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
            entry = getEntryForPackageLocked(packageName, user, assetPackName, useLowResIcon);
        }
        if (entry == null) {
            entry = getEntryForPackageLocked(packageName, user, AssetCache.ASSET_PACK_NAME_NONE, useLowResIcon);
        }
        infoOut.iconBitmap = getNonNullIcon(entry, user);
        infoOut.title = Utilities.trim(entry.title);
        infoOut.usingLowResIcon = entry.isLowResIcon;
        infoOut.contentDescription = entry.contentDescription;
    }

    public synchronized Bitmap getDefaultIcon(UserHandleCompat user) {
        if (!this.mDefaultIcons.containsKey(user)) {
            this.mDefaultIcons.put(user, makeDefaultIcon(user));
        }
        return this.mDefaultIcons.get(user);
    }

    public boolean isDefaultIcon(Bitmap icon, UserHandleCompat user) {
        return this.mDefaultIcons.get(user) == icon;
    }

    private CacheEntry cacheLocked(ComponentName componentName, LauncherActivityInfoCompat info, UserHandleCompat user, String assetPackName, boolean usePackageIcon, boolean useLowResIcon) {
        return cacheLocked(componentName, info, user, assetPackName, usePackageIcon, useLowResIcon, false);
    }

    private CacheEntry cacheLocked(ComponentName componentName, LauncherActivityInfoCompat info, UserHandleCompat user, String assetPackName, boolean usePackageIcon, boolean useLowResIcon, boolean ignoreCache) {
        CacheEntry packageEntry;
        LauncherActivityInfoCompat.DrawableSource icon;
        Logger.d(AssetCache.ASSET_PACK_TAG, "cacheLocked componentName = " + componentName + ", assetPack = " + assetPackName + ", ignoreCache = " + ignoreCache);
        ComponentKey cacheKey = new ComponentKey(componentName, user);
        CacheEntry entry = null;
        if (AssetCache.ASSET_PACK_NAME_CUSTOM.equals(assetPackName)) {
            CacheEntry entry2 = this.mCustomIconCache.get(cacheKey);
            entry = entry2;
        } else if (AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
            CacheEntry entry3 = this.mOriginalCache.get(cacheKey);
            entry = entry3;
        } else if (AssetCache.ASSET_PACK_NAME_DYNAMIC.equals(assetPackName)) {
            if (StyleManager.getInstance().showDynamicIcon() && DynamicIconManager.getInstance().isDynamicIcon(componentName)) {
                CacheEntry entry4 = this.mDynamicIconCache.get(cacheKey);
                entry = entry4;
            } else {
                return null;
            }
        } else {
            if ("SYSTEM_DEFAULT_ICONS".equals(assetPackName)) {
                return null;
            }
            if (assetPackName != null && assetPackName.equals(this.mAssetCache.getCurrentAssetPackName())) {
                CacheEntry entry5 = this.mAssetPackCache.get(cacheKey);
                entry = entry5;
            } else if (assetPackName == null) {
                return null;
            }
        }
        if (ignoreCache || entry == null || (entry.isLowResIcon && !useLowResIcon)) {
            entry = new CacheEntry();
            boolean hasCache = getEntryFromDB(cacheKey, assetPackName, entry, useLowResIcon);
            Logger.d(AssetCache.ASSET_PACK_TAG, "cacheLocked componentName = " + componentName + ", assetPackName = " + assetPackName + " getEntryFromDB = " + hasCache);
            if (!hasCache) {
                if (AssetCache.ASSET_PACK_NAME_CUSTOM.equals(assetPackName)) {
                    this.mCustomIconCache.put(cacheKey, EMPTY_ENTRY);
                    Logger.d(AssetCache.ASSET_PACK_TAG, "cacheLocked componentName = " + componentName + " no custom icon ");
                    return null;
                }
                if (AssetCache.ASSET_PACK_NAME_DYNAMIC.equals(assetPackName)) {
                    return null;
                }
                if (info != null) {
                    entry.title = CustomInfoHelper.getCustomLabelForComponent(this.mContext, user, componentName.flattenToString(), info.getLabel().toString());
                    entry.locale = this.mCurrentLocale;
                    IconPackHelper iconPackHelper = null;
                    if (!AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
                        iconPackHelper = this.mAssetCache.loadAssetPack(assetPackName);
                        icon = info.getIconFromIconPack(iconPackHelper, this.mContext, this.mIconDpi);
                        Logger.d(AssetCache.ASSET_PACK_TAG, "cacheLocked componentName = " + componentName + " icon from iconPack " + assetPackName);
                    } else {
                        icon = info.getIconFromPackage(this.mContext, this.mIconDpi);
                        Logger.d(AssetCache.ASSET_PACK_TAG, "cacheLocked componentName = " + componentName + " icon from packageManager");
                    }
                    if (icon != null) {
                        if (iconPackHelper != null && iconPackHelper.isIconPackLoaded()) {
                            LayerDrawable iconBackLayerDrawable = iconPackHelper.getIconBackLayerDrawable(this.mIconDpi);
                            LayerDrawable iconUponLayerDrawable = iconPackHelper.getIconUponLayerDrawable(this.mIconDpi);
                            LayerDrawable iconMaskLayerDrawable = iconPackHelper.getIconMaskLayerDrawable(this.mIconDpi);
                            float iconScale = iconPackHelper.getIconScale();
                            entry.icon = createIconBitmap(componentName, user, icon, this.mContext.getResources(), iconBackLayerDrawable, iconMaskLayerDrawable, iconUponLayerDrawable, iconScale, assetPackName);
                        } else if (AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
                            entry.icon = createIconBitmap(componentName, user, icon, this.mContext.getResources(), null, null, null, 0.0f, assetPackName);
                        }
                    } else if (AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
                        entry.icon = Utilities.createIconBitmap(this.mUserManager.getBadgedDrawableForUser(info.getIcon(this.mIconDpi), user), this.mContext);
                    } else {
                        if (assetPackName.equals(this.mAssetCache.getCurrentAssetPackName())) {
                            this.mAssetPackCache.put(cacheKey, EMPTY_ENTRY);
                        }
                        return null;
                    }
                } else if (usePackageIcon && AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName) && (packageEntry = getEntryForPackageLocked(componentName.getPackageName(), user, AssetCache.ASSET_PACK_NAME_NONE, false)) != null) {
                    entry.icon = packageEntry.icon;
                    entry.title = packageEntry.title;
                    entry.locale = this.mCurrentLocale;
                    entry.contentDescription = packageEntry.contentDescription;
                }
                checkAndResizeIcon(entry);
            } else {
                if (info != null) {
                    entry.title = CustomInfoHelper.getCustomLabelForComponent(this.mContext, user, componentName.flattenToString(), info.getLabel().toString());
                }
                if (entry.title == null) {
                    entry.title = "";
                    entry.contentDescription = "";
                } else {
                    entry.contentDescription = this.mUserManager.getBadgedLabelForUser(entry.title, cacheKey.user);
                }
                entry.locale = this.mCurrentLocale;
            }
            if (entry.icon == null && AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
                entry.icon = getDefaultIcon(user);
                Logger.d(AssetCache.ASSET_PACK_TAG, "cacheLock " + componentName.flattenToString() + " getDefaultIcon  = " + entry.icon);
            }
            if (entry.icon == null && !AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
                if (assetPackName.equals(this.mAssetCache.getCurrentAssetPackName())) {
                    this.mAssetPackCache.put(cacheKey, EMPTY_ENTRY);
                }
                return null;
            }
            if (entry.icon == null && !AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
                if (assetPackName.equals(this.mAssetCache.getCurrentAssetPackName())) {
                    this.mAssetPackCache.put(cacheKey, EMPTY_ENTRY);
                }
                return null;
            }
            if (info != null && entry.title == null) {
                entry.title = info.getLabel();
                entry.contentDescription = this.mUserManager.getBadgedLabelForUser(entry.title, user);
                entry.locale = this.mCurrentLocale;
            }
            if (AssetCache.ASSET_PACK_NAME_CUSTOM.equals(assetPackName)) {
                this.mCustomIconCache.put(cacheKey, entry);
            } else if (AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
                this.mOriginalCache.put(cacheKey, entry);
            } else if (AssetCache.ASSET_PACK_NAME_DYNAMIC.equals(assetPackName)) {
                this.mDynamicIconCache.put(cacheKey, entry);
            } else if (assetPackName.equals(this.mAssetCache.getCurrentAssetPackName())) {
                this.mAssetPackCache.put(cacheKey, entry);
            }
        } else if (!EMPTY_ENTRY.equals(entry) && !this.mCurrentLocale.equals(entry.locale)) {
            if (info != null) {
                entry.title = CustomInfoHelper.getCustomLabelForComponent(this.mContext, user, componentName.flattenToString(), info.getLabel().toString());
                entry.locale = this.mCurrentLocale;
                entry.contentDescription = CustomInfoHelper.getCustomLabelForComponent(this.mContext, user, componentName.flattenToString(), this.mUserManager.getBadgedLabelForUser(entry.title, user).toString());
            } else {
                int flags = UserHandleCompat.myUserHandle().equals(user) ? 0 : 8192;
                try {
                    PackageInfo packageInfo = this.mPackageManager.getPackageInfo(componentName.getPackageName(), flags);
                    ApplicationInfo appInfo = packageInfo.applicationInfo;
                    if (appInfo != null) {
                        entry.title = CustomInfoHelper.getCustomLabelForComponent(this.mContext, user, componentName.flattenToString(), appInfo.loadLabel(this.mPackageManager).toString());
                        entry.contentDescription = CustomInfoHelper.getCustomLabelForComponent(this.mContext, user, componentName.flattenToString(), this.mUserManager.getBadgedLabelForUser(entry.title, user).toString());
                        entry.locale = this.mCurrentLocale;
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                }
            }
        }
        if (EMPTY_ENTRY.equals(entry)) {
            return null;
        }
        return entry;
    }

    public synchronized void updateDynamicIconCache(ComponentName componentName, Bitmap bitmap) {
        UserHandleCompat user = UserHandleCompat.myUserHandle();
        ComponentKey cacheKey = new ComponentKey(componentName, user);
        CacheEntry entry = this.mDynamicIconCache.get(cacheKey);
        this.mAssetCache.getCurrentAssetPackName();
        if (entry == null) {
            entry = new CacheEntry();
            getEntryFromDB(cacheKey, AssetCache.ASSET_PACK_NAME_NONE, entry, false);
            Intent intent = new Intent();
            intent.setComponent(componentName);
            LauncherActivityInfoCompat launcherActInfo = this.mLauncherApps.resolveActivity(intent, user);
            boolean queryTitleSuccess = false;
            if (launcherActInfo != null) {
                entry.title = CustomInfoHelper.getCustomLabelForComponent(this.mContext, user, componentName.flattenToString(), launcherActInfo.getLabel().toString());
                queryTitleSuccess = true;
            } else {
                int flags = UserHandleCompat.myUserHandle().equals(user) ? 0 : 8192;
                try {
                    PackageInfo info = this.mPackageManager.getPackageInfo(componentName.getPackageName(), flags);
                    ApplicationInfo appInfo = info.applicationInfo;
                    if (appInfo != null) {
                        entry.title = CustomInfoHelper.getCustomLabelForComponent(this.mContext, user, componentName.flattenToString(), appInfo.loadLabel(this.mPackageManager).toString());
                        queryTitleSuccess = true;
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                    Logger.w(TAG, "query component applicationInfo fail, component = " + componentName.flattenToString() + ", error = " + e.getMessage());
                }
            }
            if (queryTitleSuccess) {
                entry.contentDescription = this.mUserManager.getBadgedLabelForUser(entry.title, user);
                entry.locale = this.mCurrentLocale;
            } else {
                entry.title = "";
                entry.contentDescription = "";
                entry.locale = "";
                Logger.d(TAG, "can't query packageInfo and LauncherActivityInfoCompat, let title empty, component = " + componentName.flattenToString());
            }
            entry.assetPackName = AssetCache.ASSET_PACK_NAME_DYNAMIC;
            this.mDynamicIconCache.put(cacheKey, entry);
        }
        entry.icon = bitmap;
        ContentValues values = newContentValues(entry.icon, this.mActivityBgColor);
        values.put("assetPackName", AssetCache.ASSET_PACK_NAME_DYNAMIC);
        values.put("iconType", (Integer) 4);
        values.put("componentName", componentName.flattenToString());
        values.put("profileId", Long.valueOf(this.mUserManager.getSerialNumberForUser(user)));
        this.mContext.getContentResolver().insert(IconProvider.ICON_URI, values);
    }

    public boolean containsDynamicIconCache(ComponentName componentName) {
        if (!StyleManager.getInstance().showDynamicIcon() || !DynamicIconManager.getInstance().isDynamicIcon(componentName)) {
            return false;
        }
        UserHandleCompat user = UserHandleCompat.myUserHandle();
        ComponentKey cacheKey = new ComponentKey(componentName, user);
        return this.mDynamicIconCache.containsKey(cacheKey);
    }

    public synchronized void removeCustomIconCache(ComponentName componentName, UserHandleCompat user) {
        this.mCustomIconCache.remove(new ComponentKey(componentName, user));
    }

    public synchronized void removeOriginalCache(ShortcutInfo info, UserHandleCompat user) {
        ComponentName componentName = info.getTargetComponent();
        if (componentName != null) {
            this.mOriginalCache.remove(new ComponentKey(componentName, user));
        }
    }

    private void checkAndResizeIcon(CacheEntry entry) {
        if (entry == null || entry.icon == null) {
            Logger.w(TAG, "[checkAndResizeIcon] entry corrupt.");
            return;
        }
        Bitmap result = checkAndResizeIcon(entry.icon);
        if (result != null) {
            entry.icon = result;
        }
    }

    public static Bitmap checkAndResizeIcon(Bitmap bitmap) {
        if (bitmap == null) {
            Logger.w(TAG, "[checkAndResizeIcon] entry corrupt.");
            return null;
        }
        int height = bitmap.getHeight();
        int width = bitmap.getWidth();
        if (width < 0 || height < 0) {
            Logger.w(TAG, "[checkAndResizeIcon] icon size < 0.");
            return null;
        }
        int targetPaddingPx = (int) (width * 0.08333333333333333d);
        int paddingPx = Utilities.getIconPaddingPx(bitmap, targetPaddingPx);
        if (paddingPx >= 0) {
            double ratio = paddingPx / width;
            if (ratio < 0.08333333333333333d && paddingPx < targetPaddingPx) {
                int targetIconSize = width - ((targetPaddingPx - paddingPx) * 2);
                Bitmap resizedBitmap = Bitmap.createScaledBitmap(bitmap, targetIconSize, targetIconSize, true);
                Bitmap result = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                Canvas can = new Canvas(result);
                can.drawARGB(0, 0, 0, 0);
                can.drawBitmap(resizedBitmap, targetPaddingPx - paddingPx, targetPaddingPx - paddingPx, (Paint) null);
                resizedBitmap.recycle();
                return result;
            }
            return bitmap;
        }
        return bitmap;
    }

    public synchronized void cachePackageInstallInfo(String packageName, UserHandleCompat user, Bitmap icon, CharSequence title) {
        removeFromMemCacheLocked(packageName, user, 3);
        ComponentKey cacheKey = getPackageKey(packageName, user);
        CacheEntry entry = this.mOriginalCache.get(cacheKey);
        if (entry == null) {
            entry = new CacheEntry();
            this.mOriginalCache.put(cacheKey, entry);
        }
        if (!TextUtils.isEmpty(title)) {
            entry.title = title;
        }
        entry.locale = this.mCurrentLocale;
        if (icon != null) {
            entry.icon = Utilities.createIconBitmap(icon, this.mContext);
            checkAndResizeIcon(entry);
        }
    }

    private static ComponentKey getPackageKey(String packageName, UserHandleCompat user) {
        ComponentName cn = new ComponentName(packageName, packageName + AssetCache.EMPTY_CLASS_NAME);
        return new ComponentKey(cn, user);
    }

    private CacheEntry getEntryForPackageLocked(String packageName, UserHandleCompat user, String assetPackName, boolean useLowResIcon) {
        PackageInfo info;
        ApplicationInfo appInfo;
        ComponentKey cacheKey = getPackageKey(packageName, user);
        CacheEntry entry = null;
        if (AssetCache.ASSET_PACK_NAME_CUSTOM.equals(assetPackName)) {
            CacheEntry entry2 = this.mCustomIconCache.get(cacheKey);
            entry = entry2;
        } else if (AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
            CacheEntry entry3 = this.mOriginalCache.get(cacheKey);
            entry = entry3;
        } else if (AssetCache.ASSET_PACK_NAME_DYNAMIC.equals(assetPackName)) {
            CacheEntry entry4 = this.mDynamicIconCache.get(cacheKey);
            entry = entry4;
        } else {
            if ("SYSTEM_DEFAULT_ICONS".equals(assetPackName)) {
                return null;
            }
            if (assetPackName != null && assetPackName.equals(this.mAssetCache.getCurrentAssetPackName())) {
                CacheEntry entry5 = this.mAssetPackCache.get(cacheKey);
                entry = entry5;
            } else if (assetPackName == null) {
                return null;
            }
        }
        if (entry == null || (entry.isLowResIcon && !useLowResIcon)) {
            entry = new CacheEntry();
            boolean entryUpdated = true;
            try {
                int flags = UserHandleCompat.myUserHandle().equals(user) ? 0 : 8192;
                info = this.mPackageManager.getPackageInfo(packageName, flags);
                appInfo = info.applicationInfo;
            } catch (PackageManager.NameNotFoundException e) {
                entryUpdated = false;
            }
            if (appInfo == null) {
                throw new PackageManager.NameNotFoundException("ApplicationInfo is null");
            }
            if (!getEntryFromDB(cacheKey, assetPackName, entry, useLowResIcon)) {
                if (!AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
                    return null;
                }
                Drawable drawable = this.mUserManager.getBadgedDrawableForUser(appInfo.loadIcon(this.mPackageManager), user);
                entry.icon = Utilities.createIconBitmap(drawable, this.mContext);
                entry.isLowResIcon = false;
                checkAndResizeIcon(entry);
                ContentValues values = newContentValues(entry.icon, this.mPackageBgColor);
                addIconToDB(values, cacheKey.componentName, assetPackName, info, this.mUserManager.getSerialNumberForUser(user));
            }
            entry.title = appInfo.loadLabel(this.mPackageManager);
            entry.contentDescription = this.mUserManager.getBadgedLabelForUser(entry.title, user);
            entry.locale = this.mCurrentLocale;
            if (entryUpdated && AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
                this.mOriginalCache.put(cacheKey, entry);
            }
        } else if (!this.mCurrentLocale.equals(entry.locale)) {
            try {
                int flags2 = UserHandleCompat.myUserHandle().equals(user) ? 0 : 8192;
                ApplicationInfo appInfo2 = this.mPackageManager.getPackageInfo(packageName, flags2).applicationInfo;
                if (appInfo2 == null) {
                    throw new PackageManager.NameNotFoundException("ApplicationInfo is null");
                }
                entry.title = appInfo2.loadLabel(this.mPackageManager);
                entry.locale = this.mCurrentLocale;
                entry.contentDescription = this.mUserManager.getBadgedLabelForUser(entry.title, user);
            } catch (PackageManager.NameNotFoundException e2) {
            }
        }
        return entry;
    }

    public void preloadIcon(ComponentName componentName, Bitmap icon, int dpi, String label, long userSerial, InvariantDeviceProfile idp) {
    }

    private boolean getEntryFromDB(ComponentKey cacheKey, String assetPackName, CacheEntry entry, boolean lowRes) {
        if (assetPackName == null || "SYSTEM_DEFAULT_ICONS".equals(assetPackName)) {
            return false;
        }
        ContentResolver contentResolver = this.mContext.getContentResolver();
        Uri uri = IconProvider.ICON_URI;
        String[] strArr = new String[2];
        strArr[0] = lowRes ? IconDBHelper.Icon.COLUMN_ICON_LOW_RES : "icon";
        strArr[1] = "assetPackName";
        Cursor c = contentResolver.query(uri, strArr, "componentName = ? AND profileId = ? AND assetPackName = ? ", new String[]{cacheKey.componentName.flattenToString(), Long.toString(this.mUserManager.getSerialNumberForUser(cacheKey.user)), assetPackName}, null, null);
        boolean result = false;
        try {
            if (c.moveToNext()) {
                entry.icon = loadIconNoResize(c, 0, lowRes ? this.mLowResOptions : null);
                entry.isLowResIcon = lowRes;
                entry.assetPackName = assetPackName;
                result = true;
            }
        } finally {
            if (c != null) {
                c.close();
            }
        }
    }

    /* loaded from: classes.dex */
    public static class IconLoadRequest {
        private final Handler mHandler;
        private final Runnable mRunnable;

        IconLoadRequest(Runnable runnable, Handler handler) {
            this.mRunnable = runnable;
            this.mHandler = handler;
        }

        public void cancel() {
            this.mHandler.removeCallbacks(this.mRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class SerializedIconUpdateTask implements Runnable {
        private final Stack<LauncherActivityInfoCompat> mAppsToAdd;
        private final Stack<LauncherActivityInfoCompat> mAppsToUpdate;
        private final HashMap<String, PackageInfo> mPkgInfoMap;
        private final HashSet<String> mUpdatedPackages = new HashSet<>();
        private final long mUserSerial;

        SerializedIconUpdateTask(long userSerial, HashMap<String, PackageInfo> pkgInfoMap, Stack<LauncherActivityInfoCompat> appsToAdd, Stack<LauncherActivityInfoCompat> appsToUpdate) {
            this.mUserSerial = userSerial;
            this.mPkgInfoMap = pkgInfoMap;
            this.mAppsToAdd = appsToAdd;
            this.mAppsToUpdate = appsToUpdate;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.mAppsToUpdate.isEmpty()) {
                LauncherActivityInfoCompat app = this.mAppsToUpdate.pop();
                String cn = app.getComponentName().flattenToString();
                ContentValues values = IconCache.this.updateCacheAndGetContentValues(app, AssetCache.ASSET_PACK_NAME_NONE, true);
                PackageInfo info = this.mPkgInfoMap.get(app.getComponentName().getPackageName());
                if (info != null) {
                    values.put("lastUpdated", Long.valueOf(info.lastUpdateTime));
                    values.put("version", Integer.valueOf(info.versionCode));
                }
                IconCache.this.mContext.getContentResolver().update(IconProvider.ICON_URI, values, "componentName = ? AND profileId = ? AND assetPackName = ? ", new String[]{cn, Long.toString(this.mUserSerial), AssetCache.ASSET_PACK_NAME_NONE});
                this.mUpdatedPackages.add(app.getComponentName().getPackageName());
                if (this.mAppsToUpdate.isEmpty() && !this.mUpdatedPackages.isEmpty()) {
                    LauncherAppState.getInstance().getModel().onPackageIconsUpdated(this.mUpdatedPackages, IconCache.this.mUserManager.getUserForSerialNumber(this.mUserSerial));
                }
                scheduleNext();
                return;
            }
            if (this.mAppsToAdd.isEmpty()) {
                if (IconCache.this.mIconUpdateTask == this) {
                    IconCache.this.mIconUpdateTask = null;
                }
                scheduleNextTask();
                return;
            }
            LauncherActivityInfoCompat app2 = this.mAppsToAdd.pop();
            PackageInfo info2 = this.mPkgInfoMap.get(app2.getComponentName().getPackageName());
            if (info2 != null) {
                synchronized (IconCache.this) {
                    IconCache.this.addIconToDBAndMemCache(app2, info2, AssetCache.ASSET_PACK_NAME_NONE, this.mUserSerial);
                }
            }
            if (this.mAppsToAdd.isEmpty()) {
                if (IconCache.this.mIconUpdateTask == this) {
                    IconCache.this.mIconUpdateTask = null;
                }
                scheduleNextTask();
                return;
            }
            scheduleNext();
        }

        public void scheduleNext() {
            IconCache.this.mWorkerHandler.postAtTime(this, IconCache.ICON_UPDATE_TOKEN, SystemClock.uptimeMillis() + 1);
        }

        public void scheduleNextTask() {
            if (IconCache.this.mPreloadTask != null || IconCache.this.mPreloadTaskQueue.size() > 0) {
                if (IconCache.this.mPreloadTask == null) {
                    IconCache.this.mPreloadTask = (Runnable) IconCache.this.mPreloadTaskQueue.remove(0);
                }
                IconCache.this.mWorkerHandler.postAtTime(IconCache.this.mPreloadTask, IconCache.PRELOAD_ICON_TOKEN, SystemClock.uptimeMillis() + 5);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class PreloadIconTask implements Runnable {
        private final Stack<LauncherActivityInfoCompat> mApps;
        private final String mAssetPackName;
        private boolean mFinished = false;
        private final HashMap<String, PackageInfo> mPkgInfoMap;
        private final long mUserSerial;

        PreloadIconTask(String assetPackName, long userSerial, HashMap<String, PackageInfo> pkgInfoMap, Stack<LauncherActivityInfoCompat> apps) {
            this.mAssetPackName = assetPackName;
            this.mUserSerial = userSerial;
            this.mPkgInfoMap = pkgInfoMap;
            this.mApps = apps;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.mApps.isEmpty()) {
                LauncherActivityInfoCompat app = this.mApps.pop();
                PackageInfo info = this.mPkgInfoMap.get(app.getComponentName().getPackageName());
                if (info != null) {
                    synchronized (IconCache.this) {
                        IconCache.this.addIconToDBAndMemCache(app, info, this.mAssetPackName, this.mUserSerial);
                    }
                }
                scheduleNext();
                return;
            }
            if (!this.mFinished) {
                if (!AssetCache.ASSET_PACK_NAME_NONE.equals(this.mAssetPackName)) {
                    int versionCode = 0;
                    long lastUpdateTime = 0;
                    if (this.mPkgInfoMap.get(this.mAssetPackName) != null) {
                        versionCode = this.mPkgInfoMap.get(this.mAssetPackName).versionCode;
                        lastUpdateTime = this.mPkgInfoMap.get(this.mAssetPackName).lastUpdateTime;
                    }
                    ContentValues values = new ContentValues();
                    values.put("assetPackName", this.mAssetPackName);
                    values.put("version", Integer.valueOf(versionCode));
                    values.put("lastUpdated", Long.valueOf(lastUpdateTime));
                    values.put("profileId", Long.valueOf(this.mUserSerial));
                    IconCache.this.mContext.getContentResolver().insert(IconProvider.ASSET_PACK_URI, values);
                }
                this.mFinished = true;
            }
            scheduleNextTask();
        }

        public void scheduleNext() {
            if (!hasPrioritySchedule()) {
                IconCache.this.mWorkerHandler.postAtTime(this, IconCache.PRELOAD_ICON_TOKEN, SystemClock.uptimeMillis() + 1);
            }
        }

        public void scheduleNextTask() {
            if (!hasPrioritySchedule()) {
                if (IconCache.this.mPreloadTaskQueue.size() > 0) {
                    Runnable r = (Runnable) IconCache.this.mPreloadTaskQueue.remove(0);
                    IconCache.this.mPreloadTask = r;
                    IconCache.this.mWorkerHandler.postAtTime(r, IconCache.PRELOAD_ICON_TOKEN, SystemClock.uptimeMillis() + 1);
                    return;
                }
                IconCache.this.mPreloadTask = null;
            }
        }

        public boolean hasPrioritySchedule() {
            return IconCache.this.mIconUpdateTask != null;
        }
    }

    private ContentValues newContentValues(Bitmap icon, int lowResBackgroundColor) {
        ContentValues values = new ContentValues();
        values.put("icon", Utilities.flattenBitmap(icon));
        if (lowResBackgroundColor == 0) {
            values.put(IconDBHelper.Icon.COLUMN_ICON_LOW_RES, Utilities.flattenBitmap(Bitmap.createScaledBitmap(icon, icon.getWidth() / 5, icon.getHeight() / 5, true)));
        } else {
            synchronized (this) {
                if (this.mLowResBitmap == null) {
                    this.mLowResBitmap = Bitmap.createBitmap(icon.getWidth() / 5, icon.getHeight() / 5, Bitmap.Config.RGB_565);
                    this.mLowResCanvas = new Canvas(this.mLowResBitmap);
                    this.mLowResPaint = new Paint(3);
                }
                this.mLowResCanvas.drawColor(lowResBackgroundColor);
                this.mLowResCanvas.drawBitmap(icon, new Rect(0, 0, icon.getWidth(), icon.getHeight()), new Rect(0, 0, this.mLowResBitmap.getWidth(), this.mLowResBitmap.getHeight()), this.mLowResPaint);
                values.put(IconDBHelper.Icon.COLUMN_ICON_LOW_RES, Utilities.flattenBitmap(this.mLowResBitmap));
            }
        }
        return values;
    }

    private static Bitmap loadIconNoResize(Cursor c, int iconIndex, BitmapFactory.Options options) {
        byte[] data = c.getBlob(iconIndex);
        try {
            return BitmapFactory.decodeByteArray(data, 0, data.length, options);
        } catch (Exception e) {
            Logger.e(AssetCache.ASSET_PACK_TAG, "loadIconNoResize error message = " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    private Bitmap createIconBitmap(ComponentName componentName, UserHandleCompat user, LauncherActivityInfoCompat.DrawableSource drawableSource, Resources res, LayerDrawable iconBack, LayerDrawable iconMask, LayerDrawable iconUpon, float scale, String assetPackName) {
        Drawable icon = drawableSource.getDrawable();
        int iconSize = icon.getIntrinsicHeight();
        if (iconSize <= 0) {
            return null;
        }
        componentName.flattenToString();
        if (drawableSource.isSystemDefault() || AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName) || AssetCache.ASSET_PACK_NAME_CUSTOM.equals(assetPackName) || AssetCache.ASSET_PACK_NAME_DYNAMIC.equals(assetPackName)) {
            return Utilities.createIconBitmap(this.mUserManager.getBadgedDrawableForUser(icon, user), this.mContext);
        }
        Canvas canvas = new Canvas();
        canvas.setDrawFilter(new PaintFlagsDrawFilter(1, 2));
        int width = 0;
        int height = 0;
        if (icon instanceof PaintDrawable) {
            PaintDrawable painter = (PaintDrawable) icon;
            painter.setIntrinsicWidth(iconSize);
            painter.setIntrinsicHeight(iconSize);
            width = iconSize;
            height = iconSize;
        } else if (icon instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) icon;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (bitmap.getDensity() == 0) {
                bitmapDrawable.setTargetDensity(res.getDisplayMetrics());
            }
            canvas.setDensity(bitmap.getDensity());
            if (bitmap.getWidth() < iconSize * 2 && bitmap.getHeight() < iconSize * 2) {
                width = bitmap.getWidth();
                height = bitmap.getHeight();
            } else {
                width = iconSize;
                height = iconSize;
            }
        } else if (icon instanceof VectorDrawable) {
            height = iconSize;
            width = iconSize;
        }
        if (width <= 0 || height <= 0) {
            return null;
        }
        Bitmap bitmap2 = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        canvas.setBitmap(bitmap2);
        Rect oldBounds = new Rect();
        oldBounds.set(icon.getBounds());
        icon.setBounds(0, 0, width, height);
        canvas.save();
        boolean systemDefaultIcon = drawableSource.isSystemDefault();
        if (systemDefaultIcon) {
            canvas.scale(scale, scale, width / 2, height / 2);
        }
        icon.draw(canvas);
        canvas.restore();
        if (iconMask != null) {
            Drawable mask = new BitmapDrawable(res, layerDrawableToBitmap(iconMask));
            mask.setBounds(icon.getBounds());
            ((BitmapDrawable) mask).getPaint().setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            mask.draw(canvas);
        }
        if (iconBack != null) {
            Drawable back = new BitmapDrawable(res, layerDrawableToBitmap(iconBack));
            back.setBounds(icon.getBounds());
            ((BitmapDrawable) back).getPaint().setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
            back.draw(canvas);
        }
        if (iconUpon != null) {
            Drawable upon = new BitmapDrawable(res, layerDrawableToBitmap(iconUpon));
            upon.setBounds(icon.getBounds());
            upon.draw(canvas);
        }
        icon.setBounds(oldBounds);
        bitmap2.setDensity(canvas.getDensity());
        BitmapDrawable drawable = new BitmapDrawable(bitmap2);
        return Utilities.createIconBitmap(this.mUserManager.getBadgedDrawableForUser(drawable, user), this.mContext);
    }

    public Bitmap layerDrawableToBitmap(LayerDrawable layerDrawable) {
        int width = layerDrawable.getIntrinsicWidth();
        int height = layerDrawable.getIntrinsicHeight();
        Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        layerDrawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        layerDrawable.draw(canvas);
        return bitmap;
    }

    public int getIconDpi() {
        return this.mIconDpi;
    }
}
