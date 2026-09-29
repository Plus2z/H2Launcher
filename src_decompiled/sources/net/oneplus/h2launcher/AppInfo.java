package net.oneplus.h2launcher;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.dynamicicon.DynamicIconManager;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.ComponentKey;

/* loaded from: classes.dex */
public class AppInfo extends ItemInfoWithIcon {
    static final int DOWNLOADED_FLAG = 1;
    public static final int SUPPORT_EDIT_ICON_IMAGE_FLAG = 8;
    public static final int SUPPORT_EDIT_ICON_LABEL_FLAG = 4;
    private static final String TAG = "Launcher3.AppInfo";
    static final int UPDATED_SYSTEM_APP_FLAG = 2;
    public ComponentName componentName;
    long firstInstallTime;
    int flags;
    public Intent intent;
    int isDisabled;
    String pkgName;

    AppInfo() {
        this.flags = 0;
        this.isDisabled = 0;
        this.itemType = 1;
    }

    @Override // net.oneplus.h2launcher.ItemInfo
    public Intent getIntent() {
        return this.intent;
    }

    protected Intent getRestoredIntent() {
        return null;
    }

    public AppInfo(Context context, LauncherActivityInfoCompat info, UserHandleCompat user, AssetCache assetCache) {
        this(context, info, user, assetCache, UserManagerCompat.getInstance(context).isQuietModeEnabled(user));
    }

    public AppInfo(Context context, LauncherActivityInfoCompat info, UserHandleCompat user, AssetCache assetCache, boolean quietModeEnabled) {
        this.flags = 0;
        this.isDisabled = 0;
        this.componentName = info.getComponentName();
        this.container = -1L;
        this.flags = initFlags(info);
        if ((info.getApplicationInfo().flags & LauncherActivityInfoCompat.FLAG_SUSPENDED) != 0) {
            this.isDisabled |= 4;
        }
        if (quietModeEnabled) {
            this.isDisabled |= 8;
        }
        this.firstInstallTime = info.getFirstInstallTime();
        assetCache.getTitleAndIcon(this, info, false);
        this.intent = makeLaunchIntent(context, info, user);
        this.user = user;
        this.pkgName = this.componentName.getPackageName();
    }

    public static int initFlags(LauncherActivityInfoCompat info) {
        int appFlags = info.getApplicationInfo().flags;
        int flags = 0;
        if ((appFlags & 1) == 0) {
            flags = 0 | 1;
            if ((appFlags & 128) != 0) {
                flags |= 2;
            }
        }
        return flags | 12;
    }

    public AppInfo(AppInfo info) {
        super(info);
        this.flags = 0;
        this.isDisabled = 0;
        this.componentName = info.componentName;
        this.title = Utilities.trim(info.title);
        this.intent = new Intent(info.intent);
        this.flags = info.flags;
        this.isDisabled = info.isDisabled;
        this.firstInstallTime = info.firstInstallTime;
        this.iconBitmap = info.iconBitmap;
        this.pkgName = info.pkgName;
    }

    public String getPkgName() {
        return this.pkgName;
    }

    public String getLabel(AssetCache assetCache, boolean invalidate) {
        if (this.title == null || invalidate) {
            updateLabel(assetCache);
        }
        return this.title.toString();
    }

    public void updateLabel(AssetCache assetCache) {
        this.title = assetCache.getTitle(this.intent, this.user);
    }

    public Bitmap getIcon(AssetCache assetCache, boolean invalidate) {
        if (this.iconBitmap == null || invalidate) {
            updateIcon(assetCache);
        }
        return this.iconBitmap;
    }

    public void updateIcon(AssetCache assetCache) {
        this.iconBitmap = assetCache.getIcon(this.intent, this.user);
    }

    @Override // net.oneplus.h2launcher.ItemInfo
    public String toString() {
        return "ApplicationInfo(title=" + ((Object) this.title) + " id=" + this.id + " type=" + this.itemType + " container=" + this.container + " screen=" + this.screenId + " cellX=" + this.cellX + " cellY=" + this.cellY + " spanX=" + this.spanX + " spanY=" + this.spanY + " dropPos=" + Arrays.toString(this.dropPos) + " user=" + this.user + ")";
    }

    public static void dumpApplicationInfoList(String tag, String label, ArrayList<AppInfo> list) {
        Log.d(tag, label + " size=" + list.size());
        Iterator<AppInfo> it = list.iterator();
        while (it.hasNext()) {
            AppInfo info = it.next();
            Log.d(tag, "   title=\"" + ((Object) info.title) + "\" iconBitmap=" + info.iconBitmap + " firstInstallTime=" + info.firstInstallTime + " componentName=" + info.componentName.getPackageName());
        }
    }

    public ShortcutInfo makeShortcut() {
        return (StyleManager.getInstance().showDynamicIcon() && DynamicIconManager.getInstance().isDynamicIcon(this)) ? DynamicIconManager.getInstance().createShortcutInfo(this) : new ShortcutInfo(this);
    }

    public ComponentKey toComponentKey() {
        return new ComponentKey(this.componentName, this.user);
    }

    public static Intent makeLaunchIntent(Context context, LauncherActivityInfoCompat info, UserHandleCompat user) {
        long serialNumber = UserManagerCompat.getInstance(context).getSerialNumberForUser(user);
        return new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setComponent(info.getComponentName()).setFlags(270532608).putExtra(ItemInfo.EXTRA_PROFILE, serialNumber);
    }

    @Override // net.oneplus.h2launcher.ItemInfo
    public boolean isDisabled() {
        return this.isDisabled != 0;
    }
}
