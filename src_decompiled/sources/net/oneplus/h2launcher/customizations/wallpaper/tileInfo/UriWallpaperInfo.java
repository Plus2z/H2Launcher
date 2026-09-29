package net.oneplus.h2launcher.customizations.wallpaper.tileInfo;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.util.Size;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.customizations.WallpaperCard;
import net.oneplus.h2launcher.customizations.wallpaper.BitmapUtils;
import net.oneplus.h2launcher.customizations.wallpaper.WallpaperImageCache;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.WallpaperUtils;

/* loaded from: classes.dex */
public class UriWallpaperInfo extends WallpaperTileInfo {
    private static final String TAG = UriWallpaperInfo.class.getSimpleName();
    private Uri mSourceUri;
    private Bitmap mThumbnail;
    private Uri mUri;

    public UriWallpaperInfo(Uri sourceUri, Uri uri, int maskColor, int orientation) {
        this.mSourceUri = sourceUri;
        this.mUri = uri;
        this.mWallpaper = uri.getPath();
        this.mType = WallpaperTileInfo.Type.FILE;
        this.mMaskColor = maskColor;
        this.mOrientation = orientation;
        this.mName = this.mSourceUri != null ? this.mSourceUri.toString() : null;
    }

    public void updateMetaData(String serialNumber) {
        this.mWallpaper += serialNumber;
        this.mName += serialNumber;
    }

    public void loadImage(Context context, int screen) {
        WallpaperUtils.CreateParams params = new WallpaperUtils.CreateParams(this.mUri, screen, true, this.mOrientation);
        Bitmap preview = WallpaperUtils.createBackground(context, params);
        String cacheKey = getPreviewCacheKey(screen);
        if (WallpaperImageCache.getImage(cacheKey) == null) {
            WallpaperImageCache.cacheImage(cacheKey, preview);
        }
        if (preview != null) {
            int rotation = BitmapUtils.getRotationFromExif(context, this.mSourceUri);
            Size thumbSize = WallpaperCard.getDefaultThumbnailSize(context.getResources());
            this.mThumbnail = WallpaperUtils.createThumbnail(thumbSize, context, this.mSourceUri, null, null, 0, rotation, false);
            this.mThumb = new BitmapDrawable(context.getResources(), this.mThumbnail);
        }
    }

    public Bitmap getThumbnail() {
        return this.mThumbnail;
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo
    public String getPreviewCacheKey(int screen) {
        return "preview_uri_" + this.mUri.toString();
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo
    public void onClick(WallpaperCard card, int screen, boolean changed) {
        if (changed) {
            String cacheKey = getPreviewCacheKey(screen);
            Bitmap bitmap = card.getImageFromCache(cacheKey);
            if (bitmap != null) {
                card.setWallpaper(screen, cacheKey, bitmap);
            } else {
                Logger.w(TAG, "Couldn't get bitmap");
            }
        }
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo
    public void onSave(Context context, int screen) {
        WallpaperUtils.CreateParams params = new WallpaperUtils.CreateParams(this.mUri, screen, false, this.mOrientation);
        Bitmap wallpaper = WallpaperUtils.createBackground(context, params);
        if (wallpaper == null) {
            Logger.w(TAG, "cannot apply the wallpaper cause the bitmap is null object.");
            return;
        }
        Logger.d(TAG, "apply wallpaper size width = %d , height = %d", Integer.valueOf(wallpaper.getWidth()), Integer.valueOf(wallpaper.getHeight()));
        this.mWallpaper = WallpaperUtils.saveWallpaperFiles(context, wallpaper, this.mThumbnail, screen, this.mMaskColor, this.mOrientation, this.mName);
        if (screen == 0 || (screen == 1 && this.mOrientation == this.mHomeScreenOrientation)) {
            long start = System.currentTimeMillis();
            WallpaperUtils.saveWallpaperByInputStream(context, wallpaper, screen);
            long diff = System.currentTimeMillis() - start;
            Logger.d(TAG, "apply to wallpaperManager spend %d ms", Long.valueOf(diff));
        }
        if (screen == 1 && this.mOrientation == this.mHomeScreenOrientation) {
            PreferencesHelper.setWallpaperTile(context, this);
        } else if (screen == 0) {
            PreferencesHelper.setLockWallpaperTile(context, this);
        }
        wallpaper.recycle();
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
        WallpaperUtils.CreateParams params = new WallpaperUtils.CreateParams(this.mUri, screen, false, this.mOrientation);
        Bitmap wallpaper = WallpaperUtils.createBackground(context, params);
        if (wallpaper == null) {
            Logger.e(TAG, "failed to get wallpaper bitmap");
            return null;
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream(2048);
        wallpaper.compress(Bitmap.CompressFormat.JPEG, 100, out);
        return BitmapFactory.decodeStream(new ByteArrayInputStream(out.toByteArray()));
    }
}
