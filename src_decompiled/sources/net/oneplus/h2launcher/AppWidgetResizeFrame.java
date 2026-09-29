package net.oneplus.h2launcher;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.appwidget.AppWidgetHostView;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.widget.FrameLayout;
import android.widget.ImageView;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import net.oneplus.h2launcher.CellLayout;
import net.oneplus.h2launcher.DragLayer;

/* loaded from: classes.dex */
public class AppWidgetResizeFrame extends FrameLayout {
    private static final float DIMMED_HANDLE_ALPHA = 0.0f;
    private static final float RESIZE_THRESHOLD = 0.66f;
    private static final int SNAP_DURATION = 150;
    private static Rect sTmpRect = new Rect();
    private final int mBackgroundPadding;
    private int mBaselineHeight;
    private int mBaselineWidth;
    private int mBaselineX;
    private int mBaselineY;
    private boolean mBottomBorderActive;
    private final ImageView mBottomHandle;
    private int mBottomTouchRegionAdjustment;
    private final CellLayout mCellLayout;
    private int mDeltaX;
    private int mDeltaXAddOn;
    private int mDeltaY;
    private int mDeltaYAddOn;
    private final int[] mDirectionVector;
    private final DragLayer mDragLayer;
    private final int[] mLastDirectionVector;
    private final Launcher mLauncher;
    private boolean mLeftBorderActive;
    private final ImageView mLeftHandle;
    private int mMinHSpan;
    private int mMinVSpan;
    private int mResizeMode;
    private boolean mRightBorderActive;
    private final ImageView mRightHandle;
    private int mRunningHInc;
    private int mRunningVInc;
    private final int[] mTmpPt;
    private boolean mTopBorderActive;
    private final ImageView mTopHandle;
    private int mTopTouchRegionAdjustment;
    private final int mTouchTargetWidth;
    private final Rect mWidgetPadding;
    private final LauncherAppWidgetHostView mWidgetView;

    public AppWidgetResizeFrame(Context context, LauncherAppWidgetHostView widgetView, CellLayout cellLayout, DragLayer dragLayer) {
        super(context);
        this.mDirectionVector = new int[2];
        this.mLastDirectionVector = new int[2];
        this.mTmpPt = new int[2];
        this.mTopTouchRegionAdjustment = 0;
        this.mBottomTouchRegionAdjustment = 0;
        this.mLauncher = (Launcher) context;
        this.mCellLayout = cellLayout;
        this.mWidgetView = widgetView;
        LauncherAppWidgetProviderInfo info = (LauncherAppWidgetProviderInfo) widgetView.getAppWidgetInfo();
        this.mResizeMode = info.resizeMode;
        this.mDragLayer = dragLayer;
        this.mMinHSpan = info.minSpanX;
        this.mMinVSpan = info.minSpanY;
        setBackgroundResource(R.drawable.widget_resize_shadow);
        setForeground(getResources().getDrawable(R.drawable.widget_resize_frame));
        setPadding(0, 0, 0, 0);
        int handleMargin = getResources().getDimensionPixelSize(R.dimen.widget_handle_margin);
        this.mLeftHandle = new ImageView(context);
        this.mLeftHandle.setImageResource(R.drawable.ic_widget_resize_handle);
        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(-2, -2, 19);
        lp.leftMargin = handleMargin;
        addView(this.mLeftHandle, lp);
        this.mRightHandle = new ImageView(context);
        this.mRightHandle.setImageResource(R.drawable.ic_widget_resize_handle);
        FrameLayout.LayoutParams lp2 = new FrameLayout.LayoutParams(-2, -2, 21);
        lp2.rightMargin = handleMargin;
        addView(this.mRightHandle, lp2);
        this.mTopHandle = new ImageView(context);
        this.mTopHandle.setImageResource(R.drawable.ic_widget_resize_handle);
        FrameLayout.LayoutParams lp3 = new FrameLayout.LayoutParams(-2, -2, 49);
        lp3.topMargin = handleMargin;
        addView(this.mTopHandle, lp3);
        this.mBottomHandle = new ImageView(context);
        this.mBottomHandle.setImageResource(R.drawable.ic_widget_resize_handle);
        FrameLayout.LayoutParams lp4 = new FrameLayout.LayoutParams(-2, -2, 81);
        lp4.bottomMargin = handleMargin;
        addView(this.mBottomHandle, lp4);
        if (!info.isCustomWidget) {
            this.mWidgetPadding = AppWidgetHostView.getDefaultPaddingForWidget(context, widgetView.getAppWidgetInfo().provider, null);
        } else {
            Resources r = context.getResources();
            int padding = r.getDimensionPixelSize(R.dimen.default_widget_padding);
            this.mWidgetPadding = new Rect(padding, padding, padding, padding);
        }
        if (this.mResizeMode == 1) {
            this.mTopHandle.setVisibility(8);
            this.mBottomHandle.setVisibility(8);
        } else if (this.mResizeMode == 2) {
            this.mLeftHandle.setVisibility(8);
            this.mRightHandle.setVisibility(8);
        }
        this.mBackgroundPadding = getResources().getDimensionPixelSize(R.dimen.resize_frame_background_padding);
        this.mTouchTargetWidth = this.mBackgroundPadding * 2;
        this.mCellLayout.markCellsAsUnoccupiedForView(this.mWidgetView);
    }

