package net.oneplus.h2launcher;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.LayoutTransition;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import net.oneplus.h2launcher.PageIndicator;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.dynamicui.ExtractionUtils;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.LauncherEdgeEffect;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public abstract class PagedView extends ViewGroup implements ViewGroup.OnHierarchyChangeListener {
    private static final int ANIM_TAG_KEY = 100;
    private static final boolean DEBUG = false;
    private static final int FLING_THRESHOLD_VELOCITY = 500;
    protected static final int INVALID_PAGE = -1;
    protected static final int INVALID_POINTER = -1;
    public static final int INVALID_RESTORE_PAGE = -1001;
    private static final float MAX_SCROLL_PROGRESS = 1.0f;
    private static final int MIN_FLING_VELOCITY = 250;
    private static final int MIN_LENGTH_FOR_FLING = 25;
    private static final int MIN_SNAP_VELOCITY = 1500;
    protected static final float NANOTIME_DIV = 1.0E9f;
    protected static final int PAGE_SNAP_ANIMATION_DURATION = 750;
    private static final float RETURN_TO_ORIGINAL_PAGE_THRESHOLD = 0.33f;
    protected static final int RE_REQUEST_LAYOUT = 1;
    private static final float SIGNIFICANT_MOVE_THRESHOLD = 0.4f;
    protected static final int SLOW_PAGE_SNAP_ANIMATION_DURATION = 950;
    protected static final int SNAP_TO_PAGE = 2;
    private static final String TAG = "PagedView";
    protected static final int TOUCH_STATE_NEXT_PAGE = 3;
    protected static final int TOUCH_STATE_PREV_PAGE = 2;
    protected static final int TOUCH_STATE_REORDERING = 4;
    protected static final int TOUCH_STATE_REST = 0;
    protected static final int TOUCH_STATE_SCROLLING = 1;
    private int NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT;
    protected int mActivePointerId;
    protected boolean mAllowOverScroll;
    private boolean mCancelTap;
    protected boolean mCenterPagesVertically;
    protected int mChildCountOnLastLayout;
    protected int mCurrentPage;
    private Interpolator mDefaultInterpolator;
    protected float mDensity;
    private boolean mDisableScrolling;
    private float mDownMotionX;
    private float mDownMotionY;
    private float mDownScrollX;
    protected View mDragView;
    private float mDragViewBaselineLeft;
    private final LauncherEdgeEffect mEdgeGlowLeft;
    private final LauncherEdgeEffect mEdgeGlowRight;
    protected boolean mEnableShelfScroll;
    protected boolean mFadeInAdjacentScreens;
    protected boolean mFirstLayout;
    protected int mFlingThresholdVelocity;
    protected boolean mForceScreenScrolled;
    private boolean mFreeScroll;
    protected int mFreeScrollMaxScrollX;
    protected int mFreeScrollMinScrollX;
    protected Handler mHandler;
    protected final Rect mInsets;
    protected boolean mIsPageMoving;
    private boolean mIsReordering;
    protected final boolean mIsRtl;
    protected float mLastMotionX;
    protected float mLastMotionXRemainder;
    protected float mLastMotionY;
    private int mLastScreenCenter;
    protected View.OnLongClickListener mLongClickListener;
    protected int mMaxScrollX;
    private int mMaximumVelocity;
    protected int mMinFlingVelocity;
    private float mMinScale;
    protected int mMinSnapVelocity;
    protected int mNextPage;
    private int mNormalChildHeight;
    PageIndicator mPageIndicator;
    int mPageIndicatorViewId;
    protected int mPageLayoutHeightGap;
    protected int mPageLayoutWidthGap;
    protected PageReorderListener mPageReorderListener;
    private int[] mPageScrolls;
    int mPageSpacing;
    private PageSwitchListener mPageSwitchListener;
    private float mParentDownMotionX;
    private float mParentDownMotionY;
    private int mPostReorderingPreZoomInRemainingAnimationCount;
    private Runnable mPostReorderingPreZoomInRunnable;
    private boolean mReorderingStarted;
    protected int mRestorePage;
    protected LauncherScroller mScroller;
    int mSidePageHoverIndex;
    private Runnable mSidePageHoverRunnable;
    protected float mSmoothingTime;
    protected int[] mTempVisiblePagesRange;
    protected float mTotalMotionX;
    protected int mTouchSlop;
    protected int mTouchState;
    protected float mTouchX;
    private boolean mUseMinScale;
    private VelocityTracker mVelocityTracker;
    private Rect mViewport;
    private boolean mWasInOverscroll;
    private static int REORDERING_DROP_REPOSITION_DURATION = 200;
    static int REORDERING_REORDER_REPOSITION_DURATION = 300;
    private static int REORDERING_SIDE_PAGE_HOVER_TIMEOUT = 80;
    private static final Matrix sTmpInvMatrix = new Matrix();
    private static final float[] sTmpPoint = new float[2];
    private static final int[] sTmpIntPoint = new int[2];
    private static final Rect sTmpRect = new Rect();
    private static final RectF sTmpRectF = new RectF();

    /* loaded from: classes.dex */
    public interface PageReorderListener {
        void onEndReordering();

        void onStartReordering();
    }

    /* loaded from: classes.dex */
    public interface PageSwitchListener {
        void onPageSwitch(View view, int i);
    }

    protected abstract void getEdgeVerticalPostion(int[] iArr);

    public PagedView(Context context) {
        this(context, null);
    }

    public PagedView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public PagedView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mEnableShelfScroll = true;
        this.mFreeScroll = false;
        this.mFreeScrollMinScrollX = -1;
        this.mFreeScrollMaxScrollX = -1;
        this.mFirstLayout = true;
        this.mRestorePage = INVALID_RESTORE_PAGE;
        this.mNextPage = -1;
        this.mPageSpacing = 0;
        this.mLastScreenCenter = -1;
        this.mTouchState = 0;
        this.mForceScreenScrolled = false;
        this.mAllowOverScroll = true;
        this.mTempVisiblePagesRange = new int[2];
        this.mActivePointerId = -1;
        this.mFadeInAdjacentScreens = false;
        this.mIsPageMoving = false;
        this.mWasInOverscroll = false;
        this.mViewport = new Rect();
        this.mMinScale = 1.0f;
        this.mUseMinScale = false;
        this.mSidePageHoverIndex = -1;
        this.mReorderingStarted = false;
        this.NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT = 2;
        this.mInsets = new Rect();
        this.mEdgeGlowLeft = new LauncherEdgeEffect();
        this.mEdgeGlowRight = new LauncherEdgeEffect();
        this.mHandler = new Handler(new Handler.Callback() { // from class: net.oneplus.h2launcher.PagedView.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message msg) {
                switch (msg.what) {
                    case 1:
                        PagedView.this.requestLayout();
                        return false;
                    case 2:
                        PagedView.this.snapToPage(PagedView.this.getCurrentPage());
                        return false;
                    default:
                        return false;
                }
            }
        });
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.PagedView, defStyle, 0);
        this.mPageLayoutWidthGap = a.getDimensionPixelSize(0, 0);
        this.mPageLayoutHeightGap = a.getDimensionPixelSize(1, 0);
        this.mPageIndicatorViewId = a.getResourceId(2, -1);
        a.recycle();
        setHapticFeedbackEnabled(false);
        this.mIsRtl = Utilities.isRtl(getResources());
        init();
    }

    protected void init() {
        this.mScroller = new LauncherScroller(getContext());
        setDefaultInterpolator(new ScrollInterpolator());
        this.mCurrentPage = 0;
        this.mCenterPagesVertically = true;
        ViewConfiguration configuration = ViewConfiguration.get(getContext());
        this.mTouchSlop = configuration.getScaledPagingTouchSlop();
        this.mMaximumVelocity = configuration.getScaledMaximumFlingVelocity();
        this.mDensity = getResources().getDisplayMetrics().density;
        this.mFlingThresholdVelocity = (int) (500.0f * this.mDensity);
        this.mMinFlingVelocity = (int) (250.0f * this.mDensity);
        this.mMinSnapVelocity = (int) (1500.0f * this.mDensity);
        setOnHierarchyChangeListener(this);
        setWillNotDraw(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setEdgeGlowColor(int color) {
        this.mEdgeGlowLeft.setColor(color);
        this.mEdgeGlowRight.setColor(color);
    }

    protected void setDefaultInterpolator(Interpolator interpolator) {
        this.mDefaultInterpolator = interpolator;
        this.mScroller.setInterpolator(this.mDefaultInterpolator);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewGroup parent = (ViewGroup) getParent();
        ViewGroup grandParent = (ViewGroup) parent.getParent();
        if (this.mPageIndicator == null && this.mPageIndicatorViewId > -1) {
            this.mPageIndicator = (PageIndicator) grandParent.findViewById(this.mPageIndicatorViewId);
            this.mPageIndicator.removeAllMarkers(true);
            ArrayList<PageIndicator.PageMarkerResources> markers = new ArrayList<>();
            for (int i = 0; i < getChildCount(); i++) {
                markers.add(getPageIndicatorMarker(i));
            }
            this.mPageIndicator.addMarkers(markers, true);
            View.OnClickListener listener = getPageIndicatorClickListener();
            if (listener != null) {
                this.mPageIndicator.setOnClickListener(listener);
            }
            this.mPageIndicator.setContentDescription(getPageIndicatorDescription());
            ExtractionUtils.startColorExtractionServiceIfNecessary(getContext(), true);
        }
    }

    protected String getPageIndicatorDescription() {
        return getCurrentPageDescription();
    }

    protected View.OnClickListener getPageIndicatorClickListener() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mPageIndicator = null;
    }

    private float[] mapPointFromViewToParent(View v, float x, float y) {
        sTmpPoint[0] = x;
        sTmpPoint[1] = y;
        v.getMatrix().mapPoints(sTmpPoint);
        float[] fArr = sTmpPoint;
        fArr[0] = fArr[0] + v.getLeft();
        float[] fArr2 = sTmpPoint;
        fArr2[1] = fArr2[1] + v.getTop();
        return sTmpPoint;
    }

    private float[] mapPointFromParentToView(View v, float x, float y) {
        sTmpPoint[0] = x - v.getLeft();
        sTmpPoint[1] = y - v.getTop();
        v.getMatrix().invert(sTmpInvMatrix);
        sTmpInvMatrix.mapPoints(sTmpPoint);
        return sTmpPoint;
    }

    private void updateDragViewTranslationDuringDrag() {
        if (this.mDragView != null) {
            float x = (this.mLastMotionX - this.mDownMotionX) + (getScrollX() - this.mDownScrollX) + (this.mDragViewBaselineLeft - this.mDragView.getLeft());
            float y = this.mLastMotionY - this.mDownMotionY;
            this.mDragView.setTranslationX(x);
            this.mDragView.setTranslationY(y);
        }
    }

    public void setMinScale(float f) {
        this.mMinScale = f;
        this.mUseMinScale = true;
        requestLayout();
    }

    @Override // android.view.View
    public void setScaleX(float scaleX) {
        super.setScaleX(scaleX);
        if (isReordering(true)) {
            float[] p = mapPointFromParentToView(this, this.mParentDownMotionX, this.mParentDownMotionY);
            this.mLastMotionX = p[0];
            this.mLastMotionY = p[1];
            updateDragViewTranslationDuringDrag();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getViewportWidth() {
        return this.mViewport.width();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getViewportHeight() {
        return this.mViewport.height();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getViewportOffsetX() {
        return (getMeasuredWidth() - getViewportWidth()) / 2;
    }

    int getViewportOffsetY() {
        return (getMeasuredHeight() - getViewportHeight()) / 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PageIndicator getPageIndicator() {
        return this.mPageIndicator;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PageIndicator.PageMarkerResources getPageIndicatorMarker(int pageIndex) {
        return new PageIndicator.PageMarkerResources();
    }

    public void setPageSwitchListener(PageSwitchListener pageSwitchListener) {
        this.mPageSwitchListener = pageSwitchListener;
        if (this.mPageSwitchListener != null) {
            this.mPageSwitchListener.onPageSwitch(getPageAt(this.mCurrentPage), this.mCurrentPage);
        }
    }

    public void setPageReorderListener(PageReorderListener pageReorderListener) {
        this.mPageReorderListener = pageReorderListener;
    }

    public int getCurrentPage() {
        return this.mCurrentPage;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getNextPage() {
        return this.mNextPage != -1 ? this.mNextPage : this.mCurrentPage;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getPageCount() {
        return getChildCount();
    }

    public View getPageAt(int index) {
        return getChildAt(index);
    }

    protected int indexToPage(int index) {
        return index;
    }

    protected void updateCurrentPageScroll() {
        int newX = 0;
        if (this.mCurrentPage >= 0 && this.mCurrentPage < getPageCount()) {
            newX = getScrollForPage(this.mCurrentPage);
        }
        scrollTo(newX, 0);
        this.mScroller.setFinalX(newX);
        forceFinishScroller();
    }

    private void abortScrollerAnimation(boolean resetNextPage) {
        this.mScroller.abortAnimation();
        if (resetNextPage) {
            this.mNextPage = -1;
        }
    }

    private void forceFinishScroller() {
        this.mScroller.forceFinished(true);
        this.mNextPage = -1;
    }

    private int validateNewPage(int newPage) {
        int validatedPage = newPage;
        if (this.mFreeScroll) {
            getFreeScrollPageRange(this.mTempVisiblePagesRange);
            validatedPage = Math.max(this.mTempVisiblePagesRange[0], Math.min(newPage, this.mTempVisiblePagesRange[1]));
        }
        return Math.max(0, Math.min(validatedPage, getPageCount() - 1));
    }

    public void setCurrentPage(int currentPage) {
        if (!this.mScroller.isFinished()) {
            abortScrollerAnimation(true);
        }
        if (getChildCount() != 0) {
            this.mForceScreenScrolled = true;
            this.mCurrentPage = validateNewPage(currentPage);
            updateCurrentPageScroll();
            notifyPageSwitchListener();
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRestorePage(int restorePage) {
        this.mRestorePage = restorePage;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getRestorePage() {
        return this.mRestorePage;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void notifyPageSwitchListener() {
        if (this.mPageSwitchListener != null) {
            this.mPageSwitchListener.onPageSwitch(getPageAt(getNextPage()), getNextPage());
        }
        updatePageIndicator();
    }

    private void updatePageIndicator() {
        if (this.mPageIndicator != null) {
            this.mPageIndicator.setContentDescription(getPageIndicatorDescription());
            if (!isReordering(false)) {
                this.mPageIndicator.setActiveMarker(getNextPage());
            }
        }
    }

    protected void pageBeginMoving() {
        if (!this.mIsPageMoving) {
            this.mIsPageMoving = true;
            onPageBeginMoving();
        }
    }

    protected void pageEndMoving() {
        if (this.mIsPageMoving) {
            this.mIsPageMoving = false;
            onPageEndMoving();
        }
    }

    public boolean isPageMoving() {
        return this.mIsPageMoving;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPageBeginMoving() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPageEndMoving() {
        this.mWasInOverscroll = false;
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener l) {
        this.mLongClickListener = l;
        int count = getPageCount();
        for (int i = 0; i < count; i++) {
            getPageAt(i).setOnLongClickListener(l);
        }
        super.setOnLongClickListener(l);
    }

    @Override // android.view.View
    public void scrollBy(int x, int y) {
        scrollTo(getScrollX() + x, getScrollY() + y);
    }

    @Override // android.view.View
    public void scrollTo(int x, int y) {
        onScrollInteraction();
        if (this.mFreeScroll || !this.mEnableShelfScroll) {
            if (!this.mScroller.isFinished() && (x > this.mFreeScrollMaxScrollX || x < this.mFreeScrollMinScrollX)) {
                forceFinishScroller();
            }
            x = Math.max(Math.min(x, this.mFreeScrollMaxScrollX), this.mFreeScrollMinScrollX);
        }
        boolean isXBeforeFirstPage = this.mIsRtl ? x > this.mMaxScrollX : x < 0;
        boolean isXAfterLastPage = this.mIsRtl ? x < 0 : x > this.mMaxScrollX;
        if (isXBeforeFirstPage) {
            super.scrollTo(this.mIsRtl ? this.mMaxScrollX : 0, y);
            if (this.mAllowOverScroll) {
                this.mWasInOverscroll = true;
                if (this.mIsRtl) {
                    overScroll(x - this.mMaxScrollX);
                } else {
                    overScroll(x);
                }
            }
        } else if (isXAfterLastPage) {
            super.scrollTo(this.mIsRtl ? 0 : this.mMaxScrollX, y);
            if (this.mAllowOverScroll) {
                this.mWasInOverscroll = true;
                if (this.mIsRtl) {
                    overScroll(x);
                } else {
                    overScroll(x - this.mMaxScrollX);
                }
            }
        } else {
            if (this.mWasInOverscroll) {
                overScroll(0.0f);
                this.mWasInOverscroll = false;
            }
            super.scrollTo(x, y);
        }
        this.mTouchX = x;
        this.mSmoothingTime = ((float) System.nanoTime()) / NANOTIME_DIV;
        if (isReordering(true)) {
            float[] p = mapPointFromParentToView(this, this.mParentDownMotionX, this.mParentDownMotionY);
            this.mLastMotionX = p[0];
            this.mLastMotionY = p[1];
            updateDragViewTranslationDuringDrag();
        }
    }

    private void sendScrollAccessibilityEvent() {
        AccessibilityManager am = (AccessibilityManager) getContext().getSystemService("accessibility");
        if (am.isEnabled() && this.mCurrentPage != getNextPage()) {
            AccessibilityEvent ev = AccessibilityEvent.obtain(4096);
            ev.setScrollable(true);
            ev.setScrollX(getScrollX());
            ev.setScrollY(getScrollY());
            ev.setMaxScrollX(this.mMaxScrollX);
            ev.setMaxScrollY(0);
            sendAccessibilityEventUnchecked(ev);
        }
    }

    protected boolean computeScrollHelper() {
        if (this.mScroller.computeScrollOffset()) {
            if (getScrollX() != this.mScroller.getCurrX() || getScrollY() != this.mScroller.getCurrY()) {
                float scaleX = this.mFreeScroll ? getScaleX() : 1.0f;
                int scrollX = (int) ((1.0f / scaleX) * this.mScroller.getCurrX());
                scrollTo(scrollX, this.mScroller.getCurrY());
            }
            invalidate();
            return true;
        }
        if (this.mNextPage != -1) {
            sendScrollAccessibilityEvent();
            this.mCurrentPage = validateNewPage(this.mNextPage);
            this.mNextPage = -1;
            notifyPageSwitchListener();
            if (this.mTouchState == 0) {
                pageEndMoving();
            }
            onPostReorderingAnimationCompleted();
            AccessibilityManager am = (AccessibilityManager) getContext().getSystemService("accessibility");
            if (am.isEnabled()) {
                announceForAccessibility(getCurrentPageDescription());
            }
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public void computeScroll() {
        computeScrollHelper();
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.LayoutParams {
        public boolean isFullScreenPage;

        public LayoutParams(int width, int height) {
            super(width, height);
            this.isFullScreenPage = false;
        }

        public LayoutParams(Context context, AttributeSet attrs) {
            super(context, attrs);
            this.isFullScreenPage = false;
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
            this.isFullScreenPage = false;
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams p) {
        return new LayoutParams(p);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams p) {
        return p instanceof LayoutParams;
    }

    public void addFullScreenPage(View page) {
        LayoutParams lp = generateDefaultLayoutParams();
        lp.isFullScreenPage = true;
        super.addView(page, 0, lp);
    }

    public int getNormalChildHeight() {
        return this.mNormalChildHeight;
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int scaledWidthSize;
        int scaledHeightSize;
        int childWidthMode;
        int childHeightMode;
        int childWidth;
        int childHeight;
        if (getChildCount() == 0) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        int widthMode = View.MeasureSpec.getMode(widthMeasureSpec);
        int widthSize = View.MeasureSpec.getSize(widthMeasureSpec);
        int heightMode = View.MeasureSpec.getMode(heightMeasureSpec);
        int heightSize = View.MeasureSpec.getSize(heightMeasureSpec);
        boolean reschedule = rescheduleMeasure(widthSize, heightSize);
        if (reschedule) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            onRescheduleMeasure(widthSize, heightSize);
            return;
        }
        DisplayMetrics dm = getResources().getDisplayMetrics();
        int maxSize = Math.max(dm.widthPixels + this.mInsets.left + this.mInsets.right, dm.heightPixels + this.mInsets.top + this.mInsets.bottom);
        int parentWidthSize = (int) (2.0f * maxSize);
        int parentHeightSize = (int) (2.0f * maxSize);
        if (this.mUseMinScale) {
            scaledWidthSize = (int) (parentWidthSize / this.mMinScale);
            scaledHeightSize = (int) (parentHeightSize / this.mMinScale);
        } else {
            scaledWidthSize = widthSize;
            scaledHeightSize = heightSize;
        }
        this.mViewport.set(0, 0, widthSize, heightSize);
        if (widthMode == 0 || heightMode == 0) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        if (widthSize <= 0 || heightSize <= 0) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        int verticalPadding = getPaddingTop() + getPaddingBottom();
        int horizontalPadding = getPaddingLeft() + getPaddingRight();
        int referenceChildWidth = 0;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = getPageAt(i);
            if (child.getVisibility() != 8) {
                LayoutParams lp = (LayoutParams) child.getLayoutParams();
                if (!lp.isFullScreenPage) {
                    if (lp.width == -2) {
                        childWidthMode = Integer.MIN_VALUE;
                    } else {
                        childWidthMode = LauncherActivityInfoCompat.FLAG_SUSPENDED;
                    }
                    if (lp.height == -2) {
                        childHeightMode = Integer.MIN_VALUE;
                    } else {
                        childHeightMode = LauncherActivityInfoCompat.FLAG_SUSPENDED;
                    }
                    childWidth = ((getViewportWidth() - horizontalPadding) - this.mInsets.left) - this.mInsets.right;
                    childHeight = ((getViewportHeight() - verticalPadding) - this.mInsets.top) - this.mInsets.bottom;
                    this.mNormalChildHeight = childHeight;
                } else {
                    childWidthMode = LauncherActivityInfoCompat.FLAG_SUSPENDED;
                    childHeightMode = LauncherActivityInfoCompat.FLAG_SUSPENDED;
                    childWidth = (getViewportWidth() - this.mInsets.left) - this.mInsets.right;
                    childHeight = getViewportHeight();
                }
                if (referenceChildWidth == 0) {
                    referenceChildWidth = childWidth;
                }
                int childWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(childWidth, childWidthMode);
                int childHeightMeasureSpec = View.MeasureSpec.makeMeasureSpec(childHeight, childHeightMode);
                child.measure(childWidthMeasureSpec, childHeightMeasureSpec);
            }
        }
        setMeasuredDimension(scaledWidthSize, scaledHeightSize);
    }

    protected boolean rescheduleMeasure(int width, int height) {
        return false;
    }

    protected void onRescheduleMeasure(int width, int height) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int childTop;
        LayoutParams nextLp;
        if (getChildCount() != 0) {
            int childCount = getChildCount();
            int offsetX = getViewportOffsetX();
            int offsetY = getViewportOffsetY();
            this.mViewport.offset(offsetX, offsetY);
            int startIndex = this.mIsRtl ? childCount - 1 : 0;
            int endIndex = this.mIsRtl ? -1 : childCount;
            int delta = this.mIsRtl ? -1 : 1;
            int verticalPadding = getPaddingTop() + getPaddingBottom();
            int childLeft = offsetX + (((LayoutParams) getChildAt(startIndex).getLayoutParams()).isFullScreenPage ? 0 : getPaddingLeft());
            if (this.mPageScrolls == null || childCount != this.mChildCountOnLastLayout) {
                this.mPageScrolls = new int[childCount];
            }
            for (int i = startIndex; i != endIndex; i += delta) {
                View child = getPageAt(i);
                if (child.getVisibility() != 8) {
                    LayoutParams lp = (LayoutParams) child.getLayoutParams();
                    if (lp.isFullScreenPage) {
                        childTop = offsetY;
                    } else {
                        childTop = getPaddingTop() + offsetY + this.mInsets.top;
                        if (this.mCenterPagesVertically) {
                            childTop += ((((getViewportHeight() - this.mInsets.top) - this.mInsets.bottom) - verticalPadding) - child.getMeasuredHeight()) / 2;
                        }
                    }
                    int childWidth = child.getMeasuredWidth();
                    int childHeight = child.getMeasuredHeight();
                    child.layout(childLeft, childTop, child.getMeasuredWidth() + childLeft, childTop + childHeight);
                    int scrollOffsetLeft = lp.isFullScreenPage ? 0 : getPaddingLeft();
                    this.mPageScrolls[i] = (childLeft - scrollOffsetLeft) - offsetX;
                    int pageGap = this.mPageSpacing;
                    int next = i + delta;
                    if (next != endIndex) {
                        nextLp = (LayoutParams) getPageAt(next).getLayoutParams();
                    } else {
                        nextLp = null;
                    }
                    if (lp.isFullScreenPage) {
                        pageGap = getPaddingLeft();
                    } else if (nextLp != null && nextLp.isFullScreenPage) {
                        pageGap = getPaddingRight();
                    }
                    childLeft += childWidth + pageGap + getChildGap();
                }
            }
            LayoutTransition transition = getLayoutTransition();
            if (transition != null && transition.isRunning()) {
                transition.addTransitionListener(new LayoutTransition.TransitionListener() { // from class: net.oneplus.h2launcher.PagedView.2
                    @Override // android.animation.LayoutTransition.TransitionListener
                    public void startTransition(LayoutTransition transition2, ViewGroup container, View view, int transitionType) {
                    }

                    @Override // android.animation.LayoutTransition.TransitionListener
                    public void endTransition(LayoutTransition transition2, ViewGroup container, View view, int transitionType) {
                        if (!transition2.isRunning()) {
                            transition2.removeTransitionListener(this);
                            PagedView.this.updateMaxScrollX();
                            PagedView.this.updateFreescrollBounds();
                        }
                    }
                });
            } else {
                updateMaxScrollX();
                updateFreescrollBounds();
            }
            if (this.mFirstLayout && this.mCurrentPage >= 0 && this.mCurrentPage < childCount) {
                updateCurrentPageScroll();
                this.mFirstLayout = false;
            }
            if (this.mScroller.isFinished() && this.mChildCountOnLastLayout != childCount) {
                if (this.mRestorePage != -1001) {
                    setCurrentPage(this.mRestorePage);
                    this.mRestorePage = INVALID_RESTORE_PAGE;
                } else {
                    setCurrentPage(getNextPage());
                }
            }
            this.mChildCountOnLastLayout = childCount;
            if (isReordering(true)) {
                updateDragViewTranslationDuringDrag();
            }
        }
    }

    protected int getChildGap() {
        return 0;
    }

    void updateMaxScrollX() {
        int childCount = getChildCount();
        if (childCount > 0) {
            int index = this.mIsRtl ? 0 : childCount - 1;
            this.mMaxScrollX = getScrollForPage(index);
        } else {
            this.mMaxScrollX = 0;
        }
    }

    public void setPageSpacing(int pageSpacing) {
        this.mPageSpacing = pageSpacing;
        requestLayout();
    }

    public int getPageSpacing() {
        return this.mPageSpacing;
    }

    protected void screenScrolled(int screenCenter) {
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View parent, View child) {
        if (this.mPageIndicator != null && !isReordering(false)) {
            int pageIndex = indexOfChild(child);
            this.mPageIndicator.addMarker(pageIndex, getPageIndicatorMarker(pageIndex), true);
        }
        this.mForceScreenScrolled = true;
        updateFreescrollBounds();
        invalidate();
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View parent, View child) {
        this.mForceScreenScrolled = true;
        updateFreescrollBounds();
        invalidate();
    }

    private void removeMarkerForView(int index) {
        if (this.mPageIndicator != null && !isReordering(false)) {
            this.mPageIndicator.removeMarker(index, true);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View v) {
        removeMarkerForView(indexOfChild(v));
        super.removeView(v);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View v) {
        removeMarkerForView(indexOfChild(v));
        super.removeViewInLayout(v);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int index) {
        removeMarkerForView(index);
        super.removeViewAt(index);
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        if (this.mPageIndicator != null) {
            this.mPageIndicator.removeAllMarkers(true);
        }
        super.removeAllViewsInLayout();
    }

    protected int getChildOffset(int index) {
        if (index < 0 || index > getChildCount() - 1) {
            return 0;
        }
        return getPageAt(index).getLeft() - getViewportOffsetX();
    }

    protected void getFreeScrollPageRange(int[] range) {
        range[0] = 0;
        range[1] = Math.max(0, getChildCount() - 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void getVisiblePages(int[] range) {
        int pageCount = getChildCount();
        range[0] = -1;
        range[1] = -1;
        if (pageCount > 0) {
            int visibleLeft = -getLeft();
            int visibleRight = visibleLeft + getViewportWidth();
            int curScreen = 0;
            int count = getChildCount();
            for (int i = 0; i < count; i++) {
                View currPage = getPageAt(i);
                sTmpRectF.left = 0.0f;
                sTmpRectF.right = currPage.getMeasuredWidth();
                currPage.getMatrix().mapRect(sTmpRectF);
                sTmpRectF.offset(currPage.getLeft() - getScrollX(), 0.0f);
                getMatrix().mapRect(sTmpRectF);
                if (sTmpRectF.left > visibleRight || sTmpRectF.right < visibleLeft) {
                    if (range[0] != -1) {
                        break;
                    }
                } else {
                    curScreen = i;
                    if (range[0] < 0) {
                        range[0] = curScreen;
                    }
                }
            }
            range[1] = curScreen;
            return;
        }
        range[0] = -1;
        range[1] = -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean shouldDrawChild(View child) {
        return child.getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int pageCount = getChildCount();
        if (pageCount > 0) {
            int halfScreenSize = getViewportWidth() / 2;
            int screenCenter = getScrollX() + halfScreenSize;
            if (screenCenter != this.mLastScreenCenter || this.mForceScreenScrolled) {
                this.mForceScreenScrolled = false;
                screenScrolled(screenCenter);
                this.mLastScreenCenter = screenCenter;
            }
            getVisiblePages(this.mTempVisiblePagesRange);
            int leftScreen = this.mTempVisiblePagesRange[0];
            int rightScreen = this.mTempVisiblePagesRange[1];
            if (leftScreen != -1 && rightScreen != -1) {
                long drawingTime = getDrawingTime();
                canvas.save();
                canvas.clipRect(getScrollX(), getScrollY(), (getScrollX() + getRight()) - getLeft(), (getScrollY() + getBottom()) - getTop());
                for (int i = pageCount - 1; i >= 0; i--) {
                    View v = getPageAt(i);
                    if ((v != this.mDragView || this.mTouchState != 4) && leftScreen <= i && i <= rightScreen && shouldDrawChild(v)) {
                        drawChild(canvas, v, drawingTime);
                    }
                }
                if (this.mDragView != null && this.mTouchState == 4) {
                    drawChild(canvas, this.mDragView, drawingTime);
                }
                canvas.restore();
            }
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (getPageCount() > 0) {
            if (!this.mEdgeGlowLeft.isFinished()) {
                int restoreCount = canvas.save();
                Rect display = this.mViewport;
                canvas.translate(display.left, display.top);
                canvas.rotate(270.0f);
                getEdgeVerticalPostion(sTmpIntPoint);
                canvas.translate(display.top - sTmpIntPoint[1], 0.0f);
                this.mEdgeGlowLeft.setSize(sTmpIntPoint[1] - sTmpIntPoint[0], display.width());
                if (this.mEdgeGlowLeft.draw(canvas)) {
                    postInvalidateOnAnimation();
                }
                canvas.restoreToCount(restoreCount);
            }
            if (!this.mEdgeGlowRight.isFinished()) {
                int restoreCount2 = canvas.save();
                Rect display2 = this.mViewport;
                canvas.translate(this.mPageScrolls[this.mIsRtl ? 0 : getPageCount() - 1] + display2.left, display2.top);
                canvas.rotate(90.0f);
                getEdgeVerticalPostion(sTmpIntPoint);
                canvas.translate(sTmpIntPoint[0] - display2.top, -display2.width());
                this.mEdgeGlowRight.setSize(sTmpIntPoint[1] - sTmpIntPoint[0], display2.width());
                if (this.mEdgeGlowRight.draw(canvas)) {
                    postInvalidateOnAnimation();
                }
                canvas.restoreToCount(restoreCount2);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View child, Rect rectangle, boolean immediate) {
        int page = indexToPage(indexOfChild(child));
        if (page == this.mCurrentPage && this.mScroller.isFinished()) {
            return false;
        }
        snapToPage(page);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int direction, Rect previouslyFocusedRect) {
        int focusablePage;
        if (this.mNextPage != -1) {
            focusablePage = this.mNextPage;
        } else {
            focusablePage = this.mCurrentPage;
        }
        View v = getPageAt(focusablePage);
        if (v != null) {
            return v.requestFocus(direction, previouslyFocusedRect);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View focused, int direction) {
        if (direction == 17) {
            if (getCurrentPage() > 0) {
                snapToPage(getCurrentPage() - 1);
                return true;
            }
        } else if (direction == 66 && getCurrentPage() < getPageCount() - 1) {
            snapToPage(getCurrentPage() + 1);
            return true;
        }
        return super.dispatchUnhandledMove(focused, direction);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> views, int direction, int focusableMode) {
        if (this.mCurrentPage >= 0 && this.mCurrentPage < getPageCount()) {
            getPageAt(this.mCurrentPage).addFocusables(views, direction, focusableMode);
        }
        if (direction == 17) {
            if (this.mCurrentPage > 0) {
                getPageAt(this.mCurrentPage - 1).addFocusables(views, direction, focusableMode);
            }
        } else if (direction == 66 && this.mCurrentPage < getPageCount() - 1) {
            getPageAt(this.mCurrentPage + 1).addFocusables(views, direction, focusableMode);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void focusableViewAvailable(View focused) {
        View current = getPageAt(this.mCurrentPage);
        for (View v = focused; v != current; v = (View) v.getParent()) {
            if (v != this) {
                ViewParent parent = v.getParent();
                if (!(parent instanceof View)) {
                    return;
                }
            } else {
                return;
            }
        }
        super.focusableViewAvailable(focused);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        if (disallowIntercept) {
            View currentPage = getPageAt(this.mCurrentPage);
            currentPage.cancelLongPress();
        }
        super.requestDisallowInterceptTouchEvent(disallowIntercept);
    }

    protected boolean hitsPreviousPage(float x, float y) {
        return this.mIsRtl ? x > ((float) (((getViewportOffsetX() + getViewportWidth()) - getPaddingRight()) - this.mPageSpacing)) : x < ((float) ((getViewportOffsetX() + getPaddingLeft()) + this.mPageSpacing));
    }

    protected boolean hitsNextPage(float x, float y) {
        return this.mIsRtl ? x < ((float) ((getViewportOffsetX() + getPaddingLeft()) + this.mPageSpacing)) : x > ((float) (((getViewportOffsetX() + getViewportWidth()) - getPaddingRight()) - this.mPageSpacing));
    }

    private boolean isTouchPointInViewportWithBuffer(int x, int y) {
        sTmpRect.set(this.mViewport.left - (this.mViewport.width() / 2), this.mViewport.top, this.mViewport.right + (this.mViewport.width() / 2), this.mViewport.bottom);
        return sTmpRect.contains(x, y);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        acquireVelocityTrackerAndAddMovement(ev);
        if (getChildCount() <= 0) {
            return super.onInterceptTouchEvent(ev);
        }
        int action = ev.getAction();
        if (action == 2 && this.mTouchState == 1) {
            ((Launcher) getContext()).getDragLayer().cancelSwipeUpDownGesture();
            return true;
        }
        switch (action & 255) {
            case 0:
                float x = ev.getX();
                float y = ev.getY();
                this.mDownMotionX = x;
                this.mDownMotionY = y;
                this.mDownScrollX = getScrollX();
                this.mLastMotionX = x;
                this.mLastMotionY = y;
                float[] p = mapPointFromViewToParent(this, x, y);
                this.mParentDownMotionX = p[0];
                this.mParentDownMotionY = p[1];
                this.mLastMotionXRemainder = 0.0f;
                this.mTotalMotionX = 0.0f;
                this.mActivePointerId = ev.getPointerId(0);
                int xDist = Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX());
                boolean finishedScrolling = this.mScroller.isFinished() || xDist < this.mTouchSlop / 3;
                if (finishedScrolling) {
                    this.mTouchState = 0;
                    if (!this.mScroller.isFinished() && !this.mFreeScroll) {
                        setCurrentPage(getNextPage());
                        pageEndMoving();
                        break;
                    }
                } else if (isTouchPointInViewportWithBuffer((int) this.mDownMotionX, (int) this.mDownMotionY)) {
                    this.mTouchState = 1;
                    break;
                } else {
                    this.mTouchState = 0;
                    break;
                }
                break;
            case 1:
            case 3:
                resetTouchState();
                break;
            case 2:
                if (this.mActivePointerId != -1) {
                    determineScrollingStart(ev);
                    break;
                }
                break;
            case 6:
                onSecondaryPointerUp(ev);
                releaseVelocityTracker();
                break;
        }
        boolean isInDragMode = this.mTouchState != 0;
        if (isInDragMode) {
            ((Launcher) getContext()).getDragLayer().cancelSwipeUpDownGesture();
            return isInDragMode;
        }
        return isInDragMode;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void determineScrollingStart(MotionEvent ev) {
        determineScrollingStart(ev, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void determineScrollingStart(MotionEvent ev, float touchSlopScale) {
        int pointerIndex = ev.findPointerIndex(this.mActivePointerId);
        if (pointerIndex != -1) {
            float x = ev.getX(pointerIndex);
            float y = ev.getY(pointerIndex);
            if (!isTouchPointInViewportWithBuffer((int) x, (int) y)) {
                Logger.d(TAG, "event: (%d, %d)", Integer.valueOf((int) x), Integer.valueOf((int) y));
                Logger.d(TAG, "viewport: %s", this.mViewport.toShortString());
                Logger.w(TAG, "determineScrollingStart# skip the determination scrolling start");
                return;
            }
            int xDiff = (int) Math.abs(x - this.mLastMotionX);
            int touchSlop = Math.round(this.mTouchSlop * touchSlopScale);
            boolean xMoved = xDiff > touchSlop;
            if (xMoved) {
                this.mTouchState = 1;
                this.mTotalMotionX += Math.abs(this.mLastMotionX - x);
                this.mLastMotionX = x;
                this.mLastMotionXRemainder = 0.0f;
                this.mTouchX = getViewportOffsetX() + getScrollX();
                this.mSmoothingTime = ((float) System.nanoTime()) / NANOTIME_DIV;
                onScrollInteractionBegin();
                pageBeginMoving();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setScrollingDisabled(boolean disableScrolling) {
        this.mDisableScrolling = disableScrolling;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void cancelCurrentPageLongPress() {
        View currentPage = getPageAt(this.mCurrentPage);
        if (currentPage != null) {
            currentPage.cancelLongPress();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float getScrollProgress(int screenCenter, View v, int page) {
        int totalDistance;
        int halfScreenSize = getViewportWidth() / 2;
        int delta = screenCenter - (getScrollForPage(page) + halfScreenSize);
        int count = getChildCount();
        int adjacentPage = page + 1;
        if ((delta < 0 && !this.mIsRtl) || (delta > 0 && this.mIsRtl)) {
            adjacentPage = page - 1;
        }
        if (adjacentPage < 0 || adjacentPage > count - 1) {
            totalDistance = v.getMeasuredWidth() + this.mPageSpacing;
        } else {
            totalDistance = Math.abs(getScrollForPage(adjacentPage) - getScrollForPage(page));
        }
        float scrollProgress = delta / (totalDistance * 1.0f);
        return Math.max(Math.min(scrollProgress, 1.0f), -1.0f);
    }

    public int getScrollForPage(int index) {
        if (this.mPageScrolls == null || index >= this.mPageScrolls.length || index < 0) {
            return 0;
        }
        return this.mPageScrolls[index];
    }

    public int getLayoutTransitionOffsetForPage(int index) {
        if (this.mPageScrolls == null || index >= this.mPageScrolls.length || index < 0) {
            return 0;
        }
        View child = getChildAt(index);
        int scrollOffset = 0;
        LayoutParams lp = (LayoutParams) child.getLayoutParams();
        if (!lp.isFullScreenPage) {
            scrollOffset = this.mIsRtl ? getPaddingRight() : getPaddingLeft();
        }
        int baselineX = this.mPageScrolls[index] + scrollOffset + getViewportOffsetX();
        return (int) (child.getX() - baselineX);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void dampedOverScroll(float amount) {
        int screenSize = getViewportWidth();
        float f = amount / screenSize;
        if (f < 0.0f) {
            this.mEdgeGlowLeft.onPull(-f);
        } else if (f > 0.0f) {
            this.mEdgeGlowRight.onPull(f);
        } else {
            return;
        }
        invalidate();
    }

    protected void overScroll(float amount) {
        dampedOverScroll(amount);
    }

    public void enableFreeScroll() {
        setEnableFreeScroll(true);
    }

    public void disableFreeScroll() {
        setEnableFreeScroll(false);
    }

    void updateFreescrollBounds() {
        getFreeScrollPageRange(this.mTempVisiblePagesRange);
        if (this.mIsRtl) {
            this.mFreeScrollMinScrollX = getScrollForPage(this.mTempVisiblePagesRange[1]);
            this.mFreeScrollMaxScrollX = getScrollForPage(this.mTempVisiblePagesRange[0]);
        } else {
            this.mFreeScrollMinScrollX = getScrollForPage(this.mTempVisiblePagesRange[0]);
            this.mFreeScrollMaxScrollX = getScrollForPage(this.mTempVisiblePagesRange[1]);
        }
    }

    private void setEnableFreeScroll(boolean freeScroll) {
        this.mFreeScroll = freeScroll;
        if (this.mFreeScroll) {
            updateFreescrollBounds();
            getFreeScrollPageRange(this.mTempVisiblePagesRange);
            if (getCurrentPage() < this.mTempVisiblePagesRange[0]) {
                setCurrentPage(this.mTempVisiblePagesRange[0]);
            } else if (getCurrentPage() > this.mTempVisiblePagesRange[1]) {
                setCurrentPage(this.mTempVisiblePagesRange[1]);
            }
        }
        setEnableOverscroll(freeScroll ? false : true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setEnableOverscroll(boolean enable) {
        this.mAllowOverScroll = enable;
    }

    private int getNearestHoverOverPageIndex() {
        if (this.mDragView != null) {
            int dragX = (int) (this.mDragView.getLeft() + (this.mDragView.getMeasuredWidth() / 2) + this.mDragView.getTranslationX());
            getFreeScrollPageRange(this.mTempVisiblePagesRange);
            int minDistance = Integer.MAX_VALUE;
            int minIndex = indexOfChild(this.mDragView);
            for (int i = this.mTempVisiblePagesRange[0]; i <= this.mTempVisiblePagesRange[1]; i++) {
                View page = getPageAt(i);
                int pageX = page.getLeft() + (page.getMeasuredWidth() / 2);
                int d = Math.abs(dragX - pageX);
                if (d < minDistance) {
                    minIndex = i;
                    minDistance = d;
                }
            }
            return minIndex;
        }
        return -1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        boolean isDeltaXLeft;
        boolean isVelocityXLeft;
        if (this.mDisableScrolling) {
            Logger.w(TAG, "onTouchEvent# do not dispatch the touch event when we didn't allow to scroll.");
            return true;
        }
        super.onTouchEvent(ev);
        if (getChildCount() <= 0) {
            return super.onTouchEvent(ev);
        }
        acquireVelocityTrackerAndAddMovement(ev);
        int action = ev.getAction();
        switch (action & 255) {
            case 0:
                if (!this.mScroller.isFinished()) {
                    abortScrollerAnimation(false);
                }
                float x = ev.getX();
                this.mLastMotionX = x;
                this.mDownMotionX = x;
                float y = ev.getY();
                this.mLastMotionY = y;
                this.mDownMotionY = y;
                this.mDownScrollX = getScrollX();
                float[] p = mapPointFromViewToParent(this, this.mLastMotionX, this.mLastMotionY);
                this.mParentDownMotionX = p[0];
                this.mParentDownMotionY = p[1];
                this.mLastMotionXRemainder = 0.0f;
                this.mTotalMotionX = 0.0f;
                this.mActivePointerId = ev.getPointerId(0);
                if (this.mTouchState == 1) {
                    onScrollInteractionBegin();
                    pageBeginMoving();
                }
                return true;
            case 1:
                if (this.mTouchState == 1) {
                    int activePointerId = this.mActivePointerId;
                    int pointerIndex = ev.findPointerIndex(activePointerId);
                    float x2 = ev.getX();
                    if (pointerIndex != -1 && ev.getPointerCount() > pointerIndex) {
                        x2 = ev.getX(pointerIndex);
                    }
                    VelocityTracker velocityTracker = this.mVelocityTracker;
                    velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
                    int velocityX = (int) velocityTracker.getXVelocity(activePointerId);
                    int deltaX = (int) (x2 - this.mDownMotionX);
                    if (getPageAt(this.mCurrentPage) != null) {
                        int pageWidth = getPageAt(this.mCurrentPage).getMeasuredWidth();
                        boolean isSignificantMove = ((float) Math.abs(deltaX)) > ((float) pageWidth) * SIGNIFICANT_MOVE_THRESHOLD;
                        this.mTotalMotionX += Math.abs((this.mLastMotionX + this.mLastMotionXRemainder) - x2);
                        boolean isFling = this.mTotalMotionX > 25.0f && Math.abs(velocityX) > this.mFlingThresholdVelocity;
                        if (!this.mFreeScroll) {
                            boolean returnToOriginalPage = false;
                            if (Math.abs(deltaX) > pageWidth * RETURN_TO_ORIGINAL_PAGE_THRESHOLD && Math.signum(velocityX) != Math.signum(deltaX) && isFling) {
                                returnToOriginalPage = true;
                            }
                            if (this.mIsRtl) {
                                isDeltaXLeft = deltaX > 0;
                            } else {
                                isDeltaXLeft = deltaX < 0;
                            }
                            if (this.mIsRtl) {
                                isVelocityXLeft = velocityX > 0;
                            } else {
                                isVelocityXLeft = velocityX < 0;
                            }
                            if (((isSignificantMove && !isDeltaXLeft && !isFling) || (isFling && !isVelocityXLeft)) && this.mCurrentPage > 0) {
                                int finalPage = returnToOriginalPage ? this.mCurrentPage : this.mCurrentPage - 1;
                                snapToPageWithVelocity(finalPage, velocityX);
                            } else if (((isSignificantMove && isDeltaXLeft && !isFling) || (isFling && isVelocityXLeft)) && this.mCurrentPage < getChildCount() - 1) {
                                int finalPage2 = returnToOriginalPage ? this.mCurrentPage : this.mCurrentPage + 1;
                                snapToPageWithVelocity(finalPage2, velocityX);
                            } else {
                                snapToDestination();
                            }
                        } else {
                            if (!this.mScroller.isFinished()) {
                                abortScrollerAnimation(true);
                            }
                            float scaleX = getScaleX();
                            int vX = (int) ((-velocityX) * scaleX);
                            int initialScrollX = (int) (getScrollX() * scaleX);
                            this.mScroller.setInterpolator(this.mDefaultInterpolator);
                            this.mScroller.fling(initialScrollX, getScrollY(), vX, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
                            invalidate();
                        }
                        onScrollInteractionEnd();
                    }
                    return true;
                }
                if (this.mTouchState == 2) {
                    int nextPage = Math.max(0, this.mCurrentPage - 1);
                    if (nextPage != this.mCurrentPage) {
                        snapToPage(nextPage);
                    } else {
                        snapToDestination();
                    }
                } else if (this.mTouchState == 3) {
                    int nextPage2 = Math.min(getChildCount() - 1, this.mCurrentPage + 1);
                    if (nextPage2 != this.mCurrentPage) {
                        snapToPage(nextPage2);
                    } else {
                        snapToDestination();
                    }
                } else if (this.mTouchState == 4) {
                    this.mLastMotionX = ev.getX();
                    this.mLastMotionY = ev.getY();
                    float[] pt = mapPointFromViewToParent(this, this.mLastMotionX, this.mLastMotionY);
                    this.mParentDownMotionX = pt[0];
                    this.mParentDownMotionY = pt[1];
                    updateDragViewTranslationDuringDrag();
                } else if (!this.mCancelTap) {
                    onUnhandledTap(ev);
                }
                removeCallbacks(this.mSidePageHoverRunnable);
                resetTouchState();
                return true;
            case 2:
                if (this.mTouchState == 1) {
                    int pointerIndex2 = ev.findPointerIndex(this.mActivePointerId);
                    if (pointerIndex2 == -1) {
                        return true;
                    }
                    float x3 = ev.getX(pointerIndex2);
                    float deltaX2 = (this.mLastMotionX + this.mLastMotionXRemainder) - x3;
                    this.mTotalMotionX += Math.abs(deltaX2);
                    if (Math.abs(deltaX2) >= 1.0f) {
                        this.mTouchX += deltaX2;
                        this.mSmoothingTime = ((float) System.nanoTime()) / NANOTIME_DIV;
                        scrollBy((int) deltaX2, 0);
                        this.mLastMotionX = x3;
                        this.mLastMotionXRemainder = deltaX2 - ((int) deltaX2);
                    } else {
                        awakenScrollBars();
                    }
                } else if (this.mTouchState == 4) {
                    this.mLastMotionX = ev.getX();
                    this.mLastMotionY = ev.getY();
                    float[] pt2 = mapPointFromViewToParent(this, this.mLastMotionX, this.mLastMotionY);
                    this.mParentDownMotionX = pt2[0];
                    this.mParentDownMotionY = pt2[1];
                    updateDragViewTranslationDuringDrag();
                    final int dragViewIndex = indexOfChild(this.mDragView);
                    final int pageUnderPointIndex = getNearestHoverOverPageIndex();
                    int minPageUnderPointIndex = getMinPageUnderPointIndex();
                    if (pageUnderPointIndex > minPageUnderPointIndex && pageUnderPointIndex != indexOfChild(this.mDragView)) {
                        this.mTempVisiblePagesRange[0] = 0;
                        this.mTempVisiblePagesRange[1] = getPageCount() - 1;
                        getFreeScrollPageRange(this.mTempVisiblePagesRange);
                        if (this.mTempVisiblePagesRange[0] <= pageUnderPointIndex && pageUnderPointIndex <= this.mTempVisiblePagesRange[1] && pageUnderPointIndex != this.mSidePageHoverIndex && this.mScroller.isFinished()) {
                            this.mSidePageHoverIndex = pageUnderPointIndex;
                            this.mSidePageHoverRunnable = new Runnable() { // from class: net.oneplus.h2launcher.PagedView.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    PagedView.this.snapToPage(pageUnderPointIndex);
                                    int shiftDelta = dragViewIndex < pageUnderPointIndex ? -1 : 1;
                                    int lowerIndex = dragViewIndex < pageUnderPointIndex ? dragViewIndex + 1 : pageUnderPointIndex;
                                    int upperIndex = dragViewIndex > pageUnderPointIndex ? dragViewIndex - 1 : pageUnderPointIndex;
                                    for (int i = lowerIndex; i <= upperIndex; i++) {
                                        View v = PagedView.this.getChildAt(i);
                                        int oldX = PagedView.this.getViewportOffsetX() + PagedView.this.getChildOffset(i);
                                        int newX = PagedView.this.getViewportOffsetX() + PagedView.this.getChildOffset(i + shiftDelta);
                                        AnimatorSet anim = (AnimatorSet) v.getTag(100);
                                        if (anim != null) {
                                            anim.cancel();
                                        }
                                        v.setTranslationX(oldX - newX);
                                        AnimatorSet anim2 = new AnimatorSet();
                                        anim2.setDuration(PagedView.REORDERING_REORDER_REPOSITION_DURATION);
                                        anim2.playTogether(ObjectAnimator.ofFloat(v, "translationX", 0.0f));
                                        anim2.start();
                                        v.setTag(anim2);
                                    }
                                    PagedView.this.removeView(PagedView.this.mDragView);
                                    PagedView.this.addView(PagedView.this.mDragView, pageUnderPointIndex);
                                    PagedView.this.mSidePageHoverIndex = -1;
                                    if (PagedView.this.mPageIndicator != null) {
                                        PagedView.this.mPageIndicator.setActiveMarker(PagedView.this.getNextPage());
                                    }
                                }
                            };
                            postDelayed(this.mSidePageHoverRunnable, REORDERING_SIDE_PAGE_HOVER_TIMEOUT);
                        }
                    } else {
                        removeCallbacks(this.mSidePageHoverRunnable);
                        this.mSidePageHoverIndex = -1;
                    }
                } else {
                    determineScrollingStart(ev);
                }
                return true;
            case 3:
                if (this.mTouchState == 1) {
                    snapToDestination();
                }
                resetTouchState();
                return true;
            case 4:
            case 5:
            default:
                return true;
            case 6:
                onSecondaryPointerUp(ev);
                releaseVelocityTracker();
                return true;
        }
    }

    private int getMinPageUnderPointIndex() {
        if (StyleManager.getInstance().isWorkspaceAllowReorderingHomeScreen()) {
            return -1;
        }
        return ((Workspace) this).getHomeScreenPageIndex();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resetTouchState() {
        releaseVelocityTracker();
        endReordering();
        this.mCancelTap = false;
        this.mTouchState = 0;
        this.mActivePointerId = -1;
        this.mEdgeGlowLeft.onRelease();
        this.mEdgeGlowRight.onRelease();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onScrollInteractionBegin() {
    }

    protected void onScrollInteraction() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onScrollInteractionEnd() {
    }

    protected void onUnhandledTap(MotionEvent ev) {
        ((Launcher) getContext()).onClick(this);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0011. Please report as an issue. */
    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent event) {
        float vscroll;
        float hscroll;
        boolean isForwardScroll = false;
        if ((event.getSource() & 2) != 0) {
            switch (event.getAction()) {
                case 8:
                    if ((event.getMetaState() & 1) != 0) {
                        vscroll = 0.0f;
                        hscroll = event.getAxisValue(9);
                    } else {
                        vscroll = -event.getAxisValue(9);
                        hscroll = event.getAxisValue(10);
                    }
                    if (hscroll != 0.0f || vscroll != 0.0f) {
                        if (this.mIsRtl) {
                            if (hscroll < 0.0f || vscroll < 0.0f) {
                                isForwardScroll = true;
                            }
                        } else if (hscroll > 0.0f || vscroll > 0.0f) {
                            isForwardScroll = true;
                        }
                        if (isForwardScroll) {
                            scrollRight();
                            return true;
                        }
                        scrollLeft();
                        return true;
                    }
                    break;
                default:
                    return super.onGenericMotionEvent(event);
            }
        }
        return super.onGenericMotionEvent(event);
    }

    private void acquireVelocityTrackerAndAddMovement(MotionEvent ev) {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(ev);
    }

    private void releaseVelocityTracker() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.clear();
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private void onSecondaryPointerUp(MotionEvent ev) {
        int pointerIndex = (ev.getAction() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
        int pointerId = ev.getPointerId(pointerIndex);
        if (pointerId == this.mActivePointerId) {
            int newPointerIndex = pointerIndex == 0 ? 1 : 0;
            float x = ev.getX(newPointerIndex);
            this.mDownMotionX = x;
            this.mLastMotionX = x;
            this.mLastMotionY = ev.getY(newPointerIndex);
            this.mLastMotionXRemainder = 0.0f;
            this.mActivePointerId = ev.getPointerId(newPointerIndex);
            if (this.mVelocityTracker != null) {
                this.mVelocityTracker.clear();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View child, View focused) {
        super.requestChildFocus(child, focused);
        int page = indexToPage(indexOfChild(child));
        if (page >= 0 && page != getCurrentPage() && !isInTouchMode()) {
            snapToPage(page);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getPageNearestToPoint(float x) {
        int index = 0;
        for (int i = 0; i < getChildCount(); i++) {
            if (x >= getChildAt(i).getRight() - getScrollX()) {
                index++;
            } else {
                return index;
            }
        }
        return Math.min(index, getChildCount() - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getPageNearestToCenterOfScreen() {
        int minDistanceFromScreenCenter = Integer.MAX_VALUE;
        int minDistanceFromScreenCenterIndex = -1;
        int screenCenter = getViewportOffsetX() + getScrollX() + (getViewportWidth() / 2);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View layout = getPageAt(i);
            int childWidth = layout.getMeasuredWidth();
            int halfChildWidth = childWidth / 2;
            int childCenter = getViewportOffsetX() + getChildOffset(i) + halfChildWidth;
            int distanceFromScreenCenter = Math.abs(childCenter - screenCenter);
            if (distanceFromScreenCenter < minDistanceFromScreenCenter) {
                minDistanceFromScreenCenter = distanceFromScreenCenter;
                minDistanceFromScreenCenterIndex = i;
            }
        }
        return minDistanceFromScreenCenterIndex;
    }

    protected void snapToDestination() {
        snapToPage(getPageNearestToCenterOfScreen(), PAGE_SNAP_ANIMATION_DURATION);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ScrollInterpolator implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float t) {
            float t2 = t - 1.0f;
            return (t2 * t2 * t2 * t2 * t2) + 1.0f;
        }
    }

    private float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((float) ((f - 0.5f) * 0.4712389167638204d));
    }

    protected void snapToPageWithVelocity(int whichPage, int velocity) {
        int whichPage2 = validateNewPage(whichPage);
        int halfScreenSize = getViewportWidth() / 2;
        int newX = getScrollForPage(whichPage2);
        int delta = newX - getScrollX();
        if (Math.abs(velocity) < this.mMinFlingVelocity) {
            snapToPage(whichPage2, PAGE_SNAP_ANIMATION_DURATION);
            return;
        }
        float distanceRatio = Math.min(1.0f, (Math.abs(delta) * 1.0f) / (halfScreenSize * 2));
        float distance = halfScreenSize + (halfScreenSize * distanceInfluenceForSnapDuration(distanceRatio));
        int duration = Math.round(1000.0f * Math.abs(distance / Math.max(this.mMinSnapVelocity, Math.abs(velocity)))) * 4;
        snapToPage(whichPage2, delta, duration);
    }

    public void snapToPage(int whichPage) {
        snapToPage(whichPage, PAGE_SNAP_ANIMATION_DURATION);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void snapToPageImmediately(int whichPage) {
        snapToPage(whichPage, PAGE_SNAP_ANIMATION_DURATION, true, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void snapToPage(int whichPage, int duration) {
        snapToPage(whichPage, duration, false, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void snapToPage(int whichPage, int duration, TimeInterpolator interpolator) {
        snapToPage(whichPage, duration, false, interpolator);
    }

    protected void snapToPage(int whichPage, int duration, boolean immediate, TimeInterpolator interpolator) {
        int whichPage2 = validateNewPage(whichPage);
        int newX = getScrollForPage(whichPage2);
        int delta = newX - getScrollX();
        snapToPage(whichPage2, delta, duration, immediate, interpolator);
    }

    protected void snapToPage(int whichPage, int delta, int duration) {
        snapToPage(whichPage, delta, duration, false, null);
    }

    protected void snapToPage(int whichPage, int delta, int duration, boolean immediate, TimeInterpolator interpolator) {
        int whichPage2 = validateNewPage(whichPage);
        this.mNextPage = whichPage2;
        View focusedChild = getFocusedChild();
        if (focusedChild != null && whichPage2 != this.mCurrentPage && focusedChild == getPageAt(this.mCurrentPage)) {
            focusedChild.clearFocus();
        }
        pageBeginMoving();
        awakenScrollBars(duration);
        if (immediate) {
            duration = 0;
        } else if (duration == 0) {
            duration = Math.abs(delta);
        }
        if (!this.mScroller.isFinished()) {
            abortScrollerAnimation(false);
        }
        if (interpolator != null) {
            this.mScroller.setInterpolator(interpolator);
        } else {
            this.mScroller.setInterpolator(this.mDefaultInterpolator);
        }
        this.mScroller.startScroll(getScrollX(), 0, delta, 0, duration);
        updatePageIndicator();
        if (immediate) {
            computeScroll();
        }
        this.mForceScreenScrolled = true;
        invalidate();
    }

    public void scrollLeft() {
        if (getNextPage() > 0) {
            snapToPage(getNextPage() - 1);
        }
    }

    public void scrollRight() {
        if (getNextPage() < getChildCount() - 1) {
            snapToPage(getNextPage() + 1);
        }
    }

    public int getPageForView(View v) {
        if (v != null) {
            ViewParent vp = v.getParent();
            int count = getChildCount();
            for (int i = 0; i < count; i++) {
                if (vp == getPageAt(i)) {
                    return i;
                }
            }
        }
        return -1;
    }

    @Override // android.view.View
    public boolean performLongClick() {
        this.mCancelTap = true;
        return super.performLongClick();
    }

    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: net.oneplus.h2launcher.PagedView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel in) {
                return new SavedState(in);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
        int currentPage;

        SavedState(Parcelable superState) {
            super(superState);
            this.currentPage = -1;
        }

        SavedState(Parcel in) {
            super(in);
            this.currentPage = -1;
            this.currentPage = in.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel out, int flags) {
            super.writeToParcel(out, flags);
            out.writeInt(this.currentPage);
        }
    }

    private void animateDragViewToOriginalPosition() {
        if (this.mDragView != null) {
            AnimatorSet anim = new AnimatorSet();
            anim.setDuration(REORDERING_DROP_REPOSITION_DURATION);
            anim.playTogether(ObjectAnimator.ofFloat(this.mDragView, "translationX", 0.0f), ObjectAnimator.ofFloat(this.mDragView, "translationY", 0.0f), ObjectAnimator.ofFloat(this.mDragView, "scaleX", 1.0f), ObjectAnimator.ofFloat(this.mDragView, "scaleY", 1.0f));
            anim.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.PagedView.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    PagedView.this.onPostReorderingAnimationCompleted();
                }
            });
            anim.start();
        }
    }

    public void onStartReordering() {
        this.mTouchState = 4;
        this.mIsReordering = true;
        invalidate();
    }

    void onPostReorderingAnimationCompleted() {
        this.mPostReorderingPreZoomInRemainingAnimationCount--;
        if (this.mPostReorderingPreZoomInRunnable != null && this.mPostReorderingPreZoomInRemainingAnimationCount == 0) {
            this.mPostReorderingPreZoomInRunnable.run();
            this.mPostReorderingPreZoomInRunnable = null;
        }
    }

    public void onEndReordering() {
        this.mIsReordering = false;
        if (this.mPageReorderListener != null) {
            this.mPageReorderListener.onEndReordering();
        }
    }

    public boolean startReordering(View v) {
        int dragViewIndex = indexOfChild(v);
        int homeScreenIndex = ((Workspace) this).getHomeScreenPageIndex();
        if (this.mTouchState != 0 || dragViewIndex == -1) {
            return false;
        }
        if (!StyleManager.getInstance().isWorkspaceAllowReorderingHomeScreen() && dragViewIndex == homeScreenIndex) {
            return false;
        }
        onPostReorderingAnimationCompleted();
        this.mTempVisiblePagesRange[0] = 0;
        this.mTempVisiblePagesRange[1] = getPageCount() - 1;
        getFreeScrollPageRange(this.mTempVisiblePagesRange);
        this.mReorderingStarted = true;
        if (this.mPageReorderListener != null) {
            this.mPageReorderListener.onStartReordering();
        }
        if (this.mTempVisiblePagesRange[0] > dragViewIndex || dragViewIndex > this.mTempVisiblePagesRange[1]) {
            return false;
        }
        this.mDragView = getChildAt(dragViewIndex);
        this.mDragView.animate().scaleX(1.15f).scaleY(1.15f).setDuration(100L).start();
        this.mDragViewBaselineLeft = this.mDragView.getLeft();
        snapToPage(getPageNearestToCenterOfScreen());
        disableFreeScroll();
        onStartReordering();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isReordering(boolean testTouchState) {
        boolean state = this.mIsReordering;
        if (testTouchState) {
            return state & (this.mTouchState == 4);
        }
        return state;
    }

    void endReordering() {
        if (this.mReorderingStarted) {
            this.mReorderingStarted = false;
            final Runnable onCompleteRunnable = new Runnable() { // from class: net.oneplus.h2launcher.PagedView.5
                @Override // java.lang.Runnable
                public void run() {
                    PagedView.this.onEndReordering();
                }
            };
            this.mPostReorderingPreZoomInRunnable = new Runnable() { // from class: net.oneplus.h2launcher.PagedView.6
                @Override // java.lang.Runnable
                public void run() {
                    onCompleteRunnable.run();
                }
            };
            this.mPostReorderingPreZoomInRemainingAnimationCount = this.NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT;
            snapToPage(indexOfChild(this.mDragView), 0);
            animateDragViewToOriginalPosition();
        }
    }

    @Override // android.view.View
    @TargetApi(21)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        info.setScrollable(getPageCount() > 1);
        if (getCurrentPage() < getPageCount() - 1) {
            info.addAction(4096);
        }
        if (getCurrentPage() > 0) {
            info.addAction(8192);
        }
        info.setClassName(getClass().getName());
        info.setLongClickable(false);
        if (Utilities.ATLEAST_LOLLIPOP) {
            info.removeAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_LONG_CLICK);
        }
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEvent(int eventType) {
        if (eventType != 4096) {
            super.sendAccessibilityEvent(eventType);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent event) {
        super.onInitializeAccessibilityEvent(event);
        event.setScrollable(getPageCount() > 1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View
    public boolean performAccessibilityAction(int action, Bundle arguments) {
        if (super.performAccessibilityAction(action, arguments)) {
            return true;
        }
        switch (action) {
            case 4096:
                if (getCurrentPage() < getPageCount() - 1) {
                    scrollRight();
                    return true;
                }
                return false;
            case 8192:
                if (getCurrentPage() > 0) {
                    scrollLeft();
                    return true;
                }
                return false;
            default:
                return false;
        }
    }

    protected String getCurrentPageDescription() {
        return String.format(getContext().getString(R.string.default_scroll_format), Integer.valueOf(getNextPage() + 1), Integer.valueOf(getChildCount()));
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent event) {
        return true;
    }
}
