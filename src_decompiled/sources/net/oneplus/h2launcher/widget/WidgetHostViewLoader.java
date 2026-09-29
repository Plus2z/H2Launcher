package net.oneplus.h2launcher.widget;

import android.app.Activity;
import android.appwidget.AppWidgetHostView;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import net.oneplus.h2launcher.AppWidgetResizeFrame;
import net.oneplus.h2launcher.DragController;
import net.oneplus.h2launcher.DragLayer;
import net.oneplus.h2launcher.DragSource;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.LauncherAppWidgetProviderInfo;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.compat.AppWidgetManagerCompat;

/* loaded from: classes.dex */
public class WidgetHostViewLoader implements DragController.DragListener {
    final PendingAddWidgetInfo mInfo;
    Launcher mLauncher;
    final View mView;
    Runnable mInflateWidgetRunnable = null;
    private Runnable mBindWidgetRunnable = null;
    int mWidgetLoadingId = -1;
    Handler mHandler = new Handler();

    public WidgetHostViewLoader(Launcher launcher, View view) {
        this.mLauncher = launcher;
        this.mView = view;
        this.mInfo = (PendingAddWidgetInfo) view.getTag();
    }

    @Override // net.oneplus.h2launcher.DragController.DragListener
    public void onDragStart(DragSource source, Object info, int dragAction) {
    }

    @Override // net.oneplus.h2launcher.DragController.DragListener
    public void onDragEnd() {
        this.mLauncher.getDragController().removeDragListener(this);
        this.mHandler.removeCallbacks(this.mBindWidgetRunnable);
        this.mHandler.removeCallbacks(this.mInflateWidgetRunnable);
        if (this.mWidgetLoadingId != -1) {
            LauncherAppState.getInstance().getAppWidgetHost().deleteAppWidgetId(this.mWidgetLoadingId);
            this.mWidgetLoadingId = -1;
        }
        if (this.mInfo.boundWidget != null) {
            this.mLauncher.getDragLayer().removeView(this.mInfo.boundWidget);
            LauncherAppState.getInstance().getAppWidgetHost().deleteAppWidgetId(this.mInfo.boundWidget.getAppWidgetId());
            this.mInfo.boundWidget = null;
        }
    }

    public boolean preloadWidget() {
        final LauncherAppWidgetProviderInfo pInfo = this.mInfo.info;
        if (pInfo.isCustomWidget) {
            return false;
        }
        final Bundle options = getDefaultOptionsForWidget(this.mLauncher, this.mInfo);
        if (pInfo.configure != null) {
            this.mInfo.bindOptions = options;
            return false;
        }
        this.mBindWidgetRunnable = new Runnable() { // from class: net.oneplus.h2launcher.widget.WidgetHostViewLoader.1
            @Override // java.lang.Runnable
            public void run() {
                WidgetHostViewLoader.this.mWidgetLoadingId = LauncherAppState.getInstance().getAppWidgetHost().allocateAppWidgetId();
                if (AppWidgetManagerCompat.getInstance(WidgetHostViewLoader.this.mLauncher).bindAppWidgetIdIfAllowed(WidgetHostViewLoader.this.mWidgetLoadingId, pInfo, options)) {
                    WidgetHostViewLoader.this.mHandler.post(WidgetHostViewLoader.this.mInflateWidgetRunnable);
                }
            }
        };
        this.mInflateWidgetRunnable = new Runnable() { // from class: net.oneplus.h2launcher.widget.WidgetHostViewLoader.2
            @Override // java.lang.Runnable
            public void run() {
                if (WidgetHostViewLoader.this.mWidgetLoadingId != -1) {
                    AppWidgetHostView hostView = LauncherAppState.getInstance().getAppWidgetHost().createView((Context) WidgetHostViewLoader.this.mLauncher, WidgetHostViewLoader.this.mWidgetLoadingId, pInfo);
                    WidgetHostViewLoader.this.mInfo.boundWidget = hostView;
                    WidgetHostViewLoader.this.mWidgetLoadingId = -1;
                    hostView.setVisibility(4);
                    int[] unScaledSize = WidgetHostViewLoader.this.mLauncher.getWorkspace().estimateItemSize(WidgetHostViewLoader.this.mInfo, false);
                    if (WidgetHostViewLoader.this.mLauncher.getDragController().isDragging()) {
                        DragLayer.LayoutParams lp = new DragLayer.LayoutParams(unScaledSize[0], unScaledSize[1]);
                        lp.y = 0;
                        lp.x = 0;
                        lp.customPosition = true;
                        hostView.setLayoutParams(lp);
                        WidgetHostViewLoader.this.mLauncher.getDragLayer().addView(hostView);
                    }
                    WidgetHostViewLoader.this.mView.setTag(WidgetHostViewLoader.this.mInfo);
                }
            }
        };
        this.mHandler.post(this.mBindWidgetRunnable);
        return true;
    }

    public static Bundle getDefaultOptionsForWidget(Activity activity, PendingAddWidgetInfo info) {
        Rect rect = new Rect();
        if (!Utilities.ATLEAST_JB_MR1) {
            return null;
        }
        AppWidgetResizeFrame.getWidgetSizeRanges(activity, info.spanX, info.spanY, rect);
        Rect padding = AppWidgetHostView.getDefaultPaddingForWidget(activity, info.componentName, null);
        float density = activity.getResources().getDisplayMetrics().density;
        int xPaddingDips = (int) ((padding.left + padding.right) / density);
        int yPaddingDips = (int) ((padding.top + padding.bottom) / density);
        Bundle options = new Bundle();
        options.putInt("appWidgetMinWidth", rect.left - xPaddingDips);
        options.putInt("appWidgetMinHeight", rect.top - yPaddingDips);
        options.putInt("appWidgetMaxWidth", rect.right - xPaddingDips);
        options.putInt("appWidgetMaxHeight", rect.bottom - yPaddingDips);
        return options;
    }
}