    public boolean beginResizeIfPointInRegion(int x, int y) {
        boolean horizontalActive = (this.mResizeMode & 1) != 0;
        boolean verticalActive = (this.mResizeMode & 2) != 0;
        this.mLeftBorderActive = x < this.mTouchTargetWidth && horizontalActive;
        this.mRightBorderActive = x > getWidth() - this.mTouchTargetWidth && horizontalActive;
        this.mTopBorderActive = y < this.mTouchTargetWidth + this.mTopTouchRegionAdjustment && verticalActive;
        this.mBottomBorderActive = y > (getHeight() - this.mTouchTargetWidth) + this.mBottomTouchRegionAdjustment && verticalActive;
        boolean anyBordersActive = this.mLeftBorderActive || this.mRightBorderActive || this.mTopBorderActive || this.mBottomBorderActive;
        this.mBaselineWidth = getMeasuredWidth();
        this.mBaselineHeight = getMeasuredHeight();
        this.mBaselineX = getLeft();
        this.mBaselineY = getTop();
        if (anyBordersActive) {
            this.mLeftHandle.setAlpha(this.mLeftBorderActive ? 1.0f : 0.0f);
            this.mRightHandle.setAlpha(this.mRightBorderActive ? 1.0f : 0.0f);
            this.mTopHandle.setAlpha(this.mTopBorderActive ? 1.0f : 0.0f);
            this.mBottomHandle.setAlpha(this.mBottomBorderActive ? 1.0f : 0.0f);
        }
        return anyBordersActive;
    }

    public void updateDeltas(int deltaX, int deltaY) {
        if (this.mLeftBorderActive) {
            this.mDeltaX = Math.max(-this.mBaselineX, deltaX);
            this.mDeltaX = Math.min(this.mBaselineWidth - (this.mTouchTargetWidth * 2), this.mDeltaX);
        } else if (this.mRightBorderActive) {
            this.mDeltaX = Math.min(this.mDragLayer.getWidth() - (this.mBaselineX + this.mBaselineWidth), deltaX);
            this.mDeltaX = Math.max((-this.mBaselineWidth) + (this.mTouchTargetWidth * 2), this.mDeltaX);
        }
        if (this.mTopBorderActive) {
            this.mDeltaY = Math.max(-this.mBaselineY, deltaY);
            this.mDeltaY = Math.min(this.mBaselineHeight - (this.mTouchTargetWidth * 2), this.mDeltaY);
        } else if (this.mBottomBorderActive) {
            this.mDeltaY = Math.min(this.mDragLayer.getHeight() - (this.mBaselineY + this.mBaselineHeight), deltaY);
            this.mDeltaY = Math.max((-this.mBaselineHeight) + (this.mTouchTargetWidth * 2), this.mDeltaY);
        }
    }

