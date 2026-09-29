package net.oneplus.h2launcher.util;

import android.annotation.TargetApi;
import android.app.WallpaperInfo;
import android.app.WallpaperManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.net.Uri;
import android.support.v7.graphics.Palette;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.Size;
import android.view.WindowManager;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.crop.view.CropImageView;
import net.oneplus.h2launcher.customizations.wallpaper.BitmapCropTask;
import net.oneplus.h2launcher.customizations.wallpaper.BlurWallpaperSettings;
import net.oneplus.h2launcher.customizations.wallpaper.SavedWallpaperManager;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.oos.StyleManager;

/* loaded from: classes.dex */
public final class WallpaperUtils {
    private static final int MAX_WALLPAPER_BITMAP_SIZE = 6144;
    private static final String WALLPAPER_HEIGHT_KEY = "wallpaper.height";
    public static final String WALLPAPER_NAME = "wallpaper";
    private static final float WALLPAPER_SCREENS_SPAN = 2.0f;
    private static final String WALLPAPER_WIDTH_KEY = "wallpaper.width";
    private static Point sDefaultWallpaperSize;
    public static final String TAG = WallpaperUtils.class.getSimpleName();
    public static final ComponentName ONEPLUS_BLUR_WALLPAPER = (ComponentName) Objects.requireNonNull(ComponentName.unflattenFromString("net.oneplus.h2launcher/.wallpaper.BlurWallpaper"));
    public static final ComponentName LEGACY_ONEPLUS_BLUR_WALLPAPER = (ComponentName) Objects.requireNonNull(ComponentName.unflattenFromString("com.oneplus.wallpaper/.BlurWallpaper"));
    public static final ComponentName ONEPLUS_BLUR_WALLPAPER2 = (ComponentName) Objects.requireNonNull(ComponentName.unflattenFromString("net.oneplus.launcher/.wallpaper.BlurWallpaper"));
    public static final ComponentName ONEPLUS_LIVE_WALLPAPER = (ComponentName) Objects.requireNonNull(ComponentName.unflattenFromString("com.oneplus.wallpaper/.LiveWallpaper"));
    private static final Uri ONEPLUS_LIVE_WALLPAPER_URI = Uri.parse("content://" + ONEPLUS_LIVE_WALLPAPER.getPackageName() + "/image/wallpaper");

    public static void suggestWallpaperDimension(Resources res, SharedPreferences sharedPrefs, WindowManager windowManager, WallpaperManager wallpaperManager, boolean fallBackToDefaults) {
        Point defaultWallpaperSize = getDefaultWallpaperSize(res, windowManager);
        int savedWidth = sharedPrefs.getInt(WALLPAPER_WIDTH_KEY, -1);
        int savedHeight = sharedPrefs.getInt(WALLPAPER_HEIGHT_KEY, -1);
        if (savedWidth == -1 || savedHeight == -1) {
            if (fallBackToDefaults) {
                savedWidth = defaultWallpaperSize.x;
                savedHeight = defaultWallpaperSize.y;
            } else {
                return;
            }
        }
        if (savedWidth != wallpaperManager.getDesiredMinimumWidth() || savedHeight != wallpaperManager.getDesiredMinimumHeight()) {
            wallpaperManager.suggestDesiredDimensions(savedWidth, savedHeight);
        }
    }

    private static float wallpaperTravelToScreenWidthRatio(int width, int height) {
        float aspectRatio = width / height;
        return (0.30769226f * aspectRatio) + 1.0076923f;
    }

    @TargetApi(17)
    private static Point getDefaultWallpaperSize(Resources res, WindowManager windowManager) {
        int defaultWidth;
        int defaultHeight;
        if (sDefaultWallpaperSize == null) {
            Point minDims = new Point();
            Point maxDims = new Point();
            windowManager.getDefaultDisplay().getCurrentSizeRange(minDims, maxDims);
            int maxDim = Math.max(maxDims.x, maxDims.y);
            int minDim = Math.max(minDims.x, minDims.y);
            if (Utilities.ATLEAST_JB_MR1) {
                Point realSize = new Point();
                windowManager.getDefaultDisplay().getRealSize(realSize);
                maxDim = Math.max(realSize.x, realSize.y);
                minDim = Math.min(realSize.x, realSize.y);
            }
            if (res.getConfiguration().smallestScreenWidthDp >= 720) {
                defaultWidth = (int) (maxDim * wallpaperTravelToScreenWidthRatio(maxDim, minDim));
                defaultHeight = maxDim;
            } else {
                defaultWidth = Math.max((int) (minDim * WALLPAPER_SCREENS_SPAN), maxDim);
                defaultHeight = maxDim;
            }
            sDefaultWallpaperSize = new Point(defaultWidth, defaultHeight);
        }
        return sDefaultWallpaperSize;
    }

