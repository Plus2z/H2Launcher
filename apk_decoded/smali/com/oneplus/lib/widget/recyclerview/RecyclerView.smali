.class public Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/ScrollingView;
.implements Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimatorRestoreListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SimpleOnItemTouchListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewCacheExtension;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final MAX_SCROLL_DURATION:I = 0x7d0

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field private static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field private static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field private static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final VERTICAL:I = 0x1

.field private static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccessibilityDelegate:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

.field private mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

.field mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

.field private mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

.field private mClipToPadding:Z

.field private mDataSetHasChangedAfterLayout:Z

.field private mEatRequestLayout:Z

.field private mEatenAccessibilityChangeFlags:I

.field private mFirstLayoutComplete:Z

.field private mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mIsAttached:Z

.field mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field private final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

.field private mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field private mLayoutRequestEaten:Z

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

.field private final mPostUpdatesOnAnimation:Z

.field private mPostedAnimatorRunner:Z

.field final mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

.field private mRecyclerListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private final mScrollConsumed:[I

.field private mScrollFactor:F

.field private mScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private final mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

.field final mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field private final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewFlinger:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 225
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 389
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$3;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$3;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void

    :cond_1
    move v0, v1

    .line 146
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 398
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 402
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 405
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 228
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, p0, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mObserver:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;

    .line 230
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 250
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 275
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 302
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 312
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutOrScrollCounter:I

    .line 316
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    .line 341
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollState:I

    .line 342
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    .line 352
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollFactor:F

    .line 354
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mViewFlinger:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    .line 356
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 362
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 363
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsChanged:Z

    .line 364
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v0, p0, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimatorRestoreListener;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimatorListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 366
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPostedAnimatorRunner:Z

    .line 372
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 375
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    .line 376
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollConsumed:[I

    .line 377
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mNestedOffsets:[I

    .line 379
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$2;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 406
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setScrollContainer(Z)V

    .line 407
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 408
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 409
    .local v8, "version":I
    const/16 v0, 0x10

    if-lt v8, v0, :cond_3

    move v0, v9

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPostUpdatesOnAnimation:Z

    .line 411
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 412
    .local v7, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    .line 413
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMinFlingVelocity:I

    .line 414
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMaxFlingVelocity:I

    .line 415
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getOverScrollMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    move v1, v9

    :cond_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setWillNotDraw(Z)V

    .line 417
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimatorListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->setListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 418
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->initAdapterManager()V

    .line 419
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->initChildrenHelper()V

    .line 421
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 423
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setImportantForAccessibility(I)V

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 427
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 428
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setAccessibilityDelegateCompat(Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;)V

    .line 430
    if-eqz p2, :cond_2

    .line 431
    const/4 v5, 0x0

    .line 432
    .local v5, "defStyleRes":I
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 434
    .local v6, "a":Landroid/content/res/TypedArray;
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->RecyclerView_op_layoutManager:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "layoutManagerName":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    .line 436
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 439
    .end local v2    # "layoutManagerName":Ljava/lang/String;
    .end local v5    # "defStyleRes":I
    .end local v6    # "a":Landroid/content/res/TypedArray;
    :cond_2
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    .line 440
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 441
    return-void

    .end local v7    # "vc":Landroid/view/ViewConfiguration;
    :cond_3
    move v0, v1

    .line 409
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mFirstLayoutComplete:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    return v0
.end method

.method static synthetic access$2200()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->consumePendingUpdateOperations()V

    return-void
.end method

.method static synthetic access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onEnterLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$2600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->supportsChangeAnimations()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onExitLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$2900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutRequestEaten:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    return-void
.end method

.method static synthetic access$3100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setDataSetChangedAfterLayout()V

    return-void
.end method

.method static synthetic access$3400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPostUpdatesOnAnimation:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    return p1
.end method

.method static synthetic access$3900()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAccessibilityDelegate:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecyclerListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->defaultOnMeasure(II)V

    return-void
.end method

.method static synthetic access$4600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$4700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "x1"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getAdapterPositionFor(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mViewFlinger:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    return-object v0
.end method

.method static synthetic access$502(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPostedAnimatorRunner:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method private addAnimatingView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x1

    .line 1017
    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1018
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_0

    move v0, v2

    .line 1019
    .local v0, "alreadyParented":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->unscrapView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 1020
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1022
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    const/4 v4, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1028
    :goto_1
    return-void

    .line 1018
    .end local v0    # "alreadyParented":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1023
    .restart local v0    # "alreadyParented":Z
    :cond_1
    if-nez v0, :cond_2

    .line 1024
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    .line 1026
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->hide(Landroid/view/View;)V

    goto :goto_1
.end method

.method private animateAppearance(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Landroid/graphics/Rect;II)V
    .locals 7
    .param p1, "itemHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "beforeBounds"    # Landroid/graphics/Rect;
    .param p3, "afterLeft"    # I
    .param p4, "afterTop"    # I

    .prologue
    const/4 v1, 0x0

    .line 3061
    iget-object v6, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3062
    .local v6, "newItemView":Landroid/view/View;
    if-eqz p2, :cond_2

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ne v0, p3, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-eq v0, p4, :cond_2

    .line 3065
    :cond_0
    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3069
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3072
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postAnimationRunner()V

    .line 3083
    :cond_1
    :goto_0
    return-void

    .line 3078
    :cond_2
    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3079
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateAdd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3080
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postAnimationRunner()V

    goto :goto_0
.end method

.method private animateChange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 7
    .param p1, "oldHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 3118
    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3119
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addAnimatingView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 3120
    iput-object p2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 3121
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->unscrapView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 3125
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 3126
    .local v3, "fromLeft":I
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 3128
    .local v4, "fromTop":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3129
    :cond_0
    move v5, v3

    .line 3130
    .local v5, "toLeft":I
    move v6, v4

    .line 3137
    .local v6, "toTop":I
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateChange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3139
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postAnimationRunner()V

    .line 3141
    :cond_1
    return-void

    .line 3132
    .end local v5    # "toLeft":I
    .end local v6    # "toTop":I
    :cond_2
    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 3133
    .restart local v5    # "toLeft":I
    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    .line 3134
    .restart local v6    # "toTop":I
    invoke-virtual {p2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3135
    iput-object p1, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    goto :goto_0
.end method

.method private animateDisappearance(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;)V
    .locals 7
    .param p1, "disappearingItem"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    .prologue
    const/4 v1, 0x0

    .line 3086
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3087
    .local v6, "disappearingItemView":Landroid/view/View;
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addAnimatingView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 3088
    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    .line 3089
    .local v2, "oldLeft":I
    iget v3, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    .line 3090
    .local v3, "oldTop":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 3091
    .local v4, "newLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 3092
    .local v5, "newTop":I
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_2

    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_2

    .line 3093
    :cond_0
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3095
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v4

    .line 3096
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v5

    .line 3094
    invoke-virtual {v6, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 3101
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3103
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postAnimationRunner()V

    .line 3115
    :cond_1
    :goto_0
    return-void

    .line 3110
    :cond_2
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3111
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateRemove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3112
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postAnimationRunner()V

    goto :goto_0
.end method

.method private cancelTouch()V
    .locals 1

    .prologue
    .line 2400
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resetTouch()V

    .line 2401
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setScrollState(I)V

    .line 2402
    return-void
.end method

.method private considerReleasingGlowsOnScroll(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1822
    const/4 v0, 0x0

    .line 1823
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 1824
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1825
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 1827
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 1828
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1829
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1831
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 1832
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1833
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1835
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 1836
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1837
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1839
    :cond_3
    if-eqz v0, :cond_4

    .line 1840
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postInvalidateOnAnimation()V

    .line 1842
    :cond_4
    return-void
.end method

.method private consumePendingUpdateOperations()V
    .locals 1

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1364
    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 466
    if-eqz p2, :cond_0

    .line 467
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 468
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 469
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 472
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 474
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 479
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v6

    .line 481
    .local v6, "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;>;"
    const/4 v2, 0x0

    .line 483
    .local v2, "constructorArgs":[Ljava/lang/Object;
    :try_start_1
    sget-object v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 484
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 485
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;>;"
    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v3, v7

    const/4 v7, 0x1

    aput-object p3, v3, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .local v3, "constructorArgs":[Ljava/lang/Object;
    move-object v2, v3

    .line 495
    .end local v3    # "constructorArgs":[Ljava/lang/Object;
    .restart local v2    # "constructorArgs":[Ljava/lang/Object;
    :goto_1
    const/4 v7, 0x1

    :try_start_2
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 496
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    .line 515
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;>;"
    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .end local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;>;"
    :cond_0
    return-void

    .line 476
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 486
    .restart local v2    # "constructorArgs":[Ljava/lang/Object;
    .restart local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;>;"
    :catch_0
    move-exception v4

    .line 488
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const/4 v7, 0x0

    :try_start_3
    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v1

    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;>;"
    goto :goto_1

    .line 489
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;>;"
    :catch_1
    move-exception v5

    .line 490
    .local v5, "e1":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 491
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Error creating LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    .line 497
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "e1":Ljava/lang/NoSuchMethodException;
    .end local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;>;"
    :catch_2
    move-exception v4

    .line 498
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Unable to find LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 500
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v4

    .line 501
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 503
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v4

    .line 504
    .local v4, "e":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 506
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v4

    .line 507
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Cannot access non-public constructor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 509
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v4

    .line 510
    .local v4, "e":Ljava/lang/ClassCastException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Class is not a LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private defaultOnMeasure(II)V
    .locals 6
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 2506
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 2507
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2508
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 2509
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 2511
    .local v2, "heightSize":I
    const/4 v3, 0x0

    .line 2512
    .local v3, "width":I
    const/4 v0, 0x0

    .line 2514
    .local v0, "height":I
    sparse-switch v4, :sswitch_data_0

    .line 2521
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMinimumWidth()I

    move-result v3

    .line 2525
    :goto_0
    sparse-switch v1, :sswitch_data_1

    .line 2532
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMinimumHeight()I

    move-result v0

    .line 2536
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setMeasuredDimension(II)V

    .line 2537
    return-void

    .line 2517
    :sswitch_0
    move v3, v5

    .line 2518
    goto :goto_0

    .line 2528
    :sswitch_1
    move v0, v2

    .line 2529
    goto :goto_1

    .line 2514
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 2525
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private didChildRangeChange(II)Z
    .locals 7
    .param p1, "minPositionPreLayout"    # I
    .param p2, "maxPositionPreLayout"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2991
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    .line 2992
    .local v0, "count":I
    if-nez v0, :cond_2

    .line 2993
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move v4, v5

    .line 3005
    :cond_1
    :goto_0
    return v4

    .line 2995
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 2996
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v6, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 2997
    .local v1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2995
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3000
    :cond_4
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    .line 3001
    .local v3, "pos":I
    if-lt v3, p1, :cond_5

    if-le v3, p2, :cond_3

    :cond_5
    move v4, v5

    .line 3002
    goto :goto_0
.end method

.method private dispatchChildAttached(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5775
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    .line 5776
    .local v2, "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 5777
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 5778
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onViewAttachedToWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 5780
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 5781
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 5782
    .local v0, "cnt":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 5783
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 5782
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5787
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private dispatchChildDetached(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5761
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    .line 5762
    .local v2, "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 5763
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 5764
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onViewDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 5766
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 5767
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 5768
    .local v0, "cnt":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 5769
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 5768
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5772
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 3

    .prologue
    .line 2590
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 2591
    .local v1, "flags":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 2592
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2593
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2594
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 2595
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 2596
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2598
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 2100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2101
    .local v0, "action":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    if-eqz v5, :cond_0

    .line 2102
    if-nez v0, :cond_2

    .line 2104
    iput-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    .line 2117
    :cond_0
    if-eqz v0, :cond_5

    .line 2118
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2119
    .local v3, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 2120
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    .line 2121
    .local v2, "listener":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;
    invoke-interface {v2, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2122
    iput-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    .line 2127
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;
    .end local v3    # "listenerCount":I
    :cond_1
    :goto_1
    return v4

    .line 2106
    :cond_2
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-interface {v5, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;->onTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)V

    .line 2107
    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    if-ne v0, v4, :cond_1

    .line 2109
    :cond_3
    iput-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    goto :goto_1

    .line 2119
    .restart local v1    # "i":I
    .restart local v2    # "listener":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;
    .restart local v3    # "listenerCount":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2127
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;
    .end local v3    # "listenerCount":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    .line 2083
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2084
    .local v0, "action":I
    if-eq v0, v5, :cond_0

    if-nez v0, :cond_1

    .line 2085
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    .line 2088
    :cond_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2089
    .local v3, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 2090
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    .line 2091
    .local v2, "listener":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;
    invoke-interface {v2, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v0, v5, :cond_2

    .line 2092
    iput-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    .line 2093
    const/4 v4, 0x1

    .line 2096
    .end local v2    # "listener":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;
    :goto_1
    return v4

    .line 2089
    .restart local v2    # "listener":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2096
    .end local v2    # "listener":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 9
    .param p1, "into"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2965
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    .line 2966
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 2967
    aput v7, p1, v7

    .line 2968
    aput v7, p1, v8

    .line 2988
    :goto_0
    return-void

    .line 2971
    :cond_0
    const v4, 0x7fffffff

    .line 2972
    .local v4, "minPositionPreLayout":I
    const/high16 v3, -0x80000000

    .line 2973
    .local v3, "maxPositionPreLayout":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 2974
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v6, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 2975
    .local v1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2973
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2978
    :cond_2
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    .line 2979
    .local v5, "pos":I
    if-ge v5, v4, :cond_3

    .line 2980
    move v4, v5

    .line 2982
    :cond_3
    if-le v5, v3, :cond_1

    .line 2983
    move v3, v5

    goto :goto_2

    .line 2986
    .end local v1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v5    # "pos":I
    :cond_4
    aput v4, p1, v7

    .line 2987
    aput v3, p1, v8

    goto :goto_0
.end method

.method private getAdapterPositionFor(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 8729
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8731
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8732
    :cond_0
    const/4 v0, -0x1

    .line 8734
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 3515
    if-nez p0, :cond_0

    .line 3516
    const/4 v0, 0x0

    .line 3518
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    goto :goto_0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2e

    .line 518
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 524
    .end local p2    # "className":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 521
    .restart local p2    # "className":Ljava/lang/String;
    :cond_1
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private getScrollFactor()F
    .locals 4

    .prologue
    .line 2453
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollFactor:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 2454
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2455
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2458
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2457
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollFactor:F

    .line 2464
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollFactor:F

    :goto_0
    return v1

    .line 2460
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initChildrenHelper()V
    .locals 2

    .prologue
    .line 528
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;-><init>(Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    .line 625
    return-void
.end method

.method private jumpToPositionForSmoothScroller(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 1302
    :goto_0
    return-void

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1301
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method private onEnterLayoutOrScroll()V
    .locals 1

    .prologue
    .line 2570
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2571
    return-void
.end method

.method private onExitLayoutOrScroll()V
    .locals 2

    .prologue
    .line 2574
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2575
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2580
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2581
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 2583
    :cond_0
    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 2405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2406
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    if-ne v2, v3, :cond_0

    .line 2408
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 2409
    .local v1, "newIndex":I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    .line 2410
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchX:I

    .line 2411
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchY:I

    .line 2413
    .end local v1    # "newIndex":I
    :cond_0
    return-void

    .line 2408
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postAnimationRunner()V
    .locals 1

    .prologue
    .line 2676
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 2677
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 2678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2680
    :cond_0
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    .prologue
    .line 2683
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2693
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_0

    .line 2696
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->reset()V

    .line 2697
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->markKnownViewsInvalid()V

    .line 2698
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v3, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onItemsChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 2703
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2704
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->preProcess()V

    .line 2708
    :goto_0
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_6

    .line 2709
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->supportsChangeAnimations()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    move v0, v2

    .line 2710
    .local v0, "animationTypeSupported":Z
    :goto_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    .line 2712
    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->access$1900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    .line 2713
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    move v3, v2

    .line 2710
    :goto_2
    invoke-static {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1802(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    .line 2714
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_8

    .line 2716
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2714
    :goto_3
    invoke-static {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1602(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    .line 2717
    return-void

    .line 2706
    .end local v0    # "animationTypeSupported":Z
    :cond_5
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->consumeUpdatesInOnePass()V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 2709
    goto :goto_1

    .restart local v0    # "animationTypeSupported":Z
    :cond_7
    move v3, v1

    .line 2713
    goto :goto_2

    :cond_8
    move v2, v1

    .line 2716
    goto :goto_3
.end method

.method private processDisappearingList(Lcom/oneplus/lib/widget/recyclerview/ArrayMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/widget/recyclerview/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3036
    .local p1, "appearingViews":Lcom/oneplus/lib/widget/recyclerview/ArrayMap;, "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<Landroid/view/View;Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    .line 3037
    .local v6, "disappearingList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_3

    .line 3038
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 3039
    .local v9, "view":Landroid/view/View;
    invoke-static {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3040
    .local v1, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    .line 3041
    .local v8, "info":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3042
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3044
    :cond_0
    invoke-virtual {p1, v9}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3045
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0, v9, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 3037
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 3048
    :cond_1
    if-eqz v8, :cond_2

    .line 3049
    invoke-direct {p0, v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->animateDisappearance(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;)V

    goto :goto_1

    .line 3052
    :cond_2
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    .line 3053
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V

    .line 3052
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->animateDisappearance(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;)V

    goto :goto_1

    .line 3056
    .end local v1    # "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v8    # "info":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;
    .end local v9    # "view":Landroid/view/View;
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 3057
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "overscrollX"    # F
    .param p3, "y"    # F
    .param p4, "overscrollY"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1772
    const/4 v0, 0x0

    .line 1773
    .local v0, "invalidate":Z
    cmpg-float v1, p2, v4

    if-gez v1, :cond_4

    .line 1774
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->ensureLeftGlow()V

    .line 1775
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float v2, p2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1776
    const/4 v0, 0x1

    .line 1783
    :cond_0
    :goto_0
    cmpg-float v1, p4, v4

    if-gez v1, :cond_5

    .line 1784
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->ensureTopGlow()V

    .line 1785
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v2, p4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1786
    const/4 v0, 0x1

    .line 1793
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    cmpl-float v1, p2, v4

    if-nez v1, :cond_2

    cmpl-float v1, p4, v4

    if-eqz v1, :cond_3

    .line 1794
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postInvalidateOnAnimation()V

    .line 1796
    :cond_3
    return-void

    .line 1777
    :cond_4
    cmpl-float v1, p2, v4

    if-lez v1, :cond_0

    .line 1778
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->ensureRightGlow()V

    .line 1779
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p2, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1780
    const/4 v0, 0x1

    goto :goto_0

    .line 1787
    :cond_5
    cmpl-float v1, p4, v4

    if-lez v1, :cond_1

    .line 1788
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->ensureBottomGlow()V

    .line 1789
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p4, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1790
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private releaseGlows()V
    .locals 2

    .prologue
    .line 1799
    const/4 v0, 0x0

    .line 1800
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    .line 1801
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1802
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 1804
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 1805
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1806
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1808
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    .line 1809
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1810
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1812
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    .line 1813
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1814
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1816
    :cond_3
    if-eqz v0, :cond_4

    .line 1817
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postInvalidateOnAnimation()V

    .line 1819
    :cond_4
    return-void
.end method

.method private removeAnimatingView(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->eatRequestLayout()V

    .line 1038
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    .line 1039
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 1040
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1041
    .local v1, "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->unscrapView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 1042
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 1047
    .end local v1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resumeRequestLayout(Z)V

    .line 1048
    return v0
.end method

.method private resetTouch()V
    .locals 1

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2393
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2395
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->stopNestedScroll()V

    .line 2396
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->releaseGlows()V

    .line 2397
    return-void
.end method

.method private setAdapterInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;ZZ)V
    .locals 3
    .param p1, "adapter"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .param p2, "compatibleWithPrevious"    # Z
    .param p3, "removeAndRecycleViews"    # Z

    .prologue
    .line 813
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    .line 814
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mObserver:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;)V

    .line 815
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 817
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_4

    .line 819
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_2

    .line 820
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->endAnimations()V

    .line 826
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v1, :cond_3

    .line 827
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 828
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 831
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->clear()V

    .line 833
    :cond_4
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->reset()V

    .line 834
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    .line 835
    .local v0, "oldAdapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    .line 836
    if-eqz p1, :cond_5

    .line 837
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mObserver:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->registerAdapterDataObserver(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;)V

    .line 838
    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 840
    :cond_5
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v1, :cond_6

    .line 841
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onAdapterChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    .line 843
    :cond_6
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->onAdapterChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Z)V

    .line 844
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    .line 845
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->markKnownViewsInvalid()V

    .line 846
    return-void
.end method

.method private setDataSetChangedAfterLayout()V
    .locals 4

    .prologue
    .line 3453
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_0

    .line 3465
    :goto_0
    return-void

    .line 3456
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3457
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3458
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 3459
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3460
    .local v1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3461
    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3458
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3464
    .end local v1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_2
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->setAdapterPositionsAsUnknown()V

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1122
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    .line 1134
    :goto_0
    return-void

    .line 1129
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollState:I

    .line 1130
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1131
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->stopScrollersInternal()V

    .line 1133
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchOnScrollStateChanged(I)V

    goto :goto_0
.end method

.method private stopScrollersInternal()V
    .locals 1

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mViewFlinger:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->stop()V

    .line 1744
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1745
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 1747
    :cond_0
    return-void
.end method

.method private supportsChangeAnimations()Z
    .locals 1

    .prologue
    .line 2668
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->getSupportsChangeAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 1845
    if-gez p1, :cond_4

    .line 1846
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->ensureLeftGlow()V

    .line 1847
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1853
    :cond_0
    :goto_0
    if-gez p2, :cond_5

    .line 1854
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->ensureTopGlow()V

    .line 1855
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1861
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 1862
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postInvalidateOnAnimation()V

    .line 1864
    :cond_3
    return-void

    .line 1848
    :cond_4
    if-lez p1, :cond_0

    .line 1849
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->ensureRightGlow()V

    .line 1850
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 1856
    :cond_5
    if-lez p2, :cond_1

    .line 1857
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->ensureBottomGlow()V

    .line 1858
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
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
    .line 1977
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onAddFocusables(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1978
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1980
    :cond_1
    return-void
.end method

.method public addItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V
    .locals 1
    .param p1, "decor"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;

    .prologue
    .line 1180
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;I)V

    .line 1181
    return-void
.end method

.method public addItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;I)V
    .locals 2
    .param p1, "decor"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;
    .param p2, "index"    # I

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setWillNotDraw(Z)V

    .line 1158
    :cond_1
    if-gez p2, :cond_2

    .line 1159
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1164
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    .line 1165
    return-void

    .line 1161
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addOnChildAttachStateChangeListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;

    .prologue
    .line 901
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 902
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    return-void
.end method

.method public addOnItemTouchListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2068
    return-void
.end method

.method public addOnScrollListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1252
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2026
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2027
    if-nez p1, :cond_0

    .line 2028
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2031
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2034
    :cond_1
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2044
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2045
    if-nez p1, :cond_0

    .line 2046
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2049
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2051
    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3244
    instance-of v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    check-cast p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->checkLayoutParams(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clearOldPositions()V
    .locals 4

    .prologue
    .line 3298
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3299
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3300
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3301
    .local v1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3302
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 3299
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3305
    .end local v1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->clearOldPositions()V

    .line 3306
    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 927
    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1272
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->computeVerticalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dispatchLayout()V
    .locals 34

    .prologue
    .line 2742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-nez v4, :cond_1

    .line 2743
    const-string v4, "RecyclerView"

    const-string v6, "No adapter attached; skipping layout"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    :cond_0
    :goto_0
    return-void

    .line 2746
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v4, :cond_2

    .line 2747
    const-string v4, "RecyclerView"

    const-string v6, "No layout manager attached; skipping layout"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2750
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2751
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->eatRequestLayout()V

    .line 2752
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onEnterLayoutOrScroll()V

    .line 2754
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 2756
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsChanged:Z

    if-eqz v4, :cond_4

    .line 2757
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->supportsChangeAnimations()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-direct {v4}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;-><init>()V

    :goto_1
    iput-object v4, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    .line 2758
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsChanged:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 2759
    const/4 v12, 0x0

    .line 2760
    .local v12, "appearingViewInitialBounds":Lcom/oneplus/lib/widget/recyclerview/ArrayMap;, "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<Landroid/view/View;Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v6

    invoke-static {v4, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1702(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    .line 2761
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    .line 2762
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMinMaxLayoutPositions:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 2764
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2766
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->clear()V

    .line 2767
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->clear()V

    .line 2768
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v14

    .line 2769
    .local v14, "count":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    if-ge v0, v14, :cond_6

    .line 2770
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v5

    .line 2771
    .local v5, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2769
    :cond_3
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 2757
    .end local v5    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v12    # "appearingViewInitialBounds":Lcom/oneplus/lib/widget/recyclerview/ArrayMap;, "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<Landroid/view/View;Landroid/graphics/Rect;>;"
    .end local v14    # "count":I
    .end local v19    # "i":I
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 2774
    .restart local v5    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .restart local v12    # "appearingViewInitialBounds":Lcom/oneplus/lib/widget/recyclerview/ArrayMap;, "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<Landroid/view/View;Landroid/graphics/Rect;>;"
    .restart local v14    # "count":I
    .restart local v19    # "i":I
    :cond_5
    iget-object v0, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v33, v0

    .line 2775
    .local v33, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v10, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    new-instance v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    .line 2776
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V

    .line 2775
    invoke-virtual {v10, v5, v4}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2779
    .end local v5    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v33    # "view":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2786
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->saveOldPositions()V

    .line 2788
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    if-eqz v4, :cond_8

    .line 2789
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v14

    .line 2790
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_4
    move/from16 v0, v19

    if-ge v0, v14, :cond_8

    .line 2791
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v5

    .line 2792
    .restart local v5    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isChanged()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2793
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChangedHolderKey(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)J

    move-result-wide v24

    .line 2794
    .local v24, "key":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2795
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2790
    .end local v24    # "key":J
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 2800
    .end local v5    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v14    # "count":I
    .end local v19    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v15

    .line 2801
    .local v15, "didStructureChange":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    .line 2803
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v4, v6, v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    .line 2804
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4, v15}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    .line 2806
    new-instance v12, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    .end local v12    # "appearingViewInitialBounds":Lcom/oneplus/lib/widget/recyclerview/ArrayMap;, "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<Landroid/view/View;Landroid/graphics/Rect;>;"
    invoke-direct {v12}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;-><init>()V

    .line 2807
    .restart local v12    # "appearingViewInitialBounds":Lcom/oneplus/lib/widget/recyclerview/ArrayMap;, "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<Landroid/view/View;Landroid/graphics/Rect;>;"
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_d

    .line 2808
    const/16 v18, 0x0

    .line 2809
    .local v18, "found":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2810
    .local v13, "child":Landroid/view/View;
    invoke-static {v13}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2807
    :cond_9
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 2813
    :cond_a
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_b

    .line 2814
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 2815
    .restart local v5    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v4, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v4, v13, :cond_c

    .line 2816
    const/16 v18, 0x1

    .line 2820
    .end local v5    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_b
    if-nez v18, :cond_9

    .line 2821
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    .line 2822
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-direct {v4, v6, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2821
    invoke-virtual {v12, v13, v4}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 2813
    .restart local v5    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_c
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 2826
    .end local v5    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v13    # "child":Landroid/view/View;
    .end local v18    # "found":Z
    .end local v23    # "j":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->clearOldPositions()V

    .line 2827
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->consumePostponedUpdates()V

    .line 2844
    .end local v15    # "didStructureChange":Z
    .end local v19    # "i":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    .line 2845
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1202(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    .line 2848
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1702(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    .line 2849
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v4, v6, v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    .line 2851
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    .line 2852
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    .line 2855
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    :goto_8
    invoke-static {v6, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1802(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    .line 2857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 2859
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    if-eqz v4, :cond_12

    new-instance v26, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-direct/range {v26 .. v26}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;-><init>()V

    .line 2861
    .local v26, "newChangedHolders":Lcom/oneplus/lib/widget/recyclerview/ArrayMap;, "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<Ljava/lang/Long;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v14

    .line 2862
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_a
    move/from16 v0, v19

    if-ge v0, v14, :cond_15

    .line 2863
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v5

    .line 2864
    .restart local v5    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2862
    :goto_b
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 2829
    .end local v5    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v26    # "newChangedHolders":Lcom/oneplus/lib/widget/recyclerview/ArrayMap;, "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<Ljava/lang/Long;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->clearOldPositions()V

    .line 2831
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 2832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    if-eqz v4, :cond_e

    .line 2833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v14

    .line 2834
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_c
    move/from16 v0, v19

    if-ge v0, v14, :cond_e

    .line 2835
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v5

    .line 2836
    .restart local v5    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isChanged()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_10

    .line 2837
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChangedHolderKey(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)J

    move-result-wide v24

    .line 2838
    .restart local v24    # "key":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2834
    .end local v24    # "key":J
    :cond_10
    add-int/lit8 v19, v19, 0x1

    goto :goto_c

    .line 2855
    .end local v5    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v14    # "count":I
    .end local v19    # "i":I
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 2859
    :cond_12
    const/16 v26, 0x0

    goto/16 :goto_9

    .line 2867
    .restart local v5    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .restart local v14    # "count":I
    .restart local v19    # "i":I
    .restart local v26    # "newChangedHolders":Lcom/oneplus/lib/widget/recyclerview/ArrayMap;, "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<Ljava/lang/Long;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    :cond_13
    iget-object v0, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v33, v0

    .line 2868
    .restart local v33    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChangedHolderKey(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)J

    move-result-wide v24

    .line 2869
    .restart local v24    # "key":J
    if-eqz v26, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 2870
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 2872
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v10, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    new-instance v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    .line 2873
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V

    .line 2872
    invoke-virtual {v10, v5, v4}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 2876
    .end local v5    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v24    # "key":J
    .end local v33    # "view":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->processDisappearingList(Lcom/oneplus/lib/widget/recyclerview/ArrayMap;)V

    .line 2878
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->size()I

    move-result v32

    .line 2879
    .local v32, "preLayoutCount":I
    add-int/lit8 v19, v32, -0x1

    :goto_d
    if-ltz v19, :cond_17

    .line 2880
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 2881
    .local v22, "itemHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 2882
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    .line 2883
    .local v16, "disappearingItem":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2885
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v0, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v17, v0

    .line 2886
    .local v17, "disappearingItemView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v4, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->unscrapView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 2887
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->animateDisappearance(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;)V

    .line 2879
    .end local v16    # "disappearingItem":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;
    .end local v17    # "disappearingItemView":Landroid/view/View;
    :cond_16
    add-int/lit8 v19, v19, -0x1

    goto :goto_d

    .line 2891
    .end local v22    # "itemHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->size()I

    move-result v30

    .line 2892
    .local v30, "postLayoutCount":I
    if-lez v30, :cond_1b

    .line 2893
    add-int/lit8 v19, v30, -0x1

    :goto_e
    if-ltz v19, :cond_1b

    .line 2894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 2895
    .restart local v22    # "itemHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    .line 2896
    .local v20, "info":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    .line 2897
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 2898
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2899
    if-eqz v12, :cond_1a

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2900
    invoke-virtual {v12, v4}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    move-object/from16 v21, v4

    .line 2901
    .local v21, "initialBounds":Landroid/graphics/Rect;
    :goto_f
    move-object/from16 v0, v20

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v4, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->animateAppearance(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Landroid/graphics/Rect;II)V

    .line 2893
    .end local v21    # "initialBounds":Landroid/graphics/Rect;
    :cond_19
    add-int/lit8 v19, v19, -0x1

    goto :goto_e

    .line 2900
    :cond_1a
    const/16 v21, 0x0

    goto :goto_f

    .line 2907
    .end local v20    # "info":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;
    .end local v22    # "itemHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->size()I

    move-result v14

    .line 2908
    const/16 v19, 0x0

    :goto_10
    move/from16 v0, v19

    if-ge v0, v14, :cond_1e

    .line 2909
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 2910
    .local v7, "postHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    .line 2911
    .local v29, "postInfo":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v4, v7}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    .line 2912
    .local v31, "preInfo":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;
    if-eqz v31, :cond_1d

    if-eqz v29, :cond_1d

    .line 2913
    move-object/from16 v0, v31

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    move-object/from16 v0, v29

    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    if-ne v4, v6, :cond_1c

    move-object/from16 v0, v31

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    move-object/from16 v0, v29

    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    if-eq v4, v6, :cond_1d

    .line 2914
    :cond_1c
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2919
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    move-object/from16 v0, v31

    iget v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    move-object/from16 v0, v31

    iget v9, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    move-object/from16 v0, v29

    iget v10, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    move-object/from16 v0, v29

    iget v11, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    invoke-virtual/range {v6 .. v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2921
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postAnimationRunner()V

    .line 2908
    :cond_1d
    add-int/lit8 v19, v19, 0x1

    goto :goto_10

    .line 2927
    .end local v7    # "postHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v29    # "postInfo":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;
    .end local v31    # "preInfo":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->size()I

    move-result v14

    .line 2929
    :goto_11
    add-int/lit8 v19, v14, -0x1

    :goto_12
    if-ltz v19, :cond_22

    .line 2930
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 2931
    .restart local v24    # "key":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 2932
    .local v27, "oldHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v28, v0

    .line 2933
    .local v28, "oldView":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2929
    :cond_1f
    :goto_13
    add-int/lit8 v19, v19, -0x1

    goto :goto_12

    .line 2927
    .end local v24    # "key":J
    .end local v27    # "oldHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v28    # "oldView":Landroid/view/View;
    :cond_20
    const/4 v14, 0x0

    goto :goto_11

    .line 2938
    .restart local v24    # "key":J
    .restart local v27    # "oldHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .restart local v28    # "oldView":Landroid/view/View;
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->access$2000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 2939
    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->access$2000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2940
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->animateChange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    goto :goto_13

    .line 2946
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v24    # "key":J
    .end local v26    # "newChangedHolders":Lcom/oneplus/lib/widget/recyclerview/ArrayMap;, "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<Ljava/lang/Long;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    .end local v27    # "oldHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v28    # "oldView":Landroid/view/View;
    .end local v30    # "postLayoutCount":I
    .end local v32    # "preLayoutCount":I
    :cond_22
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resumeRequestLayout(Z)V

    .line 2947
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v4, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 2948
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget v6, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    invoke-static {v4, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$2102(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    .line 2949
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 2950
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1802(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    .line 2951
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1602(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    .line 2952
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onExitLayoutOrScroll()V

    .line 2953
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->access$1902(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)Z

    .line 2954
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->access$2000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 2955
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->access$2000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2957
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    .line 2959
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->didChildRangeChange(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2960
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchOnScrolled(II)V

    goto/16 :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 8778
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 8783
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    .line 8773
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 8767
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 3833
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    .line 3834
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 3839
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onScrollStateChanged(I)V

    .line 3842
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 3843
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    .line 3845
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 3846
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3847
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    .line 3846
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3850
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 4
    .param p1, "hresult"    # I
    .param p2, "vresult"    # I

    .prologue
    .line 3797
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getScrollX()I

    move-result v1

    .line 3798
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getScrollY()I

    move-result v2

    .line 3799
    .local v2, "scrollY":I
    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onScrollChanged(IIII)V

    .line 3802
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onScrolled(II)V

    .line 3806
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    if-eqz v3, :cond_0

    .line 3807
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;->onScrolled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    .line 3809
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 3810
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3811
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;->onScrolled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    .line 3810
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3814
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1005
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1006
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 997
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 998
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3173
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3175
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3176
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3177
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v6, p1, p0, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    .line 3176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3181
    :cond_0
    const/4 v2, 0x0

    .line 3182
    .local v2, "needsInvalidate":Z
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3184
    .local v4, "restore":I
    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingBottom()I

    move-result v3

    .line 3185
    .local v3, "padding":I
    :goto_1
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3186
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    const/4 v9, 0x0

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3187
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v2, v8

    .line 3188
    :goto_2
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3190
    .end local v3    # "padding":I
    .end local v4    # "restore":I
    :cond_1
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3192
    .restart local v4    # "restore":I
    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_2

    .line 3193
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3195
    :cond_2
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v8

    :goto_3
    or-int/2addr v2, v6

    .line 3196
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3198
    .end local v4    # "restore":I
    :cond_3
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3199
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3200
    .restart local v4    # "restore":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v5

    .line 3201
    .local v5, "width":I
    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 3202
    .restart local v3    # "padding":I
    :goto_4
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3203
    neg-int v6, v3

    int-to-float v6, v6

    neg-int v9, v5

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3204
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v8

    :goto_5
    or-int/2addr v2, v6

    .line 3205
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3207
    .end local v3    # "padding":I
    .end local v4    # "restore":I
    .end local v5    # "width":I
    :cond_4
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_5

    .line 3208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3209
    .restart local v4    # "restore":I
    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3210
    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_d

    .line 3211
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingRight()I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3215
    :goto_6
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_e

    :goto_7
    or-int/2addr v2, v8

    .line 3216
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3222
    .end local v4    # "restore":I
    :cond_5
    if-nez v2, :cond_6

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    .line 3223
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3224
    const/4 v2, 0x1

    .line 3227
    :cond_6
    if-eqz v2, :cond_7

    .line 3228
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postInvalidateOnAnimation()V

    .line 3230
    :cond_7
    return-void

    .restart local v4    # "restore":I
    :cond_8
    move v3, v7

    .line 3184
    goto/16 :goto_1

    .restart local v3    # "padding":I
    :cond_9
    move v2, v7

    .line 3187
    goto/16 :goto_2

    .end local v3    # "padding":I
    :cond_a
    move v6, v7

    .line 3195
    goto/16 :goto_3

    .restart local v5    # "width":I
    :cond_b
    move v3, v7

    .line 3201
    goto/16 :goto_4

    .restart local v3    # "padding":I
    :cond_c
    move v6, v7

    .line 3204
    goto :goto_5

    .line 3213
    .end local v3    # "padding":I
    .end local v5    # "width":I
    :cond_d
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    :cond_e
    move v8, v7

    .line 3215
    goto :goto_7
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 3695
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method eatRequestLayout()V
    .locals 1

    .prologue
    .line 1578
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mEatRequestLayout:Z

    if-nez v0, :cond_0

    .line 1579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mEatRequestLayout:Z

    .line 1580
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 1581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutRequestEaten:Z

    .line 1584
    :cond_0
    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1917
    :goto_0
    return-void

    .line 1910
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 1911
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 1912
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1913
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1912
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 1915
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method ensureLeftGlow()V
    .locals 4

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1877
    :goto_0
    return-void

    .line 1870
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 1871
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 1872
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1873
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1872
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 1875
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method ensureRightGlow()V
    .locals 4

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1890
    :goto_0
    return-void

    .line 1883
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 1884
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 1885
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1886
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1885
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 1888
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method ensureTopGlow()V
    .locals 4

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1904
    :goto_0
    return-void

    .line 1896
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 1897
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 1898
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1899
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1898
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 1901
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3678
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v1

    .line 3679
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 3680
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v5, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3681
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    .line 3682
    .local v3, "translationX":F
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 3683
    .local v4, "translationY":F
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    .line 3684
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 3685
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    .line 3686
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 3690
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :goto_1
    return-object v0

    .line 3679
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "translationX":F
    .restart local v4    # "translationY":F
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3690
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findViewHolderForAdapterPosition(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 3613
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 3623
    :cond_0
    :goto_0
    return-object v1

    .line 3616
    :cond_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3617
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 3618
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3619
    .local v1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getAdapterPositionFor(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 3617
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_3
    move-object v1, v3

    .line 3623
    goto :goto_0
.end method

.method public findViewHolderForItemId(J)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 3658
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3659
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3660
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3661
    .local v1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 3667
    .end local v1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :goto_1
    return-object v1

    .line 3659
    .restart local v1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3667
    .end local v1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findViewHolderForLayoutPosition(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 3595
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->findViewHolderForPosition(IZ)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForPosition(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3576
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->findViewHolderForPosition(IZ)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "position"    # I
    .param p2, "checkNewPosition"    # Z

    .prologue
    .line 3627
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3628
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 3629
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3630
    .local v1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3631
    if-eqz p2, :cond_1

    .line 3632
    iget v3, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-ne v3, p1, :cond_2

    .line 3643
    .end local v1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_0
    :goto_1
    return-object v1

    .line 3635
    .restart local v1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 3628
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3643
    .end local v1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public fling(II)Z
    .locals 7
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1693
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v5, :cond_1

    .line 1694
    const-string v4, "RecyclerView"

    const-string v5, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_0
    :goto_0
    return v3

    .line 1698
    :cond_1
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-nez v5, :cond_0

    .line 1702
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    .line 1703
    .local v1, "canScrollHorizontal":Z
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    .line 1705
    .local v2, "canScrollVertical":Z
    if-eqz v1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMinFlingVelocity:I

    if-ge v5, v6, :cond_3

    .line 1706
    :cond_2
    const/4 p1, 0x0

    .line 1708
    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMinFlingVelocity:I

    if-ge v5, v6, :cond_5

    .line 1709
    :cond_4
    const/4 p2, 0x0

    .line 1711
    :cond_5
    if-nez p1, :cond_6

    if-eqz p2, :cond_0

    .line 1716
    :cond_6
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1717
    if-nez v1, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    move v0, v4

    .line 1718
    .local v0, "canScroll":Z
    :goto_1
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 1720
    if-eqz v0, :cond_0

    .line 1721
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMaxFlingVelocity:I

    neg-int v3, v3

    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1722
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMaxFlingVelocity:I

    neg-int v3, v3

    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1723
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mViewFlinger:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    invoke-virtual {v3, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->fling(II)V

    move v3, v4

    .line 1724
    goto :goto_0

    .end local v0    # "canScroll":Z
    :cond_8
    move v0, v3

    .line 1717
    goto :goto_1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 5
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 1927
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v2, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1928
    .local v1, "result":Landroid/view/View;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 1939
    :goto_0
    return-object v2

    .line 1931
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 1932
    .local v0, "ff":Landroid/view/FocusFinder;
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1933
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->isComputingLayout()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_1

    .line 1935
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->eatRequestLayout()V

    .line 1936
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v1

    .line 1937
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resumeRequestLayout(Z)V

    .line 1939
    :cond_1
    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 3249
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3250
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3252
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3257
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3258
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3260
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3265
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3266
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3268
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    .line 885
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method getChangedHolderKey(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)J
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 3028
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3537
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3538
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 10302
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_0

    .line 10303
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    .line 10305
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v0

    goto :goto_0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, -0x1

    .line 3563
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3567
    :cond_0
    :goto_0
    return-wide v2

    .line 3566
    :cond_1
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3567
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3552
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3553
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3527
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3506
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3507
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 3508
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a direct child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3511
    :cond_0
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public getCompatAccessibilityDelegate()Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAccessibilityDelegate:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public getItemAnimator()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
    .locals 1

    .prologue
    .line 2664
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 3750
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 3751
    .local v3, "lp":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_0

    .line 3752
    iget-object v2, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 3767
    :goto_0
    return-object v2

    .line 3755
    :cond_0
    iget-object v2, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 3756
    .local v2, "insets":Landroid/graphics/Rect;
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3757
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3758
    .local v0, "decorCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 3759
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3760
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v4, v5, p1, p0, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    .line 3761
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 3762
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 3763
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 3764
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 3758
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3766
    :cond_1
    iput-boolean v7, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_0
.end method

.method public getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .prologue
    .line 1765
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .prologue
    .line 1755
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method public getRecycledViewPool()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getRecycledViewPool()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 1118
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .locals 1

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 8761
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    .prologue
    .line 3866
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    .line 3867
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initAdapterManager()V
    .locals 2

    .prologue
    .line 628
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;-><init>(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    .line 706
    return-void
.end method

.method invalidateGlows()V
    .locals 1

    .prologue
    .line 1920
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 1921
    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    .prologue
    .line 3488
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3497
    :goto_0
    return-void

    .line 3491
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 3492
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3495
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->markItemDecorInsetsDirty()V

    .line 3496
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 3280
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 2015
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .locals 1

    .prologue
    .line 2620
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutFrozen()Z
    .locals 1

    .prologue
    .line 1650
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 8746
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    .prologue
    .line 3163
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 3164
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3165
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3166
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 3164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3168
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    .line 3169
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .prologue
    .line 3472
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3473
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3474
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3475
    .local v1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3476
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3473
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3479
    .end local v1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->markItemDecorInsetsDirty()V

    .line 3480
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->markKnownViewsInvalid()V

    .line 3481
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3
    .param p1, "dx"    # I

    .prologue
    .line 3743
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    .line 3744
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3745
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3744
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3747
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3
    .param p1, "dy"    # I

    .prologue
    .line 3705
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    .line 3706
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3707
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3706
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3709
    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 3343
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3344
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3345
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3346
    .local v1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 3351
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3352
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    .line 3344
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3355
    .end local v1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v3, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 3356
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    .line 3357
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 9
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v8, 0x0

    .line 3309
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3311
    .local v0, "childCount":I
    if-ge p1, p2, :cond_1

    .line 3312
    move v5, p1

    .line 3313
    .local v5, "start":I
    move v1, p2

    .line 3314
    .local v1, "end":I
    const/4 v4, -0x1

    .line 3321
    .local v4, "inBetweenOffset":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 3322
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v6, v3}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3323
    .local v2, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    iget v6, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v5, :cond_0

    iget v6, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-le v6, v1, :cond_2

    .line 3321
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3316
    .end local v1    # "end":I
    .end local v2    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v3    # "i":I
    .end local v4    # "inBetweenOffset":I
    .end local v5    # "start":I
    :cond_1
    move v5, p2

    .line 3317
    .restart local v5    # "start":I
    move v1, p1

    .line 3318
    .restart local v1    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "inBetweenOffset":I
    goto :goto_0

    .line 3330
    .restart local v2    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .restart local v3    # "i":I
    :cond_2
    iget v6, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-ne v6, p1, :cond_3

    .line 3331
    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3336
    :goto_3
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    goto :goto_2

    .line 3333
    :cond_3
    invoke-virtual {v2, v4, v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_3

    .line 3338
    .end local v2    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_4
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v6, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 3339
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    .line 3340
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    const/4 v6, 0x1

    .line 3361
    add-int v3, p1, p2

    .line 3362
    .local v3, "positionEnd":I
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3363
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3364
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3365
    .local v1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3366
    iget v4, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v3, :cond_1

    .line 3372
    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3373
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    .line 3363
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3374
    :cond_1
    iget v4, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 3379
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v1, v4, v5, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 3381
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    goto :goto_1

    .line 3385
    .end local v1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v4, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 3386
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    .line 3387
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1984
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1985
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutOrScrollCounter:I

    .line 1986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIsAttached:Z

    .line 1987
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mFirstLayoutComplete:Z

    .line 1988
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1989
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 1991
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPostedAnimatorRunner:Z

    .line 1992
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3722
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3734
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1996
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1997
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 1998
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2000
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mFirstLayoutComplete:Z

    .line 2002
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->stopScroll()V

    .line 2003
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIsAttached:Z

    .line 2004
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 2005
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 2007
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2008
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    .line 3234
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 3236
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3237
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3238
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    .line 3237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3240
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2417
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v3, :cond_1

    .line 2446
    :cond_0
    :goto_0
    return v5

    .line 2420
    :cond_1
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-nez v3, :cond_0

    .line 2423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 2424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 2426
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2429
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    neg-float v2, v3

    .line 2433
    .local v2, "vScroll":F
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2434
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 2439
    .local v0, "hScroll":F
    :goto_2
    cmpl-float v3, v2, v6

    if-nez v3, :cond_2

    cmpl-float v3, v0, v6

    if-eqz v3, :cond_0

    .line 2440
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getScrollFactor()F

    move-result v1

    .line 2441
    .local v1, "scrollFactor":F
    mul-float v3, v0, v1

    float-to-int v3, v3

    mul-float v4, v2, v1

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    .line 2431
    .end local v0    # "hScroll":F
    .end local v1    # "scrollFactor":F
    .end local v2    # "vScroll":F
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "vScroll":F
    goto :goto_1

    .line 2436
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "hScroll":F
    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2132
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-eqz v13, :cond_0

    .line 2135
    const/4 v13, 0x0

    .line 2232
    :goto_0
    return v13

    .line 2137
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2138
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->cancelTouch()V

    .line 2139
    const/4 v13, 0x1

    goto :goto_0

    .line 2142
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v13, :cond_2

    .line 2143
    const/4 v13, 0x0

    goto :goto_0

    .line 2146
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v13}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    .line 2147
    .local v3, "canScrollHorizontally":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v13}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    .line 2149
    .local v4, "canScrollVertically":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v13, :cond_3

    .line 2150
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2152
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2154
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 2155
    .local v1, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 2157
    .local v2, "actionIndex":I
    packed-switch v1, :pswitch_data_0

    .line 2232
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f

    const/4 v13, 0x1

    goto :goto_0

    .line 2159
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v13, :cond_5

    .line 2160
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2162
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    .line 2163
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchX:I

    .line 2164
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchY:I

    .line 2166
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_6

    .line 2167
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2168
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setScrollState(I)V

    .line 2171
    :cond_6
    const/4 v8, 0x0

    .line 2172
    .local v8, "nestedScrollAxis":I
    if-eqz v3, :cond_7

    .line 2173
    or-int/lit8 v8, v8, 0x1

    .line 2175
    :cond_7
    if-eqz v4, :cond_8

    .line 2176
    or-int/lit8 v8, v8, 0x2

    .line 2178
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->startNestedScroll(I)Z

    goto :goto_1

    .line 2182
    .end local v8    # "nestedScrollAxis":I
    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    .line 2183
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchX:I

    .line 2184
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_1

    .line 2188
    :pswitch_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 2189
    .local v7, "index":I
    if-gez v7, :cond_9

    .line 2190
    const-string v13, "RecyclerView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error processing scroll; pointer index for id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2195
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v11, v13

    .line 2196
    .local v11, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v12, v13

    .line 2197
    .local v12, "y":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollState:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_4

    .line 2198
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchX:I

    sub-int v5, v11, v13

    .line 2199
    .local v5, "dx":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchY:I

    sub-int v6, v12, v13

    .line 2200
    .local v6, "dy":I
    const/4 v10, 0x0

    .line 2201
    .local v10, "startScroll":Z
    if-eqz v3, :cond_a

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    if-le v13, v14, :cond_a

    .line 2202
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    if-gez v5, :cond_d

    const/4 v13, -0x1

    :goto_2
    mul-int/2addr v13, v15

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    .line 2203
    const/4 v10, 0x1

    .line 2205
    :cond_a
    if-eqz v4, :cond_b

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    if-le v13, v14, :cond_b

    .line 2206
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchY:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    if-gez v6, :cond_e

    const/4 v13, -0x1

    :goto_3
    mul-int/2addr v13, v15

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    .line 2207
    const/4 v10, 0x1

    .line 2209
    :cond_b
    if-eqz v10, :cond_4

    .line 2210
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 2211
    .local v9, "parent":Landroid/view/ViewParent;
    if-eqz v9, :cond_c

    .line 2212
    const/4 v13, 0x1

    invoke-interface {v9, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2214
    :cond_c
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setScrollState(I)V

    goto/16 :goto_1

    .line 2202
    .end local v9    # "parent":Landroid/view/ViewParent;
    :cond_d
    const/4 v13, 0x1

    goto :goto_2

    .line 2206
    :cond_e
    const/4 v13, 0x1

    goto :goto_3

    .line 2220
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v7    # "index":I
    .end local v10    # "startScroll":Z
    .end local v11    # "x":I
    .end local v12    # "y":I
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2224
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->clear()V

    .line 2225
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 2229
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->cancelTouch()V

    goto/16 :goto_1

    .line 2232
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 3145
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->eatRequestLayout()V

    .line 3146
    const-string v0, "RV OnLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3147
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchLayout()V

    .line 3148
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resumeRequestLayout(Z)V

    .line 3150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mFirstLayoutComplete:Z

    .line 3151
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 2469
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v0, :cond_0

    .line 2470
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->eatRequestLayout()V

    .line 2471
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 2473
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2478
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1702(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    .line 2484
    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 2485
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resumeRequestLayout(Z)V

    .line 2488
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 2489
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    .line 2493
    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_3

    .line 2494
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->defaultOnMeasure(II)V

    .line 2499
    :goto_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1702(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    .line 2500
    return-void

    .line 2481
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 2482
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1702(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    goto :goto_0

    .line 2491
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    goto :goto_1

    .line 2496
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->doMeasure(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;II)V

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 985
    check-cast p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    .line 986
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 987
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 990
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 971
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 972
    .local v0, "state":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 973
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;->access$1500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;)V

    .line 980
    :goto_0
    return-object v0

    .line 974
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 975
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    .line 977
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 3828
    return-void
.end method

.method public onScrolled(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 3792
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2541
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2542
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 2543
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->invalidateGlows()V

    .line 2545
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2247
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIgnoreMotionEventTillDown:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 2248
    :cond_0
    const/16 v19, 0x0

    .line 2388
    :goto_0
    return v19

    .line 2250
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2251
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->cancelTouch()V

    .line 2252
    const/16 v19, 0x1

    goto :goto_0

    .line 2255
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 2256
    const/16 v19, 0x0

    goto :goto_0

    .line 2259
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    .line 2260
    .local v5, "canScrollHorizontally":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v6

    .line 2262
    .local v6, "canScrollVertically":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 2263
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2265
    :cond_4
    const/4 v9, 0x0

    .line 2267
    .local v9, "eventAddedToVelocityTracker":Z
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v14

    .line 2268
    .local v14, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 2269
    .local v3, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 2271
    .local v4, "actionIndex":I
    if-nez v3, :cond_5

    .line 2272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    aput v23, v21, v22

    aput v23, v19, v20

    .line 2274
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2276
    packed-switch v3, :pswitch_data_0

    .line 2383
    :cond_6
    :goto_1
    :pswitch_0
    if-nez v9, :cond_7

    .line 2384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2386
    :cond_7
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 2388
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 2278
    :pswitch_1
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    .line 2279
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchX:I

    .line 2280
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchY:I

    .line 2282
    const/4 v11, 0x0

    .line 2283
    .local v11, "nestedScrollAxis":I
    if-eqz v5, :cond_8

    .line 2284
    or-int/lit8 v11, v11, 0x1

    .line 2286
    :cond_8
    if-eqz v6, :cond_9

    .line 2287
    or-int/lit8 v11, v11, 0x2

    .line 2289
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->startNestedScroll(I)Z

    goto :goto_1

    .line 2293
    .end local v11    # "nestedScrollAxis":I
    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    .line 2294
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchX:I

    .line 2295
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_1

    .line 2299
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 2300
    .local v10, "index":I
    if-gez v10, :cond_a

    .line 2301
    const-string v19, "RecyclerView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error processing scroll; pointer index for id "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " not found. Did any MotionEvents get skipped?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2306
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v15, v0

    .line 2307
    .local v15, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2308
    .local v17, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    move/from16 v19, v0

    sub-int v7, v19, v15

    .line 2309
    .local v7, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    move/from16 v19, v0

    sub-int v8, v19, v17

    .line 2311
    .local v8, "dy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v7, v8, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 2312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    sub-int v7, v7, v19

    .line 2313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    sub-int v8, v8, v19

    .line 2314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v21, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    add-int v21, v21, v22

    aput v21, v19, v20

    .line 2317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v21, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    add-int v21, v21, v22

    aput v21, v19, v20

    .line 2320
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    .line 2321
    const/4 v13, 0x0

    .line 2322
    .local v13, "startScroll":Z
    if-eqz v5, :cond_c

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 2323
    if-lez v7, :cond_10

    .line 2324
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    move/from16 v19, v0

    sub-int v7, v7, v19

    .line 2328
    :goto_2
    const/4 v13, 0x1

    .line 2330
    :cond_c
    if-eqz v6, :cond_d

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_d

    .line 2331
    if-lez v8, :cond_11

    .line 2332
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    move/from16 v19, v0

    sub-int v8, v8, v19

    .line 2336
    :goto_3
    const/4 v13, 0x1

    .line 2338
    :cond_d
    if-eqz v13, :cond_f

    .line 2339
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    .line 2340
    .local v12, "parent":Landroid/view/ViewParent;
    if-eqz v12, :cond_e

    .line 2341
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2343
    :cond_e
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setScrollState(I)V

    .line 2347
    .end local v12    # "parent":Landroid/view/ViewParent;
    .end local v13    # "startScroll":Z
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 2348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    sub-int v19, v15, v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    .line 2349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    sub-int v19, v17, v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    .line 2351
    if-eqz v5, :cond_12

    .end local v7    # "dx":I
    :goto_4
    if-eqz v6, :cond_13

    .end local v8    # "dy":I
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v14}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2355
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    .line 2326
    .restart local v7    # "dx":I
    .restart local v8    # "dy":I
    .restart local v13    # "startScroll":Z
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    move/from16 v19, v0

    add-int v7, v7, v19

    goto/16 :goto_2

    .line 2334
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    move/from16 v19, v0

    add-int v8, v8, v19

    goto :goto_3

    .line 2351
    .end local v13    # "startScroll":Z
    :cond_12
    const/4 v7, 0x0

    goto :goto_4

    .end local v7    # "dx":I
    :cond_13
    const/4 v8, 0x0

    goto :goto_5

    .line 2361
    .end local v8    # "dy":I
    .end local v10    # "index":I
    .end local v15    # "x":I
    .end local v17    # "y":I
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2365
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2366
    const/4 v9, 0x1

    .line 2367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMaxFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2368
    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    move/from16 v20, v0

    .line 2369
    invoke-virtual/range {v19 .. v20}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v19

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v16, v0

    .line 2370
    .local v16, "xvel":F
    :goto_6
    if-eqz v6, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    move/from16 v20, v0

    .line 2371
    invoke-virtual/range {v19 .. v20}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v19

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v18, v0

    .line 2372
    .local v18, "yvel":F
    :goto_7
    const/16 v19, 0x0

    cmpl-float v19, v16, v19

    if-nez v19, :cond_14

    const/16 v19, 0x0

    cmpl-float v19, v18, v19

    if-eqz v19, :cond_15

    :cond_14
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->fling(II)Z

    move-result v19

    if-nez v19, :cond_16

    .line 2373
    :cond_15
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setScrollState(I)V

    .line 2375
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resetTouch()V

    goto/16 :goto_1

    .line 2369
    .end local v16    # "xvel":F
    .end local v18    # "yvel":F
    :cond_17
    const/16 v16, 0x0

    goto :goto_6

    .line 2371
    .restart local v16    # "xvel":F
    :cond_18
    const/16 v18, 0x0

    goto :goto_7

    .line 2379
    .end local v16    # "xvel":F
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->cancelTouch()V

    goto/16 :goto_1

    .line 2276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method rebindUpdatedViewHolders()V
    .locals 6

    .prologue
    .line 3421
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    .line 3422
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_7

    .line 3423
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3425
    .local v1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3422
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3428
    :cond_1
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3429
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    goto :goto_1

    .line 3430
    :cond_3
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3431
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    iget v5, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    .line 3432
    .local v3, "type":I
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne v4, v3, :cond_6

    .line 3434
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isChanged()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->supportsChangeAnimations()Z

    move-result v4

    if-nez v4, :cond_5

    .line 3435
    :cond_4
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    iget v5, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v4, v1, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->bindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    goto :goto_1

    .line 3440
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    goto :goto_1

    .line 3445
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    .line 3450
    .end local v1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v3    # "type":I
    :cond_7
    return-void
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 3010
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3011
    .local v0, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 3012
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3013
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 3019
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 3020
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 3021
    return-void

    .line 3014
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3015
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V
    .locals 2
    .param p1, "decor"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1198
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1199
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setWillNotDraw(Z)V

    .line 1201
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1202
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    .line 1203
    return-void

    .line 1199
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeOnChildAttachStateChangeListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;

    .prologue
    .line 913
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 917
    :goto_0
    return-void

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnItemTouchListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2077
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_0

    .line 2078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    .line 2080
    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1263
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1944
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v4, p0, v5, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onRequestChildFocus(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p2, :cond_2

    .line 1945
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1950
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1951
    .local v0, "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 1953
    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 1954
    .local v2, "lp":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-boolean v4, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_0

    .line 1955
    iget-object v1, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 1956
    .local v1, "insets":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1957
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1958
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1959
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1963
    .end local v1    # "insets":Landroid/graphics/Rect;
    .end local v2    # "lp":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    :cond_0
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1964
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1965
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p0, p1, v4, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 1967
    .end local v0    # "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1968
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2237
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2238
    .local v2, "listenerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2239
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    .line 2240
    .local v1, "listener":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;
    invoke-interface {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 2238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2242
    .end local v1    # "listener":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2243
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 3155
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mEatRequestLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 3156
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3160
    :goto_0
    return-void

    .line 3158
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_0
.end method

.method resumeRequestLayout(Z)V
    .locals 2
    .param p1, "performLayoutChildren"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1587
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mEatRequestLayout:Z

    if-eqz v0, :cond_1

    .line 1589
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 1591
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchLayout()V

    .line 1593
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mEatRequestLayout:Z

    .line 1594
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_1

    .line 1595
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutRequestEaten:Z

    .line 1598
    :cond_1
    return-void
.end method

.method saveOldPositions()V
    .locals 4

    .prologue
    .line 3284
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3285
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3286
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3291
    .local v1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3292
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->saveOldPosition()V

    .line 3285
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3295
    .end local v1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 1339
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v3, :cond_1

    .line 1340
    const-string v2, "RecyclerView"

    const-string v3, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    .end local p1    # "x":I
    .end local p2    # "y":I
    :cond_0
    :goto_0
    return-void

    .line 1344
    .restart local p1    # "x":I
    .restart local p2    # "y":I
    :cond_1
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-nez v3, :cond_0

    .line 1347
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1348
    .local v0, "canScrollHorizontal":Z
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    .line 1349
    .local v1, "canScrollVertical":Z
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    .line 1350
    :cond_2
    if-eqz v0, :cond_3

    .end local p1    # "x":I
    :goto_1
    if-eqz v1, :cond_4

    .end local p2    # "y":I
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    .restart local p1    # "x":I
    .restart local p2    # "y":I
    :cond_3
    move p1, v2

    goto :goto_1

    .end local p1    # "x":I
    :cond_4
    move p2, v2

    goto :goto_2
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1378
    const/4 v6, 0x0

    .local v6, "unconsumedX":I
    const/4 v7, 0x0

    .line 1379
    .local v7, "unconsumedY":I
    const/4 v4, 0x0

    .local v4, "consumedX":I
    const/4 v5, 0x0

    .line 1381
    .local v5, "consumedY":I
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->consumePendingUpdateOperations()V

    .line 1382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v3, :cond_6

    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->eatRequestLayout()V

    .line 1384
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1385
    const-string v3, "RV Scroll"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1386
    if-eqz p1, :cond_0

    .line 1387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    move-object/from16 v17, v0

    move/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v8, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v4

    .line 1388
    sub-int v6, p1, v4

    .line 1390
    :cond_0
    if-eqz p2, :cond_1

    .line 1391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    move-object/from16 v17, v0

    move/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v8, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v5

    .line 1392
    sub-int v7, p2, v5

    .line 1394
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1395
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->supportsChangeAnimations()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v9

    .line 1398
    .local v9, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_5

    .line 1399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v11}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1400
    .local v16, "view":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v10

    .line 1401
    .local v10, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v10, :cond_3

    iget-object v3, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v3, :cond_3

    .line 1402
    iget-object v13, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 1403
    .local v13, "shadowingHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v13, :cond_4

    iget-object v14, v13, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1404
    .local v14, "shadowingView":Landroid/view/View;
    :goto_1
    if-eqz v14, :cond_3

    .line 1405
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 1406
    .local v12, "left":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 1407
    .local v15, "top":I
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ne v12, v3, :cond_2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    if-eq v15, v3, :cond_3

    .line 1409
    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v12

    .line 1410
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v15

    .line 1408
    invoke-virtual {v14, v12, v15, v3, v8}, Landroid/view/View;->layout(IIII)V

    .line 1398
    .end local v12    # "left":I
    .end local v13    # "shadowingHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v14    # "shadowingView":Landroid/view/View;
    .end local v15    # "top":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1403
    .restart local v13    # "shadowingHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 1416
    .end local v9    # "count":I
    .end local v10    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v11    # "i":I
    .end local v13    # "shadowingHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v16    # "view":Landroid/view/View;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onExitLayoutOrScroll()V

    .line 1417
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resumeRequestLayout(Z)V

    .line 1419
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1420
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->invalidate()V

    .line 1423
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1425
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    const/16 v17, 0x0

    aget v8, v8, v17

    sub-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    .line 1426
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    const/16 v17, 0x1

    aget v8, v8, v17

    sub-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    .line 1427
    if-eqz p3, :cond_8

    .line 1428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    const/4 v8, 0x0

    aget v3, v3, v8

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    const/16 v17, 0x1

    aget v8, v8, v17

    int-to-float v8, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1430
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mNestedOffsets:[I

    const/4 v8, 0x0

    aget v17, v3, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    add-int v17, v17, v18

    aput v17, v3, v8

    .line 1431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mNestedOffsets:[I

    const/4 v8, 0x1

    aget v17, v3, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    add-int v17, v17, v18

    aput v17, v3, v8

    .line 1438
    :cond_9
    :goto_2
    if-nez v4, :cond_a

    if-eqz v5, :cond_b

    .line 1439
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchOnScrolled(II)V

    .line 1441
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1442
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->invalidate()V

    .line 1444
    :cond_c
    if-nez v4, :cond_d

    if-eqz v5, :cond_10

    :cond_d
    const/4 v3, 0x1

    :goto_3
    return v3

    .line 1432
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getOverScrollMode()I

    move-result v3

    const/4 v8, 0x2

    if-eq v3, v8, :cond_9

    .line 1433
    if-eqz p3, :cond_f

    .line 1434
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v8, v6

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    int-to-float v0, v7

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v8, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->pullGlows(FFFF)V

    .line 1436
    :cond_f
    invoke-direct/range {p0 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    goto :goto_2

    .line 1444
    :cond_10
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1333
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RecyclerView does not support scrolling to an absolute position."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1283
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    .line 1294
    :goto_0
    return-void

    .line 1286
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->stopScroll()V

    .line 1287
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 1288
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1292
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1293
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2648
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2652
    :goto_0
    return-void

    .line 2651
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setAccessibilityDelegateCompat(Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;)V
    .locals 1
    .param p1, "accessibilityDelegate"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAccessibilityDelegate:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    .line 458
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAccessibilityDelegate:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 459
    return-void
.end method

.method public setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    .prologue
    const/4 v1, 0x0

    .line 797
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setLayoutFrozen(Z)V

    .line 798
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setAdapterInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;ZZ)V

    .line 799
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    .line 800
    return-void
.end method

.method public setChildDrawingOrderCallback(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 1
    .param p1, "childDrawingOrderCallback"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_0

    .line 1223
    :goto_0
    return-void

    .line 1221
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    .line 1222
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->invalidateGlows()V

    .line 732
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    .line 733
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 734
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    .line 735
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    .line 737
    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0
    .param p1, "hasFixedSize"    # Z

    .prologue
    .line 716
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mHasFixedSize:Z

    .line 717
    return-void
.end method

.method public setItemAnimator(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;)V
    .locals 2
    .param p1, "animator"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    .prologue
    .line 2559
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 2560
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2561
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->setListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 2563
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    .line 2564
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    .line 2565
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimatorListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->setListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 2567
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->setViewCacheSize(I)V

    .line 1109
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 9
    .param p1, "frozen"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1623
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-eq p1, v2, :cond_1

    .line 1624
    const-string v2, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1625
    if-nez p1, :cond_2

    .line 1626
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    .line 1627
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v2, :cond_0

    .line 1628
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    .line 1630
    :cond_0
    iput-boolean v7, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutRequestEaten:Z

    .line 1641
    :cond_1
    :goto_0
    return-void

    .line 1632
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1633
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1635
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1636
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    .line 1637
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 1638
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->stopScroll()V

    goto :goto_0
.end method

.method public setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "layout"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    .prologue
    .line 942
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    .line 967
    :goto_0
    return-void

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2

    .line 948
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_1

    .line 949
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 951
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->setRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 953
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->clear()V

    .line 954
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->removeAllViewsUnfiltered()V

    .line 955
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    .line 956
    if-eqz p1, :cond_4

    .line 957
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_3

    .line 958
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 961
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->setRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 962
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_4

    .line 963
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 966
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 8741
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 8742
    return-void
.end method

.method public setOnScrollListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    .line 1236
    return-void
.end method

.method public setRecycledViewPool(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;)V
    .locals 1
    .param p1, "pool"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->setRecycledViewPool(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;)V

    .line 1083
    return-void
.end method

.method public setRecyclerListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;

    .prologue
    .line 869
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecyclerListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;

    .line 870
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4
    .param p1, "slopConstant"    # I

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 750
    .local v0, "vc":Landroid/view/ViewConfiguration;
    packed-switch p1, :pswitch_data_0

    .line 752
    const-string v1, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; using default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    .line 763
    :goto_0
    return-void

    .line 760
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    goto :goto_0

    .line 750
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewCacheExtension(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewCacheExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewCacheExtension;

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->setViewCacheExtension(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewCacheExtension;)V

    .line 1094
    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2632
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2633
    const/4 v0, 0x0

    .line 2634
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 2635
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    .line 2637
    :cond_0
    if-nez v0, :cond_1

    .line 2638
    const/4 v0, 0x0

    .line 2640
    :cond_1
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 2641
    const/4 v1, 0x1

    .line 2643
    .end local v0    # "type":I
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 1661
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_0
    :goto_0
    return-void

    .line 1665
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1669
    const/4 p1, 0x0

    .line 1671
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1672
    const/4 p2, 0x0

    .line 1674
    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_0

    .line 1675
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mViewFlinger:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1320
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    .line 1329
    :goto_0
    return-void

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 1324
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1328
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->smoothScrollToPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)V

    goto :goto_0
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .prologue
    .line 8751
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 8756
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 8757
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 1735
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setScrollState(I)V

    .line 1736
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->stopScrollersInternal()V

    .line 1737
    return-void
.end method

.method public swapAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "adapter"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .param p2, "removeAndRecycleExistingViews"    # Z

    .prologue
    .line 781
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setLayoutFrozen(Z)V

    .line 782
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setAdapterInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;ZZ)V

    .line 783
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 784
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    .line 785
    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 3396
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 3397
    .local v1, "childCount":I
    add-int v4, p1, p2

    .line 3399
    .local v4, "positionEnd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 3400
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v5, v3}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3401
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3402
    .local v2, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3399
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3405
    :cond_1
    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_0

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v4, :cond_0

    .line 3408
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3409
    invoke-virtual {v2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 3410
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->supportsChangeAnimations()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3411
    const/16 v5, 0x40

    invoke-virtual {v2, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3414
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_1

    .line 3417
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_3
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v5, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->viewRangeUpdate(II)V

    .line 3418
    return-void
.end method
