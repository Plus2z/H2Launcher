package net.oneplus.h2launcher.customizations.wallpaper.providers;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.ResourceWallpaperInfo;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.oos.StyleConstant;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.WallpaperUtils;

/* loaded from: classes.dex */
public class ImageWallpaperProvider extends WallpaperTileInfoProvider {
    private static final String TAG = ImageWallpaperProvider.class.getSimpleName();
    private Context mContext;
    private final Resources mResources;

    public ImageWallpaperProvider(Context context) {
        this.mResources = context.getResources();
        this.mContext = context;
    }

    private void findBundledWallpapers() {
        StyleManager styleManager = StyleManager.getInstance();
        List<Wallpaper> wallpapers = new ArrayList<>();
        int nameArr = styleManager.getResourceId(StyleConstant.WALLPAPER_NAMES);
        if (styleManager.isWallpaperScrollable()) {
            int wallpaperArr = styleManager.getResourceId(StyleConstant.PORTRAIT_WALLPAPERS);
            loadWallpapers(wallpapers, wallpaperArr, 0, styleManager.getResourceId(StyleConstant.WALLPAPER_THUMBNAILS), nameArr, 0);
        } else {
            int portWallpaperArr = styleManager.getResourceId(StyleConstant.PORTRAIT_WALLPAPERS);
            int portOverlayWallpaperArr = styleManager.getResourceId(StyleConstant.PORTRAIT_OVERLAY_WALLPAPERS);
            int landWallpaperArr = styleManager.getResourceId(StyleConstant.LANDSCAPE_WALLPAPERS);
            int wallpaperThumbArr = styleManager.getResourceId(StyleConstant.WALLPAPER_THUMBNAILS);
            int currentOrientation = getCurrentOrientation();
            if (currentOrientation == 1) {
                loadWallpapers(wallpapers, landWallpaperArr, 0, wallpaperThumbArr, nameArr, 1);
                loadWallpapers(wallpapers, portWallpaperArr, portOverlayWallpaperArr, wallpaperThumbArr, nameArr, 0);
            } else {
                loadWallpapers(wallpapers, portWallpaperArr, portOverlayWallpaperArr, wallpaperThumbArr, nameArr, 0);
                loadWallpapers(wallpapers, landWallpaperArr, 0, wallpaperThumbArr, nameArr, 1);
            }
        }
        addWallpapers(wallpapers);
    }

    private void loadWallpapers(List<Wallpaper> wallpapers, int wallpaperResArr, int wallpaperOverlayResArr, int wallpaperThumbResArr, int nameArr, int orientation) {
        String packageName = getWallpaperResourcePackageName();
        if (packageName == null) {
            Logger.d(TAG, "packageName is null");
            return;
        }
        String[] names = this.mResources.getStringArray(nameArr);
        int[] wallpaperResIds = WallpaperUtils.getWallpaperResourceIds(this.mResources, wallpaperResArr);
        int[] wallpaperOverlayResIds = wallpaperOverlayResArr > 0 ? WallpaperUtils.getWallpaperResourceIds(this.mResources, wallpaperOverlayResArr) : null;
        int[] wallpaperThumbResIds = WallpaperUtils.getWallpaperResourceIds(this.mResources, wallpaperThumbResArr);
        int i = 0;
        for (int wallpaperResId : wallpaperResIds) {
            int wallpaperThumbResId = wallpaperThumbResIds[i];
            String name = names[i];
            Logger.d(TAG, "wallpaperResId=%d", Integer.valueOf(wallpaperResId));
            Wallpaper wallpaper = new Wallpaper(wallpaperResId, wallpaperThumbResId, name, orientation);
            if (wallpaperOverlayResIds != null && i < wallpaperOverlayResIds.length) {
                wallpaper.setOverlayResId(wallpaperOverlayResIds[i]);
            }
            wallpapers.add(wallpaper);
            i++;
        }
    }

    private void addWallpapers(List<Wallpaper> wallpapers) {
        for (Wallpaper wallpaper : wallpapers) {
            if (wallpaper.thumbResId != 0) {
                ResourceWallpaperInfo info = new ResourceWallpaperInfo(this.mResources, wallpaper.name, wallpaper.resId, wallpaper.orientation);
                info.mThumb = this.mContext.getDrawable(wallpaper.thumbResId);
                if (wallpaper.overlayResId > 0) {
                    info.setOverlayResId(wallpaper.overlayResId);
                }
                addTile(info);
                Logger.d(TAG, "wallpaper added: %s", wallpaper);
            } else {
                Logger.e(TAG, "couldn't find wallpaper: %s", wallpaper);
            }
        }
    }

    private String getWallpaperResourcePackageName() {
        int resId = StyleManager.getInstance().getResourceId(StyleConstant.PORTRAIT_WALLPAPERS);
        String packageName = this.mContext.getResources().getResourcePackageName(resId);
        try {
            ApplicationInfo info = this.mContext.getPackageManager().getApplicationInfo(packageName, 0);
            return info.packageName;
        } catch (PackageManager.NameNotFoundException e) {
            Logger.e(TAG, "failed to get wallpaper resource package name, error: %s", e);
            return null;
        }
    }

    private int getCurrentOrientation() {
        WallpaperTileInfo wallpaperTileInfo = PreferencesHelper.getWallpaperTile(this.mContext);
        if (wallpaperTileInfo != null) {
            return wallpaperTileInfo.getOrientation();
        }
        return 1;
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.providers.WallpaperTileInfoProvider
    public void loadTiles() {
        clearTiles();
        findBundledWallpapers();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class Wallpaper {
        protected String name;
        protected int orientation;
        protected int overlayResId = 0;
        protected int resId;
        protected int thumbResId;

        public Wallpaper(int resId, int thumbResId, String name, int orientation) {
            this.resId = resId;
            this.thumbResId = thumbResId;
            this.name = name;
            this.orientation = orientation;
        }

        public void setOverlayResId(int overlayResId) {
            this.overlayResId = overlayResId;
        }

        public String toString() {
            return String.format(Locale.US, "resId=%d, overlayResId=%d, thumbResId=%d, name=%s, orientation=%d", Integer.valueOf(this.resId), Integer.valueOf(this.overlayResId), Integer.valueOf(this.thumbResId), this.name, Integer.valueOf(this.orientation));
        }
    }
}
