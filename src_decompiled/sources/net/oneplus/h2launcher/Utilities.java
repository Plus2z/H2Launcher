package net.oneplus.h2launcher;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.SearchManager;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PaintDrawable;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.PowerManager;
import android.os.Process;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.support.v4.internal.view.SupportMenu;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.Toast;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.oneplus.h2launcher.compat.LauncherAppsCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.shortcuts.ShortcutInfoCompat;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.PermissionUtils;

/* loaded from: classes.dex */
public final class Utilities {
    public static final String ALLOW_ROTATION_PREFERENCE_KEY = "pref_allowRotation";
    public static final boolean ATLEAST_ANDROID_N;
    public static final boolean ATLEAST_ANDROID_N_MR1;
    public static final boolean ATLEAST_JB_MR1;
    public static final boolean ATLEAST_JB_MR2;
    public static final boolean ATLEAST_KITKAT;
    public static final boolean ATLEAST_LOLLIPOP;
    public static final boolean ATLEAST_LOLLIPOP_MR1;
    public static final boolean ATLEAST_MARSHMALLOW;
    public static final boolean ATLEAST_NOUGAT;
    public static final int BUILD_VERSION_CODE_N = 24;
    public static final int BUILD_VERSION_CODE_O = 26;
    private static final int CORE_POOL_SIZE;
    private static final int CPU_COUNT;
    private static final int DEFAULT_ICON_SHADOW_COLOR = 419430400;
    private static final float DEFAULT_SCREEN_WIDTH_INCH = 2.5714285f;
    public static final int DENSITY_ONEPLUS_LARGEST_540 = 540;
    public static final int DENSITY_ONEPLUS_MINIMUM_380 = 380;
    public static final String DEVICE_14001 = "14001";
    public static final String DEVICE_14049 = "14049";
    public static final String DEVICE_15055 = "15055";
    public static final String DEVICE_15801 = "15801";
    public static final String DEVICE_15811 = "15811";
    public static final String DEVICE_16859 = "16859";
    public static final String DEVICE_17801 = "17801";
    public static final String DEVICE_17819 = "17819";
    public static final String DEVICE_18801 = "18801";
    public static final String DEVICE_18811 = "18811";
    public static final String DEVICE_18821 = "18821";
    public static final String DEVICE_18825 = "18825";
    public static final String DEVICE_18827 = "18827";
    public static final String DEVICE_18831 = "18831";
    public static final String DEVICE_18857 = "18857";
    public static final String DIALER_CLASSNAME = "com.oneplus.contacts.activities.OPDialtactsActivity";
    public static final String DIALER_PACKAGE_M = "com.android.contacts";
    public static final String DIALER_PACKAGE_N = "com.android.dialer";
    public static final int DUAL_APPS_USER_ID = 999;
    private static final String FORCE_ENABLE_ROTATION_PROPERTY = "launcher_force_rotate";
    public static final int ICON_PADDING_DIRECTION_DOWN = 3;
    public static final int ICON_PADDING_DIRECTION_LEFT = 0;
    public static final int ICON_PADDING_DIRECTION_RIGHT = 2;
    public static final int ICON_PADDING_DIRECTION_UP = 1;
    public static final int INVALID_ONEPLUS_PERMISSION_STATE = -2;
    private static final int INVALID_VALUE = -77;
    private static final String JOIN_STABILITY_PLAN = "oem_join_stability_plan_settings";
    private static final String JOIN_USER_PLAN = "oem_join_user_plan_settings";
    private static final int KEEP_ALIVE = 1;
    private static final int MAXIMUM_POOL_SIZE;
    private static final String ONEPLUS_PERMISSION_AGREE = "oneplus_permission_agree";
    public static final int ONEPLUS_PERMISSION_STATE_ALLOW = 1;
    public static final int ONEPLUS_PERMISSION_STATE_DENY = 0;
    public static final int ONEPLUS_PERMISSION_STATE_NOT_SUPPORT = -1;
    private static final String OP_NAVIGATION_BAR_TYPE = "op_navigation_bar_type";
    public static final String PACKAGE_NAME_ONEPLUS_MARKET = "com.oneplus.market";
    public static final String PACKAGE_NAME_OPPO_MARKET = "com.oppo.market";
    public static final String PREFERENCE_SHOW_REQUEST_WINDOW = "hasShowRequestWindow";
    public static final int SCREEN_HEIGHT_17801 = 2160;
    public static final int SCREEN_HEIGHT_17819 = 2280;
    public static final int SCREEN_HEIGHT_NORMAL = 1920;
    private static final String SETTINGS_DARK_MODE_NAME = "oem_black_mode";
    private static final int SETTINGS_DARK_MODE_VALUE_DARK = 1;
    private static final int SETTINGS_DARK_MODE_VALUE_DEFAULT = 0;
    private static final String TAG = "Launcher.Utilities";
    private static final int THEME_ANDROID = 2;
    private static final int THEME_DARK = 1;
    public static final Executor THREAD_POOL_EXECUTOR;
    private static final Paint mBlurPaint;
    private static final BlurMaskFilter mShadowBlurMaskFilter;
    private static final Paint mShadowPaint;
    private static int sBangsScreenDesktopIconTopOffset;
    static int sColorIndex;
    static int[] sColors;
    public static int sFolderIconSize;
    public static int sFolderNameTopMargin;
    public static int sFolderPreviewBackgroundTopMargin;
    private static boolean sForceEnableRotation;
    private static final int[] sLoc0;
    private static final int[] sLoc1;
    private static int sOneplusPermissionState;
    public static int sSelectedIconSize;
    private static int sIconShadowOffset = -1;
    private static final Rect sOldBounds = new Rect();
    private static final Canvas sCanvas = new Canvas();
    private static final Pattern sTrimPattern = Pattern.compile("^[\\s|\\p{javaSpaceChar}]*(.*)[\\s|\\p{javaSpaceChar}]*$");

    /* loaded from: classes.dex */
    public interface WidgetProviderListener {
        void onWidgetProviderFound(AppWidgetProviderInfo appWidgetProviderInfo);
    }

