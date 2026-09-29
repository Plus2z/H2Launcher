.class public abstract Lnet/oneplus/h2launcher/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/PagedView$SavedState;,
        Lnet/oneplus/h2launcher/PagedView$ScrollInterpolator;,
        Lnet/oneplus/h2launcher/PagedView$LayoutParams;,
        Lnet/oneplus/h2launcher/PagedView$PageReorderListener;,
        Lnet/oneplus/h2launcher/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field private static final ANIM_TAG_KEY:I = 0x64

.field private static final DEBUG:Z = false

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field public static final INVALID_RESTORE_PAGE:I = -0x3e9

.field private static final MAX_SCROLL_PROGRESS:F = 1.0f

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MIN_SNAP_VELOCITY:I = 0x5dc

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field protected static final PAGE_SNAP_ANIMATION_DURATION:I = 0x2ee

.field private static REORDERING_DROP_REPOSITION_DURATION:I = 0x0

.field static REORDERING_REORDER_REPOSITION_DURATION:I = 0x0

.field private static REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I = 0x0

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field protected static final RE_REQUEST_LAYOUT:I = 0x1

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field protected static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x3b6

.field protected static final SNAP_TO_PAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PagedView"

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REORDERING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static final sTmpIntPoint:[I

.field private static final sTmpInvMatrix:Landroid/graphics/Matrix;

.field private static final sTmpPoint:[F

.field private static final sTmpRect:Landroid/graphics/Rect;

.field private static final sTmpRectF:Landroid/graphics/RectF;


# instance fields
.field private NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

.field protected mActivePointerId:I

.field protected mAllowOverScroll:Z

.field private mCancelTap:Z

.field protected mCenterPagesVertically:Z

.field protected mChildCountOnLastLayout:I

.field protected mCurrentPage:I

.field private mDefaultInterpolator:Landroid/view/animation/Interpolator;

.field protected mDensity:F

.field private mDisableScrolling:Z

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mDragViewBaselineLeft:F

.field private final mEdgeGlowLeft:Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;

.field private final mEdgeGlowRight:Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;

.field protected mEnableShelfScroll:Z

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mForceScreenScrolled:Z

.field private mFreeScroll:Z

.field protected mFreeScrollMaxScrollX:I

.field protected mFreeScrollMinScrollX:I

.field protected mHandler:Landroid/os/Handler;

.field protected final mInsets:Landroid/graphics/Rect;

.field protected mIsPageMoving:Z

.field private mIsReordering:Z

.field protected final mIsRtl:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field protected mNextPage:I

.field private mNormalChildHeight:I

.field mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

.field mPageIndicatorViewId:I

.field protected mPageLayoutHeightGap:I

.field protected mPageLayoutWidthGap:I

.field protected mPageReorderListener:Lnet/oneplus/h2launcher/PagedView$PageReorderListener;

.field private mPageScrolls:[I

.field mPageSpacing:I

.field private mPageSwitchListener:Lnet/oneplus/h2launcher/PagedView$PageSwitchListener;

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mReorderingStarted:Z

.field protected mRestorePage:I

.field protected mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

.field mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field private mUseMinScale:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;

.field private mWasInOverscroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 178
    const/16 v0, 0xc8

    sput v0, Lnet/oneplus/h2launcher/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    .line 179
    const/16 v0, 0x12c

    sput v0, Lnet/oneplus/h2launcher/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 180
    const/16 v0, 0x50

    sput v0, Lnet/oneplus/h2launcher/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    .line 198
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    .line 199
    new-array v0, v1, [F

    sput-object v0, Lnet/oneplus/h2launcher/PagedView;->sTmpPoint:[F

    .line 200
    new-array v0, v1, [I

    sput-object v0, Lnet/oneplus/h2launcher/PagedView;->sTmpIntPoint:[I

    .line 201
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/PagedView;->sTmpRect:Landroid/graphics/Rect;

    .line 202
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/PagedView;->sTmpRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 247
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 250
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/PagedView;->mEnableShelfScroll:Z

    .line 93
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/PagedView;->mFreeScroll:Z

    .line 94
    iput v4, p0, Lnet/oneplus/h2launcher/PagedView;->mFreeScrollMinScrollX:I

    .line 95
    iput v4, p0, Lnet/oneplus/h2launcher/PagedView;->mFreeScrollMaxScrollX:I

    .line 105
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/PagedView;->mFirstLayout:Z

    .line 109
    const/16 v1, -0x3e9

    iput v1, p0, Lnet/oneplus/h2launcher/PagedView;->mRestorePage:I

    .line 112
    iput v4, p0, Lnet/oneplus/h2launcher/PagedView;->mNextPage:I

    .line 117
    iput v3, p0, Lnet/oneplus/h2launcher/PagedView;->mPageSpacing:I

    .line 129
    iput v4, p0, Lnet/oneplus/h2launcher/PagedView;->mLastScreenCenter:I

    .line 141
    iput v3, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    .line 142
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/PagedView;->mForceScreenScrolled:Z

    .line 151
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/PagedView;->mAllowOverScroll:Z

    .line 152
    new-array v1, v6, [I

    iput-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    .line 156
    iput v4, p0, Lnet/oneplus/h2launcher/PagedView;->mActivePointerId:I

    .line 162
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/PagedView;->mFadeInAdjacentScreens:Z

    .line 164
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/PagedView;->mIsPageMoving:Z

    .line 166
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/PagedView;->mWasInOverscroll:Z

    .line 173
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 182
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lnet/oneplus/h2launcher/PagedView;->mMinScale:F

    .line 183
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/PagedView;->mUseMinScale:Z

    .line 186
    iput v4, p0, Lnet/oneplus/h2launcher/PagedView;->mSidePageHoverIndex:I

    .line 188
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/PagedView;->mReorderingStarted:Z

    .line 193
    iput v6, p0, Lnet/oneplus/h2launcher/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    .line 204
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    .line 208
    new-instance v1, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mEdgeGlowLeft:Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;

    .line 209
    new-instance v1, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mEdgeGlowRight:Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;

    .line 217
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lnet/oneplus/h2launcher/PagedView$1;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/PagedView$1;-><init>(Lnet/oneplus/h2launcher/PagedView;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mHandler:Landroid/os/Handler;

    .line 252
    sget-object v1, Lnet/oneplus/h2launcher/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 255
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/PagedView;->mPageLayoutWidthGap:I

    .line 257
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/PagedView;->mPageLayoutHeightGap:I

    .line 259
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicatorViewId:I

    .line 260
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 262
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 263
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    .line 264
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->init()V

    .line 265
    return-void
.end method

.method private abortScrollerAnimation(Z)V
    .locals 1
    .param p1, "resetNextPage"    # Z

    .prologue
    .line 475
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherScroller;->abortAnimation()V

    .line 478
    if-eqz p1, :cond_0

    .line 479
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/PagedView;->mNextPage:I

    .line 481
    :cond_0
    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2019
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2020
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2022
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2023
    return-void
.end method

.method private animateDragViewToOriginalPosition()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2282
    iget-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2283
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2284
    .local v0, "anim":Landroid/animation/AnimatorSet;
    sget v1, Lnet/oneplus/h2launcher/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2285
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2286
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2287
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2288
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2289
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2285
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2290
    new-instance v1, Lnet/oneplus/h2launcher/PagedView$4;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/PagedView$4;-><init>(Lnet/oneplus/h2launcher/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2296
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2298
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 2112
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 2113
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 2114
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private forceFinishScroller()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherScroller;->forceFinished(Z)V

    .line 487
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/PagedView;->mNextPage:I

    .line 488
    return-void
.end method

.method private getMinPageUnderPointIndex()I
    .locals 1

    .prologue
    .line 1957
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->isWorkspaceAllowReorderingHomeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 1958
    .end local p0    # "this":Lnet/oneplus/h2launcher/PagedView;
    :goto_0
    return v0

    .line 1957
    .restart local p0    # "this":Lnet/oneplus/h2launcher/PagedView;
    :cond_0
    check-cast p0, Lnet/oneplus/h2launcher/Workspace;

    .line 1958
    .end local p0    # "this":Lnet/oneplus/h2launcher/PagedView;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getHomeScreenPageIndex()I

    move-result v0

    goto :goto_0
.end method

.method private getNearestHoverOverPageIndex()I
    .locals 9

    .prologue
    .line 1655
    iget-object v7, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    if-eqz v7, :cond_1

    .line 1656
    iget-object v7, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    .line 1657
    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v1, v7

    .line 1658
    .local v1, "dragX":I
    iget-object v7, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v7}, Lnet/oneplus/h2launcher/PagedView;->getFreeScrollPageRange([I)V

    .line 1659
    const v3, 0x7fffffff

    .line 1660
    .local v3, "minDistance":I
    iget-object v7, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lnet/oneplus/h2launcher/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 1661
    .local v4, "minIndex":I
    iget-object v7, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    const/4 v8, 0x0

    aget v2, v7, v8

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    if-gt v2, v7, :cond_2

    .line 1662
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    .line 1663
    .local v5, "page":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v6, v7, v8

    .line 1664
    .local v6, "pageX":I
    sub-int v7, v1, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1665
    .local v0, "d":I
    if-ge v0, v3, :cond_0

    .line 1666
    move v4, v2

    .line 1667
    move v3, v0

    .line 1661
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1672
    .end local v0    # "d":I
    .end local v1    # "dragX":I
    .end local v2    # "i":I
    .end local v3    # "minDistance":I
    .end local v4    # "minIndex":I
    .end local v5    # "page":Landroid/view/View;
    .end local v6    # "pageX":I
    :cond_1
    const/4 v4, -0x1

    :cond_2
    return v4
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1382
    sget-object v0, Lnet/oneplus/h2launcher/PagedView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lnet/oneplus/h2launcher/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 1383
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lnet/oneplus/h2launcher/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 1382
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1384
    sget-object v0, Lnet/oneplus/h2launcher/PagedView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private mapPointFromParentToView(Landroid/view/View;FF)[F
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 350
    sget-object v0, Lnet/oneplus/h2launcher/PagedView;->sTmpPoint:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    aput v2, v0, v1

    .line 351
    sget-object v0, Lnet/oneplus/h2launcher/PagedView;->sTmpPoint:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    aput v2, v0, v1

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 353
    sget-object v0, Lnet/oneplus/h2launcher/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    sget-object v1, Lnet/oneplus/h2launcher/PagedView;->sTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 354
    sget-object v0, Lnet/oneplus/h2launcher/PagedView;->sTmpPoint:[F

    return-object v0
.end method

.method private mapPointFromViewToParent(Landroid/view/View;FF)[F
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 342
    sget-object v0, Lnet/oneplus/h2launcher/PagedView;->sTmpPoint:[F

    aput p2, v0, v3

    .line 343
    sget-object v0, Lnet/oneplus/h2launcher/PagedView;->sTmpPoint:[F

    aput p3, v0, v4

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/PagedView;->sTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 345
    sget-object v0, Lnet/oneplus/h2launcher/PagedView;->sTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 346
    sget-object v0, Lnet/oneplus/h2launcher/PagedView;->sTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 347
    sget-object v0, Lnet/oneplus/h2launcher/PagedView;->sTmpPoint:[F

    return-object v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2034
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 2036
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2037
    .local v1, "pointerId":I
    iget v3, p0, Lnet/oneplus/h2launcher/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2041
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2042
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/PagedView;->mDownMotionX:F

    iput v3, p0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionX:F

    .line 2043
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionY:F

    .line 2044
    const/4 v3, 0x0

    iput v3, p0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionXRemainder:F

    .line 2045
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/PagedView;->mActivePointerId:I

    .line 2046
    iget-object v3, p0, Lnet/oneplus/h2launcher/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2047
    iget-object v3, p0, Lnet/oneplus/h2launcher/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2050
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 2041
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 2026
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2027
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2028
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2029
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2031
    :cond_0
    return-void
.end method

.method private removeMarkerForView(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1077
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lnet/oneplus/h2launcher/PageIndicator;->removeMarker(IZ)V

    .line 1080
    :cond_0
    return-void
.end method

.method private sendScrollAccessibilityEvent()V
    .locals 4

    .prologue
    .line 662
    .line 663
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 664
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 665
    iget v2, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getNextPage()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 666
    const/16 v2, 0x1000

    .line 667
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 668
    .local v1, "ev":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 669
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 670
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 671
    iget v2, p0, Lnet/oneplus/h2launcher/PagedView;->mMaxScrollX:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 672
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 674
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 677
    .end local v1    # "ev":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private setEnableFreeScroll(Z)V
    .locals 4
    .param p1, "freeScroll"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1635
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/PagedView;->mFreeScroll:Z

    .line 1637
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/PagedView;->mFreeScroll:Z

    if-eqz v2, :cond_0

    .line 1638
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->updateFreescrollBounds()V

    .line 1639
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/PagedView;->getFreeScrollPageRange([I)V

    .line 1640
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getCurrentPage()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v1

    if-ge v2, v3, :cond_1

    .line 1641
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/PagedView;->setCurrentPage(I)V

    .line 1647
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->setEnableOverscroll(Z)V

    .line 1648
    return-void

    .line 1642
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getCurrentPage()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v0

    if-le v2, v3, :cond_0

    .line 1643
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/PagedView;->setCurrentPage(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1647
    goto :goto_1
.end method

.method private updateDragViewTranslationDuringDrag()V
    .locals 5

    .prologue
    .line 358
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 359
    iget v2, p0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionX:F

    iget v3, p0, Lnet/oneplus/h2launcher/PagedView;->mDownMotionX:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lnet/oneplus/h2launcher/PagedView;->mDownScrollX:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lnet/oneplus/h2launcher/PagedView;->mDragViewBaselineLeft:F

    iget-object v4, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    .line 360
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-float v0, v2, v3

    .line 361
    .local v0, "x":F
    iget v2, p0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionY:F

    iget v3, p0, Lnet/oneplus/h2launcher/PagedView;->mDownMotionY:F

    sub-float v1, v2, v3

    .line 362
    .local v1, "y":F
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 363
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 368
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    return-void
.end method

.method private updatePageIndicator()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 549
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/PageIndicator;->setActiveMarker(I)V

    .line 553
    :cond_0
    return-void
.end method

.method private validateNewPage(I)I
    .locals 5
    .param p1, "newPage"    # I

    .prologue
    const/4 v4, 0x0

    .line 491
    move v0, p1

    .line 493
    .local v0, "validatedPage":I
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/PagedView;->mFreeScroll:Z

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->getFreeScrollPageRange([I)V

    .line 495
    iget-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v4

    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 496
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 495
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 499
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 500
    return v0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1302
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1303
    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1305
    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 1306
    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    if-lez v0, :cond_1

    .line 1307
    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1314
    :cond_1
    :goto_0
    return-void

    .line 1309
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 1310
    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1311
    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public addFullScreenPage(Landroid/view/View;)V
    .locals 2
    .param p1, "page"    # Landroid/view/View;

    .prologue
    .line 761
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->generateDefaultLayoutParams()Lnet/oneplus/h2launcher/PagedView$LayoutParams;

    move-result-object v0

    .line 762
    .local v0, "lp":Lnet/oneplus/h2launcher/PagedView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/oneplus/h2launcher/PagedView$LayoutParams;->isFullScreenPage:Z

    .line 763
    const/4 v1, 0x0

    invoke-super {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 764
    return-void
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 2

    .prologue
    .line 1540
    iget v1, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1541
    .local v0, "currentPage":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1542
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1544
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 757
    instance-of v0, p1, Lnet/oneplus/h2launcher/PagedView$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 718
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->computeScrollHelper()Z

    .line 719
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 681
    iget-object v5, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/LauncherScroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 683
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollX()I

    move-result v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/LauncherScroller;->getCurrX()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 684
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollY()I

    move-result v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/LauncherScroller;->getCurrY()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 685
    :cond_0
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/PagedView;->mFreeScroll:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScaleX()F

    move-result v1

    .line 686
    .local v1, "scaleX":F
    :goto_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/LauncherScroller;->getCurrX()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v1

    mul-float/2addr v3, v5

    float-to-int v2, v3

    .line 687
    .local v2, "scrollX":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherScroller;->getCurrY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lnet/oneplus/h2launcher/PagedView;->scrollTo(II)V

    .line 689
    .end local v1    # "scaleX":F
    .end local v2    # "scrollX":I
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->invalidate()V

    move v3, v4

    .line 713
    :goto_1
    return v3

    :cond_2
    move v1, v3

    .line 685
    goto :goto_0

    .line 691
    :cond_3
    iget v3, p0, Lnet/oneplus/h2launcher/PagedView;->mNextPage:I

    if-eq v3, v6, :cond_6

    .line 692
    invoke-direct {p0}, Lnet/oneplus/h2launcher/PagedView;->sendScrollAccessibilityEvent()V

    .line 694
    iget v3, p0, Lnet/oneplus/h2launcher/PagedView;->mNextPage:I

    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/PagedView;->validateNewPage(I)I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    .line 695
    iput v6, p0, Lnet/oneplus/h2launcher/PagedView;->mNextPage:I

    .line 696
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->notifyPageSwitchListener()V

    .line 700
    iget v3, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    if-nez v3, :cond_4

    .line 701
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->pageEndMoving()V

    .line 704
    :cond_4
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->onPostReorderingAnimationCompleted()V

    .line 706
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "accessibility"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 707
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 709
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_5
    move v3, v4

    .line 711
    goto :goto_1

    .line 713
    .end local v0    # "am":Landroid/view/accessibility/AccessibilityManager;
    :cond_6
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected dampedOverScroll(F)V
    .locals 4
    .param p1, "amount"    # F

    .prologue
    const/4 v3, 0x0

    .line 1599
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportWidth()I

    move-result v1

    .line 1600
    .local v1, "screenSize":I
    int-to-float v2, v1

    div-float v0, p1, v2

    .line 1601
    .local v0, "f":F
    cmpg-float v2, v0, v3

    if-gez v2, :cond_1

    .line 1602
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mEdgeGlowLeft:Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;

    neg-float v3, v0

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->onPull(F)V

    .line 1608
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->invalidate()V

    .line 1609
    :cond_0
    return-void

    .line 1603
    :cond_1
    cmpl-float v2, v0, v3

    if-lez v2, :cond_0

    .line 1604
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mEdgeGlowRight:Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->onPull(F)V

    goto :goto_0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1492
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1493
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchSlopScale"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1501
    iget v7, p0, Lnet/oneplus/h2launcher/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1502
    .local v0, "pointerIndex":I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_1

    .line 1530
    :cond_0
    :goto_0
    return-void

    .line 1505
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1506
    .local v2, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1507
    .local v5, "y":F
    float-to-int v7, v2

    float-to-int v8, v5

    invoke-direct {p0, v7, v8}, Lnet/oneplus/h2launcher/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1508
    const-string v7, "PagedView"

    const-string v8, "event: (%d, %d)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    float-to-int v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    float-to-int v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v7, v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1509
    const-string v7, "PagedView"

    const-string v8, "viewport: %s"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v9, p0, Lnet/oneplus/h2launcher/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v4

    invoke-static {v7, v8, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1510
    const-string v6, "PagedView"

    const-string v7, "determineScrollingStart# skip the determination scrolling start"

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1514
    :cond_2
    iget v7, p0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionX:F

    sub-float v7, v2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v3, v7

    .line 1516
    .local v3, "xDiff":I
    iget v7, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchSlop:I

    int-to-float v7, v7

    mul-float/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1517
    .local v1, "touchSlop":I
    if-le v3, v1, :cond_3

    move v4, v6

    .line 1519
    .local v4, "xMoved":Z
    :cond_3
    if-eqz v4, :cond_0

    .line 1521
    iput v6, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    .line 1522
    iget v6, p0, Lnet/oneplus/h2launcher/PagedView;->mTotalMotionX:F

    iget v7, p0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionX:F

    sub-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, p0, Lnet/oneplus/h2launcher/PagedView;->mTotalMotionX:F

    .line 1523
    iput v2, p0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionX:F

    .line 1524
    const/4 v6, 0x0

    iput v6, p0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionXRemainder:F

    .line 1525
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportOffsetX()I

    move-result v6

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollX()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchX:F

    .line 1526
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    long-to-float v6, v6

    const v7, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v6, v7

    iput v6, p0, Lnet/oneplus/h2launcher/PagedView;->mSmoothingTime:F

    .line 1527
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->onScrollInteractionBegin()V

    .line 1528
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->pageBeginMoving()V

    goto/16 :goto_0
.end method

.method public disableFreeScroll()V
    .locals 1

    .prologue
    .line 1620
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->setEnableFreeScroll(Z)V

    .line 1621
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1176
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v5

    .line 1177
    .local v5, "pageCount":I
    if-lez v5, :cond_6

    .line 1178
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportWidth()I

    move-result v9

    div-int/lit8 v2, v9, 0x2

    .line 1179
    .local v2, "halfScreenSize":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollX()I

    move-result v9

    add-int v7, v9, v2

    .line 1181
    .local v7, "screenCenter":I
    iget v9, p0, Lnet/oneplus/h2launcher/PagedView;->mLastScreenCenter:I

    if-ne v7, v9, :cond_0

    iget-boolean v9, p0, Lnet/oneplus/h2launcher/PagedView;->mForceScreenScrolled:Z

    if-eqz v9, :cond_1

    .line 1184
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lnet/oneplus/h2launcher/PagedView;->mForceScreenScrolled:Z

    .line 1185
    invoke-virtual {p0, v7}, Lnet/oneplus/h2launcher/PagedView;->screenScrolled(I)V

    .line 1186
    iput v7, p0, Lnet/oneplus/h2launcher/PagedView;->mLastScreenCenter:I

    .line 1189
    :cond_1
    iget-object v9, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v9}, Lnet/oneplus/h2launcher/PagedView;->getVisiblePages([I)V

    .line 1190
    iget-object v9, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x0

    aget v4, v9, v10

    .line 1191
    .local v4, "leftScreen":I
    iget-object v9, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    .line 1192
    .local v6, "rightScreen":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_6

    .line 1193
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getDrawingTime()J

    move-result-wide v0

    .line 1195
    .local v0, "drawingTime":J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1196
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    .line 1197
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    .line 1196
    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1200
    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 1201
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 1202
    .local v8, "v":Landroid/view/View;
    iget-object v9, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    if-ne v8, v9, :cond_3

    iget v9, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    .line 1200
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1203
    :cond_3
    if-gt v4, v3, :cond_2

    if-gt v3, v6, :cond_2

    invoke-virtual {p0, v8}, Lnet/oneplus/h2launcher/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1204
    invoke-virtual {p0, p1, v8, v0, v1}, Lnet/oneplus/h2launcher/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 1208
    .end local v8    # "v":Landroid/view/View;
    :cond_4
    iget-object v9, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    if-eqz v9, :cond_5

    iget v9, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_5

    .line 1209
    iget-object v9, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1, v9, v0, v1}, Lnet/oneplus/h2launcher/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 1212
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1215
    .end local v0    # "drawingTime":J
    .end local v2    # "halfScreenSize":I
    .end local v3    # "i":I
    .end local v4    # "leftScreen":I
    .end local v6    # "rightScreen":I
    .end local v7    # "screenCenter":I
    :cond_6
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 1285
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 1286
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 1287
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(I)V

    .line 1296
    :goto_0
    return v0

    .line 1290
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1291
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1292
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 1296
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1219
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1220
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPageCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 1221
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mEdgeGlowLeft:Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1222
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1223
    .local v1, "restoreCount":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 1224
    .local v0, "display":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1225
    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1227
    sget-object v2, Lnet/oneplus/h2launcher/PagedView;->sTmpIntPoint:[I

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/PagedView;->getEdgeVerticalPostion([I)V

    .line 1228
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lnet/oneplus/h2launcher/PagedView;->sTmpIntPoint:[I

    aget v4, v4, v6

    sub-int/2addr v2, v4

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1229
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mEdgeGlowLeft:Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;

    sget-object v4, Lnet/oneplus/h2launcher/PagedView;->sTmpIntPoint:[I

    aget v4, v4, v6

    sget-object v5, Lnet/oneplus/h2launcher/PagedView;->sTmpIntPoint:[I

    aget v5, v5, v3

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->setSize(II)V

    .line 1230
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mEdgeGlowLeft:Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;

    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1231
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->postInvalidateOnAnimation()V

    .line 1233
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1235
    .end local v0    # "display":Landroid/graphics/Rect;
    .end local v1    # "restoreCount":I
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mEdgeGlowRight:Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1236
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1237
    .restart local v1    # "restoreCount":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 1238
    .restart local v0    # "display":Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lnet/oneplus/h2launcher/PagedView;->mPageScrolls:[I

    iget-boolean v2, p0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    aget v2, v5, v2

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1239
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1241
    sget-object v2, Lnet/oneplus/h2launcher/PagedView;->sTmpIntPoint:[I

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/PagedView;->getEdgeVerticalPostion([I)V

    .line 1242
    sget-object v2, Lnet/oneplus/h2launcher/PagedView;->sTmpIntPoint:[I

    aget v2, v2, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1243
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mEdgeGlowRight:Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;

    sget-object v4, Lnet/oneplus/h2launcher/PagedView;->sTmpIntPoint:[I

    aget v4, v4, v6

    sget-object v5, Lnet/oneplus/h2launcher/PagedView;->sTmpIntPoint:[I

    aget v3, v5, v3

    sub-int v3, v4, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->setSize(II)V

    .line 1244
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mEdgeGlowRight:Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;

    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1245
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->postInvalidateOnAnimation()V

    .line 1247
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1250
    .end local v0    # "display":Landroid/graphics/Rect;
    .end local v1    # "restoreCount":I
    :cond_3
    return-void

    .line 1238
    .restart local v0    # "display":Landroid/graphics/Rect;
    .restart local v1    # "restoreCount":I
    :cond_4
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public enableFreeScroll()V
    .locals 1

    .prologue
    .line 1616
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->setEnableFreeScroll(Z)V

    .line 1617
    return-void
.end method

.method endReordering()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2375
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/PagedView;->mReorderingStarted:Z

    if-nez v1, :cond_0

    .line 2401
    :goto_0
    return-void

    .line 2376
    :cond_0
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/PagedView;->mReorderingStarted:Z

    .line 2380
    new-instance v0, Lnet/oneplus/h2launcher/PagedView$5;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/PagedView$5;-><init>(Lnet/oneplus/h2launcher/PagedView;)V

    .line 2387
    .local v0, "onCompleteRunnable":Ljava/lang/Runnable;
    new-instance v1, Lnet/oneplus/h2launcher/PagedView$6;

    invoke-direct {v1, p0, v0}, Lnet/oneplus/h2launcher/PagedView$6;-><init>(Lnet/oneplus/h2launcher/PagedView;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2395
    iget v1, p0, Lnet/oneplus/h2launcher/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    iput v1, p0, Lnet/oneplus/h2launcher/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2398
    iget-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(II)V

    .line 2400
    invoke-direct {p0}, Lnet/oneplus/h2launcher/PagedView;->animateDragViewToOriginalPosition()V

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 1325
    iget v3, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1326
    .local v0, "current":Landroid/view/View;
    move-object v2, p1

    .line 1328
    .local v2, "v":Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 1329
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1339
    :cond_0
    return-void

    .line 1332
    :cond_1
    if-eq v2, p0, :cond_0

    .line 1335
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1336
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1337
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "v":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->generateDefaultLayoutParams()Lnet/oneplus/h2launcher/PagedView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lnet/oneplus/h2launcher/PagedView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 747
    new-instance v0, Lnet/oneplus/h2launcher/PagedView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lnet/oneplus/h2launcher/PagedView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->generateLayoutParams(Landroid/util/AttributeSet;)Lnet/oneplus/h2launcher/PagedView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 752
    new-instance v0, Lnet/oneplus/h2launcher/PagedView$LayoutParams;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/PagedView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lnet/oneplus/h2launcher/PagedView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 742
    new-instance v0, Lnet/oneplus/h2launcher/PagedView$LayoutParams;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/oneplus/h2launcher/PagedView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getChildGap()I
    .locals 1

    .prologue
    .line 1022
    const/4 v0, 0x0

    return v0
.end method

.method protected getChildOffset(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1115
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1119
    :goto_0
    return v0

    .line 1117
    :cond_1
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportOffsetX()I

    move-result v2

    sub-int v0, v1, v2

    .line 1119
    .local v0, "offset":I
    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2465
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0049

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2466
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getNextPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2465
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getEdgeVerticalPostion([I)V
.end method

.method protected getFreeScrollPageRange([I)V
    .locals 3
    .param p1, "range"    # [I

    .prologue
    const/4 v2, 0x0

    .line 1123
    aput v2, p1, v2

    .line 1124
    const/4 v0, 0x1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p1, v0

    .line 1125
    return-void
.end method

.method public getLayoutTransitionOffsetForPage(I)I
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 1582
    iget-object v4, p0, Lnet/oneplus/h2launcher/PagedView;->mPageScrolls:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnet/oneplus/h2launcher/PagedView;->mPageScrolls:[I

    array-length v4, v4

    if-ge p1, v4, :cond_0

    if-gez p1, :cond_1

    .line 1583
    :cond_0
    const/4 v4, 0x0

    .line 1594
    :goto_0
    return v4

    .line 1585
    :cond_1
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1587
    .local v1, "child":Landroid/view/View;
    const/4 v3, 0x0

    .line 1588
    .local v3, "scrollOffset":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/PagedView$LayoutParams;

    .line 1589
    .local v2, "lp":Lnet/oneplus/h2launcher/PagedView$LayoutParams;
    iget-boolean v4, v2, Lnet/oneplus/h2launcher/PagedView$LayoutParams;->isFullScreenPage:Z

    if-nez v4, :cond_2

    .line 1590
    iget-boolean v4, p0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPaddingRight()I

    move-result v3

    .line 1593
    :cond_2
    :goto_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/PagedView;->mPageScrolls:[I

    aget v4, v4, p1

    add-int/2addr v4, v3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportOffsetX()I

    move-result v5

    add-int v0, v4, v5

    .line 1594
    .local v0, "baselineX":I
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v4

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_0

    .line 1590
    .end local v0    # "baselineX":I
    :cond_3
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPaddingLeft()I

    move-result v3

    goto :goto_1
.end method

.method getNextPage()I
    .locals 2

    .prologue
    .line 443
    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method public getNormalChildHeight()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mNormalChildHeight:I

    return v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 447
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2231
    const/4 v2, -0x1

    .line 2232
    .local v2, "result":I
    if-eqz p1, :cond_1

    .line 2233
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 2234
    .local v3, "vp":Landroid/view/ViewParent;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v0

    .line 2235
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2236
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 2241
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vp":Landroid/view/ViewParent;
    :goto_1
    return v1

    .line 2235
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "vp":Landroid/view/ViewParent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vp":Landroid/view/ViewParent;
    :cond_1
    move v1, v2

    .line 2241
    goto :goto_1
.end method

.method getPageIndicator()Lnet/oneplus/h2launcher/PageIndicator;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    return-object v0
.end method

.method protected getPageIndicatorClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPageIndicatorMarker(I)Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;
    .locals 1
    .param p1, "pageIndex"    # I

    .prologue
    .line 410
    new-instance v0, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;-><init>()V

    return-object v0
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 12

    .prologue
    .line 2075
    const v7, 0x7fffffff

    .line 2076
    .local v7, "minDistanceFromScreenCenter":I
    const/4 v8, -0x1

    .line 2077
    .local v8, "minDistanceFromScreenCenterIndex":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollX()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 2078
    .local v9, "screenCenter":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v1

    .line 2079
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 2080
    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 2081
    .local v6, "layout":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 2082
    .local v2, "childWidth":I
    div-int/lit8 v4, v2, 0x2

    .line 2083
    .local v4, "halfChildWidth":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/PagedView;->getChildOffset(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int v0, v10, v4

    .line 2084
    .local v0, "childCenter":I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2085
    .local v3, "distanceFromScreenCenter":I
    if-ge v3, v7, :cond_0

    .line 2086
    move v7, v3

    .line 2087
    move v8, v5

    .line 2079
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2090
    .end local v0    # "childCenter":I
    .end local v2    # "childWidth":I
    .end local v3    # "distanceFromScreenCenter":I
    .end local v4    # "halfChildWidth":I
    .end local v6    # "layout":Landroid/view/View;
    :cond_1
    return v8
.end method

.method getPageNearestToPoint(F)I
    .locals 4
    .param p1, "x"    # F

    .prologue
    .line 2063
    const/4 v1, 0x0

    .line 2064
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2065
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 2071
    .end local v1    # "index":I
    :goto_1
    return v1

    .line 2068
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 2064
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2071
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1
.end method

.method public getPageSpacing()I
    .locals 1

    .prologue
    .line 1041
    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageSpacing:I

    return v0
.end method

.method getRestorePage()I
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mRestorePage:I

    return v0
.end method

.method public getScrollForPage(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1572
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageScrolls:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1573
    :cond_0
    const/4 v0, 0x0

    .line 1575
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageScrolls:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 9
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1547
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportWidth()I

    move-result v6

    div-int/lit8 v3, v6, 0x2

    .line 1549
    .local v3, "halfScreenSize":I
    invoke-virtual {p0, p3}, Lnet/oneplus/h2launcher/PagedView;->getScrollForPage(I)I

    move-result v6

    add-int/2addr v6, v3

    sub-int v2, p1, v6

    .line 1550
    .local v2, "delta":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v1

    .line 1554
    .local v1, "count":I
    add-int/lit8 v0, p3, 0x1

    .line 1555
    .local v0, "adjacentPage":I
    if-gez v2, :cond_0

    iget-boolean v6, p0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_1

    :cond_0
    if-lez v2, :cond_2

    iget-boolean v6, p0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_2

    .line 1556
    :cond_1
    add-int/lit8 v0, p3, -0x1

    .line 1559
    :cond_2
    if-ltz v0, :cond_3

    add-int/lit8 v6, v1, -0x1

    if-le v0, v6, :cond_4

    .line 1560
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lnet/oneplus/h2launcher/PagedView;->mPageSpacing:I

    add-int v5, v6, v7

    .line 1565
    .local v5, "totalDistance":I
    :goto_0
    int-to-float v6, v2

    int-to-float v7, v5

    mul-float/2addr v7, v8

    div-float v4, v6, v7

    .line 1566
    .local v4, "scrollProgress":F
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1567
    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1568
    return v4

    .line 1562
    .end local v4    # "scrollProgress":F
    .end local v5    # "totalDistance":I
    :cond_4
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->getScrollForPage(I)I

    move-result v6

    invoke-virtual {p0, p3}, Lnet/oneplus/h2launcher/PagedView;->getScrollForPage(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .restart local v5    # "totalDistance":I
    goto :goto_0
.end method

.method getViewportHeight()I
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method getViewportOffsetX()I
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportOffsetY()I
    .locals 2

    .prologue
    .line 403
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportWidth()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .locals 14
    .param p1, "range"    # [I

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 1128
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v4

    .line 1129
    .local v4, "pageCount":I
    aput v10, p1, v11

    .line 1130
    aput v10, p1, v12

    .line 1132
    if-lez v4, :cond_4

    .line 1133
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getLeft()I

    move-result v7

    neg-int v5, v7

    .line 1134
    .local v5, "visibleLeft":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportWidth()I

    move-result v7

    add-int v6, v5, v7

    .line 1135
    .local v6, "visibleRight":I
    const/4 v1, 0x0

    .line 1137
    .local v1, "curScreen":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v0

    .line 1138
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 1139
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1142
    .local v2, "currPage":Landroid/view/View;
    sget-object v7, Lnet/oneplus/h2launcher/PagedView;->sTmpRectF:Landroid/graphics/RectF;

    iput v13, v7, Landroid/graphics/RectF;->left:F

    .line 1143
    sget-object v7, Lnet/oneplus/h2launcher/PagedView;->sTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 1144
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    sget-object v8, Lnet/oneplus/h2launcher/PagedView;->sTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1145
    sget-object v7, Lnet/oneplus/h2launcher/PagedView;->sTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollX()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 1146
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    sget-object v8, Lnet/oneplus/h2launcher/PagedView;->sTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1148
    sget-object v7, Lnet/oneplus/h2launcher/PagedView;->sTmpRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    int-to-float v8, v6

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_0

    sget-object v7, Lnet/oneplus/h2launcher/PagedView;->sTmpRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    int-to-float v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 1149
    :cond_0
    aget v7, p1, v11

    if-ne v7, v10, :cond_3

    .line 1138
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1156
    :cond_2
    move v1, v3

    .line 1157
    aget v7, p1, v11

    if-gez v7, :cond_1

    .line 1158
    aput v1, p1, v11

    goto :goto_1

    .line 1162
    .end local v2    # "currPage":Landroid/view/View;
    :cond_3
    aput v1, p1, v12

    .line 1167
    .end local v0    # "count":I
    .end local v1    # "curScreen":I
    .end local v3    # "i":I
    .end local v5    # "visibleLeft":I
    .end local v6    # "visibleRight":I
    :goto_2
    return-void

    .line 1164
    :cond_4
    aput v10, p1, v11

    .line 1165
    aput v10, p1, v12

    goto :goto_2
.end method

.method protected hitsNextPage(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1373
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_2

    .line 1374
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportOffsetX()I

    move-result v2

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lnet/oneplus/h2launcher/PagedView;->mPageSpacing:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 1377
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1374
    goto :goto_0

    .line 1376
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportOffsetX()I

    move-result v2

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 1377
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lnet/oneplus/h2launcher/PagedView;->mPageSpacing:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1362
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_2

    .line 1363
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportOffsetX()I

    move-result v2

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 1364
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lnet/oneplus/h2launcher/PagedView;->mPageSpacing:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 1366
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1364
    goto :goto_0

    .line 1366
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportOffsetX()I

    move-result v2

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lnet/oneplus/h2launcher/PagedView;->mPageSpacing:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 455
    return p1
.end method

.method protected init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 271
    new-instance v1, Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/LauncherScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    .line 272
    new-instance v1, Lnet/oneplus/h2launcher/PagedView$ScrollInterpolator;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/PagedView$ScrollInterpolator;-><init>()V

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->setDefaultInterpolator(Landroid/view/animation/Interpolator;)V

    .line 273
    iput v3, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    .line 274
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/PagedView;->mCenterPagesVertically:Z

    .line 276
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 277
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchSlop:I

    .line 278
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/PagedView;->mMaximumVelocity:I

    .line 279
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lnet/oneplus/h2launcher/PagedView;->mDensity:F

    .line 281
    const/high16 v1, 0x43fa0000    # 500.0f

    iget v2, p0, Lnet/oneplus/h2launcher/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lnet/oneplus/h2launcher/PagedView;->mFlingThresholdVelocity:I

    .line 282
    const/high16 v1, 0x437a0000    # 250.0f

    iget v2, p0, Lnet/oneplus/h2launcher/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lnet/oneplus/h2launcher/PagedView;->mMinFlingVelocity:I

    .line 283
    const v1, 0x44bb8000    # 1500.0f

    iget v2, p0, Lnet/oneplus/h2launcher/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lnet/oneplus/h2launcher/PagedView;->mMinSnapVelocity:I

    .line 284
    invoke-virtual {p0, p0}, Lnet/oneplus/h2launcher/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 285
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/PagedView;->setWillNotDraw(Z)V

    .line 286
    return-void
.end method

.method public isPageMoving()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method isReordering(Z)Z
    .locals 3
    .param p1, "testTouchState"    # Z

    .prologue
    .line 2365
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/PagedView;->mIsReordering:Z

    .line 2366
    .local v0, "state":Z
    if-eqz p1, :cond_0

    .line 2367
    iget v1, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    .line 2369
    :cond_0
    return v0

    .line 2367
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected notifyPageSwitchListener()V
    .locals 3

    .prologue
    .line 538
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageSwitchListener:Lnet/oneplus/h2launcher/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageSwitchListener:Lnet/oneplus/h2launcher/PagedView$PageSwitchListener;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getNextPage()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lnet/oneplus/h2launcher/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 542
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/PagedView;->updatePageIndicator()V

    .line 543
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 299
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 302
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 303
    .local v4, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 304
    .local v0, "grandParent":Landroid/view/ViewGroup;
    iget-object v5, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    if-nez v5, :cond_2

    iget v5, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicatorViewId:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_2

    .line 305
    iget v5, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicatorViewId:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/PageIndicator;

    iput-object v5, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    .line 306
    iget-object v5, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    invoke-virtual {v5, v7}, Lnet/oneplus/h2launcher/PageIndicator;->removeAllMarkers(Z)V

    .line 308
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v3, "markers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 311
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->getPageIndicatorMarker(I)Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :cond_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    invoke-virtual {v5, v3, v7}, Lnet/oneplus/h2launcher/PageIndicator;->addMarkers(Ljava/util/ArrayList;Z)V

    .line 316
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPageIndicatorClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 317
    .local v2, "listener":Landroid/view/View$OnClickListener;
    if-eqz v2, :cond_1

    .line 318
    iget-object v5, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    invoke-virtual {v5, v2}, Lnet/oneplus/h2launcher/PageIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    :cond_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7}, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils;->startColorExtractionServiceIfNecessary(Landroid/content/Context;Z)V

    .line 323
    .end local v1    # "i":I
    .end local v2    # "listener":Landroid/view/View$OnClickListener;
    .end local v3    # "markers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;>;"
    :cond_2
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 1053
    iget-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->isReordering(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1054
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1055
    .local v0, "pageIndex":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    .line 1056
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->getPageIndicatorMarker(I)Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;

    move-result-object v2

    .line 1055
    invoke-virtual {v1, v0, v2, v3}, Lnet/oneplus/h2launcher/PageIndicator;->addMarker(ILnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;Z)V

    .line 1062
    .end local v0    # "pageIndex":I
    :cond_0
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/PagedView;->mForceScreenScrolled:Z

    .line 1063
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->updateFreescrollBounds()V

    .line 1064
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->invalidate()V

    .line 1065
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 1069
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/PagedView;->mForceScreenScrolled:Z

    .line 1070
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->updateFreescrollBounds()V

    .line 1071
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->invalidate()V

    .line 1072
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 335
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    .line 338
    return-void
.end method

.method public onEndReordering()V
    .locals 1

    .prologue
    .line 2321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/PagedView;->mIsReordering:Z

    .line 2322
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageReorderListener:Lnet/oneplus/h2launcher/PagedView$PageReorderListener;

    if-eqz v0, :cond_0

    .line 2323
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageReorderListener:Lnet/oneplus/h2launcher/PagedView$PageReorderListener;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/PagedView$PageReorderListener;->onEndReordering()V

    .line 2325
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v6, 0x9

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1989
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 1990
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 2015
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 1995
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 1996
    const/4 v2, 0x0

    .line 1997
    .local v2, "vscroll":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 2002
    .local v0, "hscroll":F
    :goto_1
    cmpl-float v4, v0, v5

    if-nez v4, :cond_1

    cmpl-float v4, v2, v5

    if-eqz v4, :cond_0

    .line 2003
    :cond_1
    iget-boolean v4, p0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_5

    cmpg-float v4, v0, v5

    if-ltz v4, :cond_2

    cmpg-float v4, v2, v5

    if-gez v4, :cond_3

    :cond_2
    move v1, v3

    .line 2005
    .local v1, "isForwardScroll":Z
    :cond_3
    :goto_2
    if-eqz v1, :cond_7

    .line 2006
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->scrollRight()V

    goto :goto_0

    .line 1999
    .end local v0    # "hscroll":F
    .end local v1    # "isForwardScroll":Z
    .end local v2    # "vscroll":F
    :cond_4
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    neg-float v2, v4

    .line 2000
    .restart local v2    # "vscroll":F
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "hscroll":F
    goto :goto_1

    .line 2003
    :cond_5
    cmpl-float v4, v0, v5

    if-gtz v4, :cond_6

    cmpl-float v4, v2, v5

    if-lez v4, :cond_3

    :cond_6
    move v1, v3

    goto :goto_2

    .line 2008
    .restart local v1    # "isForwardScroll":Z
    :cond_7
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->scrollLeft()V

    goto :goto_0

    .line 1990
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2471
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v0, 0x1

    .line 2438
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2439
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2440
    return-void

    .line 2439
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2409
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2410
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPageCount()I

    move-result v2

    if-le v2, v0, :cond_3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2411
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 2412
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2414
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 2415
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2417
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2422
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2423
    sget-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v0, :cond_2

    .line 2424
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 2426
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 2410
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 1394
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1397
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v8

    if-gtz v8, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1488
    :cond_0
    :goto_0
    return v2

    .line 1404
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1405
    .local v0, "action":I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_2

    iget v8, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    if-ne v8, v2, :cond_2

    .line 1407
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v7

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/DragLayer;->cancelSwipeUpDownGesture()V

    goto :goto_0

    .line 1411
    :cond_2
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 1484
    :cond_3
    :goto_1
    :pswitch_0
    iget v8, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    if-eqz v8, :cond_8

    .line 1485
    .local v2, "isInDragMode":Z
    :goto_2
    if-eqz v2, :cond_0

    .line 1486
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v7

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/DragLayer;->cancelSwipeUpDownGesture()V

    goto :goto_0

    .line 1417
    .end local v2    # "isInDragMode":Z
    :pswitch_1
    iget v8, p0, Lnet/oneplus/h2launcher/PagedView;->mActivePointerId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 1418
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1429
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1430
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 1432
    .local v6, "y":F
    iput v4, p0, Lnet/oneplus/h2launcher/PagedView;->mDownMotionX:F

    .line 1433
    iput v6, p0, Lnet/oneplus/h2launcher/PagedView;->mDownMotionY:F

    .line 1434
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    iput v8, p0, Lnet/oneplus/h2launcher/PagedView;->mDownScrollX:F

    .line 1435
    iput v4, p0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionX:F

    .line 1436
    iput v6, p0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionY:F

    .line 1437
    invoke-direct {p0, p0, v4, v6}, Lnet/oneplus/h2launcher/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v3

    .line 1438
    .local v3, "p":[F
    aget v8, v3, v7

    iput v8, p0, Lnet/oneplus/h2launcher/PagedView;->mParentDownMotionX:F

    .line 1439
    aget v8, v3, v2

    iput v8, p0, Lnet/oneplus/h2launcher/PagedView;->mParentDownMotionY:F

    .line 1440
    iput v9, p0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionXRemainder:F

    .line 1441
    iput v9, p0, Lnet/oneplus/h2launcher/PagedView;->mTotalMotionX:F

    .line 1442
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lnet/oneplus/h2launcher/PagedView;->mActivePointerId:I

    .line 1449
    iget-object v8, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/LauncherScroller;->getFinalX()I

    move-result v8

    iget-object v9, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/LauncherScroller;->getCurrX()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 1450
    .local v5, "xDist":I
    iget-object v8, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/LauncherScroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_4

    iget v8, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchSlop:I

    div-int/lit8 v8, v8, 0x3

    if-ge v5, v8, :cond_5

    :cond_4
    move v1, v2

    .line 1452
    .local v1, "finishedScrolling":Z
    :goto_3
    if-eqz v1, :cond_6

    .line 1453
    iput v7, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    .line 1454
    iget-object v8, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/LauncherScroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lnet/oneplus/h2launcher/PagedView;->mFreeScroll:Z

    if-nez v8, :cond_3

    .line 1455
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getNextPage()I

    move-result v8

    invoke-virtual {p0, v8}, Lnet/oneplus/h2launcher/PagedView;->setCurrentPage(I)V

    .line 1456
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->pageEndMoving()V

    goto/16 :goto_1

    .end local v1    # "finishedScrolling":Z
    :cond_5
    move v1, v7

    .line 1450
    goto :goto_3

    .line 1459
    .restart local v1    # "finishedScrolling":Z
    :cond_6
    iget v8, p0, Lnet/oneplus/h2launcher/PagedView;->mDownMotionX:F

    float-to-int v8, v8

    iget v9, p0, Lnet/oneplus/h2launcher/PagedView;->mDownMotionY:F

    float-to-int v9, v9

    invoke-direct {p0, v8, v9}, Lnet/oneplus/h2launcher/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1460
    iput v2, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    goto/16 :goto_1

    .line 1462
    :cond_7
    iput v7, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    goto/16 :goto_1

    .line 1471
    .end local v1    # "finishedScrolling":Z
    .end local v3    # "p":[F
    .end local v4    # "x":F
    .end local v5    # "xDist":I
    .end local v6    # "y":F
    :pswitch_3
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 1475
    :pswitch_4
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1476
    invoke-direct {p0}, Lnet/oneplus/h2launcher/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    :cond_8
    move v2, v7

    .line 1484
    goto/16 :goto_2

    .line 1411
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 904
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v21

    if-nez v21, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v3

    .line 910
    .local v3, "childCount":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportOffsetX()I

    move-result v14

    .line 911
    .local v14, "offsetX":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportOffsetY()I

    move-result v15

    .line 914
    .local v15, "offsetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 916
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    add-int/lit8 v18, v3, -0x1

    .line 917
    .local v18, "startIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    const/4 v9, -0x1

    .line 918
    .local v9, "endIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    const/4 v8, -0x1

    .line 920
    .local v8, "delta":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getPaddingTop()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getPaddingBottom()I

    move-result v22

    add-int v20, v21, v22

    .line 922
    .local v20, "verticalPadding":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lnet/oneplus/h2launcher/PagedView$LayoutParams;

    .line 925
    .local v11, "lp":Lnet/oneplus/h2launcher/PagedView$LayoutParams;
    iget-boolean v0, v11, Lnet/oneplus/h2launcher/PagedView$LayoutParams;->isFullScreenPage:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    const/16 v21, 0x0

    :goto_4
    add-int v5, v14, v21

    .line 926
    .local v5, "childLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mPageScrolls:[I

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/PagedView;->mChildCountOnLastLayout:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v3, v0, :cond_3

    .line 927
    :cond_2
    new-array v0, v3, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/PagedView;->mPageScrolls:[I

    .line 930
    :cond_3
    move/from16 v10, v18

    .local v10, "i":I
    :goto_5
    if-eq v10, v9, :cond_f

    .line 931
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 932
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 933
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .end local v11    # "lp":Lnet/oneplus/h2launcher/PagedView$LayoutParams;
    check-cast v11, Lnet/oneplus/h2launcher/PagedView$LayoutParams;

    .line 935
    .restart local v11    # "lp":Lnet/oneplus/h2launcher/PagedView$LayoutParams;
    iget-boolean v0, v11, Lnet/oneplus/h2launcher/PagedView$LayoutParams;->isFullScreenPage:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 936
    move v6, v15

    .line 945
    .local v6, "childTop":I
    :cond_4
    :goto_6
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 946
    .local v7, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 950
    .local v4, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v21, v21, v5

    add-int v22, v6, v4

    .line 949
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v5, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 952
    iget-boolean v0, v11, Lnet/oneplus/h2launcher/PagedView$LayoutParams;->isFullScreenPage:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    const/16 v17, 0x0

    .line 953
    .local v17, "scrollOffsetLeft":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mPageScrolls:[I

    move-object/from16 v21, v0

    sub-int v22, v5, v17

    sub-int v22, v22, v14

    aput v22, v21, v10

    .line 955
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/PagedView;->mPageSpacing:I

    move/from16 v16, v0

    .line 956
    .local v16, "pageGap":I
    add-int v12, v10, v8

    .line 957
    .local v12, "next":I
    if-eq v12, v9, :cond_d

    .line 958
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lnet/oneplus/h2launcher/PagedView$LayoutParams;

    .line 965
    .local v13, "nextLp":Lnet/oneplus/h2launcher/PagedView$LayoutParams;
    :goto_8
    iget-boolean v0, v11, Lnet/oneplus/h2launcher/PagedView$LayoutParams;->isFullScreenPage:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 966
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getPaddingLeft()I

    move-result v16

    .line 971
    :cond_5
    :goto_9
    add-int v21, v7, v16

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getChildGap()I

    move-result v22

    add-int v21, v21, v22

    add-int v5, v5, v21

    .line 930
    .end local v4    # "childHeight":I
    .end local v6    # "childTop":I
    .end local v7    # "childWidth":I
    .end local v12    # "next":I
    .end local v13    # "nextLp":Lnet/oneplus/h2launcher/PagedView$LayoutParams;
    .end local v16    # "pageGap":I
    .end local v17    # "scrollOffsetLeft":I
    :cond_6
    add-int/2addr v10, v8

    goto :goto_5

    .line 916
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "childLeft":I
    .end local v8    # "delta":I
    .end local v9    # "endIndex":I
    .end local v10    # "i":I
    .end local v11    # "lp":Lnet/oneplus/h2launcher/PagedView$LayoutParams;
    .end local v18    # "startIndex":I
    .end local v20    # "verticalPadding":I
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_1

    .restart local v18    # "startIndex":I
    :cond_8
    move v9, v3

    .line 917
    goto/16 :goto_2

    .line 918
    .restart local v9    # "endIndex":I
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 925
    .restart local v8    # "delta":I
    .restart local v11    # "lp":Lnet/oneplus/h2launcher/PagedView$LayoutParams;
    .restart local v20    # "verticalPadding":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getPaddingLeft()I

    move-result v21

    goto/16 :goto_4

    .line 938
    .restart local v2    # "child":Landroid/view/View;
    .restart local v5    # "childLeft":I
    .restart local v10    # "i":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getPaddingTop()I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v6, v21, v22

    .line 939
    .restart local v6    # "childTop":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/PagedView;->mCenterPagesVertically:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 940
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v21, v21, v20

    .line 941
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    add-int v6, v6, v21

    goto/16 :goto_6

    .line 952
    .restart local v4    # "childHeight":I
    .restart local v7    # "childWidth":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getPaddingLeft()I

    move-result v17

    goto/16 :goto_7

    .line 960
    .restart local v12    # "next":I
    .restart local v16    # "pageGap":I
    .restart local v17    # "scrollOffsetLeft":I
    :cond_d
    const/4 v13, 0x0

    .restart local v13    # "nextLp":Lnet/oneplus/h2launcher/PagedView$LayoutParams;
    goto :goto_8

    .line 967
    :cond_e
    if-eqz v13, :cond_5

    iget-boolean v0, v13, Lnet/oneplus/h2launcher/PagedView$LayoutParams;->isFullScreenPage:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 968
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getPaddingRight()I

    move-result v16

    goto :goto_9

    .line 975
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childHeight":I
    .end local v6    # "childTop":I
    .end local v7    # "childWidth":I
    .end local v12    # "next":I
    .end local v13    # "nextLp":Lnet/oneplus/h2launcher/PagedView$LayoutParams;
    .end local v16    # "pageGap":I
    .end local v17    # "scrollOffsetLeft":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v19

    .line 978
    .local v19, "transition":Landroid/animation/LayoutTransition;
    if-eqz v19, :cond_12

    invoke-virtual/range {v19 .. v19}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v21

    if-eqz v21, :cond_12

    .line 979
    new-instance v21, Lnet/oneplus/h2launcher/PagedView$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/PagedView$2;-><init>(Lnet/oneplus/h2launcher/PagedView;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 1001
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/PagedView;->mFirstLayout:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    move/from16 v21, v0

    if-ltz v21, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v0, v3, :cond_10

    .line 1002
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->updateCurrentPageScroll()V

    .line 1003
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/PagedView;->mFirstLayout:Z

    .line 1006
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/LauncherScroller;->isFinished()Z

    move-result v21

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/PagedView;->mChildCountOnLastLayout:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v3, :cond_11

    .line 1007
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/PagedView;->mRestorePage:I

    move/from16 v21, v0

    const/16 v22, -0x3e9

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_13

    .line 1008
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/PagedView;->mRestorePage:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/PagedView;->setCurrentPage(I)V

    .line 1009
    const/16 v21, -0x3e9

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/PagedView;->mRestorePage:I

    .line 1014
    :cond_11
    :goto_b
    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/PagedView;->mChildCountOnLastLayout:I

    .line 1016
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/PagedView;->isReordering(Z)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1017
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->updateDragViewTranslationDuringDrag()V

    goto/16 :goto_0

    .line 997
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->updateMaxScrollX()V

    .line 998
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->updateFreescrollBounds()V

    goto :goto_a

    .line 1011
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getNextPage()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/PagedView;->setCurrentPage(I)V

    goto :goto_b
.end method

.method protected onMeasure(II)V
    .locals 31
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 772
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v28

    if-nez v28, :cond_0

    .line 773
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 893
    :goto_0
    return-void

    .line 779
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v26

    .line 780
    .local v26, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v27

    .line 781
    .local v27, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 782
    .local v13, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 792
    .local v14, "heightSize":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v14}, Lnet/oneplus/h2launcher/PagedView;->rescheduleMeasure(II)Z

    move-result v22

    .line 793
    .local v22, "reschedule":Z
    if-eqz v22, :cond_1

    .line 794
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 795
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v14}, Lnet/oneplus/h2launcher/PagedView;->onRescheduleMeasure(II)V

    goto :goto_0

    .line 801
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 802
    .local v12, "dm":Landroid/util/DisplayMetrics;
    iget v0, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    add-int v28, v28, v29

    iget v0, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    add-int v29, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 805
    .local v18, "maxSize":I
    const/high16 v28, 0x40000000    # 2.0f

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v20, v0

    .line 806
    .local v20, "parentWidthSize":I
    const/high16 v28, 0x40000000    # 2.0f

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v19, v0

    .line 808
    .local v19, "parentHeightSize":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/PagedView;->mUseMinScale:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3

    .line 809
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/PagedView;->mMinScale:F

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v24, v0

    .line 810
    .local v24, "scaledWidthSize":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/PagedView;->mMinScale:F

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v23, v0

    .line 815
    .local v23, "scaledHeightSize":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 817
    if-eqz v26, :cond_2

    if-nez v13, :cond_4

    .line 818
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto/16 :goto_0

    .line 812
    .end local v23    # "scaledHeightSize":I
    .end local v24    # "scaledWidthSize":I
    :cond_3
    move/from16 v24, v27

    .line 813
    .restart local v24    # "scaledWidthSize":I
    move/from16 v23, v14

    .restart local v23    # "scaledHeightSize":I
    goto :goto_1

    .line 823
    :cond_4
    if-lez v27, :cond_5

    if-gtz v14, :cond_6

    .line 824
    :cond_5
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto/16 :goto_0

    .line 833
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getPaddingTop()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getPaddingBottom()I

    move-result v29

    add-int v25, v28, v29

    .line 834
    .local v25, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getPaddingLeft()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getPaddingRight()I

    move-result v29

    add-int v15, v28, v29

    .line 836
    .local v15, "horizontalPadding":I
    const/16 v21, 0x0

    .line 844
    .local v21, "referenceChildWidth":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v5

    .line 845
    .local v5, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v5, :cond_c

    .line 847
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 848
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    .line 849
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lnet/oneplus/h2launcher/PagedView$LayoutParams;

    .line 856
    .local v17, "lp":Lnet/oneplus/h2launcher/PagedView$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/PagedView$LayoutParams;->isFullScreenPage:Z

    move/from16 v28, v0

    if-nez v28, :cond_b

    .line 857
    move-object/from16 v0, v17

    iget v0, v0, Lnet/oneplus/h2launcher/PagedView$LayoutParams;->width:I

    move/from16 v28, v0

    const/16 v29, -0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 858
    const/high16 v11, -0x80000000

    .line 863
    .local v11, "childWidthMode":I
    :goto_3
    move-object/from16 v0, v17

    iget v0, v0, Lnet/oneplus/h2launcher/PagedView$LayoutParams;->height:I

    move/from16 v28, v0

    const/16 v29, -0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 864
    const/high16 v8, -0x80000000

    .line 869
    .local v8, "childHeightMode":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportWidth()I

    move-result v28

    sub-int v28, v28, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v9, v28, v29

    .line 871
    .local v9, "childWidth":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportHeight()I

    move-result v28

    sub-int v28, v28, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v6, v28, v29

    .line 873
    .local v6, "childHeight":I
    move-object/from16 v0, p0

    iput v6, v0, Lnet/oneplus/h2launcher/PagedView;->mNormalChildHeight:I

    .line 881
    :goto_5
    if-nez v21, :cond_7

    .line 882
    move/from16 v21, v9

    .line 886
    :cond_7
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 888
    .local v10, "childWidthMeasureSpec":I
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 889
    .local v7, "childHeightMeasureSpec":I
    invoke-virtual {v4, v10, v7}, Landroid/view/View;->measure(II)V

    .line 845
    .end local v6    # "childHeight":I
    .end local v7    # "childHeightMeasureSpec":I
    .end local v8    # "childHeightMode":I
    .end local v9    # "childWidth":I
    .end local v10    # "childWidthMeasureSpec":I
    .end local v11    # "childWidthMode":I
    .end local v17    # "lp":Lnet/oneplus/h2launcher/PagedView$LayoutParams;
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 860
    .restart local v17    # "lp":Lnet/oneplus/h2launcher/PagedView$LayoutParams;
    :cond_9
    const/high16 v11, 0x40000000    # 2.0f

    .restart local v11    # "childWidthMode":I
    goto :goto_3

    .line 866
    :cond_a
    const/high16 v8, 0x40000000    # 2.0f

    .restart local v8    # "childHeightMode":I
    goto :goto_4

    .line 875
    .end local v8    # "childHeightMode":I
    .end local v11    # "childWidthMode":I
    :cond_b
    const/high16 v11, 0x40000000    # 2.0f

    .line 876
    .restart local v11    # "childWidthMode":I
    const/high16 v8, 0x40000000    # 2.0f

    .line 878
    .restart local v8    # "childHeightMode":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportWidth()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v9, v28, v29

    .line 879
    .restart local v9    # "childWidth":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportHeight()I

    move-result v6

    .restart local v6    # "childHeight":I
    goto :goto_5

    .line 892
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "childHeight":I
    .end local v8    # "childHeightMode":I
    .end local v9    # "childWidth":I
    .end local v11    # "childWidthMode":I
    .end local v17    # "lp":Lnet/oneplus/h2launcher/PagedView$LayoutParams;
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/PagedView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 0

    .prologue
    .line 574
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/PagedView;->mWasInOverscroll:Z

    .line 579
    return-void
.end method

.method onPostReorderingAnimationCompleted()V
    .locals 1

    .prologue
    .line 2312
    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2313
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v0, :cond_0

    .line 2315
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2316
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2318
    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1270
    iget v2, p0, Lnet/oneplus/h2launcher/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1271
    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mNextPage:I

    .line 1275
    .local v0, "focusablePage":I
    :goto_0
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 1276
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1277
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 1279
    :goto_1
    return v2

    .line 1273
    .end local v0    # "focusablePage":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    .restart local v0    # "focusablePage":I
    goto :goto_0

    .line 1279
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onRescheduleMeasure(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 900
    return-void
.end method

.method protected onScrollInteraction()V
    .locals 0

    .prologue
    .line 1978
    return-void
.end method

.method protected onScrollInteractionBegin()V
    .locals 0

    .prologue
    .line 1975
    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 0

    .prologue
    .line 1981
    return-void
.end method

.method public onStartReordering()V
    .locals 1

    .prologue
    .line 2302
    const/4 v0, 0x4

    iput v0, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    .line 2303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/PagedView;->mIsReordering:Z

    .line 2307
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->invalidate()V

    .line 2308
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1677
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/PagedView;->mDisableScrolling:Z

    if-eqz v2, :cond_0

    .line 1678
    const-string v2, "PagedView"

    const-string v4, "onTouchEvent# do not dispatch the touch event when we didn\'t allow to scroll."

    invoke-static {v2, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    const/4 v2, 0x1

    .line 1953
    :goto_0
    return v2

    .line 1681
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1684
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1686
    :cond_1
    invoke-direct/range {p0 .. p1}, Lnet/oneplus/h2launcher/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1688
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 1690
    .local v11, "action":I
    and-int/lit16 v2, v11, 0xff

    packed-switch v2, :pswitch_data_0

    .line 1953
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 1696
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1697
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/PagedView;->abortScrollerAnimation(Z)V

    .line 1701
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mDownMotionX:F

    .line 1702
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionY:F

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mDownMotionY:F

    .line 1703
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mDownScrollX:F

    .line 1704
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionY:F

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v22

    .line 1705
    .local v22, "p":[F
    const/4 v2, 0x0

    aget v2, v22, v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mParentDownMotionX:F

    .line 1706
    const/4 v2, 0x1

    aget v2, v22, v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mParentDownMotionY:F

    .line 1707
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionXRemainder:F

    .line 1708
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTotalMotionX:F

    .line 1709
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mActivePointerId:I

    .line 1711
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 1712
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->onScrollInteractionBegin()V

    .line 1713
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->pageBeginMoving()V

    goto :goto_1

    .line 1718
    .end local v22    # "p":[F
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    .line 1720
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v25

    .line 1722
    .local v25, "pointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_4

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1724
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v31

    .line 1725
    .local v31, "x":F
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v2, v4

    sub-float v13, v2, v31

    .line 1727
    .local v13, "deltaX":F
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTotalMotionX:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTotalMotionX:F

    .line 1732
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_5

    .line 1733
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTouchX:F

    add-float/2addr v2, v13

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTouchX:F

    .line 1734
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    long-to-float v2, v6

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mSmoothingTime:F

    .line 1735
    float-to-int v2, v13

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lnet/oneplus/h2launcher/PagedView;->scrollBy(II)V

    .line 1736
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/PagedView;->mLastMotionX:F

    .line 1737
    float-to-int v2, v13

    int-to-float v2, v2

    sub-float v2, v13, v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_1

    .line 1739
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 1741
    .end local v13    # "deltaX":F
    .end local v25    # "pointerIndex":I
    .end local v31    # "x":F
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_8

    .line 1743
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionX:F

    .line 1744
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionY:F

    .line 1748
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionY:F

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v26

    .line 1749
    .local v26, "pt":[F
    const/4 v2, 0x0

    aget v2, v26, v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mParentDownMotionX:F

    .line 1750
    const/4 v2, 0x1

    aget v2, v26, v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mParentDownMotionY:F

    .line 1751
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1754
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v14

    .line 1761
    .local v14, "dragViewIndex":I
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getNearestHoverOverPageIndex()I

    move-result v23

    .line 1762
    .local v23, "pageUnderPointIndex":I
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getMinPageUnderPointIndex()I

    move-result v20

    .line 1763
    .local v20, "minPageUnderPointIndex":I
    move/from16 v0, v23

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    .line 1764
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    move/from16 v0, v23

    if-eq v0, v2, :cond_7

    .line 1765
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    const/4 v4, 0x0

    const/4 v6, 0x0

    aput v6, v2, v4

    .line 1766
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getPageCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aput v6, v2, v4

    .line 1767
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/PagedView;->getFreeScrollPageRange([I)V

    .line 1768
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    move/from16 v0, v23

    if-gt v2, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    move/from16 v0, v23

    if-gt v0, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mSidePageHoverIndex:I

    move/from16 v0, v23

    if-eq v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    .line 1770
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1771
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/PagedView;->mSidePageHoverIndex:I

    .line 1772
    new-instance v2, Lnet/oneplus/h2launcher/PagedView$3;

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v2, v0, v1, v14}, Lnet/oneplus/h2launcher/PagedView$3;-><init>(Lnet/oneplus/h2launcher/PagedView;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/oneplus/h2launcher/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1818
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    sget v4, Lnet/oneplus/h2launcher/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    int-to-long v6, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lnet/oneplus/h2launcher/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1821
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1822
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_1

    .line 1825
    .end local v14    # "dragViewIndex":I
    .end local v20    # "minPageUnderPointIndex":I
    .end local v23    # "pageUnderPointIndex":I
    .end local v26    # "pt":[F
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lnet/oneplus/h2launcher/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1830
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1e

    .line 1831
    move-object/from16 v0, p0

    iget v12, v0, Lnet/oneplus/h2launcher/PagedView;->mActivePointerId:I

    .line 1832
    .local v12, "activePointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v25

    .line 1833
    .restart local v25    # "pointerIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    .line 1834
    .restart local v31    # "x":F
    const/4 v2, -0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    move/from16 v0, v25

    if-le v2, v0, :cond_9

    .line 1835
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v31

    .line 1838
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    .line 1839
    .local v29, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/PagedView;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1840
    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v30, v0

    .line 1842
    .local v30, "velocityX":I
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mDownMotionX:F

    sub-float v2, v31, v2

    float-to-int v13, v2

    .line 1843
    .local v13, "deltaX":I
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1844
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 1845
    .local v24, "pageWidth":I
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v24

    int-to-float v4, v0

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v6

    cmpl-float v2, v2, v4

    if-lez v2, :cond_e

    const/16 v18, 0x1

    .line 1848
    .local v18, "isSignificantMove":Z
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTotalMotionX:F

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v4, v6

    sub-float v4, v4, v31

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTotalMotionX:F

    .line 1850
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTotalMotionX:F

    const/high16 v4, 0x41c80000    # 25.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_f

    .line 1851
    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/PagedView;->mFlingThresholdVelocity:I

    if-le v2, v4, :cond_f

    const/16 v17, 0x1

    .line 1852
    .local v17, "isFling":Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/PagedView;->mFreeScroll:Z

    if-nez v2, :cond_1c

    .line 1857
    const/16 v27, 0x0

    .line 1858
    .local v27, "returnToOriginalPage":Z
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v24

    int-to-float v4, v0

    const v6, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v4, v6

    cmpl-float v2, v2, v4

    if-lez v2, :cond_a

    move/from16 v0, v30

    int-to-float v2, v0

    .line 1859
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v4, v13

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_a

    if-eqz v17, :cond_a

    .line 1860
    const/16 v27, 0x1

    .line 1868
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_11

    if-lez v13, :cond_10

    const/16 v16, 0x1

    .line 1869
    .local v16, "isDeltaXLeft":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_14

    if-lez v30, :cond_13

    const/16 v19, 0x1

    .line 1870
    .local v19, "isVelocityXLeft":Z
    :goto_5
    if-eqz v18, :cond_b

    if-nez v16, :cond_b

    if-eqz v17, :cond_c

    :cond_b
    if-eqz v17, :cond_17

    if-nez v19, :cond_17

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    if-lez v2, :cond_17

    .line 1872
    if-eqz v27, :cond_16

    move-object/from16 v0, p0

    iget v15, v0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    .line 1873
    .local v15, "finalPage":I
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v1}, Lnet/oneplus/h2launcher/PagedView;->snapToPageWithVelocity(II)V

    .line 1896
    .end local v15    # "finalPage":I
    .end local v16    # "isDeltaXLeft":Z
    .end local v19    # "isVelocityXLeft":Z
    .end local v27    # "returnToOriginalPage":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->onScrollInteractionEnd()V

    .line 1935
    .end local v12    # "activePointerId":I
    .end local v13    # "deltaX":I
    .end local v17    # "isFling":Z
    .end local v18    # "isSignificantMove":Z
    .end local v24    # "pageWidth":I
    .end local v25    # "pointerIndex":I
    .end local v29    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v30    # "velocityX":I
    .end local v31    # "x":F
    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1937
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 1845
    .restart local v12    # "activePointerId":I
    .restart local v13    # "deltaX":I
    .restart local v24    # "pageWidth":I
    .restart local v25    # "pointerIndex":I
    .restart local v29    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v30    # "velocityX":I
    .restart local v31    # "x":F
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 1851
    .restart local v18    # "isSignificantMove":Z
    :cond_f
    const/16 v17, 0x0

    goto :goto_3

    .line 1868
    .restart local v17    # "isFling":Z
    .restart local v27    # "returnToOriginalPage":Z
    :cond_10
    const/16 v16, 0x0

    goto :goto_4

    :cond_11
    if-gez v13, :cond_12

    const/16 v16, 0x1

    goto :goto_4

    :cond_12
    const/16 v16, 0x0

    goto :goto_4

    .line 1869
    .restart local v16    # "isDeltaXLeft":Z
    :cond_13
    const/16 v19, 0x0

    goto :goto_5

    :cond_14
    if-gez v30, :cond_15

    const/16 v19, 0x1

    goto :goto_5

    :cond_15
    const/16 v19, 0x0

    goto :goto_5

    .line 1872
    .restart local v19    # "isVelocityXLeft":Z
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    add-int/lit8 v15, v2, -0x1

    goto :goto_6

    .line 1874
    :cond_17
    if-eqz v18, :cond_18

    if-eqz v16, :cond_18

    if-eqz v17, :cond_19

    :cond_18
    if-eqz v17, :cond_1b

    if-eqz v19, :cond_1b

    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    .line 1876
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1b

    .line 1877
    if-eqz v27, :cond_1a

    move-object/from16 v0, p0

    iget v15, v0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    .line 1878
    .restart local v15    # "finalPage":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v1}, Lnet/oneplus/h2launcher/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_7

    .line 1877
    .end local v15    # "finalPage":I
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    add-int/lit8 v15, v2, 0x1

    goto :goto_9

    .line 1880
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->snapToDestination()V

    goto :goto_7

    .line 1883
    .end local v16    # "isDeltaXLeft":Z
    .end local v19    # "isVelocityXLeft":Z
    .end local v27    # "returnToOriginalPage":Z
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1884
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/PagedView;->abortScrollerAnimation(Z)V

    .line 1887
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getScaleX()F

    move-result v28

    .line 1888
    .local v28, "scaleX":F
    move/from16 v0, v30

    neg-int v2, v0

    int-to-float v2, v2

    mul-float v2, v2, v28

    float-to-int v5, v2

    .line 1889
    .local v5, "vX":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v28

    float-to-int v3, v2

    .line 1891
    .local v3, "initialScrollX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Lnet/oneplus/h2launcher/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1892
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    .line 1893
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollY()I

    move-result v4

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1892
    invoke-virtual/range {v2 .. v10}, Lnet/oneplus/h2launcher/LauncherScroller;->fling(IIIIIIII)V

    .line 1894
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->invalidate()V

    goto/16 :goto_7

    .line 1897
    .end local v3    # "initialScrollX":I
    .end local v5    # "vX":I
    .end local v12    # "activePointerId":I
    .end local v13    # "deltaX":I
    .end local v17    # "isFling":Z
    .end local v18    # "isSignificantMove":Z
    .end local v24    # "pageWidth":I
    .end local v25    # "pointerIndex":I
    .end local v28    # "scaleX":F
    .end local v29    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v30    # "velocityX":I
    .end local v31    # "x":F
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_20

    .line 1901
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 1902
    .local v21, "nextPage":I
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    move/from16 v0, v21

    if-eq v0, v2, :cond_1f

    .line 1903
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(I)V

    goto/16 :goto_8

    .line 1905
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->snapToDestination()V

    goto/16 :goto_8

    .line 1907
    .end local v21    # "nextPage":I
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_22

    .line 1911
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 1912
    .restart local v21    # "nextPage":I
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    move/from16 v0, v21

    if-eq v0, v2, :cond_21

    .line 1913
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(I)V

    goto/16 :goto_8

    .line 1915
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->snapToDestination()V

    goto/16 :goto_8

    .line 1917
    .end local v21    # "nextPage":I
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_23

    .line 1919
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionX:F

    .line 1920
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionY:F

    .line 1924
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionY:F

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v26

    .line 1925
    .restart local v26    # "pt":[F
    const/4 v2, 0x0

    aget v2, v26, v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mParentDownMotionX:F

    .line 1926
    const/4 v2, 0x1

    aget v2, v26, v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/PagedView;->mParentDownMotionY:F

    .line 1927
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->updateDragViewTranslationDuringDrag()V

    goto/16 :goto_8

    .line 1929
    .end local v26    # "pt":[F
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/PagedView;->mCancelTap:Z

    if-nez v2, :cond_d

    .line 1930
    invoke-virtual/range {p0 .. p1}, Lnet/oneplus/h2launcher/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    .line 1941
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_24

    .line 1942
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->snapToDestination()V

    .line 1944
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 1948
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lnet/oneplus/h2launcher/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1949
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1690
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1984
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/Launcher;->onClick(Landroid/view/View;)V

    .line 1985
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 1612
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->dampedOverScroll(F)V

    .line 1613
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/PagedView;->mIsPageMoving:Z

    .line 557
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->onPageBeginMoving()V

    .line 559
    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/PagedView;->mIsPageMoving:Z

    .line 564
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->onPageEndMoving()V

    .line 566
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 2444
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2461
    :goto_0
    return v0

    .line 2447
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2461
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2449
    :sswitch_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 2450
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->scrollRight()V

    goto :goto_0

    .line 2455
    :sswitch_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 2456
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->scrollLeft()V

    goto :goto_0

    .line 2447
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 2246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/PagedView;->mCancelTap:Z

    .line 2247
    invoke-super {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public removeAllViewsInLayout()V
    .locals 2

    .prologue
    .line 1107
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageIndicator:Lnet/oneplus/h2launcher/PageIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/PageIndicator;->removeAllMarkers(Z)V

    .line 1111
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1112
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1086
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->removeMarkerForView(I)V

    .line 1087
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1088
    return-void
.end method

.method public removeViewAt(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1100
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->removeMarkerForView(I)V

    .line 1101
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1102
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1093
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->removeMarkerForView(I)V

    .line 1094
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1095
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 2054
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2055
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->indexToPage(I)I

    move-result v0

    .line 2056
    .local v0, "page":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2057
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(I)V

    .line 2059
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1259
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->indexToPage(I)I

    move-result v0

    .line 1260
    .local v0, "page":I
    iget v1, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1261
    :cond_0
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(I)V

    .line 1262
    const/4 v1, 0x1

    .line 1264
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1349
    if-eqz p1, :cond_0

    .line 1352
    iget v1, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1353
    .local v0, "currentPage":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1355
    .end local v0    # "currentPage":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1356
    return-void
.end method

.method protected rescheduleMeasure(II)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 896
    const/4 v0, 0x0

    return v0
.end method

.method protected resetTouchState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1962
    invoke-direct {p0}, Lnet/oneplus/h2launcher/PagedView;->releaseVelocityTracker()V

    .line 1963
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->endReordering()V

    .line 1964
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/PagedView;->mCancelTap:Z

    .line 1965
    iput v0, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    .line 1966
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/PagedView;->mActivePointerId:I

    .line 1967
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mEdgeGlowLeft:Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->onRelease()V

    .line 1968
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mEdgeGlowRight:Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->onRelease()V

    .line 1969
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 0
    .param p1, "screenCenter"    # I

    .prologue
    .line 1047
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 598
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/PagedView;->scrollTo(II)V

    .line 599
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 2223
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getNextPage()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(I)V

    .line 2224
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 2227
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(I)V

    .line 2228
    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 603
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->onScrollInteraction()V

    .line 607
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/PagedView;->mFreeScroll:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lnet/oneplus/h2launcher/PagedView;->mEnableShelfScroll:Z

    if-nez v5, :cond_3

    .line 610
    :cond_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/LauncherScroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, p0, Lnet/oneplus/h2launcher/PagedView;->mFreeScrollMaxScrollX:I

    if-gt p1, v5, :cond_1

    iget v5, p0, Lnet/oneplus/h2launcher/PagedView;->mFreeScrollMinScrollX:I

    if-ge p1, v5, :cond_2

    .line 612
    :cond_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/PagedView;->forceFinishScroller()V

    .line 615
    :cond_2
    iget v5, p0, Lnet/oneplus/h2launcher/PagedView;->mFreeScrollMaxScrollX:I

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 616
    iget v5, p0, Lnet/oneplus/h2launcher/PagedView;->mFreeScrollMinScrollX:I

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 619
    :cond_3
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lnet/oneplus/h2launcher/PagedView;->mMaxScrollX:I

    if-le p1, v5, :cond_6

    move v1, v3

    .line 620
    .local v1, "isXBeforeFirstPage":Z
    :goto_0
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_a

    if-gez p1, :cond_9

    move v0, v3

    .line 621
    .local v0, "isXAfterLastPage":Z
    :goto_1
    if-eqz v1, :cond_e

    .line 622
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_c

    iget v5, p0, Lnet/oneplus/h2launcher/PagedView;->mMaxScrollX:I

    :goto_2
    invoke-super {p0, v5, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 623
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/PagedView;->mAllowOverScroll:Z

    if-eqz v5, :cond_4

    .line 624
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/PagedView;->mWasInOverscroll:Z

    .line 625
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_d

    .line 626
    iget v5, p0, Lnet/oneplus/h2launcher/PagedView;->mMaxScrollX:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/PagedView;->overScroll(F)V

    .line 649
    :cond_4
    :goto_3
    int-to-float v5, p1

    iput v5, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchX:F

    .line 650
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    long-to-float v5, v6

    const v6, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v5, v6

    iput v5, p0, Lnet/oneplus/h2launcher/PagedView;->mSmoothingTime:F

    .line 653
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/PagedView;->isReordering(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 654
    iget v5, p0, Lnet/oneplus/h2launcher/PagedView;->mParentDownMotionX:F

    iget v6, p0, Lnet/oneplus/h2launcher/PagedView;->mParentDownMotionY:F

    invoke-direct {p0, p0, v5, v6}, Lnet/oneplus/h2launcher/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v2

    .line 655
    .local v2, "p":[F
    aget v4, v2, v4

    iput v4, p0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionX:F

    .line 656
    aget v3, v2, v3

    iput v3, p0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionY:F

    .line 657
    invoke-direct {p0}, Lnet/oneplus/h2launcher/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 659
    .end local v2    # "p":[F
    :cond_5
    return-void

    .end local v0    # "isXAfterLastPage":Z
    .end local v1    # "isXBeforeFirstPage":Z
    :cond_6
    move v1, v4

    .line 619
    goto :goto_0

    :cond_7
    if-gez p1, :cond_8

    move v1, v3

    goto :goto_0

    :cond_8
    move v1, v4

    goto :goto_0

    .restart local v1    # "isXBeforeFirstPage":Z
    :cond_9
    move v0, v4

    .line 620
    goto :goto_1

    :cond_a
    iget v5, p0, Lnet/oneplus/h2launcher/PagedView;->mMaxScrollX:I

    if-le p1, v5, :cond_b

    move v0, v3

    goto :goto_1

    :cond_b
    move v0, v4

    goto :goto_1

    .restart local v0    # "isXAfterLastPage":Z
    :cond_c
    move v5, v4

    .line 622
    goto :goto_2

    .line 628
    :cond_d
    int-to-float v5, p1

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/PagedView;->overScroll(F)V

    goto :goto_3

    .line 631
    :cond_e
    if-eqz v0, :cond_11

    .line 632
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_f

    move v5, v4

    :goto_4
    invoke-super {p0, v5, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 633
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/PagedView;->mAllowOverScroll:Z

    if-eqz v5, :cond_4

    .line 634
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/PagedView;->mWasInOverscroll:Z

    .line 635
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_10

    .line 636
    int-to-float v5, p1

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/PagedView;->overScroll(F)V

    goto :goto_3

    .line 632
    :cond_f
    iget v5, p0, Lnet/oneplus/h2launcher/PagedView;->mMaxScrollX:I

    goto :goto_4

    .line 638
    :cond_10
    iget v5, p0, Lnet/oneplus/h2launcher/PagedView;->mMaxScrollX:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/PagedView;->overScroll(F)V

    goto :goto_3

    .line 642
    :cond_11
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/PagedView;->mWasInOverscroll:Z

    if-eqz v5, :cond_12

    .line 643
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/PagedView;->overScroll(F)V

    .line 644
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/PagedView;->mWasInOverscroll:Z

    .line 646
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_3
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 2431
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    .line 2432
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 2434
    :cond_0
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 2
    .param p1, "currentPage"    # I

    .prologue
    const/4 v1, 0x1

    .line 507
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->abortScrollerAnimation(Z)V

    .line 512
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 520
    :goto_0
    return-void

    .line 515
    :cond_1
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/PagedView;->mForceScreenScrolled:Z

    .line 516
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->validateNewPage(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    .line 517
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->updateCurrentPageScroll()V

    .line 518
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->notifyPageSwitchListener()V

    .line 519
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->invalidate()V

    goto :goto_0
.end method

.method protected setDefaultInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 294
    iput-object p1, p0, Lnet/oneplus/h2launcher/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 295
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    iget-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 296
    return-void
.end method

.method protected setEdgeGlowColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mEdgeGlowLeft:Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->setColor(I)V

    .line 290
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mEdgeGlowRight:Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->setColor(I)V

    .line 291
    return-void
.end method

.method protected setEnableOverscroll(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1651
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/PagedView;->mAllowOverScroll:Z

    .line 1652
    return-void
.end method

.method public setMinScale(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 371
    iput p1, p0, Lnet/oneplus/h2launcher/PagedView;->mMinScale:F

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/PagedView;->mUseMinScale:Z

    .line 373
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->requestLayout()V

    .line 374
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 588
    iput-object p1, p0, Lnet/oneplus/h2launcher/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 589
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPageCount()I

    move-result v0

    .line 590
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 591
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 593
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 594
    return-void
.end method

.method public setPageReorderListener(Lnet/oneplus/h2launcher/PagedView$PageReorderListener;)V
    .locals 0
    .param p1, "pageReorderListener"    # Lnet/oneplus/h2launcher/PagedView$PageReorderListener;

    .prologue
    .line 429
    iput-object p1, p0, Lnet/oneplus/h2launcher/PagedView;->mPageReorderListener:Lnet/oneplus/h2launcher/PagedView$PageReorderListener;

    .line 430
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .param p1, "pageSpacing"    # I

    .prologue
    .line 1036
    iput p1, p0, Lnet/oneplus/h2launcher/PagedView;->mPageSpacing:I

    .line 1037
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->requestLayout()V

    .line 1038
    return-void
.end method

.method public setPageSwitchListener(Lnet/oneplus/h2launcher/PagedView$PageSwitchListener;)V
    .locals 3
    .param p1, "pageSwitchListener"    # Lnet/oneplus/h2launcher/PagedView$PageSwitchListener;

    .prologue
    .line 418
    iput-object p1, p0, Lnet/oneplus/h2launcher/PagedView;->mPageSwitchListener:Lnet/oneplus/h2launcher/PagedView$PageSwitchListener;

    .line 419
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageSwitchListener:Lnet/oneplus/h2launcher/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mPageSwitchListener:Lnet/oneplus/h2launcher/PagedView$PageSwitchListener;

    iget v1, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lnet/oneplus/h2launcher/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 422
    :cond_0
    return-void
.end method

.method setRestorePage(I)V
    .locals 0
    .param p1, "restorePage"    # I

    .prologue
    .line 527
    iput p1, p0, Lnet/oneplus/h2launcher/PagedView;->mRestorePage:I

    .line 528
    return-void
.end method

.method public setScaleX(F)V
    .locals 4
    .param p1, "scaleX"    # F

    .prologue
    const/4 v3, 0x1

    .line 378
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 379
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    iget v1, p0, Lnet/oneplus/h2launcher/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lnet/oneplus/h2launcher/PagedView;->mParentDownMotionY:F

    invoke-direct {p0, p0, v1, v2}, Lnet/oneplus/h2launcher/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 381
    .local v0, "p":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionX:F

    .line 382
    aget v1, v0, v3

    iput v1, p0, Lnet/oneplus/h2launcher/PagedView;->mLastMotionY:F

    .line 383
    invoke-direct {p0}, Lnet/oneplus/h2launcher/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 385
    .end local v0    # "p":[F
    :cond_0
    return-void
.end method

.method protected setScrollingDisabled(Z)V
    .locals 0
    .param p1, "disableScrolling"    # Z

    .prologue
    .line 1533
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/PagedView;->mDisableScrolling:Z

    .line 1534
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1170
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 2094
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x2ee

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(II)V

    .line 2095
    return-void
.end method

.method public snapToPage(I)V
    .locals 1
    .param p1, "whichPage"    # I

    .prologue
    .line 2152
    const/16 v0, 0x2ee

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(II)V

    .line 2153
    return-void
.end method

.method protected snapToPage(II)V
    .locals 2
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .prologue
    .line 2160
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 2161
    return-void
.end method

.method protected snapToPage(III)V
    .locals 6
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .prologue
    .line 2177
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    .line 2178
    return-void
.end method

.method protected snapToPage(IIIZLandroid/animation/TimeInterpolator;)V
    .locals 7
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I
    .param p4, "immediate"    # Z
    .param p5, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    const/4 v2, 0x0

    .line 2182
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->validateNewPage(I)I

    move-result p1

    .line 2184
    iput p1, p0, Lnet/oneplus/h2launcher/PagedView;->mNextPage:I

    .line 2185
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 2186
    .local v6, "focusedChild":Landroid/view/View;
    if-eqz v6, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    .line 2187
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 2188
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 2191
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->pageBeginMoving()V

    .line 2192
    invoke-virtual {p0, p3}, Lnet/oneplus/h2launcher/PagedView;->awakenScrollBars(I)Z

    .line 2193
    if-eqz p4, :cond_4

    .line 2194
    const/4 p3, 0x0

    .line 2199
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2200
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/PagedView;->abortScrollerAnimation(Z)V

    .line 2203
    :cond_2
    if-eqz p5, :cond_5

    .line 2204
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {v0, p5}, Lnet/oneplus/h2launcher/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2209
    :goto_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollX()I

    move-result v1

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherScroller;->startScroll(IIIII)V

    .line 2211
    invoke-direct {p0}, Lnet/oneplus/h2launcher/PagedView;->updatePageIndicator()V

    .line 2214
    if-eqz p4, :cond_3

    .line 2215
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->computeScroll()V

    .line 2218
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/PagedView;->mForceScreenScrolled:Z

    .line 2219
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->invalidate()V

    .line 2220
    return-void

    .line 2195
    :cond_4
    if-nez p3, :cond_1

    .line 2196
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    goto :goto_0

    .line 2206
    :cond_5
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    iget-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1
.end method

.method protected snapToPage(IILandroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 2164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 2165
    return-void
.end method

.method protected snapToPage(IIZLandroid/animation/TimeInterpolator;)V
    .locals 7
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "immediate"    # Z
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 2169
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->validateNewPage(I)I

    move-result p1

    .line 2171
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->getScrollForPage(I)I

    move-result v6

    .line 2172
    .local v6, "newX":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollX()I

    move-result v0

    sub-int v2, v6, v0

    .local v2, "delta":I
    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 2173
    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    .line 2174
    return-void
.end method

.method protected snapToPageImmediately(I)V
    .locals 3
    .param p1, "whichPage"    # I

    .prologue
    .line 2156
    const/16 v0, 0x2ee

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 2157
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 9
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 2118
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->validateNewPage(I)I

    move-result p1

    .line 2119
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getViewportWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 2121
    .local v4, "halfScreenSize":I
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->getScrollForPage(I)I

    move-result v5

    .line 2122
    .local v5, "newX":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getScrollX()I

    move-result v6

    sub-int v0, v5, v6

    .line 2123
    .local v0, "delta":I
    const/4 v3, 0x0

    .line 2125
    .local v3, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lnet/oneplus/h2launcher/PagedView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_0

    .line 2128
    const/16 v6, 0x2ee

    invoke-virtual {p0, p1, v6}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(II)V

    .line 2149
    :goto_0
    return-void

    .line 2136
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2137
    .local v2, "distanceRatio":F
    int-to-float v6, v4

    int-to-float v7, v4

    .line 2138
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 2140
    .local v1, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 2141
    iget v6, p0, Lnet/oneplus/h2launcher/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2146
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 2148
    invoke-virtual {p0, p1, v0, v3}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public startReordering(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x3f933333    # 1.15f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2328
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .local v0, "dragViewIndex":I
    move-object v2, p0

    .line 2329
    check-cast v2, Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getHomeScreenPageIndex()I

    move-result v1

    .line 2331
    .local v1, "homeScreenIndex":I
    iget v2, p0, Lnet/oneplus/h2launcher/PagedView;->mTouchState:I

    if-nez v2, :cond_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    move v2, v3

    .line 2361
    :goto_0
    return v2

    .line 2332
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/oos/StyleManager;->isWorkspaceAllowReorderingHomeScreen()Z

    move-result v2

    if-nez v2, :cond_2

    if-ne v0, v1, :cond_2

    move v2, v3

    .line 2334
    goto :goto_0

    .line 2339
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->onPostReorderingAnimationCompleted()V

    .line 2341
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    aput v3, v2, v3

    .line 2342
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPageCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aput v5, v2, v4

    .line 2343
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/PagedView;->getFreeScrollPageRange([I)V

    .line 2344
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/PagedView;->mReorderingStarted:Z

    .line 2345
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mPageReorderListener:Lnet/oneplus/h2launcher/PagedView$PageReorderListener;

    if-eqz v2, :cond_3

    .line 2346
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mPageReorderListener:Lnet/oneplus/h2launcher/PagedView$PageReorderListener;

    invoke-interface {v2}, Lnet/oneplus/h2launcher/PagedView$PageReorderListener;->onStartReordering()V

    .line 2350
    :cond_3
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v3

    if-gt v2, v0, :cond_4

    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v4

    if-gt v0, v2, :cond_4

    .line 2353
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    .line 2354
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2355
    iget-object v2, p0, Lnet/oneplus/h2launcher/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lnet/oneplus/h2launcher/PagedView;->mDragViewBaselineLeft:F

    .line 2356
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v2

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(I)V

    .line 2357
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->disableFreeScroll()V

    .line 2358
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->onStartReordering()V

    move v2, v4

    .line 2359
    goto :goto_0

    :cond_4
    move v2, v3

    .line 2361
    goto :goto_0
.end method

.method protected updateCurrentPageScroll()V
    .locals 3

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "newX":I
    iget v1, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    if-ltz v1, :cond_0

    iget v1, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 467
    iget v1, p0, Lnet/oneplus/h2launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->getScrollForPage(I)I

    move-result v0

    .line 469
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/PagedView;->scrollTo(II)V

    .line 470
    iget-object v1, p0, Lnet/oneplus/h2launcher/PagedView;->mScroller:Lnet/oneplus/h2launcher/LauncherScroller;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/LauncherScroller;->setFinalX(I)V

    .line 471
    invoke-direct {p0}, Lnet/oneplus/h2launcher/PagedView;->forceFinishScroller()V

    .line 472
    return-void
.end method

.method updateFreescrollBounds()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1624
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->getFreeScrollPageRange([I)V

    .line 1625
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 1626
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/PagedView;->mFreeScrollMinScrollX:I

    .line 1627
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/PagedView;->mFreeScrollMaxScrollX:I

    .line 1632
    :goto_0
    return-void

    .line 1629
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/PagedView;->mFreeScrollMinScrollX:I

    .line 1630
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/PagedView;->mFreeScrollMaxScrollX:I

    goto :goto_0
.end method

.method updateMaxScrollX()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1026
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PagedView;->getChildCount()I

    move-result v0

    .line 1027
    .local v0, "childCount":I
    if-lez v0, :cond_1

    .line 1028
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_0

    .line 1029
    .local v1, "index":I
    :goto_0
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PagedView;->getScrollForPage(I)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/PagedView;->mMaxScrollX:I

    .line 1033
    .end local v1    # "index":I
    :goto_1
    return-void

    .line 1028
    :cond_0
    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    .line 1031
    :cond_1
    iput v1, p0, Lnet/oneplus/h2launcher/PagedView;->mMaxScrollX:I

    goto :goto_1
.end method