    public void visualizeResizeForDelta(int deltaX, int deltaY) {
        visualizeResizeForDelta(deltaX, deltaY, false);
    }

    private void visualizeResizeForDelta(int deltaX, int deltaY, boolean onDismiss) {
        updateDeltas(deltaX, deltaY);
        DragLayer.LayoutParams lp = (DragLayer.LayoutParams) getLayoutParams();
        if (this.mLeftBorderActive) {
            lp.x = this.mBaselineX + this.mDeltaX;
            lp.width = this.mBaselineWidth - this.mDeltaX;
        } else if (this.mRightBorderActive) {
            lp.width = this.mBaselineWidth + this.mDeltaX;
        }
        if (this.mTopBorderActive) {
            lp.y = this.mBaselineY + this.mDeltaY;
            lp.height = this.mBaselineHeight - this.mDeltaY;
        } else if (this.mBottomBorderActive) {
            lp.height = this.mBaselineHeight + this.mDeltaY;
        }
        resizeWidgetIfNeeded(onDismiss);
        requestLayout();
    }

    private void resizeWidgetIfNeeded(boolean onDismiss) {
        int xThreshold = this.mCellLayout.getCellWidth() + this.mCellLayout.getWidthGap();
        int yThreshold = this.mCellLayout.getCellHeight() + this.mCellLayout.getHeightGap();
        int deltaX = this.mDeltaX + this.mDeltaXAddOn;
        int deltaY = this.mDeltaY + this.mDeltaYAddOn;
        float hSpanIncF = ((1.0f * deltaX) / xThreshold) - this.mRunningHInc;
        float vSpanIncF = ((1.0f * deltaY) / yThreshold) - this.mRunningVInc;
        int hSpanInc = 0;
        int vSpanInc = 0;
        int cellXInc = 0;
        int cellYInc = 0;
        int countX = this.mCellLayout.getCountX();
        int countY = this.mCellLayout.getCountY();
        if (Math.abs(hSpanIncF) > RESIZE_THRESHOLD) {
            hSpanInc = Math.round(hSpanIncF);
        }
        if (Math.abs(vSpanIncF) > RESIZE_THRESHOLD) {
            vSpanInc = Math.round(vSpanIncF);
        }
        if (onDismiss || hSpanInc != 0 || vSpanInc != 0) {
            CellLayout.LayoutParams lp = (CellLayout.LayoutParams) this.mWidgetView.getLayoutParams();
            int spanX = lp.cellHSpan;
            int spanY = lp.cellVSpan;
            int cellX = lp.useTmpCoords ? lp.tmpCellX : lp.cellX;
            int cellY = lp.useTmpCoords ? lp.tmpCellY : lp.cellY;
            int hSpanDelta = 0;
            int vSpanDelta = 0;
            if (this.mLeftBorderActive) {
                cellXInc = Math.min(lp.cellHSpan - this.mMinHSpan, Math.max(-cellX, hSpanInc));
                hSpanInc = Math.max(-(lp.cellHSpan - this.mMinHSpan), Math.min(cellX, hSpanInc * (-1)));
                hSpanDelta = -hSpanInc;
            } else if (this.mRightBorderActive) {
                hSpanInc = Math.max(-(lp.cellHSpan - this.mMinHSpan), Math.min(countX - (cellX + spanX), hSpanInc));
                hSpanDelta = hSpanInc;
            }
            if (this.mTopBorderActive) {
                cellYInc = Math.min(lp.cellVSpan - this.mMinVSpan, Math.max(-cellY, vSpanInc));
                vSpanInc = Math.max(-(lp.cellVSpan - this.mMinVSpan), Math.min(cellY, vSpanInc * (-1)));
                vSpanDelta = -vSpanInc;
            } else if (this.mBottomBorderActive) {
                vSpanInc = Math.max(-(lp.cellVSpan - this.mMinVSpan), Math.min(countY - (cellY + spanY), vSpanInc));
                vSpanDelta = vSpanInc;
            }
            this.mDirectionVector[0] = 0;
            this.mDirectionVector[1] = 0;
            if (this.mLeftBorderActive || this.mRightBorderActive) {
                spanX += hSpanInc;
                cellX += cellXInc;
                if (hSpanDelta != 0) {
                    this.mDirectionVector[0] = this.mLeftBorderActive ? -1 : 1;
                }
            }
            if (this.mTopBorderActive || this.mBottomBorderActive) {
                spanY += vSpanInc;
                cellY += cellYInc;
                if (vSpanDelta != 0) {
                    this.mDirectionVector[1] = this.mTopBorderActive ? -1 : 1;
                }
            }
            if (onDismiss || vSpanDelta != 0 || hSpanDelta != 0) {
                if (onDismiss) {
                    this.mDirectionVector[0] = this.mLastDirectionVector[0];
                    this.mDirectionVector[1] = this.mLastDirectionVector[1];
                } else {
                    this.mLastDirectionVector[0] = this.mDirectionVector[0];
                    this.mLastDirectionVector[1] = this.mDirectionVector[1];
                }
                if (this.mCellLayout.createAreaForResize(cellX, cellY, spanX, spanY, this.mWidgetView, this.mDirectionVector, onDismiss)) {
                    lp.tmpCellX = cellX;
                    lp.tmpCellY = cellY;
                    lp.cellHSpan = spanX;
                    lp.cellVSpan = spanY;
                    this.mRunningVInc += vSpanDelta;
                    this.mRunningHInc += hSpanDelta;
                    if (!onDismiss) {
                        updateWidgetSizeRanges(this.mWidgetView, this.mLauncher, spanX, spanY);
                    }
                }
                this.mWidgetView.requestLayout();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void updateWidgetSizeRanges(AppWidgetHostView widgetView, Launcher launcher, int spanX, int spanY) {
        getWidgetSizeRanges(launcher, spanX, spanY, sTmpRect);
        widgetView.updateAppWidgetSize(null, sTmpRect.left, sTmpRect.top, sTmpRect.right, sTmpRect.bottom);
    }

    public static Rect getWidgetSizeRanges(Activity activity, int spanX, int spanY, Rect rect) {
        if (rect == null) {
            rect = new Rect();
        }
        Rect landMetrics = Workspace.getCellLayoutMetrics(activity, 0);
        Rect portMetrics = Workspace.getCellLayoutMetrics(activity, 1);
        float density = activity.getResources().getDisplayMetrics().density;
        int cellWidth = landMetrics.left;
        int cellHeight = landMetrics.top;
        int widthGap = landMetrics.right;
        int heightGap = landMetrics.bottom;
        int landWidth = (int) (((spanX * cellWidth) + ((spanX - 1) * widthGap)) / density);
        int landHeight = (int) (((spanY * cellHeight) + ((spanY - 1) * heightGap)) / density);
        int cellWidth2 = portMetrics.left;
        int cellHeight2 = portMetrics.top;
        int widthGap2 = portMetrics.right;
        int heightGap2 = portMetrics.bottom;
        int portWidth = (int) (((spanX * cellWidth2) + ((spanX - 1) * widthGap2)) / density);
        int portHeight = (int) (((spanY * cellHeight2) + ((spanY - 1) * heightGap2)) / density);
        rect.set(portWidth, landHeight, landWidth, portHeight);
        return rect;
    }

    public void commitResize() {
        resizeWidgetIfNeeded(true);
        requestLayout();
    }

    public void onTouchUp() {
        int xThreshold = this.mCellLayout.getCellWidth() + this.mCellLayout.getWidthGap();
        int yThreshold = this.mCellLayout.getCellHeight() + this.mCellLayout.getHeightGap();
        this.mDeltaXAddOn = this.mRunningHInc * xThreshold;
        this.mDeltaYAddOn = this.mRunningVInc * yThreshold;
        this.mDeltaX = 0;
        this.mDeltaY = 0;
        post(new Runnable() { // from class: net.oneplus.h2launcher.AppWidgetResizeFrame.1
            @Override // java.lang.Runnable
            public void run() {
                AppWidgetResizeFrame.this.snapToWidget(true);
            }
        });
    }

    public void snapToWidget(boolean animate) {
        DragLayer.LayoutParams lp = (DragLayer.LayoutParams) getLayoutParams();
        int newWidth = ((this.mWidgetView.getWidth() + (this.mBackgroundPadding * 2)) - this.mWidgetPadding.left) - this.mWidgetPadding.right;
        int newHeight = ((this.mWidgetView.getHeight() + (this.mBackgroundPadding * 2)) - this.mWidgetPadding.top) - this.mWidgetPadding.bottom;
        this.mTmpPt[0] = this.mWidgetView.getLeft();
        this.mTmpPt[1] = this.mWidgetView.getTop();
        this.mDragLayer.getDescendantCoordRelativeToSelfWithoutMapPoint(this.mCellLayout.getShortcutsAndWidgets(), this.mTmpPt, false);
        int newX = (this.mTmpPt[0] - this.mBackgroundPadding) + this.mWidgetPadding.left;
        int newY = (this.mTmpPt[1] - this.mBackgroundPadding) + this.mWidgetPadding.top;
        if (newY < 0) {
            this.mTopTouchRegionAdjustment = -newY;
        } else {
            this.mTopTouchRegionAdjustment = 0;
        }
        if (newY + newHeight > this.mDragLayer.getHeight()) {
            this.mBottomTouchRegionAdjustment = -((newY + newHeight) - this.mDragLayer.getHeight());
        } else {
            this.mBottomTouchRegionAdjustment = 0;
        }
        if (!animate) {
            lp.width = newWidth;
            lp.height = newHeight;
            lp.x = newX;
            lp.y = newY;
            this.mLeftHandle.setAlpha(1.0f);
            this.mRightHandle.setAlpha(1.0f);
            this.mTopHandle.setAlpha(1.0f);
            this.mBottomHandle.setAlpha(1.0f);
            requestLayout();
            return;
        }
        PropertyValuesHolder width = PropertyValuesHolder.ofInt(SettingsJsonConstants.ICON_WIDTH_KEY, lp.width, newWidth);
        PropertyValuesHolder height = PropertyValuesHolder.ofInt(SettingsJsonConstants.ICON_HEIGHT_KEY, lp.height, newHeight);
        PropertyValuesHolder x = PropertyValuesHolder.ofInt("x", lp.x, newX);
        PropertyValuesHolder y = PropertyValuesHolder.ofInt("y", lp.y, newY);
        ObjectAnimator oa = LauncherAnimUtils.ofPropertyValuesHolder(lp, this, width, height, x, y);
        ObjectAnimator leftOa = LauncherAnimUtils.ofFloat(this.mLeftHandle, "alpha", 1.0f);
        ObjectAnimator rightOa = LauncherAnimUtils.ofFloat(this.mRightHandle, "alpha", 1.0f);
        ObjectAnimator topOa = LauncherAnimUtils.ofFloat(this.mTopHandle, "alpha", 1.0f);
        ObjectAnimator bottomOa = LauncherAnimUtils.ofFloat(this.mBottomHandle, "alpha", 1.0f);
        oa.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.AppWidgetResizeFrame.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                AppWidgetResizeFrame.this.requestLayout();
            }
        });
        AnimatorSet set = LauncherAnimUtils.createAnimatorSet();
        if (this.mResizeMode == 2) {
            set.playTogether(oa, topOa, bottomOa);
        } else if (this.mResizeMode == 1) {
            set.playTogether(oa, leftOa, rightOa);
        } else {
            set.playTogether(oa, leftOa, rightOa, topOa, bottomOa);
        }
        set.setDuration(150L);
        set.start();
    }
}
