package net.oneplus.h2launcher.compat;

import android.annotation.TargetApi;
import android.app.Activity;
import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.LauncherAppWidgetProviderInfo;
import net.oneplus.h2launcher.R;

/* JADX INFO: Access modifiers changed from: package-private */
@TargetApi(21)
/* loaded from: classes.dex */
public class AppWidgetManagerCompatVL extends AppWidgetManagerCompat {
    private final PackageManager mPm;
    private final UserManager mUserManager;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppWidgetManagerCompatVL(Context context) {
        super(context);
        this.mPm = context.getPackageManager();
        this.mUserManager = (UserManager) context.getSystemService("user");
    }

    @Override // net.oneplus.h2launcher.compat.AppWidgetManagerCompat
    public List<AppWidgetProviderInfo> getAllProviders() {
        ArrayList<AppWidgetProviderInfo> providers = new ArrayList<>();
        for (UserHandle user : this.mUserManager.getUserProfiles()) {
            providers.addAll(this.mAppWidgetManager.getInstalledProvidersForProfile(user));
        }
        return providers;
    }

    @Override // net.oneplus.h2launcher.compat.AppWidgetManagerCompat
    public String loadLabel(LauncherAppWidgetProviderInfo info) {
        return info.getLabel(this.mPm);
    }

    @Override // net.oneplus.h2launcher.compat.AppWidgetManagerCompat
    public boolean bindAppWidgetIdIfAllowed(int appWidgetId, AppWidgetProviderInfo info, Bundle options) {
        return this.mAppWidgetManager.bindAppWidgetIdIfAllowed(appWidgetId, info.getProfile(), info.provider, options);
    }

    @Override // net.oneplus.h2launcher.compat.AppWidgetManagerCompat
    public UserHandleCompat getUser(LauncherAppWidgetProviderInfo info) {
        return info.isCustomWidget ? UserHandleCompat.myUserHandle() : UserHandleCompat.fromUser(info.getProfile());
    }

    @Override // net.oneplus.h2launcher.compat.AppWidgetManagerCompat
    public void startConfigActivity(AppWidgetProviderInfo info, int widgetId, Activity activity, AppWidgetHost host, int requestCode) {
        try {
            host.startAppWidgetConfigureActivityForResult(activity, widgetId, 0, requestCode, null);
        } catch (ActivityNotFoundException e) {
            Toast.makeText(activity, R.string.activity_not_found, 0).show();
        } catch (SecurityException e2) {
            Toast.makeText(activity, R.string.activity_not_found, 0).show();
        }
    }

    @Override // net.oneplus.h2launcher.compat.AppWidgetManagerCompat
    public Drawable loadPreview(AppWidgetProviderInfo info) {
        return info.loadPreviewImage(this.mContext, 0);
    }

    @Override // net.oneplus.h2launcher.compat.AppWidgetManagerCompat
    public Drawable loadIcon(LauncherAppWidgetProviderInfo info, AssetCache cache) {
        return info.getIcon(this.mContext, cache);
    }

    @Override // net.oneplus.h2launcher.compat.AppWidgetManagerCompat
    public Bitmap getBadgeBitmap(LauncherAppWidgetProviderInfo info, Bitmap bitmap, int imageHeight) {
        if (!info.isCustomWidget && !info.getProfile().equals(Process.myUserHandle())) {
            Resources res = this.mContext.getResources();
            int badgeSize = res.getDimensionPixelSize(R.dimen.profile_badge_size);
            int badgeMinTop = res.getDimensionPixelSize(R.dimen.profile_badge_minimum_top);
            Rect badgeLocation = new Rect(0, 0, badgeSize, badgeSize);
            int top = Math.max(imageHeight - badgeSize, badgeMinTop);
            if (res.getConfiguration().getLayoutDirection() == 1) {
                badgeLocation.offset(0, top);
            } else {
                badgeLocation.offset(bitmap.getWidth() - badgeSize, top);
            }
            Drawable drawable = this.mPm.getUserBadgedDrawableForDensity(new BitmapDrawable(res, bitmap), info.getProfile(), badgeLocation, 0);
            if (drawable instanceof BitmapDrawable) {
                return ((BitmapDrawable) drawable).getBitmap();
            }
            bitmap.eraseColor(0);
            Canvas c = new Canvas(bitmap);
            drawable.setBounds(0, 0, bitmap.getWidth(), bitmap.getHeight());
            drawable.draw(c);
            c.setBitmap(null);
            return bitmap;
        }
        return bitmap;
    }
}
