package net.oneplus.h2launcher.dynamicui;

import android.annotation.TargetApi;
import android.app.WallpaperManager;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.graphics.ColorUtils;
import android.support.v7.graphics.Palette;
import java.util.List;
import net.oneplus.h2launcher.JobBuilderWrapper;
import net.oneplus.h2launcher.Utilities;

/* loaded from: classes.dex */
public class ExtractionUtils {
    public static final String EXTRACTED_COLORS_PREFERENCE_KEY = "pref_extractedColors";
    private static final int FLAG_SET_SYSTEM = 1;
    private static final float MIN_CONTRAST_RATIO = 2.0f;
    public static final String WALLPAPER_ID_PREFERENCE_KEY = "pref_wallpaperId";

    public static void startColorExtractionServiceIfNecessary(final Context context, final boolean force) {
        Utilities.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: net.oneplus.h2launcher.dynamicui.ExtractionUtils.1
            @Override // java.lang.Runnable
            public void run() {
                if (ExtractionUtils.hasWallpaperIdChanged(context) || force) {
                    ExtractionUtils.startColorExtractionService(context);
                }
            }
        });
    }

    public static void startColorExtractionService(Context context) {
        JobInfo.Builder builder = JobBuilderWrapper.create(new ComponentName(context, (Class<?>) ColorExtractionService.class));
        JobScheduler js = (JobScheduler) context.getSystemService("jobscheduler");
        js.schedule(builder.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean hasWallpaperIdChanged(Context context) {
        if (!Utilities.ATLEAST_NOUGAT) {
            return false;
        }
        SharedPreferences sharedPrefs = Utilities.getPrefs(context);
        int wallpaperId = getWallpaperId(WallpaperManager.getInstance(context));
        int savedWallpaperId = sharedPrefs.getInt(WALLPAPER_ID_PREFERENCE_KEY, -1);
        return wallpaperId != savedWallpaperId;
    }

    @TargetApi(24)
    public static int getWallpaperId(WallpaperManager wallpaperManager) {
        if (Utilities.ATLEAST_NOUGAT) {
            return wallpaperManager.getWallpaperId(1);
        }
        return -1;
    }

    public static boolean isSuperLight(Palette p) {
        return !isLegibleOnWallpaper(-1, p.getSwatches());
    }

    public static boolean isSuperDark(Palette p) {
        return !isLegibleOnWallpaper(-16777216, p.getSwatches());
    }

    private static boolean isLegibleOnWallpaper(int color, List<Palette.Swatch> wallpaperSwatches) {
        int legiblePopulation = 0;
        int illegiblePopulation = 0;
        for (Palette.Swatch swatch : wallpaperSwatches) {
            if (isLegible(color, swatch.getRgb())) {
                legiblePopulation += swatch.getPopulation();
            } else {
                illegiblePopulation += swatch.getPopulation();
            }
        }
        return legiblePopulation > illegiblePopulation;
    }

    private static boolean isLegible(int foreground, int background) {
        return ColorUtils.calculateContrast(foreground, ColorUtils.setAlphaComponent(background, 255)) >= 2.0d;
    }
}
