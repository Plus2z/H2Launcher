package net.oneplus.h2launcher.compat;

import android.annotation.TargetApi;
import android.app.Activity;
import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import java.util.List;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.LauncherAppWidgetProviderInfo;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.Utilities;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppWidgetManagerCompatV16 extends AppWidgetManagerCompat {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AppWidgetManagerCompatV16(Context context) {
        super(context);
    }

    @Override // net.oneplus.h2launcher.compat.AppWidgetManagerCompat
    public List<AppWidgetProviderInfo> getAllProviders() {
        return this.mAppWidgetManager.getInstalledProviders();
    }

    @Override // net.oneplus.h2launcher.compat.AppWidgetManagerCompat
    public String loadLabel(LauncherAppWidgetProviderInfo info) {
        return Utilities.trim(info.label);
    }

    @Override // net.oneplus.h2launcher.compat.AppWidgetManagerCompat
    @TargetApi(17)
    public boolean bindAppWidgetIdIfAllowed(int appWidgetId, AppWidgetProviderInfo info, Bundle options) {
        return Utilities.ATLEAST_JB_MR1 ? this.mAppWidgetManager.bindAppWidgetIdIfAllowed(appWidgetId, info.provider, options) : this.mAppWidgetManager.bindAppWidgetIdIfAllowed(appWidgetId, info.provider);
    }

    @Override // net.oneplus.h2launcher.compat.AppWidgetManagerCompat
    public UserHandleCompat getUser(LauncherAppWidgetProviderInfo info) {
        return UserHandleCompat.myUserHandle();
    }

    @Override // net.oneplus.h2launcher.compat.AppWidgetManagerCompat
    public void startConfigActivity(AppWidgetProviderInfo info, int widgetId, Activity activity, AppWidgetHost host, int requestCode) {
        Intent intent = new Intent("android.appwidget.action.APPWIDGET_CONFIGURE");
        intent.setComponent(info.configure);
        intent.putExtra(LauncherSettings.Favorites.APPWIDGET_ID, widgetId);
        Utilities.startActivityForResultSafely(activity, intent, requestCode);
    }

    @Override // net.oneplus.h2launcher.compat.AppWidgetManagerCompat
    public Drawable loadPreview(AppWidgetProviderInfo info) {
        return this.mContext.getPackageManager().getDrawable(info.provider.getPackageName(), info.previewImage, null);
    }

    @Override // net.oneplus.h2launcher.compat.AppWidgetManagerCompat
    public Drawable loadIcon(LauncherAppWidgetProviderInfo info, AssetCache cache) {
        return cache.getFullResIcon(info.provider.getPackageName(), info.icon);
    }

    @Override // net.oneplus.h2launcher.compat.AppWidgetManagerCompat
    public Bitmap getBadgeBitmap(LauncherAppWidgetProviderInfo info, Bitmap bitmap, int imageHeight) {
        return bitmap;
    }
}