    public static Bitmap paintWallpaperColorMask(Context context, Bitmap bitmap, int maskColor, int orientation) {
        if (maskColor != 0) {
            float screenHeightScale = 1.0f;
            Point realDisplaySize = Utilities.getScreenDimensions(context, true);
            Point displaySize = Utilities.getScreenDimensions(context, false);
            if (displaySize.y != realDisplaySize.y) {
                screenHeightScale = displaySize.y / realDisplaySize.y;
            }
            Bitmap masked = bitmap.copy(Bitmap.Config.ARGB_8888, true);
            int w = masked.getWidth();
            int h = masked.getHeight();
            Canvas canvas = new Canvas(masked);
            Paint paint = new Paint();
            if (orientation == 0) {
                LinearGradient gradient = new LinearGradient(0.0f, 0.41f * h * screenHeightScale, 0.0f, 0.66f * h * screenHeightScale, getTransparentColor(maskColor), maskColor, Shader.TileMode.CLAMP);
                paint.setShader(gradient);
                canvas.drawPaint(paint);
            } else {
                float aspectRatio = getLandscapeWallpaperAspectRatio();
                int top = (int) ((w / aspectRatio) * screenHeightScale);
                Rect rect = new Rect(0, top, w, h);
                paint.setColor(maskColor);
                canvas.drawRect(rect, paint);
            }
            return masked;
        }
        return bitmap;
    }

    public static Bitmap createThumbnail(Size size, Context context, Uri uri, byte[] imageBytes, Resources res, int resId, int rotation, boolean leftAligned) {
        BitmapCropTask cropTask;
        int width = size.getWidth();
        int height = size.getHeight();
        if (uri != null) {
            cropTask = new BitmapCropTask(context, uri, (RectF) null, rotation, width, height, false, false, true, (Runnable) null);
        } else if (imageBytes != null) {
            cropTask = new BitmapCropTask(imageBytes, null, rotation, width, height, false, false, true, null);
        } else {
            cropTask = new BitmapCropTask(context, res, resId, null, rotation, width, height, false, false, true, null);
        }
        Point bounds = cropTask.getImageBounds();
        if (bounds == null || bounds.x == 0 || bounds.y == 0) {
            return null;
        }
        Matrix rotateMatrix = new Matrix();
        rotateMatrix.setRotate(rotation);
        float[] rotatedBounds = {bounds.x, bounds.y};
        rotateMatrix.mapPoints(rotatedBounds);
        rotatedBounds[0] = Math.abs(rotatedBounds[0]);
        rotatedBounds[1] = Math.abs(rotatedBounds[1]);
        RectF cropRect = getMaxCropRect((int) rotatedBounds[0], (int) rotatedBounds[1], width, height, leftAligned);
        cropTask.setCropBounds(cropRect);
        if (cropTask.cropBitmap()) {
            return cropTask.getCroppedBitmap();
        }
        return null;
    }

