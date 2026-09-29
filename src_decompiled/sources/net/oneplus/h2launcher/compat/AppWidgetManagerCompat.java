package net.oneplus.h2launcher.compat;

import android.app.Activity;
import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.LauncherAppWidgetProviderInfo;
import net.oneplus.h2launcher.Utilities;

/* loaded from: classes.dex */
public abstract class AppWidgetManagerCompat {
    private static AppWidgetManagerCompat sInstance;
    final AppWidgetManager mAppWidgetManager;
    final Context mContext;
    private static final String TAG = AppWidgetManagerCompat.class.getSimpleName();
    private static final Object sInstanceLock = new Object();

    public abstract boolean bindAppWidgetIdIfAllowed(int i, AppWidgetProviderInfo appWidgetProviderInfo, Bundle bundle);

    public abstract List<AppWidgetProviderInfo> getAllProviders();

    public abstract Bitmap getBadgeBitmap(LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo, Bitmap bitmap, int i);

    public abstract UserHandleCompat getUser(LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo);

    public abstract Drawable loadIcon(LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo, AssetCache assetCache);

    public abstract String loadLabel(LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo);

    public abstract Drawable loadPreview(AppWidgetProviderInfo appWidgetProviderInfo);

    public abstract void startConfigActivity(AppWidgetProviderInfo appWidgetProviderInfo, int i, Activity activity, AppWidgetHost appWidgetHost, int i2);

    public static AppWidgetManagerCompat getInstance(Context context) {
        AppWidgetManagerCompat appWidgetManagerCompat;
        synchronized (sInstanceLock) {
            if (sInstance == null) {
                if (Utilities.ATLEAST_LOLLIPOP) {
                    sInstance = new AppWidgetManagerCompatVL(context.getApplicationContext());
                } else {
                    sInstance = new AppWidgetManagerCompatV16(context.getApplicationContext());
                }
            }
            appWidgetManagerCompat = sInstance;
        }
        return appWidgetManagerCompat;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppWidgetManagerCompat(Context context) {
        this.mContext = context;
        this.mAppWidgetManager = AppWidgetManager.getInstance(context);
    }

    public AppWidgetProviderInfo getAppWidgetInfo(int appWidgetId) {
        return this.mAppWidgetManager.getAppWidgetInfo(appWidgetId);
    }

    public void setBindAppWidgetPermission(String packageName, boolean permission) {
        try {
            Method setBindAppWidgetPermission = this.mAppWidgetManager.getClass().getMethod("setBindAppWidgetPermission", String.class, Boolean.TYPE);
            setBindAppWidgetPermission.invoke(this.mAppWidgetManager, packageName, Boolean.valueOf(permission));
        } catch (IllegalAccessException e) {
            Log.d(TAG, "illegal access exception: ", e);
        } catch (NoSuchMethodException e2) {
            Log.d(TAG, "failed to get method: ", e2);
        } catch (InvocationTargetException e3) {
            Log.d(TAG, "failed to invoke target: ", e3);
        }
    }
}
