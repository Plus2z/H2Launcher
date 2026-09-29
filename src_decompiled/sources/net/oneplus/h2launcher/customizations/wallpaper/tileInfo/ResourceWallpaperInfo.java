package net.oneplus.h2launcher.customizations.wallpaper.tileInfo;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.customizations.WallpaperCard;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.util.WallpaperUtils;

/* loaded from: classes.dex */
public class ResourceWallpaperInfo extends WallpaperTileInfo {
    private int mOverlayResId;
    private int mResId;
    private Resources mResources;

    public ResourceWallpaperInfo(Resources res, String name, int resId, int orientation) {
        this.mResources = res;
        this.mResId = resId;
        this.mType = WallpaperTileInfo.Type.RESOURCE;
        this.mOrientation = orientation;
        this.mWallpaper = this.mResources.getResourceName(this.mResId);
        this.mName = name;
    }

    public void setOverlayResId(int overlayResId) {
        this.mOverlayResId = overlayResId;
        if (this.mOverlayResId != 0) {
            this.mOverlayWallpaper = this.mResources.getResourceName(this.mOverlayResId);
        }
    }

    private boolean hasOverlay(int screen) {
        return screen == 1 && this.mOverlayResId > 0;
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo
    public String getPreviewCacheKey(int screen) {
        return "preview_res_" + this.mResId + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + screen;
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo
    public void onClick(WallpaperCard card, int screen, boolean changed) {
        if (changed) {
            String cacheKey = getPreviewCacheKey(screen);
            Bitmap bitmap = card.getImageFromCache(cacheKey);
            if (bitmap == null) {
                int resId = hasOverlay(screen) ? this.mOverlayResId : this.mResId;
                WallpaperUtils.CreateParams params = new WallpaperUtils.CreateParams(resId, screen, true, this.mOrientation);
                bitmap = WallpaperUtils.createBackground(card.getContext(), params);
            }
            card.setWallpaper(screen, cacheKey, bitmap);
        }
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo
    public void onSave(Context context, int screen) {
        Bitmap bitmap = getWallpaperBitmap(context, screen);
        WallpaperUtils.saveWallpaperByInputStream(context, bitmap, screen);
        if (bitmap != null) {
            bitmap.recycle();
        }
        if (screen == 1) {
            PreferencesHelper.setWallpaperTile(context, this);
        } else {
            PreferencesHelper.setLockWallpaperTile(context, this);
        }
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo
    public boolean isSelectable() {
        return true;
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo
    public boolean isNamelessWallpaper() {
        return true;
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo
    public Bitmap getWallpaperBitmap(Context context, int screen) {
        int resId = hasOverlay(screen) ? this.mOverlayResId : this.mResId;
        return BitmapFactory.decodeResource(this.mResources, resId);
    }
}