    static {
        sCanvas.setDrawFilter(new PaintFlagsDrawFilter(4, 2));
        sColors = new int[]{SupportMenu.CATEGORY_MASK, -16711936, -16776961};
        sColorIndex = 0;
        sLoc0 = new int[2];
        sLoc1 = new int[2];
        ATLEAST_NOUGAT = Build.VERSION.SDK_INT >= 24;
        ATLEAST_ANDROID_N_MR1 = Build.VERSION.SDK_INT >= 25;
        ATLEAST_ANDROID_N = Build.VERSION.SDK_INT >= 24;
        ATLEAST_MARSHMALLOW = Build.VERSION.SDK_INT >= 23;
        ATLEAST_LOLLIPOP_MR1 = Build.VERSION.SDK_INT >= 22;
        ATLEAST_LOLLIPOP = Build.VERSION.SDK_INT >= 21;
        ATLEAST_KITKAT = Build.VERSION.SDK_INT >= 19;
        ATLEAST_JB_MR1 = Build.VERSION.SDK_INT >= 17;
        ATLEAST_JB_MR2 = Build.VERSION.SDK_INT >= 18;
        sForceEnableRotation = isPropertyEnabled(FORCE_ENABLE_ROTATION_PROPERTY);
        sFolderNameTopMargin = 0;
        sFolderPreviewBackgroundTopMargin = 0;
        sFolderIconSize = 0;
        sSelectedIconSize = -1;
        mShadowBlurMaskFilter = new BlurMaskFilter(6.0f, BlurMaskFilter.Blur.NORMAL);
        mBlurPaint = new Paint();
        mShadowPaint = new Paint();
        CPU_COUNT = Runtime.getRuntime().availableProcessors();
        CORE_POOL_SIZE = CPU_COUNT + 1;
        MAXIMUM_POOL_SIZE = (CPU_COUNT * 2) + 1;
        THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(CORE_POOL_SIZE, MAXIMUM_POOL_SIZE, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        sOneplusPermissionState = -2;
        sBangsScreenDesktopIconTopOffset = 0;
    }

    public static boolean isNOrAbove() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public static boolean isAtLeastO() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static boolean isPropertyEnabled(String propertyName) {
        return Log.isLoggable(propertyName, 2);
    }

    public static boolean isAllowRotationPrefEnabled(Context context) {
        SharedPreferences sharedPrefs = context.getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0);
        boolean allowRotationPref = sharedPrefs.getBoolean(ALLOW_ROTATION_PREFERENCE_KEY, getAllowRotationDefaultValue(context));
        return sForceEnableRotation || allowRotationPref;
    }

    public static boolean getAllowRotationDefaultValue(Context context) {
        if (!ATLEAST_ANDROID_N) {
            return false;
        }
        Resources res = context.getResources();
        int originalSmallestWidth = (res.getConfiguration().smallestScreenWidthDp * res.getDisplayMetrics().densityDpi) / DisplayMetrics.DENSITY_DEVICE_STABLE;
        return originalSmallestWidth >= 600;
    }

    public static boolean isRotationAllowedForDevice(Context context) {
        return sForceEnableRotation || context.getResources().getBoolean(R.bool.allow_rotation);
    }

    public static Bitmap createIconBitmap(Cursor c, int iconIndex, Context context) {
        byte[] data = c.getBlob(iconIndex);
        try {
            return createIconBitmap(BitmapFactory.decodeByteArray(data, 0, data.length), context);
        } catch (Exception e) {
            return null;
        }
    }

    public static Bitmap createIconBitmap(String packageName, String resourceName, Context context) {
        PackageManager packageManager = context.getPackageManager();
        try {
            Resources resources = packageManager.getResourcesForApplication(packageName);
            if (resources == null) {
                return null;
            }
            int id = resources.getIdentifier(resourceName, null, null);
            return createIconBitmap(resources.getDrawableForDensity(id, LauncherAppState.getInstance().getInvariantDeviceProfile().fillResIconDpi), context);
        } catch (Exception e) {
            return null;
        }
    }

    private static int getIconBitmapSize() {
        return LauncherAppState.getInstance().getInvariantDeviceProfile().iconBitmapSize;
    }

    public static Bitmap createIconBitmap(Bitmap icon, Context context) {
        int iconBitmapSize = getIconBitmapSize();
        return (iconBitmapSize == icon.getWidth() && iconBitmapSize == icon.getHeight()) ? icon : createIconBitmap(new BitmapDrawable(context.getResources(), icon), context);
    }

    public static Bitmap createIconBitmap(Drawable icon, Context context) {
        Bitmap bitmap;
        synchronized (sCanvas) {
            int iconBitmapSize = getIconBitmapSize();
            int width = iconBitmapSize;
            int height = iconBitmapSize;
            if (icon instanceof PaintDrawable) {
                PaintDrawable painter = (PaintDrawable) icon;
                painter.setIntrinsicWidth(width);
                painter.setIntrinsicHeight(height);
            } else if (icon instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) icon;
                if (bitmapDrawable.getBitmap().getDensity() == 0) {
                    bitmapDrawable.setTargetDensity(context.getResources().getDisplayMetrics());
                }
            }
            int sourceWidth = icon.getIntrinsicWidth();
            int sourceHeight = icon.getIntrinsicHeight();
            if (sourceWidth > 0 && sourceHeight > 0) {
                float ratio = sourceWidth / sourceHeight;
                if (sourceWidth > sourceHeight) {
                    height = (int) (width / ratio);
                } else if (sourceHeight > sourceWidth) {
                    width = (int) (height * ratio);
                }
            }
            bitmap = Bitmap.createBitmap(iconBitmapSize, iconBitmapSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = sCanvas;
            canvas.setBitmap(bitmap);
            int left = (iconBitmapSize - width) / 2;
            int top = (iconBitmapSize - height) / 2;
            sOldBounds.set(icon.getBounds());
            icon.setBounds(left, top, left + width, top + height);
            icon.draw(canvas);
            icon.setBounds(sOldBounds);
            canvas.setBitmap(null);
        }
        return bitmap;
    }

    public static Bitmap decodeSampledBitmapFromPath(String path, int reqWidth, int reqHeight) throws IOException {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(path, options);
        options.inSampleSize = calculateInSampleSize(options, reqWidth, reqHeight);
        options.inJustDecodeBounds = false;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inDither = true;
        if (options.outHeight <= reqHeight || options.outWidth / options.outHeight == reqWidth / reqHeight) {
            return BitmapFactory.decodeFile(path, options);
        }
        BitmapRegionDecoder bitmapRegionDecoder = BitmapRegionDecoder.newInstance(path, false);
        return bitmapRegionDecoder.decodeRegion(new Rect(0, (options.outHeight / 2) - reqHeight, options.outWidth, (options.outHeight / 2) + reqHeight), options);
    }

    public static int calculateInSampleSize(BitmapFactory.Options options, int reqWidth, int reqHeight) {
        int height = options.outHeight;
        int width = options.outWidth;
        int inSampleSize = 1;
        if (height > reqHeight || width > reqWidth) {
            int halfHeight = height / 3;
            int halfWidth = width / 3;
            while (halfHeight / inSampleSize > reqHeight && halfWidth / inSampleSize > reqWidth) {
                inSampleSize *= 2;
            }
        }
        return inSampleSize;
    }

