package net.oneplus.h2launcher.dynamicui;

import android.app.WallpaperManager;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Bundle;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.WallpaperUtils;

/* loaded from: classes.dex */
public class ColorExtractionService extends JobService {
    private static final float HOTSEAT_FRACTION = 0.25f;
    private static final String TAG = "ColorExtractionService";

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        Logger.d(TAG, "onStartJob#");
        WallpaperManager wallpaperManager = WallpaperManager.getInstance(this);
        int wallpaperId = ExtractionUtils.getWallpaperId(wallpaperManager);
        ExtractedColors extractedColors = new ExtractedColors();
        if (WallpaperUtils.isNormalLiveWallpaper(this)) {
            extractedColors.updateHotseatPalette(this, null);
        } else {
            extractedColors.updateHotseatPalette(this, getHotseatPalette());
        }
        String colorsString = extractedColors.encodeAsString();
        Bundle extras = new Bundle();
        extras.putInt(LauncherSettings.Settings.EXTRA_WALLPAPER_ID, wallpaperId);
        extras.putString(LauncherSettings.Settings.EXTRA_EXTRACTED_COLORS, colorsString);
        getContentResolver().call(LauncherSettings.Settings.CONTENT_URI, LauncherSettings.Settings.METHOD_SET_EXTRACTED_COLORS_AND_WALLPAPER_ID, (String) null, extras);
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        Logger.d(TAG, "onStopJob#");
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x008a  */
    @android.annotation.TargetApi(24)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.support.v7.graphics.Palette getHotseatPalette() {
        /*
            r15 = this;
            android.app.WallpaperManager r7 = android.app.WallpaperManager.getInstance(r15)
            boolean r9 = net.oneplus.h2launcher.Utilities.ATLEAST_NOUGAT
            if (r9 == 0) goto L99
            r0 = 0
            boolean r9 = net.oneplus.h2launcher.util.WallpaperUtils.isOnePlusBlurWallpaper(r15)
            if (r9 == 0) goto L3c
            java.io.File r9 = net.oneplus.h2launcher.util.WallpaperUtils.getOnePlusBlurWallpaperFile(r15)
            java.lang.String r9 = r9.getAbsolutePath()
            android.graphics.BitmapFactory$Options r10 = new android.graphics.BitmapFactory$Options
            r10.<init>()
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeFile(r9, r10)
            if (r0 != 0) goto L2d
            r8 = 2130837975(0x7f0201d7, float:1.728092E38)
            android.content.res.Resources r9 = r15.getResources()
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeResource(r9, r8)
        L2d:
            if (r0 == 0) goto L99
            android.support.v7.graphics.Palette$Builder r9 = android.support.v7.graphics.Palette.from(r0)
            android.support.v7.graphics.Palette$Builder r9 = r9.clearFilters()
            android.support.v7.graphics.Palette r9 = r9.generate()
        L3b:
            return r9
        L3c:
            r9 = 1
            android.os.ParcelFileDescriptor r4 = r7.getWallpaperFile(r9)     // Catch: java.io.IOException -> L73 java.lang.NullPointerException -> L80
            r10 = 0
            java.io.FileDescriptor r9 = r4.getFileDescriptor()     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> Lc7
            r11 = 0
            android.graphics.BitmapRegionDecoder r2 = android.graphics.BitmapRegionDecoder.newInstance(r9, r11)     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> Lc7
            int r5 = r2.getHeight()     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> Lc7
            android.graphics.Rect r1 = new android.graphics.Rect     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> Lc7
            r9 = 0
            float r11 = (float) r5     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> Lc7
            r12 = 1061158912(0x3f400000, float:0.75)
            float r11 = r11 * r12
            int r11 = (int) r11     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> Lc7
            int r12 = r2.getWidth()     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> Lc7
            r1.<init>(r9, r11, r12, r5)     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> Lc7
            r9 = 0
            android.graphics.Bitmap r0 = r2.decodeRegion(r1, r9)     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> Lc7
            r2.recycle()     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> Lc7
            if (r4 == 0) goto L2d
            if (r10 == 0) goto L7c
            r4.close()     // Catch: java.lang.Throwable -> L6e java.io.IOException -> L73 java.lang.NullPointerException -> L80
            goto L2d
        L6e:
            r9 = move-exception
            r10.addSuppressed(r9)     // Catch: java.io.IOException -> L73 java.lang.NullPointerException -> L80
            goto L2d
        L73:
            r3 = move-exception
        L74:
            java.lang.String r9 = "ColorExtractionService"
            java.lang.String r10 = "Fetching partial bitmap failed, trying old method"
            android.util.Log.e(r9, r10, r3)
            goto L2d
        L7c:
            r4.close()     // Catch: java.io.IOException -> L73 java.lang.NullPointerException -> L80
            goto L2d
        L80:
            r3 = move-exception
            goto L74
        L82:
            r9 = move-exception
            throw r9     // Catch: java.lang.Throwable -> L84
        L84:
            r10 = move-exception
            r14 = r10
            r10 = r9
            r9 = r14
        L88:
            if (r4 == 0) goto L8f
            if (r10 == 0) goto L95
            r4.close()     // Catch: java.io.IOException -> L73 java.lang.NullPointerException -> L80 java.lang.Throwable -> L90
        L8f:
            throw r9     // Catch: java.io.IOException -> L73 java.lang.NullPointerException -> L80
        L90:
            r11 = move-exception
            r10.addSuppressed(r11)     // Catch: java.io.IOException -> L73 java.lang.NullPointerException -> L80
            goto L8f
        L95:
            r4.close()     // Catch: java.io.IOException -> L73 java.lang.NullPointerException -> L80
            goto L8f
        L99:
            android.graphics.drawable.Drawable r9 = r7.getDrawable()
            android.graphics.drawable.BitmapDrawable r9 = (android.graphics.drawable.BitmapDrawable) r9
            android.graphics.Bitmap r6 = r9.getBitmap()
            android.support.v7.graphics.Palette$Builder r9 = android.support.v7.graphics.Palette.from(r6)
            r10 = 0
            int r11 = r6.getHeight()
            float r11 = (float) r11
            r12 = 1061158912(0x3f400000, float:0.75)
            float r11 = r11 * r12
            int r11 = (int) r11
            int r12 = r6.getWidth()
            int r13 = r6.getHeight()
            android.support.v7.graphics.Palette$Builder r9 = r9.setRegion(r10, r11, r12, r13)
            android.support.v7.graphics.Palette$Builder r9 = r9.clearFilters()
            android.support.v7.graphics.Palette r9 = r9.generate()
            goto L3b
        Lc7:
            r9 = move-exception
            goto L88
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.dynamicui.ColorExtractionService.getHotseatPalette():android.support.v7.graphics.Palette");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008d  */
    @android.annotation.TargetApi(24)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.support.v7.graphics.Palette getStatusBarPalette() {
        /*
            r14 = this;
            android.app.WallpaperManager r7 = android.app.WallpaperManager.getInstance(r14)
            android.content.res.Resources r9 = r14.getResources()
            r10 = 2131493176(0x7f0c0138, float:1.8609825E38)
            int r5 = r9.getDimensionPixelSize(r10)
            boolean r9 = net.oneplus.h2launcher.Utilities.ATLEAST_NOUGAT
            if (r9 == 0) goto L9c
            r0 = 0
            boolean r9 = net.oneplus.h2launcher.util.WallpaperUtils.isOnePlusBlurWallpaper(r14)
            if (r9 == 0) goto L47
            java.io.File r9 = net.oneplus.h2launcher.util.WallpaperUtils.getOnePlusBlurWallpaperFile(r14)
            java.lang.String r9 = r9.getAbsolutePath()
            android.graphics.BitmapFactory$Options r10 = new android.graphics.BitmapFactory$Options
            r10.<init>()
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeFile(r9, r10)
            if (r0 != 0) goto L38
            r8 = 2130837975(0x7f0201d7, float:1.728092E38)
            android.content.res.Resources r9 = r14.getResources()
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeResource(r9, r8)
        L38:
            if (r0 == 0) goto L9c
            android.support.v7.graphics.Palette$Builder r9 = android.support.v7.graphics.Palette.from(r0)
            android.support.v7.graphics.Palette$Builder r9 = r9.clearFilters()
            android.support.v7.graphics.Palette r9 = r9.generate()
        L46:
            return r9
        L47:
            r9 = 1
            android.os.ParcelFileDescriptor r4 = r7.getWallpaperFile(r9)     // Catch: java.io.IOException -> L76 java.lang.NullPointerException -> L83
            r10 = 0
            java.io.FileDescriptor r9 = r4.getFileDescriptor()     // Catch: java.lang.Throwable -> L85 java.lang.Throwable -> Lbd
            r11 = 0
            android.graphics.BitmapRegionDecoder r2 = android.graphics.BitmapRegionDecoder.newInstance(r9, r11)     // Catch: java.lang.Throwable -> L85 java.lang.Throwable -> Lbd
            android.graphics.Rect r1 = new android.graphics.Rect     // Catch: java.lang.Throwable -> L85 java.lang.Throwable -> Lbd
            r9 = 0
            r11 = 0
            int r12 = r2.getWidth()     // Catch: java.lang.Throwable -> L85 java.lang.Throwable -> Lbd
            r1.<init>(r9, r11, r12, r5)     // Catch: java.lang.Throwable -> L85 java.lang.Throwable -> Lbd
            r9 = 0
            android.graphics.Bitmap r0 = r2.decodeRegion(r1, r9)     // Catch: java.lang.Throwable -> L85 java.lang.Throwable -> Lbd
            r2.recycle()     // Catch: java.lang.Throwable -> L85 java.lang.Throwable -> Lbd
            if (r4 == 0) goto L38
            if (r10 == 0) goto L7f
            r4.close()     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L76 java.lang.NullPointerException -> L83
            goto L38
        L71:
            r9 = move-exception
            r10.addSuppressed(r9)     // Catch: java.io.IOException -> L76 java.lang.NullPointerException -> L83
            goto L38
        L76:
            r3 = move-exception
        L77:
            java.lang.String r9 = "ColorExtractionService"
            java.lang.String r10 = "Fetching partial bitmap failed, trying old method"
            android.util.Log.e(r9, r10, r3)
            goto L38
        L7f:
            r4.close()     // Catch: java.io.IOException -> L76 java.lang.NullPointerException -> L83
            goto L38
        L83:
            r3 = move-exception
            goto L77
        L85:
            r9 = move-exception
            throw r9     // Catch: java.lang.Throwable -> L87
        L87:
            r10 = move-exception
            r13 = r10
            r10 = r9
            r9 = r13
        L8b:
            if (r4 == 0) goto L92
            if (r10 == 0) goto L98
            r4.close()     // Catch: java.io.IOException -> L76 java.lang.NullPointerException -> L83 java.lang.Throwable -> L93
        L92:
            throw r9     // Catch: java.io.IOException -> L76 java.lang.NullPointerException -> L83
        L93:
            r11 = move-exception
            r10.addSuppressed(r11)     // Catch: java.io.IOException -> L76 java.lang.NullPointerException -> L83
            goto L92
        L98:
            r4.close()     // Catch: java.io.IOException -> L76 java.lang.NullPointerException -> L83
            goto L92
        L9c:
            android.graphics.drawable.Drawable r9 = r7.getDrawable()
            android.graphics.drawable.BitmapDrawable r9 = (android.graphics.drawable.BitmapDrawable) r9
            android.graphics.Bitmap r6 = r9.getBitmap()
            android.support.v7.graphics.Palette$Builder r9 = android.support.v7.graphics.Palette.from(r6)
            r10 = 0
            r11 = 0
            int r12 = r6.getWidth()
            android.support.v7.graphics.Palette$Builder r9 = r9.setRegion(r10, r11, r12, r5)
            android.support.v7.graphics.Palette$Builder r9 = r9.clearFilters()
            android.support.v7.graphics.Palette r9 = r9.generate()
            goto L46
        Lbd:
            r9 = move-exception
            goto L8b
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.dynamicui.ColorExtractionService.getStatusBarPalette():android.support.v7.graphics.Palette");
    }
}
