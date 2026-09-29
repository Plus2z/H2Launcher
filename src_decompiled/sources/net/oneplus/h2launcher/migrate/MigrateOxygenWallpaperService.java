package net.oneplus.h2launcher.migrate;

import android.app.WallpaperManager;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import java.io.File;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.customizations.wallpaper.BlurWallpaperSettings;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.UriWallpaperInfo;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class MigrateOxygenWallpaperService extends MigrateWallpaperService {
    public MigrateOxygenWallpaperService() {
        super(MigrateOxygenWallpaperService.class.getSimpleName());
    }

    @Override // net.oneplus.h2launcher.migrate.MigrateWallpaperService
    protected Bitmap getWallpaperForMigration() {
        Drawable wallpaperDrawable = WallpaperManager.getInstance(this.mContext).getDrawable();
        Bitmap bitmap = wallpaperDrawable instanceof BitmapDrawable ? ((BitmapDrawable) wallpaperDrawable).getBitmap() : null;
        if (bitmap == null || bitmap.isRecycled()) {
            Logger.e(this.mTag, "failed to create wallpaper bitmap");
            return null;
        }
        return bitmap;
    }

    @Override // net.oneplus.h2launcher.migrate.MigrateWallpaperService
    protected UriWallpaperInfo createWallpaperTile(File output) {
        Uri outputUri = Uri.fromFile(output);
        return new UriWallpaperInfo(outputUri, outputUri, 0, 0);
    }

    @Override // net.oneplus.h2launcher.migrate.MigrateWallpaperService
    protected BlurWallpaperSettings createBlurWallpaperSettings(UriWallpaperInfo info) {
        return PreferencesHelper.getBlurWallpaperSettings(this.mContext);
    }

    @Override // net.oneplus.h2launcher.migrate.MigrateWallpaperService
    protected void cleanUpMigratedPreferencesAndFiles() {
        File filesDir = this.mContext.getFilesDir();
        File[] files = filesDir.listFiles();
        for (File file : files) {
            String filename = file.getName();
            if (filename.equals("migrated_wallpaper")) {
                boolean result = file.delete();
                if (!result) {
                    Logger.d(this.mTag, "failed to delete file: %s", file.getAbsolutePath());
                }
            }
        }
    }
}
