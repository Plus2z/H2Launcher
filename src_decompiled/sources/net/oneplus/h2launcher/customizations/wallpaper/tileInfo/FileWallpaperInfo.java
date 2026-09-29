package net.oneplus.h2launcher.customizations.wallpaper.tileInfo;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import java.io.ByteArrayOutputStream;
import java.io.File;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.customizations.WallpaperCard;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.WallpaperUtils;

/* loaded from: classes.dex */
public class FileWallpaperInfo extends WallpaperTileInfo {
    private static final String TAG = FileWallpaperInfo.class.getSimpleName();
    private File mFile;

    public FileWallpaperInfo(File target, Drawable thumb, int maskColor, int orientation, String name) {
        this.mFile = target;
        this.mThumb = thumb;
        init(WallpaperTileInfo.Type.FILE, this.mFile.getAbsolutePath(), maskColor, orientation, name);
    }

    public FileWallpaperInfo(File file, int maskColor, int orientation, String name) {
        this.mFile = file;
        init(WallpaperTileInfo.Type.FILE, this.mFile.getAbsolutePath(), maskColor, orientation, name);
    }

    private void init(WallpaperTileInfo.Type type, String wallpaper, int maskColor, int orientation, String name) {
        this.mType = type;
        this.mWallpaper = wallpaper;
        this.mMaskColor = maskColor;
        this.mOrientation = orientation;
        this.mName = name;
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo
    public String getPreviewCacheKey(int screen) {
        return "preview_file_" + this.mFile.getAbsolutePath();
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo
    public void onClick(WallpaperCard card, int screen, boolean changed) {
        if (changed) {
            String cacheKey = getPreviewCacheKey(screen);
            Bitmap bitmap = card.getImageFromCache(cacheKey);
            if (bitmap == null) {
                Context context = card.getContext();
                Bitmap temp = getWallpaperBitmap(context, screen);
                if (temp == null) {
                    Logger.e(TAG, "failed to decode file: %s", this.mFile.getAbsolutePath());
                    return;
                }
                ByteArrayOutputStream stream = new ByteArrayOutputStream();
                temp.compress(Bitmap.CompressFormat.JPEG, 70, stream);
                WallpaperUtils.CreateParams params = new WallpaperUtils.CreateParams(stream.toByteArray(), screen, true, this.mOrientation);
                bitmap = WallpaperUtils.createBackground(context, params);
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
    public Bitmap getWallpaperBitmap(Context context, int screen) {
        Uri uri = Uri.fromFile(this.mFile);
        WallpaperUtils.CreateParams params = new WallpaperUtils.CreateParams(uri, screen, false, this.mOrientation);
        Bitmap wallpaper = WallpaperUtils.createBackground(context, params);
        if (wallpaper == null) {
            Logger.e(TAG, "failed to get wallpaper bitmap");
            return null;
        }
        return wallpaper;
    }
}