    public static Point getScreenDimensions(Context context, boolean realSize) {
        WindowManager manager = (WindowManager) context.getSystemService("window");
        Display display = manager.getDefaultDisplay();
        Point size = new Point();
        if (realSize) {
            display.getRealSize(size);
        } else {
            display.getSize(size);
        }
        if (size.x > size.y) {
            return new Point(size.y, size.x);
        }
        return size;
    }

    public static float getScreenAspectRatio(Context context, boolean realSize) {
        Point dimens = getScreenDimensions(context, realSize);
        return dimens.x / dimens.y;
    }

    public static float getDescendantCoordRelativeToParent(View descendant, View root, int[] coord, boolean includeRootScroll) {
        return getDescendantCoordRelativeToParent(descendant, root, coord, includeRootScroll, true);
    }

    public static float getDescendantCoordRelativeToParent(View descendant, View root, int[] coord, boolean includeRootScroll, boolean isMapPoint) {
        ArrayList<View> ancestorChain = new ArrayList<>();
        float[] pt = {coord[0], coord[1]};
        for (View v = descendant; v != root && v != null; v = (View) v.getParent()) {
            ancestorChain.add(v);
        }
        ancestorChain.add(root);
        float scale = 1.0f;
        int count = ancestorChain.size();
        for (int i = 0; i < count; i++) {
            View v0 = ancestorChain.get(i);
            if (v0 != descendant || includeRootScroll) {
                pt[0] = pt[0] - v0.getScrollX();
                pt[1] = pt[1] - v0.getScrollY();
            }
            if (isMapPoint) {
                v0.getMatrix().mapPoints(pt);
            }
            pt[0] = pt[0] + v0.getLeft();
            pt[1] = pt[1] + v0.getTop();
            scale *= v0.getScaleX();
        }
        coord[0] = Math.round(pt[0]);
        coord[1] = Math.round(pt[1]);
        return scale;
    }

    public static float mapCoordInSelfToDescendent(View descendant, View root, int[] coord) {
        ArrayList<View> ancestorChain = new ArrayList<>();
        float[] pt = {coord[0], coord[1]};
        for (View v = descendant; v != root && v.getParent() != null; v = (View) v.getParent()) {
            ancestorChain.add(v);
        }
        ancestorChain.add(root);
        float scale = 1.0f;
        Matrix inverse = new Matrix();
        int count = ancestorChain.size();
        int i = count - 1;
        while (i >= 0) {
            View ancestor = ancestorChain.get(i);
            View next = i > 0 ? ancestorChain.get(i - 1) : null;
            pt[0] = pt[0] + ancestor.getScrollX();
            pt[1] = pt[1] + ancestor.getScrollY();
            if (next != null) {
                pt[0] = pt[0] - next.getLeft();
                pt[1] = pt[1] - next.getTop();
                next.getMatrix().invert(inverse);
                inverse.mapPoints(pt);
                scale *= next.getScaleX();
            }
            i--;
        }
        coord[0] = Math.round(pt[0]);
        coord[1] = Math.round(pt[1]);
        return scale;
    }

    public static boolean pointInView(View v, float localX, float localY, float slop) {
        return localX >= (-slop) && localY >= (-slop) && localX < ((float) v.getWidth()) + slop && localY < ((float) v.getHeight()) + slop;
    }

    public static void scaleRect(Rect r, float scale) {
        if (scale != 1.0f) {
            r.left = (int) ((r.left * scale) + 0.5f);
            r.top = (int) ((r.top * scale) + 0.5f);
            r.right = (int) ((r.right * scale) + 0.5f);
            r.bottom = (int) ((r.bottom * scale) + 0.5f);
        }
    }

    public static int[] getCenterDeltaInScreenSpace(View v0, View v1, int[] delta) {
        v0.getLocationInWindow(sLoc0);
        v1.getLocationInWindow(sLoc1);
        sLoc0[0] = (int) (r0[0] + ((v0.getMeasuredWidth() * v0.getScaleX()) / 2.0f));
        sLoc0[1] = (int) (r0[1] + ((v0.getMeasuredHeight() * v0.getScaleY()) / 2.0f));
        sLoc1[0] = (int) (r0[0] + ((v1.getMeasuredWidth() * v1.getScaleX()) / 2.0f));
        sLoc1[1] = (int) (r0[1] + ((v1.getMeasuredHeight() * v1.getScaleY()) / 2.0f));
        if (delta == null) {
            delta = new int[2];
        }
        delta[0] = sLoc1[0] - sLoc0[0];
        delta[1] = sLoc1[1] - sLoc0[1];
        return delta;
    }

    public static void scaleRectAboutCenter(Rect r, float scale) {
        int cx = r.centerX();
        int cy = r.centerY();
        r.offset(-cx, -cy);
        scaleRect(r, scale);
        r.offset(cx, cy);
    }

