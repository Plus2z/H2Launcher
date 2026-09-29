package net.oneplus.h2launcher.migrate;

import android.app.job.JobParameters;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import java.io.File;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.customizations.wallpaper.BlurWallpaperSettings;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.UriWallpaperInfo;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.WallpaperUtils;

/* loaded from: classes.dex */
public class MigrateHydrogenWallpaperService extends MigrateWallpaperService {
    public static final String EXTRA_WALLPAPER_URI = "extra_wallpaper_uri";
    private int mMaskColor;

    public MigrateHydrogenWallpaperService() {
        super(MigrateHydrogenWallpaperService.class.getSimpleName());
    }

    @Override // net.oneplus.h2launcher.migrate.MigrateWallpaperService
    protected Bitmap getWallpaperForMigration() {
        Bundle bundle;
        Uri wallpaperUri = null;
        JobParameters jobParameters = getJobParameters();
        if (jobParameters != null && (bundle = jobParameters.getTransientExtras()) != null) {
            wallpaperUri = (Uri) bundle.getParcelable(EXTRA_WALLPAPER_URI);
        }
        if (wallpaperUri == null) {
            Logger.e(this.mTag, "cannot find hydrogen wallpaper file in intent");
            return null;
        }
        Logger.d(this.mTag, "hydrogen wallpaper uri path: %s", wallpaperUri.getPath());
        File hydrogenWallpaper = new File(wallpaperUri.getPath());
        if (!hydrogenWallpaper.exists()) {
            Logger.e(this.mTag, "hydrogen wallpaper file doesn't exist");
            return null;
        }
        Logger.d(this.mTag, "hydrogen wallpaper: %s", hydrogenWallpaper.getPath());
        Uri uri = Uri.fromFile(hydrogenWallpaper);
        WallpaperUtils.CreateParams params = new WallpaperUtils.CreateParams(uri, 1, false, 1);
        Bitmap bitmap = WallpaperUtils.createBackground(this.mContext, params);
        if (bitmap == null || bitmap.isRecycled()) {
            Logger.e(this.mTag, "failed to create wallpaper bitmap");
            return null;
        }
        this.mMaskColor = WallpaperUtils.getDominantColor(bitmap);
        return bitmap;
    }

    @Override // net.oneplus.h2launcher.migrate.MigrateWallpaperService
    protected UriWallpaperInfo createWallpaperTile(File output) {
        Uri outputUri = Uri.fromFile(output);
        return new UriWallpaperInfo(outputUri, outputUri, this.mMaskColor, 1);
    }

    @Override // net.oneplus.h2launcher.migrate.MigrateWallpaperService
    protected BlurWallpaperSettings createBlurWallpaperSettings(UriWallpaperInfo info) {
        BlurWallpaperSettings settings = PreferencesHelper.getBlurWallpaperSettings(this.mContext);
        settings.blurEnabled = true;
        settings.maskColor = info.getMaskColor();
        settings.orientation = info.getOrientation();
        return settings;
    }

    @Override // net.oneplus.h2launcher.migrate.MigrateWallpaperService
    protected void cleanUpMigratedPreferencesAndFiles() {
        File filesDir = this.mContext.getFilesDir();
        File[] files = filesDir.listFiles();
        for (File file : files) {
            String filename = file.getName();
            if (filename.equals("migrated_wallpaper") || filename.equals(MigrationManager.HYDROGEN_RESOURCE_WALLPAPER_FILENAME) || filename.contains(MigrationManager.HYDROGEN_CUSTOM_WALLPAPER_FILENAME_INFIX) || filename.contains(MigrationManager.HYDROGEN_CUSTOM_WALLPAPER_THUMBNAIL_FILENAME_INFIX)) {
                boolean result = file.delete();
                if (!result) {
                    Logger.d(this.mTag, "failed to delete file: %s", file.getAbsolutePath());
                }
            }
        }
        MigrationManager.deletePref(this.mContext, MigrationManager.HYDROGEN_LAUNCHER_DEFAULT_SHARED_PREFERENCE_NAME);
    }
}
