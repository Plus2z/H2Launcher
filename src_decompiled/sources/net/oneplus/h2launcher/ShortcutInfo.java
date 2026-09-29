package net.oneplus.h2launcher;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.dynamicicon.DynamicIconManager;
import net.oneplus.h2launcher.dynamicicon.IDynamicShortcut;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.shortcuts.ShortcutInfoCompat;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class ShortcutInfo extends ItemInfoWithIcon {
    public static final int DEFAULT = 0;
    public static final int FLAG_AUTOINTALL_ICON = 2;
    public static final int FLAG_DISABLED_NOT_AVAILABLE = 2;
    public static final int FLAG_DISABLED_QUIET_USER = 8;
    public static final int FLAG_DISABLED_SAFEMODE = 1;
    public static final int FLAG_DISABLED_SUSPENDED = 4;
    public static final int FLAG_INSTALL_SESSION_ACTIVE = 4;
    public static final int FLAG_RESTORED_APP_TYPE = 240;
    public static final int FLAG_RESTORED_ICON = 1;
    public static final int FLAG_RESTORE_STARTED = 8;
    private static final String TAG = ShortcutInfo.class.getSimpleName();
    public boolean customIcon;
    public long firstInstallTime;
    protected int flags;
    public Intent.ShortcutIconResource iconResource;
    Intent intent;
    int isDisabled;
    protected Map<String, Object> mCurrentData;
    ShortcutInfoCompat mDeepShortcutInfo;
    protected boolean mForceUseAppResource;
    public Bitmap mIcon;
    private int mInstallProgress;
    protected boolean mIsDynamicIcon;
    Intent promisedIntent;
    int status;
    boolean usingFallbackIcon;
    boolean usingLowResIcon;

    public ShortcutInfo() {
        this.isDisabled = 0;
        this.flags = 0;
        this.mForceUseAppResource = false;
        this.mIsDynamicIcon = false;
        this.mCurrentData = new HashMap();
        this.itemType = 1;
    }

    @Override // net.oneplus.h2launcher.ItemInfo
    public Intent getIntent() {
        return this.intent;
    }

    public ShortcutInfo(Intent intent, CharSequence title, CharSequence contentDescription, Bitmap icon, UserHandleCompat user) {
        this();
        this.intent = intent;
        this.title = Utilities.trim(title);
        this.contentDescription = contentDescription;
        this.mIcon = icon;
        this.user = user;
    }

    public ShortcutInfo(Context context, ShortcutInfo info) {
        super(info);
        this.isDisabled = 0;
        this.flags = 0;
        this.mForceUseAppResource = false;
        this.mIsDynamicIcon = false;
        this.mCurrentData = new HashMap();
        this.title = Utilities.trim(info.title);
        this.intent = new Intent(info.intent);
        if (info.iconResource != null) {
            this.iconResource = new Intent.ShortcutIconResource();
            this.iconResource.packageName = info.iconResource.packageName;
            this.iconResource.resourceName = info.iconResource.resourceName;
        }
        this.mIcon = info.mIcon;
        this.customIcon = info.customIcon;
        this.flags = info.flags;
        this.firstInstallTime = info.firstInstallTime;
        this.user = info.user;
        this.status = info.status;
    }

    public ShortcutInfo(AppInfo info) {
        super(info);
        this.isDisabled = 0;
        this.flags = 0;
        this.mForceUseAppResource = false;
        this.mIsDynamicIcon = false;
        this.mCurrentData = new HashMap();
        this.title = Utilities.trim(info.title);
        this.intent = new Intent(info.intent);
        this.customIcon = false;
        this.flags = info.flags;
        this.firstInstallTime = info.firstInstallTime;
    }

    public ShortcutInfo(LauncherActivityInfoCompat info, Context context) {
        this.isDisabled = 0;
        this.flags = 0;
        this.mForceUseAppResource = false;
        this.mIsDynamicIcon = false;
        this.mCurrentData = new HashMap();
        this.user = info.getUser();
        this.title = Utilities.trim(info.getLabel());
        this.contentDescription = UserManagerCompat.getInstance(context).getBadgedLabelForUser(info.getLabel(), info.getUser());
        this.intent = AppInfo.makeLaunchIntent(context, info, info.getUser());
        this.itemType = 0;
        this.flags = AppInfo.initFlags(info);
    }

    @TargetApi(24)
    public ShortcutInfo(ShortcutInfoCompat shortcutInfo, Context context) {
        this.isDisabled = 0;
        this.flags = 0;
        this.mForceUseAppResource = false;
        this.mIsDynamicIcon = false;
        this.mCurrentData = new HashMap();
        this.user = shortcutInfo.getUserHandle();
        this.itemType = 6;
        this.flags = 0;
        updateFromDeepShortcutInfo(shortcutInfo, context);
    }

    public void updateFromDeepShortcutInfo(ShortcutInfoCompat shortcutInfo, Context context) {
        this.intent = shortcutInfo.makeIntent(context);
        this.title = shortcutInfo.getShortLabel();
        this.mDeepShortcutInfo = shortcutInfo;
        CharSequence label = shortcutInfo.getLongLabel();
        if (TextUtils.isEmpty(label)) {
            label = shortcutInfo.getShortLabel();
        }
        this.contentDescription = UserManagerCompat.getInstance(context).getBadgedLabelForUser(label, this.user);
        setIcon(Utilities.createShortcutIcon(shortcutInfo, context));
    }

    public void setIcon(Bitmap b) {
        this.mIcon = b;
    }

    public String getLabel(AssetCache assetCache, boolean invalidate) {
        CharSequence oldTitle = this.title;
        if (this.title == null || invalidate) {
            updateLabel(assetCache);
        }
        if (invalidate && this.title == null) {
            this.title = oldTitle;
        }
        if (this.title != null) {
            return this.title.toString();
        }
        return null;
    }

    private void updateLabel(AssetCache assetCache) {
        this.title = assetCache.getTitle(this.intent, UserHandleCompat.myUserHandle());
    }

    public Bitmap getIcon(AssetCache assetCache) {
        return getIcon(assetCache, false);
    }

    public Bitmap getIcon(AssetCache assetCache, boolean invalidate) {
        if (this.mIcon == null || invalidate) {
            updateIcon(assetCache);
        }
        return this.mIcon;
    }

    public void updateIcon(AssetCache assetCache, boolean useLowRes) {
        updateIcon(assetCache, useLowRes, false);
    }

    public void updateIcon(AssetCache assetCache, boolean useLowRes, boolean forceUpdate) {
        if (this.itemType == 0 || this.mIcon == null || forceUpdate) {
            assetCache.getTitleAndIcon(this, this.promisedIntent != null ? this.promisedIntent : this.intent, this.user, useLowRes);
        }
    }

    public void updateIconForApplicationShortcutCreate(AssetCache assetCache, boolean useLowRes) {
        assetCache.getTitleAndIcon(this, this.promisedIntent != null ? this.promisedIntent : this.intent, this.user, useLowRes);
    }

    public void updateIcon(AssetCache assetCache) {
        updateIcon(assetCache, shouldUseLowResIcon(), false);
    }

    public void forceUpdateIcon(AssetCache assetCache) {
        updateIcon(assetCache, shouldUseLowResIcon(), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // net.oneplus.h2launcher.ItemInfo
    public void onAddToDatabase(Context context, ContentValues values) {
        String uri;
        super.onAddToDatabase(context, values);
        String titleStr = this.title != null ? this.title.toString() : null;
        values.put("title", titleStr);
        if (this.promisedIntent != null) {
            uri = this.promisedIntent.toUri(0);
        } else {
            uri = this.intent != null ? this.intent.toUri(0) : null;
        }
        values.put(LauncherSettings.BaseLauncherColumns.INTENT, uri);
        values.put(LauncherSettings.Favorites.RESTORED, Integer.valueOf(this.status));
        if (this.customIcon) {
            values.put("iconType", (Integer) 1);
            writeBitmap(values, this.mIcon);
        }
        if (this.mForceUseAppResource) {
            values.put("iconType", (Integer) 2);
            return;
        }
        if (!this.usingFallbackIcon) {
            writeBitmap(values, this.mIcon);
        }
        if (this.iconResource != null) {
            values.put("iconType", (Integer) 0);
            values.put(LauncherSettings.BaseLauncherColumns.ICON_PACKAGE, this.iconResource.packageName);
            values.put(LauncherSettings.BaseLauncherColumns.ICON_RESOURCE, this.iconResource.resourceName);
        }
    }

    @Override // net.oneplus.h2launcher.ItemInfo
    public String toString() {
        return "ShortcutInfo(title=" + ((Object) this.title) + "intent=" + this.intent + "id=" + this.id + " type=" + this.itemType + " container=" + this.container + " screen=" + this.screenId + " cellX=" + this.cellX + " cellY=" + this.cellY + " spanX=" + this.spanX + " spanY=" + this.spanY + " dropPos=" + Arrays.toString(this.dropPos) + " user=" + this.user + ")";
    }

    public static void dumpShortcutInfoList(String tag, String label, ArrayList<ShortcutInfo> list) {
        Log.d(tag, label + " size=" + list.size());
        Iterator<ShortcutInfo> it = list.iterator();
        while (it.hasNext()) {
            ShortcutInfo info = it.next();
            Log.d(tag, "   title=\"" + ((Object) info.title) + " icon=" + info.mIcon + " customIcon=" + info.customIcon);
        }
    }

    public ComponentName getTargetComponent() {
        if (this.promisedIntent != null) {
            return this.promisedIntent.getComponent();
        }
        if (this.intent != null) {
            return this.intent.getComponent();
        }
        return null;
    }

    public boolean hasStatusFlag(int flag) {
        return (this.status & flag) != 0;
    }

    public final boolean isPromise() {
        return hasStatusFlag(3);
    }

    public int getInstallProgress() {
        return this.mInstallProgress;
    }

    public void setInstallProgress(int progress) {
        this.mInstallProgress = progress;
        this.status |= 4;
    }

    public boolean shouldUseLowResIcon() {
        return this.usingLowResIcon && this.container >= 0 && this.rank >= FolderIcon.getNumItemsInPreview();
    }

    public static ShortcutInfo fromActivityInfo(LauncherActivityInfoCompat info, Context context) {
        ShortcutInfo shortcut;
        if (StyleManager.getInstance().showDynamicIcon() && DynamicIconManager.getInstance().isDynamicIcon(info)) {
            shortcut = DynamicIconManager.getInstance().createShortcutInfo(info);
        } else {
            shortcut = new ShortcutInfo();
        }
        shortcut.user = info.getUser();
        shortcut.title = Utilities.trim(info.getLabel());
        shortcut.contentDescription = UserManagerCompat.getInstance(context).getBadgedLabelForUser(info.getLabel(), info.getUser());
        shortcut.customIcon = false;
        shortcut.intent = AppInfo.makeLaunchIntent(context, info, info.getUser());
        shortcut.itemType = 0;
        shortcut.flags = AppInfo.initFlags(info);
        if (shortcut instanceof IDynamicShortcut) {
            ((IDynamicShortcut) shortcut).initFlags();
            ((IDynamicShortcut) shortcut).refreshConfig();
        }
        shortcut.firstInstallTime = info.getFirstInstallTime();
        return shortcut;
    }

    public boolean isDynamicIcon() {
        return this.mIsDynamicIcon;
    }

    @Override // net.oneplus.h2launcher.ItemInfo
    public boolean isDisabled() {
        return this.isDisabled != 0;
    }

    public String getDeepShortcutId() {
        if (this.itemType == 6) {
            return getIntent().getStringExtra(ShortcutInfoCompat.EXTRA_SHORTCUT_ID);
        }
        return null;
    }

    public boolean isDeepShortcut() {
        return this.itemType == 6;
    }

    public ComponentName getDeepShortcutComponent() {
        if (!isDeepShortcut() || this.mDeepShortcutInfo == null) {
            return null;
        }
        return this.mDeepShortcutInfo.getActivity();
    }

    public boolean isDeepShortcutDeclaredInManifest() {
        if (this.mDeepShortcutInfo != null) {
            return this.mDeepShortcutInfo.isDeclaredInManifest();
        }
        Logger.w(TAG, "mDeepShortcutInfo is null");
        return false;
    }
}