    private static RectF getMaxCropRect(int inWidth, int inHeight, int outWidth, int outHeight, boolean leftAligned) {
        RectF cropRect = new RectF();
        if (inWidth / inHeight > outWidth / outHeight) {
            cropRect.top = 0.0f;
            cropRect.bottom = inHeight;
            cropRect.left = (inWidth - ((outWidth / outHeight) * inHeight)) / WALLPAPER_SCREENS_SPAN;
            cropRect.right = inWidth - cropRect.left;
            if (leftAligned) {
                cropRect.right -= cropRect.left;
                cropRect.left = 0.0f;
            }
        } else {
            cropRect.left = 0.0f;
            cropRect.right = inWidth;
            cropRect.top = (inHeight - ((outHeight / outWidth) * inWidth)) / WALLPAPER_SCREENS_SPAN;
            cropRect.bottom = inHeight - cropRect.top;
        }
        return cropRect;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap createBackground(final android.content.Context r32, net.oneplus.h2launcher.util.WallpaperUtils.CreateParams r33) {
        /*
            Method dump skipped, instructions count: 609
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.util.WallpaperUtils.createBackground(android.content.Context, net.oneplus.h2launcher.util.WallpaperUtils$CreateParams):android.graphics.Bitmap");
    }

    public static byte[] readStream(InputStream inStream) throws IOException {
        ByteArrayOutputStream outStream = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        while (true) {
            int len = inStream.read(buffer);
            if (len != -1) {
                outStream.write(buffer, 0, len);
            } else {
                outStream.close();
                return outStream.toByteArray();
            }
        }
    }

    public static BitmapFactory.Options getBitmapOption(Context context, CreateParams params, int requiredWidth, int requiredHeight) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        byte[] imageBytes = params.imageBytes;
        Resources resources = context.getResources();
        if (params.imageBytes != null) {
            BitmapFactory.decodeByteArray(imageBytes, 0, imageBytes.length, options);
        } else {
            BitmapFactory.decodeResource(resources, params.resId, options);
        }
        options.inSampleSize = calculateSampleSize(options, requiredWidth, requiredHeight);
        options.inJustDecodeBounds = false;
        return options;
    }

    private static int calculateSampleSize(BitmapFactory.Options options, int requiredWidth, int requiredHeight) {
        int height = options.outHeight;
        int width = options.outWidth;
        int inSampleSize = 1;
        if (height > requiredHeight || width > requiredWidth) {
            int halfHeight = height / 2;
            int halfWidth = width / 2;
            while (true) {
                if ((halfHeight / inSampleSize <= requiredHeight || halfWidth / inSampleSize <= requiredWidth) && halfHeight / inSampleSize <= MAX_WALLPAPER_BITMAP_SIZE && halfWidth / inSampleSize <= MAX_WALLPAPER_BITMAP_SIZE) {
                    break;
                }
                inSampleSize *= 2;
            }
        }
        return inSampleSize;
    }

    public static Pair<Float, Bitmap> resizeBitmap(Bitmap source, int requiredWidth, int requiredHeight) {
        int width = source.getWidth();
        int height = source.getHeight();
        if (width == requiredWidth && height == requiredHeight) {
            return new Pair<>(Float.valueOf(1.0f), source);
        }
        float scaleX = width / requiredWidth;
        float scaleY = height / requiredHeight;
        float resizeScale = Math.min(scaleX, scaleY);
        int resizeWidth = Math.round(width / resizeScale);
        int resizeHeight = Math.round(height / resizeScale);
        Logger.d(TAG, "resize 1: W=%d, H=%d", Integer.valueOf(resizeWidth), Integer.valueOf(resizeHeight));
        float currentScale = 1.0f;
        if (resizeWidth > MAX_WALLPAPER_BITMAP_SIZE || resizeHeight > MAX_WALLPAPER_BITMAP_SIZE) {
            float scaleX2 = 6144.0f / resizeWidth;
            float scaleY2 = 6144.0f / resizeHeight;
            currentScale = Math.min(scaleX2, scaleY2);
            resizeWidth = Math.round(resizeWidth * currentScale);
            resizeHeight = Math.round(resizeHeight * currentScale);
        }
        Logger.d(TAG, "resize 2: W=%d, H=%d", Integer.valueOf(resizeWidth), Integer.valueOf(resizeHeight));
        Bitmap resized = Bitmap.createScaledBitmap(source, resizeWidth, resizeHeight, true);
        return new Pair<>(Float.valueOf(currentScale), resized);
    }

    private static Bitmap cropBitmap(Bitmap source, CreateParams params, int requiredWidth, int requiredHeight) {
        int width = source.getWidth();
        int height = source.getHeight();
        int maxWidth = (params.reduceSize || params.screen != 1) ? requiredWidth : requiredWidth * 2;
        int cropWidth = Math.min(maxWidth, width);
        int cropHeight = Math.min(requiredHeight, height);
        if (width != cropWidth || height != cropHeight) {
            int x = (source.getWidth() / 2) - (cropWidth / 2);
            int y = (source.getHeight() / 2) - (cropHeight / 2);
            Logger.d(TAG, "crop: screen=%d, x=%d, y=%d, cropW=%d, cropH=%d", Integer.valueOf(params.screen), Integer.valueOf(x), Integer.valueOf(y), Integer.valueOf(cropWidth), Integer.valueOf(cropHeight));
            return Bitmap.createBitmap(source, x, y, cropWidth, cropHeight);
        }
        return source;
    }

    private static byte[] inputStreamToByteArray(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteBuffer = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        while (true) {
            int len = inputStream.read(buffer);
            if (len != -1) {
                byteBuffer.write(buffer, 0, len);
            } else {
                return byteBuffer.toByteArray();
            }
        }
    }

    public static void saveBitmapAsFile(Context context, String fileName, Bitmap bitmap) {
        long start = System.currentTimeMillis();
        try {
            ByteArrayOutputStream stream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, stream);
            byte[] byteArray = stream.toByteArray();
            saveImageBytesAsFile(context, fileName, byteArray);
        } catch (Exception e) {
            Logger.e(TAG, "saveBitmapAsFile# Failed writing bitmap to storage " + e);
        }
        long diff = System.currentTimeMillis() - start;
        Logger.d(TAG, "saveBitmap fileName " + fileName + " spend " + diff);
    }

    public static void saveImageBytesAsFile(Context context, String fileName, InputStream is) {
        try {
            saveImageBytesAsFile(context, fileName, inputStreamToByteArray(is));
        } catch (IOException e) {
            Logger.e(TAG, "saveImageBytesAsFile# Failed writing images to storage " + e);
        }
    }

    public static void saveImageBytesAsFile(Context context, String fileName, byte[] imageBytes) {
        File imageFile = new File(context.getFilesDir(), fileName);
        try {
            FileOutputStream imageFileStream = context.openFileOutput(imageFile.getName(), 0);
            Throwable th = null;
            try {
                imageFileStream.write(imageBytes);
                if (imageFileStream != null) {
                    if (0 == 0) {
                        imageFileStream.close();
                        return;
                    }
                    try {
                        imageFileStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
            } finally {
            }
        } catch (IOException e) {
            Logger.e(TAG, "saveImageBytesAsFile# Failed writing images to storage " + e);
        }
    }

    public static File getOnePlusBlurWallpaperFile(Context context) {
        return new File(context.getFilesDir(), WALLPAPER_NAME);
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void saveWallpaperByInputStream(android.content.Context r21, android.graphics.Bitmap r22, int r23) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.util.WallpaperUtils.saveWallpaperByInputStream(android.content.Context, android.graphics.Bitmap, int):void");
    }

    public static String saveWallpaperFiles(Context context, Bitmap bitmap, Bitmap thumbnail, int screen, int maskColor, int orientation, String sourceUri) {
        ByteArrayOutputStream stream = new ByteArrayOutputStream(2048);
        if (bitmap.compress(Bitmap.CompressFormat.JPEG, 100, stream)) {
            byte[] imageBytes = stream.toByteArray();
            int imageId = SavedWallpaperManager.getImageId(context, screen, orientation);
            if (imageId != -1) {
                SavedWallpaperManager.deleteImage(context, imageId);
            }
            return SavedWallpaperManager.saveImage(context, thumbnail, imageBytes, screen, maskColor, orientation, sourceUri);
        }
        Logger.w(TAG, "Cannot compress bitmap.");
        return null;
    }

    public static void purgeCropFiles(Context context) {
        File[] files = context.getFilesDir().listFiles();
        for (File file : files) {
            if (file.getName().startsWith("crop_") && !file.delete()) {
                Logger.d(TAG, "Failed to delete file: " + file);
            }
        }
    }

    private static int getTransparentColor(int color) {
        int red = Color.red(color);
        int green = Color.green(color);
        int blue = Color.blue(color);
        return Color.argb(0, red, green, blue);
    }

    public static List<Palette.Swatch> loadWallpaperSwatches(Bitmap wallpaper) {
        if (wallpaper == null || wallpaper.isRecycled()) {
            Logger.w(TAG, "invalid wallpaper");
            return null;
        }
        Palette palette = Palette.from(wallpaper).generate();
        List<Palette.Swatch> swatches = new ArrayList<>(palette.getSwatches());
        Collections.sort(swatches, new Comparator<Palette.Swatch>() { // from class: net.oneplus.h2launcher.util.WallpaperUtils.2
            @Override // java.util.Comparator
            public int compare(Palette.Swatch lhs, Palette.Swatch rhs) {
                return rhs.getPopulation() - lhs.getPopulation();
            }
        });
        if (swatches.isEmpty()) {
            swatches.add(new Palette.Swatch(getDominantColor(wallpaper), 0));
            return swatches;
        }
        return swatches;
    }

    public static List<Palette.Swatch> loadWallpaperPredefinedColors(Context context, String wallpaperName) {
        List<Palette.Swatch> swatches = null;
        if (TextUtils.isEmpty(wallpaperName)) {
            Logger.w(TAG, "invalid wallpaper name");
        } else {
            String packageName = context.getApplicationContext().getPackageName();
            String colorsResName = String.format("%s:%s/%s_colors", packageName, "array", wallpaperName);
            Resources resources = context.getResources();
            int colorsResId = resources.getIdentifier(colorsResName, null, null);
            if (colorsResId <= 0) {
                Logger.e(TAG, "invalid wallpaper colors resource name: %s", colorsResName);
            } else {
                TypedArray ta = context.getResources().obtainTypedArray(colorsResId);
                swatches = new ArrayList<>();
                int count = ta.length();
                for (int i = 0; i < ta.length(); i++) {
                    int color = ta.getColor(i, 0);
                    swatches.add(new Palette.Swatch(color, count - i));
                }
                ta.recycle();
            }
        }
        return swatches;
    }

    public static int getDominantColor(Bitmap bitmap) {
        int color = -16777216;
        if (bitmap == null || bitmap.getWidth() < 1 || bitmap.getHeight() < 1) {
            Logger.w(TAG, "invalid bitmap");
            return -16777216;
        }
        Bitmap scaledBitmap = Bitmap.createScaledBitmap(bitmap, 1, 1, true);
        if (scaledBitmap != null) {
            color = scaledBitmap.getPixel(0, 0);
        }
        return color;
    }

    public static int resolveWallpaperOrientation(Context context, Bitmap wallpaper, boolean onlyUseWallpaperDimension) {
        if (StyleManager.getInstance().isWallpaperScrollable()) {
            return 0;
        }
        if (!onlyUseWallpaperDimension) {
            WallpaperTileInfo wallpaperTileInfo = PreferencesHelper.getWallpaperTile(context);
            BlurWallpaperSettings blurSettings = PreferencesHelper.getBlurWallpaperSettings(context);
            if (wallpaperTileInfo != null) {
                return wallpaperTileInfo.getOrientation();
            }
            if (blurSettings != null && isOnePlusBlurWallpaper(context)) {
                return blurSettings.orientation;
            }
        }
        if (wallpaper != null && !wallpaper.isRecycled()) {
            boolean isLandscape = wallpaper.getWidth() > wallpaper.getHeight() && isWallpaperOfAspectRatio(wallpaper, CropImageView.LANDSCAPE_IMAGE_ASPECT_RATIO);
            return isLandscape ? 1 : 0;
        }
        return -1;
    }

    public static float getLandscapeWallpaperAspectRatio() {
        String deviceTag = Utilities.getDeviceTag();
        char c = 65535;
        switch (deviceTag.hashCode()) {
            case 46886805:
                if (deviceTag.equals(Utilities.DEVICE_15801)) {
                    c = 0;
                    break;
                }
                break;
            case 46886836:
                if (deviceTag.equals(Utilities.DEVICE_15811)) {
                    c = 1;
                    break;
                }
                break;
            case 46916759:
                if (deviceTag.equals(Utilities.DEVICE_16859)) {
                    c = 2;
                    break;
                }
                break;
            case 46946387:
                if (deviceTag.equals(Utilities.DEVICE_17801)) {
                    c = 3;
                    break;
                }
                break;
            case 46946426:
                if (deviceTag.equals(Utilities.DEVICE_17819)) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
                return 1.3793104f;
            case 3:
                return 1.231471f;
            case 4:
                return 1.1625403f;
            default:
                return 1.1320754f;
        }
    }

    private static boolean isWallpaperOfAspectRatio(Bitmap wallpaper, float targetRatio) {
        if (wallpaper == null || wallpaper.isRecycled()) {
            throw new IllegalArgumentException("Wallpaper must not empty nor recycled");
        }
        float aspectRatio = wallpaper.getWidth() / wallpaper.getHeight();
        float aspectRatioDiffPercentage = Math.abs(aspectRatio - targetRatio) / targetRatio;
        return aspectRatioDiffPercentage < 0.005f;
    }

    private static void setOnePlusBlurWallpaper(Context context) {
        Context appContext = context.getApplicationContext();
        WallpaperManager wallpaperManager = WallpaperManager.getInstance(appContext);
        try {
            Method setWallpaperComponent = wallpaperManager.getClass().getMethod("setWallpaperComponent", ComponentName.class);
            setWallpaperComponent.invoke(wallpaperManager, ONEPLUS_BLUR_WALLPAPER);
        } catch (IllegalAccessException e) {
            Logger.d(TAG, "Illegal access to the target: ", e);
        } catch (NoSuchMethodException e2) {
            Logger.e(TAG, "Failed to get method by reflection: ", e2);
        } catch (SecurityException e3) {
            e3.printStackTrace();
        } catch (InvocationTargetException e4) {
            Logger.d(TAG, "Failed to invoke the method by reflection: ", e4);
        }
    }

    public static boolean isLatestOnePlusBlurWallpaper(Context context) {
        Context appContext = context.getApplicationContext();
        WallpaperInfo info = WallpaperManager.getInstance(appContext).getWallpaperInfo();
        return info != null && info.getComponent().equals(ONEPLUS_BLUR_WALLPAPER);
    }

    public static boolean isOnePlusLiveWallpaper(Context context) {
        WallpaperInfo info = WallpaperManager.getInstance(context).getWallpaperInfo();
        return info != null && info.getComponent().equals(ONEPLUS_LIVE_WALLPAPER);
    }

    public static boolean isOnePlusBlurWallpaper(Context context) {
        Context appContext = context.getApplicationContext();
        UserHandleCompat user = UserHandleCompat.myUserHandle();
        long userSN = UserManagerCompat.getInstance(appContext).getSerialNumberForUser(user);
        WallpaperInfo info = WallpaperManager.getInstance(appContext).getWallpaperInfo();
        Logger.d(TAG, "[isOnePlusBlurWallpaper]: user=%d, info=%s", Long.valueOf(userSN), info);
        return info != null && (info.getComponent().equals(ONEPLUS_BLUR_WALLPAPER) || info.getComponent().equals(LEGACY_ONEPLUS_BLUR_WALLPAPER));
    }

    public static boolean isOnePlusBlurWallpaper2(Context context) {
        Context appContext = context.getApplicationContext();
        UserHandleCompat user = UserHandleCompat.myUserHandle();
        long userSN = UserManagerCompat.getInstance(appContext).getSerialNumberForUser(user);
        WallpaperInfo info = WallpaperManager.getInstance(appContext).getWallpaperInfo();
        Logger.d(TAG, "[isOnePlusBlurWallpaper2]: user=%d, info=%s", Long.valueOf(userSN), info);
        return info != null && info.getComponent().equals(ONEPLUS_BLUR_WALLPAPER2);
    }

    public static boolean isLegacyOnePlusBlurWallpaper(Context context) {
        Context appContext = context.getApplicationContext();
        WallpaperInfo info = WallpaperManager.getInstance(appContext).getWallpaperInfo();
        return info != null && info.getComponent().equals(LEGACY_ONEPLUS_BLUR_WALLPAPER);
    }

    public static boolean isNormalLiveWallpaper(Context context) {
        Context appContext = context.getApplicationContext();
        WallpaperInfo info = WallpaperManager.getInstance(appContext).getWallpaperInfo();
        return (info == null || info.getComponent().equals(LEGACY_ONEPLUS_BLUR_WALLPAPER) || info.getComponent().equals(ONEPLUS_BLUR_WALLPAPER) || info.getComponent().equals(ONEPLUS_BLUR_WALLPAPER2) || info.getComponent().equals(ONEPLUS_LIVE_WALLPAPER)) ? false : true;
    }

    public static Bitmap getOnePlusLiveWallpaperBitmap(Context context) {
        Bitmap bitmap = null;
        try {
            InputStream is = context.getContentResolver().openInputStream(ONEPLUS_LIVE_WALLPAPER_URI);
            Throwable th = null;
            try {
                bitmap = BitmapFactory.decodeStream(is);
                if (is != null) {
                    if (0 != 0) {
                        try {
                            is.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    } else {
                        is.close();
                    }
                }
            } finally {
            }
        } catch (IOException e) {
            Log.d(TAG, "getOnePlusLiveWallpaperBitmap# error loading wallpaper image, error: " + e);
        }
        return bitmap;
    }

    public static int[] getWallpaperResourceIds(Resources resources, int wallpaperArray) {
        TypedArray typedArray = resources.obtainTypedArray(wallpaperArray);
        int length = typedArray.length();
        int[] resIds = new int[length];
        for (int i = 0; i < length; i++) {
            resIds[i] = typedArray.getResourceId(i, 0);
        }
        typedArray.recycle();
        return resIds;
    }

    public static String getWallpaperMd5Hash(Bitmap bitmap) {
        String hash = "";
        if (bitmap == null || bitmap.isRecycled()) {
            Logger.e(TAG, "invalid bitmap for md5 hash");
            return "";
        }
        if (bitmap.getWidth() <= 0 || bitmap.getHeight() <= 0) {
            Logger.e(TAG, "invalid bitmap(width=" + bitmap.getWidth() + ", height=" + bitmap.getHeight() + ") for md5 hash");
            return "";
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            int w = bitmap.getWidth() / 8;
            int h = bitmap.getHeight() / 8;
            Bitmap scaled = Bitmap.createScaledBitmap(bitmap, w, h, false);
            scaled.compress(Bitmap.CompressFormat.JPEG, 25, byteArrayOutputStream);
            try {
                MessageDigest digest = MessageDigest.getInstance("MD5");
                digest.update(byteArrayOutputStream.toByteArray());
                byte[] messageDigest = digest.digest();
                StringBuilder hexString = new StringBuilder();
                for (byte aMessageDigest : messageDigest) {
                    hexString.append(Integer.toHexString(aMessageDigest & 255));
                }
                hash = hexString.toString();
            } catch (NoSuchAlgorithmException e) {
                Logger.e(TAG, e.getMessage());
            }
            return hash;
        } catch (OutOfMemoryError e2) {
            Logger.e(TAG, "failed to create scaled bitmap for md5 hash");
            return "";
        }
    }

    /* loaded from: classes.dex */
    public static class CreateParams {
        byte[] imageBytes;
        public int orientation;
        boolean reduceSize;
        public int resId;
        public int rotation;
        public int screen;
        public Uri uri;

        public CreateParams(Uri uri, int screen, boolean reduceSize, int orientation) {
            this.uri = null;
            this.resId = 0;
            this.rotation = 0;
            this.imageBytes = null;
            this.uri = uri;
            init(screen, reduceSize, orientation);
        }

        public CreateParams(byte[] imageBytes, int screen, boolean reduceSize, int orientation) {
            this.uri = null;
            this.resId = 0;
            this.rotation = 0;
            this.imageBytes = null;
            this.imageBytes = imageBytes;
            init(screen, reduceSize, orientation);
        }

        public CreateParams(int resId, int screen, boolean reduceSize, int orientation) {
            this.uri = null;
            this.resId = 0;
            this.rotation = 0;
            this.imageBytes = null;
            this.resId = resId;
            init(screen, reduceSize, orientation);
        }

        private void init(int screen, boolean reduceSize, int orientation) {
            this.screen = screen;
            this.reduceSize = reduceSize;
            this.orientation = orientation;
        }
    }
}
