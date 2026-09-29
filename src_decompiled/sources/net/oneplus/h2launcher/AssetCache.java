package net.oneplus.h2launcher;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import net.oneplus.h2launcher.IconCache;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.dynamicicon.DynamicIconConfig;
import net.oneplus.h2launcher.dynamicicon.DynamicIconDrawableConfig;
import net.oneplus.h2launcher.model.PackageItemInfo;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class AssetCache {
    public static final String ASSET_PACK_NAME_CUSTOM = "custom";
    public static final String ASSET_PACK_NAME_DYNAMIC = "dynamic";
    public static final String ASSET_PACK_NAME_NONE = "none";
    public static final String ASSET_PACK_NAME_SYSTEM_DEFAULT = "SYSTEM_DEFAULT_ICONS";
    public static final String ASSET_PACK_TAG = "AssetPack";
    public static final int CACHE_TYPE_ASSETPACK = 2;
    public static final int CACHE_TYPE_CUSTOM = 8;
    public static final int CACHE_TYPE_DB = 4;
    public static final int CACHE_TYPE_DYNAMIC_ICON = 16;
    public static final int CACHE_TYPE_ORIGINAL = 1;
    public static final String EMPTY_CLASS_NAME = ".";
    private static final String TAG = AssetCache.class.getSimpleName();
    private HashMap<String, IconPackHelper> mAssetPackMap = new HashMap<>();
    private final Context mContext;
    private IconPackHelper mCurrentAssetPack;
    private String mCurrentAssetPackName;
    private final DynamicIconConfigCache mDynamicIconConfigCache;
    private final DynamicIconDrawableCache mDynamicIconDrawableCache;
    private final IconCache mIconCache;
    private SharedPreferences mIconPreferences;

    public AssetCache(Context context, InvariantDeviceProfile inv) {
        this.mContext = context;
        this.mIconCache = new IconCache(context, inv, this);
        this.mDynamicIconConfigCache = new DynamicIconConfigCache(context, this);
        this.mDynamicIconDrawableCache = new DynamicIconDrawableCache(context, inv, this);
        this.mIconPreferences = this.mContext.getSharedPreferences(IconPackHelper.SHARED_PREFERENCES, 0);
        loadCurrentAssetPack();
    }

    public boolean isAssetPackPackage(String packageName) {
        CharSequence[][] assetPackArray = IconPackHelper.getIconPackList(this.mContext, false);
        for (int i = 0; i < assetPackArray[1].length; i++) {
            if (packageName.equals(assetPackArray[1][i])) {
                return true;
            }
        }
        return false;
    }

    public String getCurrentAssetPackName() {
        String packageName = this.mIconPreferences.getString(IconPackHelper.CURRENT_ICON_PACK_PACKAGE_NAME, "SYSTEM_DEFAULT_ICONS");
        return packageName;
    }

    public Drawable getFullResIcon(String packageName, int iconId) {
        return this.mIconCache.getFullResIcon(packageName, iconId);
    }

    public Drawable getFullResIcon(ActivityInfo info) {
        return this.mIconCache.getFullResIcon(info);
    }

    public void remove(ComponentName componentName, UserHandleCompat user) {
        this.mIconCache.remove(componentName, user);
    }

    public synchronized void remove(ComponentName componentName, UserHandleCompat user, int cacheType) {
        this.mIconCache.remove(componentName, user, cacheType);
    }

    public void removeFromMemCacheLocked(String packageName, UserHandleCompat user, int cacheType) {
        this.mIconCache.removeFromMemCacheLocked(packageName, user, cacheType);
    }

    public void updateIconsForPkg(String packageName, UserHandleCompat user) {
        updateIconsForPkg(packageName, user, false);
    }

    public synchronized void updateIconsForPkg(String packageName, UserHandleCompat user, boolean resetToDefault) {
        this.mIconCache.updateIconsForPkg(packageName, user, resetToDefault);
    }

    public void updateIconsForComponentName(ComponentName componentName, UserHandleCompat user) {
        updateIconsForComponentName(componentName, user, false);
    }

    public synchronized void updateIconsForComponentName(ComponentName componentName, UserHandleCompat user, boolean resetToDefault) {
        this.mIconCache.updateIconsForComponentName(componentName, user, resetToDefault);
    }

    public synchronized void flush(int cacheType) {
        this.mIconCache.flush(cacheType);
        this.mDynamicIconConfigCache.flush(cacheType);
        this.mDynamicIconDrawableCache.flush(cacheType);
    }

    public synchronized void changeAssetPack() {
        loadCurrentAssetPack();
        this.mIconCache.changeAssetPack();
        this.mDynamicIconConfigCache.changeAssetPack();
        this.mDynamicIconDrawableCache.changeAssetPack();
    }

    public synchronized void changeCustomIcon(UserHandleCompat user, ComponentName componentName) {
        this.mIconCache.removeCustomIconCache(componentName, user);
    }

    public synchronized void packagedUpdated(ShortcutInfo info) {
        this.mIconCache.removeOriginalCache(info, UserHandleCompat.myUserHandle());
    }

    public void loadCurrentAssetPack() {
        String packageName = this.mIconPreferences.getString(IconPackHelper.CURRENT_ICON_PACK_PACKAGE_NAME, "SYSTEM_DEFAULT_ICONS");
        boolean useSystemDefaultIcon = packageName.matches("SYSTEM_DEFAULT_ICONS") || !isPackageInstalled(packageName);
        if (useSystemDefaultIcon && !packageName.equals(IconPackHelper.CUSTOM_SYSTEM_DEFAULT_ICONS)) {
            packageName = IconPackHelper.CUSTOM_SYSTEM_DEFAULT_ICONS;
            this.mIconPreferences.edit().putString(IconPackHelper.CURRENT_ICON_PACK_PACKAGE_NAME, packageName).commit();
        }
        this.mCurrentAssetPackName = packageName;
        if (this.mCurrentAssetPackName != null && !this.mCurrentAssetPackName.equals("SYSTEM_DEFAULT_ICONS")) {
            this.mCurrentAssetPack = loadAssetPack(packageName);
        } else {
            this.mCurrentAssetPack = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IconPackHelper loadAssetPack(String packageName) {
        return loadAssetPack(packageName, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IconPackHelper loadAssetPack(String packageName, boolean forceReload) {
        IconPackHelper helper = this.mAssetPackMap.get(packageName);
        if (helper == null || forceReload) {
            if (helper == null) {
                helper = new IconPackHelper(this.mContext);
            }
            try {
                helper.loadIconPack(packageName);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
                helper = null;
            }
            this.mAssetPackMap.put(packageName, helper);
        }
        return helper;
    }

    protected boolean isPackageInstalled(String packageName) {
        try {
            this.mContext.getPackageManager().getApplicationInfo(packageName, 0);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        } catch (RuntimeException e2) {
            return false;
        }
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
        this.mIconCache.flushAssetPackIcon(assetPackName);
        this.mDynamicIconDrawableCache.flushAssetPackIcon(assetPackName);
        this.mDynamicIconConfigCache.flushAssetPackIcon(assetPackName);
    }

    public void preloadAllAssetPackTask() {
        this.mIconCache.preloadAllAssetPackTask();
    }

    public void addPreloadAssetPackTask(String assetPackName) {
        this.mIconCache.addPreloadAssetPackTask(assetPackName);
        this.mDynamicIconConfigCache.addPreloadAssetPackTask(assetPackName);
    }

    public synchronized void removeIconForPackageUpdate(String packageName, UserHandleCompat user) {
        this.mIconCache.removeIconForPackageUpdate(packageName, user);
    }

    public void updateDbIcons(Set<String> ignorePackagesForMainUser) {
        this.mIconCache.updateDbIcons(ignorePackagesForMainUser);
    }

    public IconCache.IconLoadRequest updateIconInBackground(BubbleTextView caller, ItemInfo info) {
        return this.mIconCache.updateIconInBackground(caller, info);
    }

    public synchronized void getTitleAndIcon(AppInfo application, LauncherActivityInfoCompat info, boolean useLowResIcon) {
        this.mIconCache.getTitleAndIcon(application, info, useLowResIcon);
    }

    public synchronized void updateTitleAndIcon(AppInfo application) {
        this.mIconCache.updateTitleAndIcon(application);
    }

    public Bitmap getIcon(Intent intent, UserHandleCompat user) {
        return getIcon(intent, user, false);
    }

    public synchronized Bitmap getIcon(Intent intent, UserHandleCompat user, boolean ignoreCustomIcons) {
        return this.mIconCache.getIcon(intent, user, ignoreCustomIcons);
    }

    public Bitmap getIcon(ComponentName component, UserHandleCompat user) {
        return getIcon(component, user, false);
    }

    public synchronized Bitmap getIcon(ComponentName component, UserHandleCompat user, boolean ignoreCustomIcon) {
        return this.mIconCache.getIcon(component, user, ignoreCustomIcon);
    }

    public synchronized String getTitle(Intent intent, UserHandleCompat user) {
        return this.mIconCache.getTitle(intent, user);
    }

    public synchronized void getTitleAndIcon(ShortcutInfo shortcutInfo, Intent intent, UserHandleCompat user, boolean useLowResIcon) {
        this.mIconCache.getTitleAndIcon(shortcutInfo, intent, user, useLowResIcon);
    }

    public synchronized void getTitleAndIcon(ShortcutInfo shortcutInfo, Intent intent, UserHandleCompat user, boolean useLowResIcon, boolean ignoreCache) {
        this.mIconCache.getTitleAndIcon(shortcutInfo, intent, user, useLowResIcon, ignoreCache);
    }

    public synchronized void getTitleAndIcon(ShortcutInfo shortcutInfo, ComponentName component, LauncherActivityInfoCompat info, UserHandleCompat user, boolean usePkgIcon, boolean useLowResIcon) {
        this.mIconCache.getTitleAndIcon(shortcutInfo, component, info, user, usePkgIcon, useLowResIcon);
    }

    public synchronized void getTitleAndIcon(ShortcutInfo shortcutInfo, ComponentName component, LauncherActivityInfoCompat info, UserHandleCompat user, boolean usePkgIcon, boolean useLowResIcon, boolean ignoreCache) {
        this.mIconCache.getTitleAndIcon(shortcutInfo, component, info, user, usePkgIcon, useLowResIcon, ignoreCache);
    }

    public synchronized void getTitleAndIconForApp(String packageName, UserHandleCompat user, boolean useLowResIcon, PackageItemInfo infoOut) {
        this.mIconCache.getTitleAndIconForApp(packageName, user, useLowResIcon, infoOut);
    }

    public synchronized Bitmap getDefaultIcon(UserHandleCompat user) {
        return this.mIconCache.getDefaultIcon(user);
    }

    public boolean isDefaultIcon(Bitmap icon, UserHandleCompat user) {
        return this.mIconCache.isDefaultIcon(icon, user);
    }

    public synchronized void cachePackageInstallInfo(String packageName, UserHandleCompat user, Bitmap icon, CharSequence title) {
        this.mIconCache.cachePackageInstallInfo(packageName, user, icon, title);
    }

    public void preloadIcon(ComponentName componentName, Bitmap icon, int dpi, String label, long userSerial, InvariantDeviceProfile idp) {
        this.mIconCache.preloadIcon(componentName, icon, dpi, label, userSerial, idp);
    }

    public DynamicIconConfig getDynamicIconConfig(ComponentName componentName, int type) {
        return this.mDynamicIconConfigCache.getDynamicIconConfig(componentName, type);
    }

    public DynamicIconConfig getDynamicIconConfig(ShortcutInfo info, int type) {
        return this.mDynamicIconConfigCache.getDynamicIconConfig(info, type);
    }

    public Drawable getDynamicIconDrawable(String resource, String assetPack) {
        return this.mDynamicIconDrawableCache.getDynamicIconDrawable(resource, assetPack);
    }

    static ComponentName getPackageComponent(String packageName) {
        return new ComponentName(packageName, EMPTY_CLASS_NAME);
    }

    public static Bitmap drawableToBitmap(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        Bitmap bitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isPreloadCache(Class cache) {
        return this.mIconPreferences.getBoolean(cache.getSimpleName(), false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setPreloadCache(Class cache, boolean value) {
        this.mIconPreferences.edit().putBoolean(cache.getSimpleName(), value).commit();
    }

    public void checkAndPreloadAllItem() {
        this.mIconCache.checkAndPreloadAllTask();
        this.mDynamicIconConfigCache.checkAndPreloadAllTask();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void preloadDynamicIconDrawable(HashSet<String> resources, String assetpackName) {
        this.mDynamicIconDrawableCache.preloadIcon(resources, assetpackName);
    }

    public void updateDynamicIconCache(ComponentName componentName, Bitmap bitmap) {
        this.mIconCache.updateDynamicIconCache(componentName, bitmap);
    }

    public boolean containsDynamicIconCache(ComponentName componentName) {
        return this.mIconCache.containsDynamicIconCache(componentName);
    }

    public void updateCurrentLocale() {
        this.mIconCache.updateCurrentLocale();
    }

    public boolean checkResourceExist(String assetPackName, String resourceName) {
        int id;
        if (assetPackName == null || resourceName == null) {
            return false;
        }
        try {
            if (assetPackName.equals("SYSTEM_DEFAULT_ICONS")) {
                return false;
            }
            if (assetPackName.equals(ASSET_PACK_NAME_NONE)) {
                Resources resources = this.mContext.getResources();
                id = resources.getIdentifier(resourceName, DynamicIconDrawableConfig.TYPE, this.mContext.getPackageName());
            } else {
                IconPackHelper helper = loadAssetPack(assetPackName);
                id = helper.getResourceIdForDrawable(resourceName);
            }
            return id > 0;
        } catch (Exception e) {
            Logger.w(ASSET_PACK_TAG, "check resource assetPackName = " + assetPackName + ", resName = " + resourceName + " exception, message = " + e.getMessage());
            return false;
        }
    }
}
