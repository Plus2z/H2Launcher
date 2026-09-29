package net.oneplus.h2launcher.quickpage.widget;

import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import net.oneplus.h2launcher.LauncherAppWidgetHost;
import net.oneplus.h2launcher.LauncherAppWidgetProviderInfo;
import net.oneplus.h2launcher.LauncherModel;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.quickpage.QuickPageItem;
import net.oneplus.h2launcher.quickpage.view.util.ViewGroupUtils;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.widget.WidgetConstant;

/* loaded from: classes.dex */
public class WidgetPanel extends QuickPageItem {
    private static final String TAG = WidgetPanel.class.getSimpleName();
    private LauncherAppWidgetHost mAppWidgetHost;
    private int mAppWidgetId;
    private AppWidgetManager mAppWidgetManager;
    private LauncherAppWidgetProviderInfo mAppWidgetProviderInfo;
    private String mContent;
    private Context mContext;
    private boolean mHasScrollableContent;
    private int mMinHeight;
    private FrameLayout mParentView;
    private int mResolvedMinHeight;
    private int mSize;
    private AppWidgetHostView mWidget;
    private String mWidgetLabel;
    private boolean mWidgetValid;

    public WidgetPanel(Context context, LauncherAppWidgetHost host, ComponentName widgetComponent, int widgetId, int size, int id) {
        this.mContext = context;
        this.mId = id;
        this.mSize = size;
        this.mAppWidgetManager = AppWidgetManager.getInstance(this.mContext);
        try {
            Method setBindAppWidgetPermission = this.mAppWidgetManager.getClass().getMethod("setBindAppWidgetPermission", String.class, Boolean.TYPE);
            setBindAppWidgetPermission.invoke(this.mAppWidgetManager, this.mContext.getPackageName(), true);
        } catch (IllegalAccessException e) {
            Logger.e(TAG, "Illegal access to the target: ", e);
        } catch (NoSuchMethodException e2) {
            Logger.e(TAG, "Failed to get method by reflection: ", e2);
        } catch (InvocationTargetException e3) {
            Logger.e(TAG, "Failed to invoke the method by reflection: ", e3);
        }
        this.mAppWidgetHost = host;
        LayoutInflater inflater = (LayoutInflater) this.mContext.getApplicationContext().getSystemService("layout_inflater");
        this.mParentView = (FrameLayout) inflater.inflate(R.layout.widget_panel_container, (ViewGroup) null);
        if (widgetId == -1) {
            this.mAppWidgetId = this.mAppWidgetHost.allocateAppWidgetId();
            boolean allowed = this.mAppWidgetManager.bindAppWidgetIdIfAllowed(this.mAppWidgetId, widgetComponent);
            if (!allowed) {
                Logger.e(TAG, "bind widget failed, is the widget component valid?");
            }
            Logger.d(TAG, "allowed:%b, id:%d, component:%s", Boolean.valueOf(allowed), Integer.valueOf(this.mAppWidgetId), widgetComponent.flattenToString());
        } else {
            this.mAppWidgetId = widgetId;
        }
        this.mAppWidgetProviderInfo = LauncherModel.getProviderInfo(context.getApplicationContext(), widgetComponent, UserHandleCompat.myUserHandle());
        AppWidgetProviderInfo widgetInfo = this.mAppWidgetManager.getAppWidgetInfo(this.mAppWidgetId);
        boolean widgetInfoValid = widgetInfo != null;
        if (this.mAppWidgetProviderInfo != null && widgetInfoValid) {
            this.mWidgetLabel = this.mAppWidgetProviderInfo.loadLabel(this.mContext.getPackageManager());
            this.mWidget = getWidgetView();
            if (this.mWidget != null) {
                FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(-1, -1);
                params.gravity = 17;
                params.setMargins(0, 0, 0, 0);
                this.mWidget.setPadding(0, 0, 0, 0);
                this.mMinHeight = this.mAppWidgetProviderInfo.minHeight;
                this.mParentView.addView(this.mWidget, params);
                this.mParentView.setLayoutParams(params);
                this.mHasScrollableContent = ViewGroupUtils.hasScrollableChildren(this.mWidget);
                this.mWidgetValid = true;
                this.mVerticalResizable = isVerticalResize(this.mAppWidgetProviderInfo);
                return;
            }
            this.mWidgetValid = false;
            return;
        }
        this.mWidgetValid = false;
    }

