package net.oneplus.h2launcher;

import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.RemoteViews;
import net.oneplus.h2launcher.DragLayer;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class LauncherAppWidgetHostView extends AppWidgetHostView implements DragLayer.TouchCompleteListener {
    private static final String TAG = LauncherAppWidgetHostView.class.getSimpleName();
    private Context mContext;
    private DragLayer mDragLayer;
    LayoutInflater mInflater;
    private CheckLongPressHelper mLongPressHelper;
    private int mPreviousOrientation;
    private float mSlop;
    private StylusEventHelper mStylusEventHelper;

    public LauncherAppWidgetHostView(Context context) {
        super(context);
        this.mContext = context;
        this.mLongPressHelper = new CheckLongPressHelper(this);
        this.mStylusEventHelper = new StylusEventHelper(this);
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        setAccessibilityDelegate(LauncherAppState.getInstance().getAccessibilityDelegate());
        if (context instanceof Launcher) {
            this.mDragLayer = ((Launcher) context).getDragLayer();
        }
    }

    @Override // android.appwidget.AppWidgetHostView
    protected View getErrorView() {
        return this.mInflater.inflate(R.layout.appwidget_error, (ViewGroup) this, false);
    }

    public void updateLastInflationOrientation() {
        this.mPreviousOrientation = this.mContext.getResources().getConfiguration().orientation;
    }

    @Override // android.appwidget.AppWidgetHostView
    public void updateAppWidget(RemoteViews remoteViews) {
        if (remoteViews != null) {
            Logger.d(TAG, "updateAppWidget:" + remoteViews.getPackage() + ", " + remoteViews.getLayoutId());
        } else {
            Logger.d(TAG, "updateAppWidget: remoteViews is null.");
        }
        updateLastInflationOrientation();
        super.updateAppWidget(remoteViews);
    }

    public boolean isReinflateRequired() {
        int orientation = this.mContext.getResources().getConfiguration().orientation;
        return this.mPreviousOrientation != orientation;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (ev.getAction() == 0) {
            this.mLongPressHelper.cancelLongPress();
        }
        if (this.mLongPressHelper.hasPerformedLongPress()) {
            this.mLongPressHelper.cancelLongPress();
            return true;
        }
        if (this.mStylusEventHelper.checkAndPerformStylusEvent(ev)) {
            this.mLongPressHelper.cancelLongPress();
            return true;
        }
        switch (ev.getAction()) {
            case 0:
                if (!this.mStylusEventHelper.inStylusButtonPressed()) {
                    this.mLongPressHelper.postCheckForLongPress();
                }
                if (this.mDragLayer != null) {
                    this.mDragLayer.setTouchCompleteListener(this);
                }
                return false;
            case 1:
            case 3:
                this.mLongPressHelper.cancelLongPress();
                if (isDisableClick()) {
                    Logger.d(TAG, "disable click, ignore ACTION_UP event");
                    return true;
                }
                return false;
            case 2:
                if (!Utilities.pointInView(this, ev.getX(), ev.getY(), this.mSlop)) {
                    this.mLongPressHelper.cancelLongPress();
                }
                return false;
            default:
                return false;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        switch (ev.getAction()) {
            case 1:
            case 3:
                this.mLongPressHelper.cancelLongPress();
                return false;
            case 2:
                if (!Utilities.pointInView(this, ev.getX(), ev.getY(), this.mSlop)) {
                    this.mLongPressHelper.cancelLongPress();
                    return false;
                }
                return false;
            default:
                return false;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }

    @Override // android.appwidget.AppWidgetHostView
    public AppWidgetProviderInfo getAppWidgetInfo() {
        AppWidgetProviderInfo info = super.getAppWidgetInfo();
        if (info != null && !(info instanceof LauncherAppWidgetProviderInfo)) {
            throw new IllegalStateException("Launcher widget must have LauncherAppWidgetProviderInfo");
        }
        return info;
    }

    public LauncherAppWidgetProviderInfo getLauncherAppWidgetProviderInfo() {
        return (LauncherAppWidgetProviderInfo) getAppWidgetInfo();
    }

    @Override // net.oneplus.h2launcher.DragLayer.TouchCompleteListener
    public void onTouchComplete() {
        if (!this.mLongPressHelper.hasPerformedLongPress()) {
            this.mLongPressHelper.cancelLongPress();
        }
    }

    @Override // android.view.ViewGroup
    public int getDescendantFocusability() {
        return 393216;
    }

    private boolean isDisableClick() {
        Launcher launcher = LauncherAppState.getInstance().getLauncher();
        if (launcher != null) {
            return launcher.isIconRearrangementMode();
        }
        return false;
    }

    @Override // android.appwidget.AppWidgetHostView
    public void setAppWidget(int appWidgetId, AppWidgetProviderInfo info) {
        super.setAppWidget(appWidgetId, info);
        if ((info instanceof LauncherAppWidgetProviderInfo) && ((LauncherAppWidgetProviderInfo) info).isCustomWidget) {
            setPadding(0, 0, 0, 0);
        }
    }

    @Override // android.appwidget.AppWidgetHostView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        try {
            super.onLayout(changed, left, top, right, bottom);
        } catch (RuntimeException e) {
            post(new Runnable() { // from class: net.oneplus.h2launcher.LauncherAppWidgetHostView.1
                @Override // java.lang.Runnable
                public void run() {
                    LauncherAppWidgetHostView.this.updateAppWidget(new RemoteViews(LauncherAppWidgetHostView.this.getAppWidgetInfo().provider.getPackageName(), 0));
                }
            });
        }
    }
}
