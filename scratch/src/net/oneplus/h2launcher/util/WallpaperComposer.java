package net.oneplus.h2launcher.util;

import android.app.WallpaperManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v7.graphics.Palette;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Method;
import java.util.List;
import net.oneplus.h2launcher.PagedView;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.Workspace;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.customizations.wallpaper.BlurWallpaperSettings;

public class WallpaperComposer {
    private static final String TAG = "WallpaperComposer";
    public static final int BLUR_RADIUS = 14;

    private static volatile Bitmap sCachedBlurWallpaper = null;
    private static volatile int sCachedMaskColor = 0;
    private static volatile boolean sIsGenerating = false;
    private static Paint sBlurPaint = null;

    public static Bitmap composeHomeScreenWallpaper(Context context, Bitmap srcBitmap, int maskColor, int orientation) {
        if (srcBitmap == null) {
            return null;
        }

        try {
            Point realSize = Utilities.getScreenDimensions(context, true);
            int screenWidth = realSize != null && realSize.x > 0 ? realSize.x : 1080;
            int screenHeight = realSize != null && realSize.y > 0 ? realSize.y : 2400;

            int effectiveColor = maskColor;
            if (effectiveColor == 0) {
                try {
                    List swatches = WallpaperUtils.loadWallpaperSwatches(srcBitmap);
                    if (swatches != null && !swatches.isEmpty()) {
                        Object first = swatches.get(0);
                        if (first instanceof Palette.Swatch) {
                            effectiveColor = ((Palette.Swatch) first).getRgb();
                        }
                    }
                } catch (Throwable ignored) {
                }
            }
            if (effectiveColor == 0) {
                effectiveColor = 0xffe0e0e0;
            }

            if (orientation == 1) {
                // Classic Hydrogen OS 33% window mode (landscape orientation)
                float aspectRatio = WallpaperUtils.getLandscapeWallpaperAspectRatio();
                if (aspectRatio <= 0.1f) {
                    aspectRatio = 1.1320755f;
                }

                int dstHeight = (int) (screenWidth / aspectRatio);
                if (dstHeight <= 0 || dstHeight >= screenHeight) {
                    dstHeight = (int) (screenHeight * 0.35f);
                }

                Bitmap result = Bitmap.createBitmap(screenWidth, screenHeight, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(result);

                int srcW = srcBitmap.getWidth();
                int srcH = srcBitmap.getHeight();
                float scale = Math.max((float) screenWidth / (float) srcW, (float) dstHeight / (float) srcH);
                int cropW = Math.min((int) (screenWidth / scale), srcW);
                int cropH = Math.min((int) (dstHeight / scale), srcH);
                int cropX = Math.max(0, (srcW - cropW) / 2);
                int cropY = Math.max(0, (srcH - cropH) / 2);

                Rect srcRect = new Rect(cropX, cropY, cropX + cropW, cropY + cropH);
                Rect dstRect = new Rect(0, 0, screenWidth, dstHeight);
                Paint filterPaint = new Paint(Paint.FILTER_BITMAP_FLAG);
                canvas.drawBitmap(srcBitmap, srcRect, dstRect, filterPaint);

                // Draw bottom mask card
                Paint maskPaint = new Paint();
                maskPaint.setColor(effectiveColor);
                canvas.drawRect(new Rect(0, dstHeight, screenWidth, screenHeight), maskPaint);

                Log.d(TAG, "composeHomeScreenWallpaper (33% window): W=" + screenWidth + " H=" + screenHeight
                        + " dstH=" + dstHeight + " color=" + Integer.toHexString(effectiveColor));
                return result;
            } else {
                // Portrait full screen mode
                Bitmap result = Bitmap.createBitmap(screenWidth, screenHeight, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(result);

                int srcW = srcBitmap.getWidth();
                int srcH = srcBitmap.getHeight();
                float scale = Math.max((float) screenWidth / (float) srcW, (float) screenHeight / (float) srcH);
                int cropW = Math.min((int) (screenWidth / scale), srcW);
                int cropH = Math.min((int) (screenHeight / scale), srcH);
                int cropX = Math.max(0, (srcW - cropW) / 2);
                int cropY = Math.max(0, (srcH - cropH) / 2);

                Rect srcRect = new Rect(cropX, cropY, cropX + cropW, cropY + cropH);
                Rect dstRect = new Rect(0, 0, screenWidth, screenHeight);
                Paint filterPaint = new Paint(Paint.FILTER_BITMAP_FLAG);
                canvas.drawBitmap(srcBitmap, srcRect, dstRect, filterPaint);

                Bitmap masked = WallpaperUtils.paintWallpaperColorMask(context, result, effectiveColor, 0);
                if (masked != null && masked != result) {
                    result.recycle();
                    result = masked;
                }

                Log.d(TAG, "composeHomeScreenWallpaper (portrait): W=" + screenWidth + " H=" + screenHeight
                        + " color=" + Integer.toHexString(effectiveColor));
                return result;
            }
        } catch (Throwable t) {
            Log.e(TAG, "failed to compose home screen wallpaper", t);
            return srcBitmap;
        }
    }

    public static Bitmap generateBlurWallpaper(Context context, Bitmap srcBitmap, int maskColor) {
        if (srcBitmap == null || context == null) {
            return null;
        }

        try {
            Point realSize = Utilities.getScreenDimensions(context, true);
            int screenWidth = realSize != null && realSize.x > 0 ? realSize.x : 1080;
            int screenHeight = realSize != null && realSize.y > 0 ? realSize.y : 2400;

            int effectiveColor = maskColor;
            if (effectiveColor == 0) {
                try {
                    BlurWallpaperSettings s = PreferencesHelper.getBlurWallpaperSettings(context);
                    if (s != null && s.maskColor != 0) {
                        effectiveColor = s.maskColor;
                    }
                } catch (Throwable ignored) {
                }
            }
            if (effectiveColor == 0) {
                effectiveColor = 0xff202850;
            }

            int targetW = Math.max(270, screenWidth / 4);
            int targetH = Math.max(600, screenHeight / 4);

            float screenAspect = (float) screenWidth / (float) screenHeight;
            int srcW = srcBitmap.getWidth();
            int srcH = srcBitmap.getHeight();
            float srcAspect = (float) srcW / (float) srcH;

            int cropW, cropH, cropX, cropY;
            if (srcAspect > screenAspect) {
                cropH = srcH;
                cropW = (int) (srcH * screenAspect);
                cropX = (srcW - cropW) / 2;
                cropY = 0;
            } else {
                cropW = srcW;
                cropH = (int) (srcW / screenAspect);
                cropX = 0;
                cropY = (srcH - cropH) / 2;
            }

            Bitmap scaled = Bitmap.createBitmap(targetW, targetH, Bitmap.Config.ARGB_8888);
            Canvas sc = new Canvas(scaled);
            Rect srcRect = new Rect(cropX, cropY, cropX + cropW, cropY + cropH);
            Rect dstRect = new Rect(0, 0, targetW, targetH);
            Paint filterPaint = new Paint(Paint.FILTER_BITMAP_FLAG);
            sc.drawBitmap(srcBitmap, srcRect, dstRect, filterPaint);

            Bitmap blurred = fastBlur(scaled, BLUR_RADIUS, true);
            if (blurred == null) {
                blurred = scaled;
            }

            // Blend with H2OS color mask (drawColor + alpha 0xf2 blend)
            Bitmap finalBlur = Bitmap.createBitmap(targetW, targetH, Bitmap.Config.ARGB_8888);
            Canvas fc = new Canvas(finalBlur);
            fc.drawColor(effectiveColor);
            Paint blendPaint = new Paint(Paint.FILTER_BITMAP_FLAG);
            blendPaint.setAlpha(0xf2); // 242 (standard Hydrogen OS alpha)
            fc.drawBitmap(blurred, 0, 0, blendPaint);

            if (blurred != finalBlur && !blurred.isRecycled()) {
                blurred.recycle();
            }

            // Save to files/blur_wallpaper
            File blurFile = new File(context.getFilesDir(), "blur_wallpaper");
            FileOutputStream fos = null;
            try {
                fos = new FileOutputStream(blurFile);
                finalBlur.compress(Bitmap.CompressFormat.JPEG, 92, fos);
                fos.flush();
                Log.d(TAG, "Saved blur_wallpaper successfully: " + blurFile.getAbsolutePath());
            } catch (Throwable t) {
                Log.e(TAG, "Failed to save blur_wallpaper file", t);
            } finally {
                if (fos != null) {
                    try { fos.close(); } catch (Throwable ignored) {}
                }
            }

            sCachedBlurWallpaper = finalBlur;
            sCachedMaskColor = effectiveColor;

            notifyWorkspaceInvalidate();
            return finalBlur;
        } catch (Throwable t) {
            Log.e(TAG, "Failed to generate blur wallpaper", t);
            return null;
        }
    }

    public static Bitmap getBlurWallpaper(Context context) {
        if (sCachedBlurWallpaper != null && !sCachedBlurWallpaper.isRecycled()) {
            return sCachedBlurWallpaper;
        }

        if (context == null) {
            return null;
        }

        try {
            android.content.SharedPreferences sp = context.getSharedPreferences("h2_blur_pref", Context.MODE_PRIVATE);
            if (sp.getInt("blur_radius_ver", 0) != BLUR_RADIUS) {
                File blurFile = new File(context.getFilesDir(), "blur_wallpaper");
                if (blurFile.exists()) {
                    blurFile.delete();
                }
                sCachedBlurWallpaper = null;
                sp.edit().putInt("blur_radius_ver", BLUR_RADIUS).apply();
            } else {
                File blurFile = new File(context.getFilesDir(), "blur_wallpaper");
                if (blurFile.exists() && blurFile.length() > 0) {
                    Bitmap bmp = BitmapFactory.decodeFile(blurFile.getAbsolutePath());
                    if (bmp != null) {
                        sCachedBlurWallpaper = bmp;
                        return bmp;
                    }
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "failed to decode blur_wallpaper file", t);
        }

        // If not found, trigger background generation and attempt synchronous quick load
        ensureBlurWallpaper(context);
        return sCachedBlurWallpaper;
    }

    public static void ensureBlurWallpaper(final Context context) {
        if (context == null) return;
        if (sCachedBlurWallpaper != null && !sCachedBlurWallpaper.isRecycled()) return;
        if (sIsGenerating) return;

        sIsGenerating = true;
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    File origFile = new File(context.getFilesDir(), "wallpaper");
                    Bitmap origBmp = null;
                    if (origFile.exists() && origFile.length() > 0) {
                        origBmp = BitmapFactory.decodeFile(origFile.getAbsolutePath());
                    }
                    if (origBmp == null) {
                        try {
                            Drawable d = WallpaperManager.getInstance(context).getDrawable();
                            if (d instanceof BitmapDrawable) {
                                origBmp = ((BitmapDrawable) d).getBitmap();
                            }
                        } catch (Throwable ignored) {
                        }
                    }

                    if (origBmp != null) {
                        int maskColor = 0;
                        try {
                            BlurWallpaperSettings s = PreferencesHelper.getBlurWallpaperSettings(context);
                            if (s != null) {
                                maskColor = s.maskColor;
                            }
                        } catch (Throwable ignored) {
                        }
                        generateBlurWallpaper(context, origBmp, maskColor);
                    }
                } catch (Throwable t) {
                    Log.e(TAG, "ensureBlurWallpaper failed", t);
                } finally {
                    sIsGenerating = false;
                }
            }
        }).start();
    }

    public static void reloadBlurWallpaper(Context context) {
        if (context == null) return;
        sCachedBlurWallpaper = null;
        ensureBlurWallpaper(context);
    }

    public static void onBlurSettingsChanged(Context context, BlurWallpaperSettings settings) {
        if (context == null || settings == null) return;
        if (sCachedMaskColor != settings.maskColor) {
            sCachedMaskColor = settings.maskColor;
            reloadBlurWallpaper(context);
        } else {
            notifyWorkspaceInvalidate();
        }
    }

    public static void drawBlurBackground(View workspaceView, Canvas canvas) {
        if (workspaceView == null || canvas == null) {
            return;
        }

        Context context = workspaceView.getContext();
        if (context == null) {
            return;
        }

        boolean blurEnabled = true;
        try {
            BlurWallpaperSettings settings = PreferencesHelper.getBlurWallpaperSettings(context);
            if (settings != null) {
                blurEnabled = settings.blurEnabled;
            }
        } catch (Throwable ignored) {
        }

        if (!blurEnabled) {
            return;
        }

        if (!(workspaceView instanceof ViewGroup)) {
            return;
        }
        ViewGroup vg = (ViewGroup) workspaceView;
        int childCount = vg.getChildCount();
        if (childCount <= 1) {
            return;
        }

        int homeIndex = 0;
        if (workspaceView instanceof Workspace) {
            try {
                homeIndex = ((Workspace) workspaceView).numCustomPages();
            } catch (Throwable ignored) {
            }
        }
        if (homeIndex >= childCount) {
            homeIndex = 0;
        }

        int nextIndex = homeIndex + 1;
        if (nextIndex >= childCount) {
            return;
        }

        int homeScrollX = 0;
        int nextScrollX = 0;
        if (workspaceView instanceof PagedView) {
            PagedView pv = (PagedView) workspaceView;
            homeScrollX = pv.getScrollForPage(homeIndex);
            nextScrollX = pv.getScrollForPage(nextIndex);
        } else {
            View homeChild = vg.getChildAt(homeIndex);
            View nextChild = vg.getChildAt(nextIndex);
            if (homeChild != null && nextChild != null) {
                homeScrollX = homeChild.getLeft();
                nextScrollX = nextChild.getLeft();
            }
        }

        int delta = nextScrollX - homeScrollX;
        if (delta == 0) {
            delta = workspaceView.getWidth();
            if (delta <= 0) return;
        }

        int currentScrollX = workspaceView.getScrollX();
        float progress = (float) (currentScrollX - homeScrollX) / (float) delta;
        if (progress <= 0.001f) {
            // User is on home screen (Page 0) -> no blur overlay
            return;
        }
        if (progress > 1.0f) {
            progress = 1.0f;
        }

        Bitmap blurBitmap = getBlurWallpaper(context);
        if (blurBitmap == null || blurBitmap.isRecycled()) {
            return;
        }

        Point realSize = Utilities.getScreenDimensions(context, true);
        int screenWidth = realSize != null && realSize.x > 0 ? realSize.x : 1080;
        int screenHeight = realSize != null && realSize.y > 0 ? realSize.y : 2400;

        int alpha = (int) (progress * 255.0f);
        if (alpha <= 0) {
            return;
        }
        if (alpha > 255) {
            alpha = 255;
        }

        int scrollY = workspaceView.getScrollY();
        int screenLeft = currentScrollX - workspaceView.getLeft();
        int screenTop = scrollY - workspaceView.getTop();
        Rect screenRect = new Rect(screenLeft, screenTop, screenLeft + screenWidth, screenTop + screenHeight);

        if (sBlurPaint == null) {
            sBlurPaint = new Paint(Paint.FILTER_BITMAP_FLAG);
        }
        sBlurPaint.setAlpha(alpha);
        canvas.drawBitmap(blurBitmap, null, screenRect, sBlurPaint);
    }

    private static void notifyWorkspaceInvalidate() {
        try {
            Class<?> appStateClass = Class.forName("net.oneplus.h2launcher.LauncherAppState");
            Method getInstanceMethod = appStateClass.getMethod("getInstanceNoCreate");
            Object appState = getInstanceMethod.invoke(null);
            if (appState != null) {
                Method getLauncherMethod = appStateClass.getMethod("getLauncher");
                Object launcher = getLauncherMethod.invoke(appState);
                if (launcher != null) {
                    Method getWorkspaceMethod = launcher.getClass().getMethod("getWorkspace");
                    View ws = (View) getWorkspaceMethod.invoke(launcher);
                    if (ws != null) {
                        ws.postInvalidate();
                    }
                }
            }
        } catch (Throwable ignored) {
        }
    }

    public static Bitmap fastBlur(Bitmap sentBitmap, int radius, boolean canReuseInBitmap) {
        Bitmap bitmap;
        if (canReuseInBitmap) {
            bitmap = sentBitmap;
        } else {
            bitmap = sentBitmap.copy(sentBitmap.getConfig(), true);
        }

        if (radius < 1) {
            return null;
        }

        int w = bitmap.getWidth();
        int h = bitmap.getHeight();

        int[] pix = new int[w * h];
        bitmap.getPixels(pix, 0, w, 0, 0, w, h);

        int wm = w - 1;
        int hm = h - 1;
        int wh = w * h;
        int div = radius + radius + 1;

        int r[] = new int[wh];
        int g[] = new int[wh];
        int b[] = new int[wh];
        int rsum, gsum, bsum, x, y, i, p, yp, yi, yw;
        int vmin[] = new int[Math.max(w, h)];

        int divsum = (div + 1) >> 1;
        divsum *= divsum;
        int dv[] = new int[256 * divsum];
        for (i = 0; i < 256 * divsum; i++) {
            dv[i] = (i / divsum);
        }

        yw = yi = 0;

        int[][] stack = new int[div][3];
        int stackpointer;
        int stackstart;
        int[] sir;
        int rbs;
        int r1 = radius + 1;
        int routsum, goutsum, boutsum;
        int rinsum, ginsum, binsum;

        for (y = 0; y < h; y++) {
            rinsum = ginsum = binsum = routsum = goutsum = boutsum = rsum = gsum = bsum = 0;
            for (i = -radius; i <= radius; i++) {
                p = pix[yi + Math.min(wm, Math.max(i, 0))];
                sir = stack[i + radius];
                sir[0] = (p & 0xff0000) >> 16;
                sir[1] = (p & 0x00ff00) >> 8;
                sir[2] = (p & 0x0000ff);
                rbs = r1 - Math.abs(i);
                rsum += sir[0] * rbs;
                gsum += sir[1] * rbs;
                bsum += sir[2] * rbs;
                if (i > 0) {
                    rinsum += sir[0];
                    ginsum += sir[1];
                    binsum += sir[2];
                } else {
                    routsum += sir[0];
                    goutsum += sir[1];
                    boutsum += sir[2];
                }
            }
            stackpointer = radius;

            for (x = 0; x < w; x++) {
                r[yi] = dv[rsum];
                g[yi] = dv[gsum];
                b[yi] = dv[bsum];

                rsum -= routsum;
                gsum -= goutsum;
                bsum -= boutsum;

                stackstart = stackpointer - radius + div;
                sir = stack[stackstart % div];

                routsum -= sir[0];
                goutsum -= sir[1];
                boutsum -= sir[2];

                if (y == 0) {
                    vmin[x] = Math.min(x + radius + 1, wm);
                }
                p = pix[yw + vmin[x]];

                sir[0] = (p & 0xff0000) >> 16;
                sir[1] = (p & 0x00ff00) >> 8;
                sir[2] = (p & 0x0000ff);

                rinsum += sir[0];
                ginsum += sir[1];
                binsum += sir[2];

                rsum += rinsum;
                gsum += ginsum;
                bsum += binsum;

                stackpointer = (stackpointer + 1) % div;
                sir = stack[(stackpointer) % div];

                routsum += sir[0];
                goutsum += sir[1];
                boutsum += sir[2];

                rinsum -= sir[0];
                ginsum -= sir[1];
                binsum -= sir[2];

                yi++;
            }
            yw += w;
        }
        for (x = 0; x < w; x++) {
            rinsum = ginsum = binsum = routsum = goutsum = boutsum = rsum = gsum = bsum = 0;
            yp = -radius * w;
            for (i = -radius; i <= radius; i++) {
                yi = Math.max(0, yp) + x;

                sir = stack[i + radius];

                sir[0] = r[yi];
                sir[1] = g[yi];
                sir[2] = b[yi];

                rbs = r1 - Math.abs(i);

                rsum += r[yi] * rbs;
                gsum += g[yi] * rbs;
                bsum += b[yi] * rbs;

                if (i > 0) {
                    rinsum += sir[0];
                    ginsum += sir[1];
                    binsum += sir[2];
                } else {
                    routsum += sir[0];
                    goutsum += sir[1];
                    boutsum += sir[2];
                }

                if (i < hm) {
                    yp += w;
                }
            }
            yi = x;
            stackpointer = radius;
            for (y = 0; y < h; y++) {
                pix[yi] = (0xff000000 & pix[yi]) | (dv[rsum] << 16) | (dv[gsum] << 8) | dv[bsum];

                rsum -= routsum;
                gsum -= goutsum;
                bsum -= boutsum;

                stackstart = stackpointer - radius + div;
                sir = stack[stackstart % div];

                routsum -= sir[0];
                goutsum -= sir[1];
                boutsum -= sir[2];

                if (x == 0) {
                    vmin[y] = Math.min(y + r1, hm) * w;
                }
                p = x + vmin[y];

                sir[0] = r[p];
                sir[1] = g[p];
                sir[2] = b[p];

                rinsum += sir[0];
                ginsum += sir[1];
                binsum += sir[2];

                rsum += rinsum;
                gsum += ginsum;
                bsum += binsum;

                stackpointer = (stackpointer + 1) % div;
                sir = stack[stackpointer];

                routsum += sir[0];
                goutsum += sir[1];
                boutsum += sir[2];

                rinsum -= sir[0];
                ginsum -= sir[1];
                binsum -= sir[2];

                yi += w;
            }
        }

        bitmap.setPixels(pix, 0, w, 0, 0, w, h);
        return bitmap;
    }
}