    private boolean isVerticalResize(LauncherAppWidgetProviderInfo appWidgetProviderInfo) {
        return !isInHouseWidget() || (appWidgetProviderInfo.resizeMode & 2) == 2;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public int getViewType() {
        return 2;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public int getIndex() {
        return this.mId;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public String getTitle() {
        return this.mWidgetLabel == null ? this.mContext.getString(R.string.widget_panel) : this.mWidgetLabel;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public String getContent() {
        return this.mContent;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public int getSize() {
        return this.mSize;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public boolean hasScrollableContent() {
        return this.mHasScrollableContent;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public boolean isEmpty() {
        return false;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public View getParent() {
        return this.mParentView;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public View getView() {
        return this.mWidget;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public View getEmptyView() {
        return null;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public int getMinHeight() {
        return this.mAppWidgetProviderInfo.minResizeHeight;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public int getMaxHeight() {
        return this.mContext.getResources().getDimensionPixelSize(R.dimen.quick_page_item_max_size);
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public int getStandardHeight(int height) {
        return height;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onItemViewAttached() {
        final ViewGroup parent = (ViewGroup) this.mParentView.getParent();
        if (parent != null) {
            if (this.mSize != -1) {
                parent.getLayoutParams().height = this.mSize;
                parent.requestLayout();
                return;
            }
            final int defaultHeight = this.mContext.getResources().getDimensionPixelSize(R.dimen.widget_panel_container_size);
            if (isWrapContentWidget()) {
                parent.getLayoutParams().height = -2;
                parent.requestLayout();
                parent.post(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.widget.WidgetPanel.1
                    @Override // java.lang.Runnable
                    public void run() {
                        WidgetPanel.this.mResolvedMinHeight = parent.getMeasuredHeight() < defaultHeight ? parent.getMeasuredHeight() : defaultHeight;
                    }
                });
            } else {
                int width = this.mAppWidgetProviderInfo.minWidth;
                int height = defaultHeight > this.mMinHeight ? defaultHeight : this.mMinHeight;
                parent.getLayoutParams().height = height;
                parent.requestLayout();
                this.mWidget.updateAppWidgetSize(null, width, height, width, height);
            }
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onItemResizeProgress(int height) {
        int width = this.mAppWidgetProviderInfo.minWidth;
        this.mWidget.updateAppWidgetSize(null, width, height, width, height);
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onItemResizeFinished() {
        this.mSize = this.mParentView.getMeasuredHeight();
        int mSizeInDp = covertPxTpDp(this.mSize);
        this.mWidget.updateAppWidgetSize(null, mSizeInDp, mSizeInDp, mSizeInDp, mSizeInDp);
        notifyItemSizeChanged();
    }

    private int covertPxTpDp(int px) {
        DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
        return (int) ((px / displayMetrics.density) + 0.5d);
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onUiComponentChanged() {
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onContainerVisibilityChanged(boolean visible) {
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onRemove() {
    }

    public boolean isValid() {
        return this.mWidgetValid;
    }

    public AppWidgetProviderInfo getWidgetInfo() {
        return this.mAppWidgetProviderInfo;
    }

    public int getWidgetId() {
        return this.mAppWidgetId;
    }

    public void setContent(String content) {
        this.mContent = content;
    }

    private AppWidgetHostView getWidgetView() {
        AppWidgetHostView hostView = this.mAppWidgetHost.createView(this.mContext, this.mAppWidgetId, this.mAppWidgetProviderInfo);
        hostView.setId(View.generateViewId());
        return hostView;
    }

    private boolean isWrapContentWidget() {
        return isInHouseWidget() || isPartnerWidget();
    }

    private boolean isInHouseWidget() {
        if (!isValid()) {
            return false;
        }
        for (ComponentName componentName : WidgetConstant.IN_HOUSE_WIDGET_LIST) {
            if (componentName.equals(this.mAppWidgetProviderInfo.provider)) {
                return true;
            }
        }
        return false;
    }

    private boolean isPartnerWidget() {
        if (!isValid()) {
            return false;
        }
        for (ComponentName componentName : WidgetConstant.PARTNER_WIDGET_LIST) {
            if (componentName.equals(this.mAppWidgetProviderInfo.provider)) {
                return true;
            }
        }
        return false;
    }
}
