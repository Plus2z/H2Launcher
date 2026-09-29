package net.oneplus.h2launcher;

import android.annotation.TargetApi;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import java.lang.reflect.Field;
import net.oneplus.h2launcher.compat.UserHandleCompat;

/* loaded from: classes.dex */
public class LauncherAppWidgetProviderInfo extends AppWidgetProviderInfo {
    public boolean canReorder;
    public boolean isCustomWidget;
    public int minSpanX;
    public int minSpanY;
    public int spanX;
    public int spanY;

    public static LauncherAppWidgetProviderInfo fromProviderInfo(Context context, AppWidgetProviderInfo info) {
        Parcel p = Parcel.obtain();
        info.writeToParcel(p, 0);
        p.setDataPosition(0);
        LauncherAppWidgetProviderInfo lawpi = new LauncherAppWidgetProviderInfo(p);
        p.recycle();
        return lawpi;
    }

    public LauncherAppWidgetProviderInfo(Parcel in) {
        super(in);
        this.isCustomWidget = false;
        this.canReorder = true;
        initSpans();
    }

    public LauncherAppWidgetProviderInfo(Context context, CustomAppWidget widget) {
        this.isCustomWidget = false;
        this.canReorder = true;
        this.isCustomWidget = true;
        this.provider = new ComponentName(context, widget.getClass().getName());
        this.icon = widget.getIcon();
        this.label = widget.getLabel();
        this.previewImage = widget.getPreviewImage();
        this.initialLayout = widget.getWidgetLayout();
        this.resizeMode = widget.getResizeMode();
        initSpans();
        Launcher launcher = LauncherAppState.getInstance().getLauncher();
        ActivityInfo activityInfo = null;
        ComponentName c = new ComponentName(context, launcher.getComponentName().getClassName());
        try {
            activityInfo = launcher.getPackageManager().getActivityInfo(c, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        try {
            Field providerInfo = AppWidgetProviderInfo.class.getDeclaredField("providerInfo");
            providerInfo.setAccessible(true);
            providerInfo.set(this, activityInfo);
        } catch (IllegalAccessException e1) {
            e1.printStackTrace();
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
    }

    private void initSpans() {
        LauncherAppState app = LauncherAppState.getInstance();
        InvariantDeviceProfile idp = app.getInvariantDeviceProfile();
        Rect paddingLand = idp.landscapeProfile.getWorkspacePadding(false);
        Rect paddingPort = idp.portraitProfile.getWorkspacePadding(false);
        float smallestCellWidth = DeviceProfile.calculateCellWidth(Math.min((idp.landscapeProfile.widthPx - paddingLand.left) - paddingLand.right, (idp.portraitProfile.widthPx - paddingPort.left) - paddingPort.right), idp.numColumns);
        float smallestCellHeight = DeviceProfile.calculateCellWidth(Math.min((idp.landscapeProfile.heightPx - paddingLand.top) - paddingLand.bottom, (idp.portraitProfile.heightPx - paddingPort.top) - paddingPort.bottom), idp.numRows);
        Rect widgetPadding = AppWidgetHostView.getDefaultPaddingForWidget(app.getContext(), this.provider, null);
        this.spanX = Math.max(1, (int) Math.ceil(((this.minWidth + widgetPadding.left) + widgetPadding.right) / smallestCellWidth));
        this.spanY = Math.max(1, (int) Math.ceil(((this.minHeight + widgetPadding.top) + widgetPadding.bottom) / smallestCellHeight));
        this.minSpanX = Math.max(1, (int) Math.ceil(((this.minResizeWidth + widgetPadding.left) + widgetPadding.right) / smallestCellWidth));
        this.minSpanY = Math.max(1, (int) Math.ceil(((this.minResizeHeight + widgetPadding.top) + widgetPadding.bottom) / smallestCellHeight));
    }

    @TargetApi(21)
    public String getLabel(PackageManager packageManager) {
        return this.isCustomWidget ? Utilities.trim(this.label) : super.loadLabel(packageManager);
    }

    @TargetApi(21)
    public Drawable getIcon(Context context, AssetCache cache) {
        if (this.isCustomWidget) {
            return cache.getFullResIcon(this.provider.getPackageName(), this.icon);
        }
        return super.loadIcon(context, LauncherAppState.getInstance().getInvariantDeviceProfile().fillResIconDpi);
    }

    public String toString(PackageManager pm) {
        if (this.isCustomWidget) {
            return "WidgetProviderInfo(" + this.provider + ")";
        }
        return String.format("WidgetProviderInfo provider:%s package:%s short:%s label:%s", this.provider.toString(), this.provider.getPackageName(), this.provider.getShortClassName(), getLabel(pm));
    }

    public Point getMinSpans(InvariantDeviceProfile idp, Context context) {
        return new Point((this.resizeMode & 1) != 0 ? this.minSpanX : -1, (this.resizeMode & 2) != 0 ? this.minSpanY : -1);
    }

    public UserHandleCompat getUser() {
        return this.isCustomWidget ? UserHandleCompat.myUserHandle() : UserHandleCompat.fromUser(getProfile());
    }
}