    public static void startActivityForResultSafely(Activity activity, Intent intent, int requestCode) {
        try {
            activity.startActivityForResult(intent, requestCode);
        } catch (ActivityNotFoundException e) {
            Toast.makeText(activity, R.string.activity_not_found, 0).show();
        } catch (SecurityException e2) {
            Toast.makeText(activity, R.string.activity_not_found, 0).show();
            Log.e(TAG, "Launcher does not have the permission to launch " + intent + ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity.", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isSystemApp(Context context, Intent intent) {
        PackageManager pm = context.getPackageManager();
        ComponentName cn = intent.getComponent();
        String packageName = null;
        if (cn == null) {
            ResolveInfo info = pm.resolveActivity(intent, 65536);
            if (info != null && info.activityInfo != null) {
                packageName = info.activityInfo.packageName;
            }
        } else {
            packageName = cn.getPackageName();
        }
        if (packageName == null) {
            return false;
        }
        try {
            PackageInfo info2 = pm.getPackageInfo(packageName, 0);
            if (info2 == null || info2.applicationInfo == null) {
                return false;
            }
            return (info2.applicationInfo.flags & 1) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int findDominantColorByHue(Bitmap bitmap, int samples) {
        int height = bitmap.getHeight();
        int width = bitmap.getWidth();
        int sampleStride = (int) Math.sqrt((height * width) / samples);
        if (sampleStride < 1) {
            sampleStride = 1;
        }
        float[] hsv = new float[3];
        float[] hueScoreHistogram = new float[360];
        float highScore = -1.0f;
        int bestHue = -1;
        for (int y = 0; y < height; y += sampleStride) {
            for (int x = 0; x < width; x += sampleStride) {
                int argb = bitmap.getPixel(x, y);
                int alpha = (argb >> 24) & 255;
                if (alpha >= 128) {
                    Color.colorToHSV(argb | (-16777216), hsv);
                    int hue = (int) hsv[0];
                    if (hue >= 0 && hue < hueScoreHistogram.length) {
                        hueScoreHistogram[hue] = hueScoreHistogram[hue] + (hsv[1] * hsv[2]);
                        if (hueScoreHistogram[hue] > highScore) {
                            highScore = hueScoreHistogram[hue];
                            bestHue = hue;
                        }
                    }
                }
            }
        }
        SparseArray<Float> rgbScores = new SparseArray<>();
        int bestColor = -16777216;
        float highScore2 = -1.0f;
        for (int y2 = 0; y2 < height; y2 += sampleStride) {
            for (int x2 = 0; x2 < width; x2 += sampleStride) {
                int rgb = bitmap.getPixel(x2, y2) | (-16777216);
                Color.colorToHSV(rgb, hsv);
                if (((int) hsv[0]) == bestHue) {
                    float s = hsv[1];
                    float v = hsv[2];
                    int bucket = ((int) (100.0f * s)) + ((int) (10000.0f * v));
                    float score = s * v;
                    Float oldTotal = rgbScores.get(bucket);
                    float newTotal = oldTotal == null ? score : oldTotal.floatValue() + score;
                    rgbScores.put(bucket, Float.valueOf(newTotal));
                    if (newTotal > highScore2) {
                        highScore2 = newTotal;
                        bestColor = rgb;
                    }
                }
            }
        }
        return bestColor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Pair<String, Resources> findSystemApk(String action, PackageManager pm) {
        Intent intent = new Intent(action);
        Iterator<ResolveInfo> it = pm.queryBroadcastReceivers(intent, 0).iterator();
        while (it.hasNext()) {
            ResolveInfo info = it.next();
            if (info.activityInfo != null && (info.activityInfo.applicationInfo.flags & 1) != 0) {
                String packageName = info.activityInfo.packageName;
                try {
                    Resources res = pm.getResourcesForApplication(packageName);
                    return Pair.create(packageName, res);
                } catch (PackageManager.NameNotFoundException e) {
                    Log.w(TAG, "Failed to find resources for " + packageName);
                }
            }
        }
        return null;
    }

    @TargetApi(19)
    public static boolean isViewAttachedToWindow(View v) {
        if (ATLEAST_KITKAT) {
            return v.isAttachedToWindow();
        }
        return v.getKeyDispatcherState() != null;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [net.oneplus.h2launcher.Utilities$1] */
    @TargetApi(17)
    public static synchronized void getSearchWidgetProvider(final Context context, final WidgetProviderListener listener) {
        synchronized (Utilities.class) {
            if (listener == null) {
                throw new IllegalArgumentException("listener can't be null");
            }
            final SearchManager searchManager = (SearchManager) context.getSystemService(Stats.SUB_CONTAINER_ALL_APPS_SEARCH);
            new AsyncTask<Void, Void, Void>() { // from class: net.oneplus.h2launcher.Utilities.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public Void doInBackground(Void... params) {
                    PackageManager pm = context.getPackageManager();
                    ComponentName searchComponent = searchManager.getGlobalSearchActivity();
                    if (searchComponent == null || !Utilities.isComponentEnabled(pm, searchComponent)) {
                        listener.onWidgetProviderFound(null);
                    } else {
                        String providerPkg = searchComponent.getPackageName();
                        AppWidgetProviderInfo defaultWidgetForSearchPackage = null;
                        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
                        for (AppWidgetProviderInfo info : appWidgetManager.getInstalledProviders()) {
                            if (info.provider.getPackageName().equals(providerPkg)) {
                                if (Utilities.ATLEAST_JB_MR1) {
                                    if ((info.widgetCategory & 4) != 0) {
                                        listener.onWidgetProviderFound(info);
                                    } else if (defaultWidgetForSearchPackage == null) {
                                        defaultWidgetForSearchPackage = info;
                                    }
                                } else {
                                    listener.onWidgetProviderFound(info);
                                }
                            }
                        }
                        listener.onWidgetProviderFound(defaultWidgetForSearchPackage);
                    }
                    return null;
                }
            }.execute(new Void[0]);
        }
    }

    public static boolean isComponentEnabled(PackageManager pm, ComponentName componentName) {
        int componentEnabledSetting = pm.getComponentEnabledSetting(componentName);
        switch (componentEnabledSetting) {
            case 1:
                return true;
            case 2:
                return false;
            default:
                try {
                    PackageInfo packageInfo = pm.getPackageInfo(componentName.getPackageName(), 527);
                    List<ComponentInfo> components = new ArrayList<>();
                    if (packageInfo.activities != null) {
                        Collections.addAll(components, packageInfo.activities);
                    }
                    if (packageInfo.services != null) {
                        Collections.addAll(components, packageInfo.services);
                    }
                    if (packageInfo.providers != null) {
                        Collections.addAll(components, packageInfo.providers);
                    }
                    for (ComponentInfo componentInfo : components) {
                        if (componentInfo.name.equals(componentName.getClassName())) {
                            return componentInfo.isEnabled();
                        }
                    }
                    return false;
                } catch (PackageManager.NameNotFoundException e) {
                    return false;
                }
        }
    }

    public static byte[] flattenBitmap(Bitmap bitmap) {
        int size = bitmap.getWidth() * bitmap.getHeight() * 4;
        ByteArrayOutputStream out = new ByteArrayOutputStream(size);
        try {
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, out);
            out.flush();
            out.close();
            return out.toByteArray();
        } catch (IOException e) {
            Log.w(TAG, "Could not write bitmap");
            return null;
        }
    }

    public static boolean findVacantCell(int[] vacant, int spanX, int spanY, int xCount, int yCount, boolean[][] occupied) {
        for (int y = 0; y + spanY <= yCount; y++) {
            for (int x = 0; x + spanX <= xCount; x++) {
                boolean available = !occupied[x][y];
                for (int i = x; i < x + spanX; i++) {
                    for (int j = y; j < y + spanY; j++) {
                        available = available && !occupied[i][j];
                        if (!available) {
                            break;
                        }
                    }
                }
                if (available) {
                    vacant[0] = x;
                    vacant[1] = y;
                    return true;
                }
            }
        }
        return false;
    }

    public static String trim(CharSequence s) {
        if (s == null) {
            return null;
        }
        Matcher m = sTrimPattern.matcher(s);
        return m.replaceAll("$1");
    }

    public static float calculateTextHeight(float textSizePx) {
        Paint p = new Paint();
        p.setTextSize(textSizePx);
        Paint.FontMetrics fm = p.getFontMetrics();
        return (-fm.top) + fm.bottom;
    }

    public static void println(String key, Object... args) {
        StringBuilder b = new StringBuilder();
        b.append(key);
        b.append(": ");
        boolean isFirstArgument = true;
        for (Object arg : args) {
            if (isFirstArgument) {
                isFirstArgument = false;
            } else {
                b.append(", ");
            }
            b.append(arg);
        }
        System.out.println(b.toString());
    }

    @TargetApi(17)
    public static boolean isRtl(Resources res) {
        return ATLEAST_JB_MR1 && res.getConfiguration().getLayoutDirection() == 1;
    }

    public static void assertWorkerThread() {
        if (LauncherAppState.isDogfoodBuild() && LauncherModel.sWorkerThread.getThreadId() != Process.myTid()) {
            throw new IllegalStateException();
        }
    }

    public static boolean isLauncherAppTarget(Intent launchIntent) {
        if (launchIntent == null || !"android.intent.action.MAIN".equals(launchIntent.getAction()) || launchIntent.getComponent() == null || launchIntent.getCategories() == null || launchIntent.getCategories().size() != 1 || !launchIntent.hasCategory("android.intent.category.LAUNCHER") || !TextUtils.isEmpty(launchIntent.getDataString())) {
            return false;
        }
        Bundle extras = launchIntent.getExtras();
        if (extras == null) {
            return true;
        }
        Set<String> keys = extras.keySet();
        return keys.size() == 1 && keys.contains(ItemInfo.EXTRA_PROFILE);
    }

    public static float dpiFromPx(int size, DisplayMetrics metrics) {
        float densityRatio = metrics.densityDpi / 160.0f;
        return size / densityRatio;
    }

    public static int pxFromDp(float size, DisplayMetrics metrics) {
        return Math.round(TypedValue.applyDimension(1, size, metrics));
    }

    public static int pxFromSp(float size, DisplayMetrics metrics) {
        return Math.round(TypedValue.applyDimension(2, size, metrics));
    }

    public static String createDbSelectionQuery(String columnName, Iterable<?> values) {
        return String.format(Locale.ENGLISH, "%s IN (%s)", columnName, TextUtils.join(", ", values));
    }

    public static float getIconScaleValue(Context context) {
        if (sSelectedIconSize == -1) {
            SharedPreferences iconPackSharedPrefs = context.getSharedPreferences(IconPackHelper.SHARED_PREFERENCES, 0);
            sSelectedIconSize = iconPackSharedPrefs.getInt(IconPackHelper.CURRENT_ICON_SIZE, 2);
        }
        switch (sSelectedIconSize) {
            case 1:
                return 0.8f;
            case 2:
            default:
                return 1.0f;
            case 3:
                return 1.13f;
        }
    }

    public static int getAppsViewNumCols(Context context) {
        PreferencesHelper.AppDrawerSizeCatalog appDrawerSize;
        if (sSelectedIconSize == -1) {
            SharedPreferences iconPackSharedPrefs = context.getSharedPreferences(IconPackHelper.SHARED_PREFERENCES, 0);
            sSelectedIconSize = iconPackSharedPrefs.getInt(IconPackHelper.CURRENT_ICON_SIZE, 2);
        }
        switch (sSelectedIconSize) {
            case 1:
                appDrawerSize = PreferencesHelper.AppDrawerSizeCatalog.LARGE;
                break;
            case 2:
                appDrawerSize = PreferencesHelper.AppDrawerSizeCatalog.STANDARD;
                break;
            case 3:
                appDrawerSize = PreferencesHelper.AppDrawerSizeCatalog.SMALL;
                break;
            default:
                appDrawerSize = PreferencesHelper.AppDrawerSizeCatalog.STANDARD;
                break;
        }
        return appDrawerSize.getAppDrawerSize();
    }

    public static void setSelectedIconSize(int selectedIconSize) {
        sSelectedIconSize = selectedIconSize;
    }

    public static void setFolderScaledLayoutParams(Context context, DeviceProfile grid) {
        float iconScaleValue = getIconScaleValue(context);
        sFolderNameTopMargin = (int) ((grid.iconSizePx + grid.iconDrawablePaddingPx) * iconScaleValue);
        sFolderPreviewBackgroundTopMargin = (int) (grid.folderBackgroundOffset * iconScaleValue);
        sFolderIconSize = (int) (grid.folderIconSizePx * iconScaleValue);
    }

    public static int getFolderNameTopMargin(Context context, DeviceProfile grid) {
        if (sFolderNameTopMargin == 0) {
            sFolderNameTopMargin = (int) ((grid.iconSizePx + grid.iconDrawablePaddingPx) * getIconScaleValue(context));
        }
        return sFolderNameTopMargin;
    }

    public static int getFolderPreviewBackgroundTopMargin(Context context, DeviceProfile grid) {
        if (sFolderPreviewBackgroundTopMargin == 0) {
            sFolderPreviewBackgroundTopMargin = (int) (grid.folderBackgroundOffset * getIconScaleValue(context));
        }
        return sFolderPreviewBackgroundTopMargin;
    }

    public static int getFolderIconSize(Context context, DeviceProfile grid) {
        if (sFolderIconSize == 0) {
            sFolderIconSize = (int) (grid.folderIconSizePx * getIconScaleValue(context));
        }
        return sFolderIconSize;
    }

    public static void clearIconScaleParameters(Context context) {
        SharedPreferences iconPackSharedPrefs = context.getSharedPreferences(IconPackHelper.SHARED_PREFERENCES, 0);
        sSelectedIconSize = iconPackSharedPrefs.getInt(IconPackHelper.CURRENT_ICON_SIZE, 2);
        sFolderNameTopMargin = 0;
        sFolderPreviewBackgroundTopMargin = 0;
        sFolderIconSize = 0;
    }

    public static void saveBitmapInStorage(Bitmap img, String filename) {
        if (img != null) {
            if (filename == null || filename.length() == 0) {
                filename = "debug_bitmap.png";
            }
            String iconsStoragePath = Environment.getExternalStorageDirectory() + "/bitmaps";
            File sdIconStorageDir = new File(iconsStoragePath);
            sdIconStorageDir.mkdirs();
            try {
                String filePath = sdIconStorageDir.toString() + "/" + filename;
                Logger.d(TAG, "bitmap saved:%s", filePath);
                FileOutputStream fileOutputStream = new FileOutputStream(filePath);
                BufferedOutputStream bos = new BufferedOutputStream(fileOutputStream);
                img.compress(Bitmap.CompressFormat.PNG, 100, bos);
                bos.flush();
                bos.close();
            } catch (FileNotFoundException e) {
                Logger.i(TAG, "Error saving image file: " + e.getMessage());
            } catch (IOException e2) {
                Logger.i(TAG, "Error saving image file: " + e2.getMessage());
            }
        }
    }

    public static boolean isDarkModeTheme(Context context) {
        int theme = 2;
        try {
            Method getIntForUser = Settings.System.class.getMethod("getIntForUser", ContentResolver.class, String.class, Integer.TYPE);
            theme = ((Integer) getIntForUser.invoke(Settings.System.class, context.getContentResolver(), SETTINGS_DARK_MODE_NAME, 0)).intValue();
        } catch (IllegalAccessException e) {
            Logger.e(TAG, "Illegal access to the target: ", e);
        } catch (NoSuchMethodException e2) {
            Logger.e(TAG, "Failed to get method by reflection: ", e2);
        } catch (InvocationTargetException e3) {
            Logger.e(TAG, "Failed to invoke the method by reflection: ", e3);
        }
        return theme == 1;
    }

    public static boolean isDarkModeThemeByGlobal(Context context) {
        int theme = 2;
        try {
            Method getIntForUser = Settings.Global.class.getMethod("getInt", ContentResolver.class, String.class, Integer.TYPE);
            theme = ((Integer) getIntForUser.invoke(Settings.System.class, context.getContentResolver(), SETTINGS_DARK_MODE_NAME, 0)).intValue();
        } catch (IllegalAccessException e) {
            Logger.e(TAG, "Illegal access to the target: ", e);
        } catch (NoSuchMethodException e2) {
            Logger.e(TAG, "Failed to get method by reflection: ", e2);
        } catch (InvocationTargetException e3) {
            Logger.e(TAG, "Failed to invoke the method by reflection: ", e3);
        }
        return theme == 1;
    }

    public static boolean isTaskUnfinished(AsyncTask task) {
        return (task == null || task.getStatus().equals(AsyncTask.Status.FINISHED)) ? false : true;
    }

    public static Bitmap createShadowIconBitmap(Drawable icon, Context context) {
        return createShadowIconBitmap(icon, context, DEFAULT_ICON_SHADOW_COLOR);
    }

    private static Bitmap createShadowIconBitmap(Drawable icon, Context context, int shadowColor) {
        Bitmap bitmap;
        synchronized (sCanvas) {
            if (sIconShadowOffset == -1) {
                sIconShadowOffset = context.getResources().getDimensionPixelOffset(R.dimen.icon_shadow_offset);
            }
            Bitmap blurBitmap = null;
            if (icon instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) icon;
                Bitmap bitmap2 = bitmapDrawable.getBitmap();
                if (bitmap2.getDensity() == 0) {
                    bitmapDrawable.setTargetDensity(context.getResources().getDisplayMetrics());
                }
                blurBitmap = bitmap2;
            }
            int sourceWidth = icon.getIntrinsicWidth();
            int sourceHeight = icon.getIntrinsicHeight();
            bitmap = Bitmap.createBitmap(sourceWidth, sourceHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = sCanvas;
            canvas.setBitmap(bitmap);
            if (blurBitmap != null) {
                mBlurPaint.setMaskFilter(mShadowBlurMaskFilter);
                int[] blurOffset = new int[2];
                Bitmap alphaBitmap = blurBitmap.extractAlpha(mBlurPaint, blurOffset);
                mShadowPaint.setColor(shadowColor);
                canvas.drawBitmap(alphaBitmap, blurOffset[0], sIconShadowOffset + blurOffset[1], mShadowPaint);
            }
            sOldBounds.set(icon.getBounds());
            icon.setBounds(0, 0, sourceWidth, sourceHeight);
            icon.draw(canvas);
            icon.setBounds(sOldBounds);
            canvas.setBitmap(null);
        }
        return bitmap;
    }

    public static int getIconPaddingPx(Bitmap bitmap, int targetPaddingPx) {
        if (bitmap == null || bitmap.isRecycled()) {
            Logger.d(TAG, "[getIconPaddingPx] bitmap is null or recycled.");
            return -1;
        }
        int height = bitmap.getHeight();
        int width = bitmap.getWidth();
        int[] pixels = new int[width * height];
        bitmap.getPixels(pixels, 0, width, 0, 0, width, height);
        int leftPaddingPx = getIconPaddingPx(pixels, width, height, targetPaddingPx, 0);
        int upPaddingPx = getIconPaddingPx(pixels, width, height, targetPaddingPx, 1);
        if (leftPaddingPx < 0 || upPaddingPx < 0) {
            return -1;
        }
        return Math.min(leftPaddingPx, upPaddingPx);
    }

    public static int getIconPaddingPx(int[] pixels, int width, int height, int targetPaddingPx, int direction) {
        switch (direction) {
            case 0:
                int start = (height / 2) * width;
                for (int x = 0; x < targetPaddingPx; x++) {
                    if (!isTransparentPixel(pixels[start + x])) {
                        return x;
                    }
                }
                break;
            case 1:
                int middle = width / 2;
                for (int x2 = 0; x2 < targetPaddingPx; x2++) {
                    int position = middle + (x2 * width);
                    if (!isTransparentPixel(pixels[position])) {
                        return x2;
                    }
                }
                break;
            case 2:
                int start2 = (pixels.length / 2) + width;
                for (int x3 = 0; x3 < targetPaddingPx; x3++) {
                    if (!isTransparentPixel(pixels[start2 - x3])) {
                        return x3;
                    }
                }
                break;
            case 3:
                int bottomMiddle = pixels.length - (width / 2);
                for (int x4 = 0; x4 < targetPaddingPx; x4++) {
                    int position2 = bottomMiddle - (x4 * width);
                    if (!isTransparentPixel(pixels[position2])) {
                        return x4;
                    }
                }
            default:
                return -1;
        }
        return -1;
    }

    private static boolean isTransparentPixel(int argb) {
        int alpha = (argb >> 24) & 255;
        return alpha <= 120;
    }

    public static boolean isPackageInstalled(Context context, String packageName) {
        try {
            context.getPackageManager().getApplicationInfo(packageName, 0);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        } catch (RuntimeException e2) {
            return false;
        }
    }

    public static boolean isPackageInstalled(Context context, ComponentName componentName) {
        return componentName != null && isPackageInstalled(context, componentName.getPackageName());
    }

    public static boolean isPackageEnabled(Context context, String packageName) {
        try {
            ApplicationInfo ai = context.getPackageManager().getApplicationInfo(packageName, 0);
            return ai.enabled;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        } catch (RuntimeException e2) {
            return false;
        }
    }

    public static boolean isPackageValid(Context context, String packageName) {
        return isPackageInstalled(context, packageName) && isPackageEnabled(context, packageName);
    }

    public static boolean isLessOrEqualDefaultDensity(Context context) {
        DisplayMetrics metrics = new DisplayMetrics();
        WindowManager wm = (WindowManager) context.getSystemService("window");
        wm.getDefaultDisplay().getMetrics(metrics);
        return metrics.densityDpi <= getDefaultDensity(context);
    }

    public static boolean isLargestDensity(Context context) {
        DisplayMetrics metrics = new DisplayMetrics();
        WindowManager wm = (WindowManager) context.getSystemService("window");
        wm.getDefaultDisplay().getMetrics(metrics);
        return metrics.densityDpi == 540;
    }

    public static boolean isDefaultDensity(Context context) {
        DisplayMetrics metrics = new DisplayMetrics();
        WindowManager wm = (WindowManager) context.getSystemService("window");
        wm.getDefaultDisplay().getMetrics(metrics);
        return metrics.densityDpi == getDefaultDensity(context);
    }

    public static boolean isMinimumDensity(Context context) {
        DisplayMetrics metrics = new DisplayMetrics();
        WindowManager wm = (WindowManager) context.getSystemService("window");
        wm.getDefaultDisplay().getMetrics(metrics);
        return metrics.densityDpi < getDefaultDensity(context);
    }

    public static boolean isBangsScreen(Context context) {
        Point dimens = getScreenDimensions(context, true);
        return dimens.y > 2160;
    }

    public static int getIconTopOffset(Context context, ItemInfo itemInfo) {
        if (!isBangsScreen(context) || itemInfo == null || itemInfo.container != -100) {
            return 0;
        }
        if (sBangsScreenDesktopIconTopOffset == 0) {
            sBangsScreenDesktopIconTopOffset = getDimensionPixelNormalized(context, R.dimen.desktop_icon_top_offset_17819);
        }
        return sBangsScreenDesktopIconTopOffset;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String getDeviceTag() {
        char c = 0;
        try {
            Class clazz = Class.forName("android.os.SystemProperties");
            Method method = clazz.getDeclaredMethod("get", String.class);
            String device = (String) method.invoke(null, "ro.product.device");
            if (TextUtils.isEmpty(device)) {
                device = Build.DEVICE;
            }
            Logger.d(TAG, "getDeviceTag# device=" + device);
            switch (device.hashCode()) {
                case -1840371809:
                    if (device.equals("SS8821")) {
                        c = 17;
                        break;
                    }
                    c = 65535;
                    break;
                case -1840371805:
                    if (device.equals("SS8825")) {
                        c = 16;
                        break;
                    }
                    c = 65535;
                    break;
                case -1840371710:
                    if (device.equals("SS8857")) {
                        c = 15;
                        break;
                    }
                    c = 65535;
                    break;
                case -782144639:
                    if (device.equals("OnePlus3T")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case -782144577:
                    if (device.equals("OnePlus5T")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case -782144546:
                    if (device.equals("OnePlus6T")) {
                        c = '\f';
                        break;
                    }
                    c = 65535;
                    break;
                case -602397472:
                    if (device.equals("ONEPLUS")) {
                        break;
                    }
                    c = 65535;
                    break;
                case 82475:
                    if (device.equals("SUM")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 75575538:
                    if (device.equals("P7801")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case 75575577:
                    if (device.equals("P7819")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case 75605329:
                    if (device.equals("P8801")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                case 75605360:
                    if (device.equals("P8811")) {
                        c = '\r';
                        break;
                    }
                    c = 65535;
                    break;
                case 343319808:
                    if (device.equals("OnePlus")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 850001350:
                    if (device.equals("OnePlus6TSingle")) {
                        c = 14;
                        break;
                    }
                    c = 65535;
                    break;
                case 2052979506:
                    if (device.equals("OnePlus2")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 2052979507:
                    if (device.equals("OnePlus3")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 2052979509:
                    if (device.equals("OnePlus5")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 2052979510:
                    if (device.equals("OnePlus6")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    return DEVICE_14001;
                case 1:
                    return DEVICE_14049;
                case 2:
                case 3:
                    return DEVICE_15055;
                case 4:
                    return DEVICE_15801;
                case 5:
                    return DEVICE_15811;
                case 6:
                    return DEVICE_16859;
                case 7:
                case '\b':
                    return DEVICE_17801;
                case '\t':
                case '\n':
                    return DEVICE_17819;
                case 11:
                case '\f':
                    return DEVICE_18801;
                case '\r':
                case 14:
                    return DEVICE_18811;
                case 15:
                    return DEVICE_18857;
                case 16:
                    return DEVICE_18825;
                default:
                    return DEVICE_18821;
            }
        } catch (Exception e) {
            Log.w(TAG, "Exception e = " + e.toString());
            return "";
        }
    }

    public static boolean isValidComponent(Context context, int itemType, ComponentName cn, UserHandleCompat user) {
        LauncherAppsCompat launcherApps;
        if (itemType == 1 || itemType == 6 || cn == null) {
            return true;
        }
        boolean isSdCardReady = isBootCompleted();
        if (!isSdCardReady || (launcherApps = LauncherAppsCompat.getInstance(context)) == null) {
            return true;
        }
        boolean validPkg = false;
        boolean enable = false;
        try {
            validPkg = launcherApps.isPackageEnabledForProfile(cn.getPackageName(), user);
            enable = launcherApps.isActivityEnabledForProfile(cn, user);
        } catch (SecurityException e) {
            Logger.d(TAG, "isValidComponent SecurityException %s", e.getMessage());
        }
        return validPkg && enable;
    }

    public static SharedPreferences getPrefs(Context context) {
        return context.getSharedPreferences(LauncherFiles.SHARED_PREFERENCES_KEY, 0);
    }

    public static Bitmap createIconBitmap(Intent.ShortcutIconResource iconRes, Context context) {
        PackageManager packageManager = context.getPackageManager();
        try {
            Resources resources = packageManager.getResourcesForApplication(iconRes.packageName);
            if (resources == null) {
                return null;
            }
            int id = resources.getIdentifier(iconRes.resourceName, null, null);
            return createIconBitmap(resources.getDrawableForDensity(id, LauncherAppState.getInstance().getInvariantDeviceProfile().fillResIconDpi), context);
        } catch (Exception e) {
            return null;
        }
    }

    public static Bitmap createShortcutIcon(ShortcutInfoCompat shortcutInfo, Context context) {
        return createShortcutIcon(shortcutInfo, context, false);
    }

    public static Bitmap createShortcutIcon(ShortcutInfoCompat shortcutInfo, Context context, boolean badged) {
        LauncherAppState app = LauncherAppState.getInstance();
        Drawable unbadgedDrawable = getShortcutIconDrawable(context, shortcutInfo, app.getInvariantDeviceProfile().fillResIconDpi);
        Bitmap.Config c = unbadgedDrawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        Bitmap bitmap = Bitmap.createBitmap(unbadgedDrawable.getIntrinsicWidth(), unbadgedDrawable.getIntrinsicHeight(), c);
        Canvas canvas = new Canvas(bitmap);
        unbadgedDrawable.setBounds(0, 0, unbadgedDrawable.getIntrinsicWidth(), unbadgedDrawable.getIntrinsicHeight());
        unbadgedDrawable.draw(canvas);
        return bitmap;
    }

    @TargetApi(25)
    public static Drawable getShortcutIconDrawable(Context context, ShortcutInfoCompat shortcutInfo, int density) {
        if (ATLEAST_ANDROID_N_MR1) {
            try {
                return ((LauncherApps) context.getSystemService(LauncherApps.class)).getShortcutIconDrawable(shortcutInfo.getShortcutInfo(), density);
            } catch (IllegalStateException | SecurityException e) {
                Log.e(TAG, "Failed to get shortcut icon", e);
            }
        }
        return null;
    }

    static boolean isOnePlusLauncher(Context context) {
        PackageManager pm = context.getPackageManager();
        IntentFilter filter = new IntentFilter("android.intent.action.MAIN");
        filter.addCategory("android.intent.category.HOME");
        List<IntentFilter> filters = new ArrayList<>();
        filters.add(filter);
        List<ComponentName> activities = new ArrayList<>();
        pm.getPreferredActivities(filters, activities, null);
        boolean isOnePlusLauncher = false;
        for (ComponentName activity : activities) {
            if (TextUtils.equals(context.getPackageName(), activity.getPackageName())) {
                isOnePlusLauncher = true;
            }
        }
        return isOnePlusLauncher;
    }

    public static String getSystemProperty(String property, String defaultValue) {
        try {
            Class clazz = Class.forName("android.os.SystemProperties");
            Method getter = clazz.getDeclaredMethod("get", String.class);
            String value = (String) getter.invoke(null, property);
            if (!TextUtils.isEmpty(value)) {
                return value;
            }
        } catch (Exception e) {
            Log.d(TAG, "Unable to read system properties");
        }
        return defaultValue;
    }

    public static float boundToRange(float value, float lowerBound, float upperBound) {
        return Math.max(lowerBound, Math.min(value, upperBound));
    }

    public static boolean isBootCompleted() {
        return "1".equals(getSystemProperty("sys.boot_completed", "1"));
    }

    public static boolean isDualApp(UserHandleCompat user) {
        return user != null && user.getUser().hashCode() == 999;
    }

    public static boolean isValidUser(Context context) {
        UserHandleCompat user = UserHandleCompat.myUserHandle();
        return isValidUser(context, user);
    }

    public static boolean isValidUser(Context context, UserHandleCompat user) {
        UserManagerCompat userManager = UserManagerCompat.getInstance(context);
        boolean isUserRunning = userManager.isUserRunning(user.getUser());
        if (!isUserRunning) {
            Logger.d(TAG, "isValidUser# userId: %d", Integer.valueOf(user.hashCode()));
            return false;
        }
        if (userManager.isUserUnlocked(user.getUser())) {
            return true;
        }
        Logger.d(TAG, "isValidUser# the %s is lock.", user);
        return false;
    }

    public static boolean shouldShowRequestPermission(Activity activity) {
        boolean should = PermissionUtils.shouldShowRequestPermissionRationale(activity, "android.permission.READ_CONTACTS");
        SharedPreferences pref = PreferenceManager.getDefaultSharedPreferences(activity);
        boolean hasShowRequestWindow = pref.getBoolean(PREFERENCE_SHOW_REQUEST_WINDOW, false);
        return should || !hasShowRequestWindow;
    }

    private static int getDefaultDensity(Context context) {
        WindowManager wm = (WindowManager) context.getSystemService("window");
        Point size = new Point();
        wm.getDefaultDisplay().getSize(size);
        int shortLength = Math.min(size.x, size.y);
        return (int) (shortLength / DEFAULT_SCREEN_WIDTH_INCH);
    }

    public static int getDimensionPixelNormalized(Context context, int id) {
        int size = context.getResources().getDimensionPixelSize(id);
        DisplayMetrics metrics = new DisplayMetrics();
        WindowManager wm = (WindowManager) context.getSystemService("window");
        if (wm != null) {
            wm.getDefaultDisplay().getMetrics(metrics);
            int defaultDensity = getDefaultDensity(context);
            if (metrics.densityDpi != defaultDensity) {
                return (int) ((size * defaultDensity) / metrics.densityDpi);
            }
            return size;
        }
        return size;
    }

    public static int getOneplusPermissionState(Context context) {
        if (sOneplusPermissionState == -2) {
            sOneplusPermissionState = Settings.Global.getInt(context.getContentResolver(), ONEPLUS_PERMISSION_AGREE, -1);
        }
        return sOneplusPermissionState;
    }

    public static boolean isUserJoinPlan(Context context) {
        int isJoinStabilityPlan = Settings.System.getInt(context.getContentResolver(), JOIN_STABILITY_PLAN, INVALID_VALUE);
        if (isJoinStabilityPlan != INVALID_VALUE) {
            return isJoinStabilityPlan == 1;
        }
        Logger.d(TAG, "there is no JoinStabilityPlan flag");
        return Settings.System.getInt(context.getContentResolver(), JOIN_USER_PLAN, INVALID_VALUE) == 1;
    }

    public static void clearOneplusPermissionState() {
        Logger.d(TAG, "clearOneplusPermissionState");
        sOneplusPermissionState = -2;
    }

    public static boolean isGestureButtonEnabled(Context context) {
        int value = Settings.System.getInt(context.getContentResolver(), OP_NAVIGATION_BAR_TYPE, -100);
        Logger.d(TAG, "isGestureButtonEnabled# value: " + value);
        return value == 3;
    }

    public static void goToSleep(PowerManager powerManager) {
        Log.d(TAG, "goToSleep()");
        try {
            Method goToSleep = powerManager.getClass().getMethod("goToSleep", Long.TYPE);
            goToSleep.invoke(powerManager, Long.valueOf(SystemClock.uptimeMillis()));
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            e.printStackTrace();
        }
    }
}
