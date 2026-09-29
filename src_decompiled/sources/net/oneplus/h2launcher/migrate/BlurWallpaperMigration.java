package net.oneplus.h2launcher.migrate;

import android.content.ComponentName;
import android.content.Context;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.WallpaperUtils;

/* loaded from: classes.dex */
public class BlurWallpaperMigration {
    private static final String TAG = BlurWallpaperMigration.class.getSimpleName();
    private static final ComponentName LATEST_ONEPLUS_BLUR_WALLPAPER = WallpaperUtils.ONEPLUS_BLUR_WALLPAPER;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void performMigration(Context context) {
        boolean isWallpaperMigrated = isWallpaperMigrated(context);
        Logger.d(TAG, "[performMigration] isWallpaperMigrated=%b", Boolean.valueOf(isWallpaperMigrated));
        if (!isWallpaperMigrated) {
            if (WallpaperUtils.isLegacyOnePlusBlurWallpaper(context)) {
                WallpaperTileInfo tileInfo = PreferencesHelper.getWallpaperTile(context);
                String str = TAG;
                Object[] objArr = new Object[1];
                objArr[0] = tileInfo == null ? "null" : tileInfo;
                Logger.d(str, "[performMigration] migrate to latest blur wallpaper: tileInfo=%s", objArr);
                if (tileInfo != null) {
                    tileInfo.onBeforeSave(tileInfo.getOrientation());
                    tileInfo.onSave(context, 1);
                }
            }
            setWallpaperMigrated(context);
        }
    }

    private static boolean isWallpaperMigrated(Context context) {
        ComponentName blurWallpaper = PreferencesHelper.getLastMigratedWallpaper(context);
        return blurWallpaper != null && LATEST_ONEPLUS_BLUR_WALLPAPER.equals(blurWallpaper);
    }

    private static void setWallpaperMigrated(Context context) {
        Logger.d(TAG, "[performMigration] setWallpaperMigrated");
        PreferencesHelper.setLastMigratedWallpaper(context, LATEST_ONEPLUS_BLUR_WALLPAPER);
    }
}
