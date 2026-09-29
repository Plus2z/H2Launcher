.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;
.super Ljava/lang/Object;
.source "RecyclerViewDragDropManager.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$InternalHandler;,
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;,
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_ITEM_SETTLE_BACK_INTO_PLACE_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final DEFAULT_SWAP_TARGET_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DRAG_THRESHOLD:I = 0xa

.field private static final LOCAL_LOGD:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final SCROLL_AMOUNT_COEFF:F = 25.0f

.field private static final SCROLL_DIR_DOWN:I = 0x2

.field private static final SCROLL_DIR_LEFT:I = 0x4

.field private static final SCROLL_DIR_NONE:I = 0x0

.field private static final SCROLL_DIR_RIGHT:I = 0x8

.field private static final SCROLL_DIR_UP:I = 0x1

.field private static final SCROLL_THRESHOLD:F = 0.3f

.field private static final SCROLL_TOUCH_SLOP_MULTIPLY:F = 1.5f

.field private static final TAG:Ljava/lang/String; = "ARVDragDropManager"


# instance fields
.field private mActualScrollByXAmount:I

.field private mActualScrollByYAmount:I

.field private mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

.field private mCanDragH:Z

.field private mCanDragV:Z

.field private mCheckItemSwappingRunnable:Ljava/lang/Runnable;

.field private mDeferredCancelProcess:Ljava/lang/Runnable;

.field private mDisplayDensity:F

.field private mDragEdgeScrollSpeed:F

.field private mDragMaxTouchX:I

.field private mDragMaxTouchY:I

.field private mDragMinTouchX:I

.field private mDragMinTouchY:I

.field private mDragStartTouchX:I

.field private mDragStartTouchY:I

.field private mDraggableRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

.field private mDraggingItemDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

.field private mDraggingItemId:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

.field private mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field private mEdgeEffectDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;

.field private mEnableScrolling:Z

.field private mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$InternalHandler;

.field private mInScrollByMethod:Z

.field private mIndexOfFrontChild:I

.field private mInitialTouchItemId:J

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInitiateOnLongPress:Z

.field private mInitiateOnMove:Z

.field private mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

.field private mInternalUseOnScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

.field private mItemDragEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;

.field private mItemSettleBackIntoPlaceAnimationDuration:I

.field private mItemSettleBackIntoPlaceAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mLongPressEvent:Landroid/view/MotionEvent;

.field private mLongPressInitialTouchY:F

.field private mLongPressTimeout:I

.field private mOrigOverScrollMode:I

.field private mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

.field private mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field private mScrollDirMask:I

.field private mScrollEventRegisteredToDistributor:Z

.field private mScrollOnDraggingProcess:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;

.field private mScrollTouchSlop:I

.field private mShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mShouldDragOnNextEvent:Z

.field private mSwapTargetItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;

.field private mSwapTargetTranslationInterpolator:Landroid/view/animation/Interpolator;

.field private mTmpRect1:Landroid/graphics/Rect;

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BasicSwapTargetTranslationInterpolator;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BasicSwapTargetTranslationInterpolator;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->DEFAULT_SWAP_TARGET_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 59
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->DEFAULT_ITEM_SETTLE_BACK_INTO_PLACE_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->DEFAULT_SWAP_TARGET_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mSwapTargetTranslationInterpolator:Landroid/view/animation/Interpolator;

    .line 140
    iput-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitialTouchItemId:J

    .line 142
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitiateOnMove:Z

    .line 151
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mTmpRect1:Landroid/graphics/Rect;

    .line 153
    const/16 v0, 0xc8

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemSettleBackIntoPlaceAnimationDuration:I

    .line 154
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->DEFAULT_ITEM_SETTLE_BACK_INTO_PLACE_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemSettleBackIntoPlaceAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollDirMask:I

    .line 179
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragEdgeScrollSpeed:F

    .line 181
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mEnableScrolling:Z

    .line 186
    iput-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemId:J

    .line 1199
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$5;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$5;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mCheckItemSwappingRunnable:Ljava/lang/Runnable;

    .line 193
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$1;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    .line 210
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$2;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$2;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInternalUseOnScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    .line 222
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollOnDraggingProcess:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;

    .line 224
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLongPressTimeout:I

    .line 225
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    .prologue
    .line 46
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mIndexOfFrontChild:I

    return v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    .prologue
    .line 46
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDeferredCancelProcess:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 46
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDeferredCancelProcess:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->finishDragging(Z)V

    return-void
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    .prologue
    .line 46
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    .prologue
    .line 46
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    return-object v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;
    .param p1, "x1"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->checkItemSwapping(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    return-void
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->handleOnLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private cancelDrag(Z)V
    .locals 2
    .param p1, "immediately"    # Z

    .prologue
    const/4 v1, 0x0

    .line 722
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->handleActionUpOrCancel(IZ)Z

    .line 724
    if-eqz p1, :cond_1

    .line 725
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->finishDragging(Z)V

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDeferredCancelProcess:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 729
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$4;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$4;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDeferredCancelProcess:Ljava/lang/Runnable;

    .line 738
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDeferredCancelProcess:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private checkConditionAndStartDragging(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;Z)Z
    .locals 18
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;
    .param p3, "checkTouchSlop"    # Z

    .prologue
    .line 880
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    if-eqz v14, :cond_0

    .line 881
    const/4 v14, 0x0

    .line 939
    :goto_0
    return v14

    .line 884
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v7, v14

    .line 885
    .local v7, "touchX":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v8, v14

    .line 887
    .local v8, "touchY":I
    move-object/from16 v0, p0

    iput v7, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchX:I

    .line 888
    move-object/from16 v0, p0

    iput v8, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchY:I

    .line 890
    move-object/from16 v0, p0

    iget-wide v14, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitialTouchItemId:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-nez v14, :cond_1

    .line 891
    const/4 v14, 0x0

    goto :goto_0

    .line 894
    :cond_1
    if-eqz p3, :cond_4

    .line 895
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mCanDragH:Z

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitialTouchX:I

    sub-int v14, v7, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mTouchSlop:I

    if-gt v14, v15, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mCanDragV:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitialTouchY:I

    sub-int v14, v8, v14

    .line 896
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mTouchSlop:I

    if-gt v14, v15, :cond_4

    .line 897
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 901
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitialTouchX:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitialTouchY:I

    int-to-float v15, v15

    .line 902
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->findChildViewHolderUnderWithoutTranslation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;FF)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v4

    .line 904
    .local v4, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-nez v4, :cond_5

    .line 905
    const/4 v14, 0x0

    goto :goto_0

    .line 908
    :cond_5
    invoke-static {v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getSynchronizedPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v5

    .line 910
    .local v5, "position":I
    const/4 v14, -0x1

    if-ne v5, v14, :cond_6

    .line 911
    const/4 v14, 0x0

    goto :goto_0

    .line 914
    :cond_6
    iget-object v11, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 915
    .local v11, "view":Landroid/view/View;
    invoke-static {v11}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v9, v14

    .line 916
    .local v9, "translateX":I
    invoke-static {v11}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v10, v14

    .line 917
    .local v10, "translateY":I
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v14

    add-int/2addr v14, v9

    sub-int v12, v7, v14

    .line 918
    .local v12, "viewX":I
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    add-int/2addr v14, v10

    sub-int v13, v8, v14

    .line 920
    .local v13, "viewY":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    invoke-virtual {v14, v4, v5, v12, v13}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->canStartDrag(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;III)Z

    move-result v14

    if-nez v14, :cond_7

    .line 921
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 924
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    invoke-virtual {v14, v4, v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->getItemDraggableRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    move-result-object v6

    .line 926
    .local v6, "range":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;
    if-nez v6, :cond_8

    .line 927
    new-instance v6, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    .end local v6    # "range":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->getItemCount()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-direct {v6, v14, v15}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;-><init>(II)V

    .line 930
    .restart local v6    # "range":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->verifyItemDraggableRange(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 937
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->startDragging(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;)V

    .line 939
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method private checkItemSwapping(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 8
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 1024
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 1026
    .local v1, "draggingItem":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchX:I

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget v2, v2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->grabbedPositionX:I

    sub-int v3, v0, v2

    .line 1027
    .local v3, "overlayItemLeft":I
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchY:I

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget v2, v2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->grabbedPositionY:I

    sub-int v4, v0, v2

    .line 1028
    .local v4, "overlayItemTop":I
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggableRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    move-object v0, p1

    .line 1029
    invoke-static/range {v0 .. v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->findSwapTargetItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;IILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v7

    .line 1032
    .local v7, "swapTargetHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v7, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eq v7, v0, :cond_0

    .line 1033
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->getDraggingItemCurrentPosition()I

    move-result v6

    .line 1034
    .local v6, "draggingItemCurrentPosition":I
    invoke-direct {p0, p1, v6, v1, v7}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->swapItems(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;ILcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 1036
    .end local v6    # "draggingItemCurrentPosition":I
    :cond_0
    return-void
.end method

.method private checkTouchedItemState(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 8
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    .line 1397
    instance-of v3, p2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemViewHolder;

    if-nez v3, :cond_1

    .line 1414
    :cond_0
    :goto_0
    return v2

    .line 1401
    :cond_1
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 1402
    .local v1, "itemPosition":I
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    .line 1405
    .local v0, "adapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1410
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1414
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static findSwapTargetItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;IILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 9
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "draggingItem"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "draggingItemInfo"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;
    .param p3, "overlayItemLeft"    # I
    .param p4, "overlayItemTop"    # I
    .param p5, "range"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    .prologue
    const/4 v6, 0x0

    .line 1444
    const/4 v8, 0x0

    .line 1446
    .local v8, "swapTargetHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1447
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v0

    .line 1448
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->width:I

    sub-int/2addr v0, v1

    .line 1447
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1450
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 1451
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v0

    .line 1452
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->height:I

    sub-int/2addr v0, v1

    .line 1451
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 1455
    if-eqz p1, :cond_0

    .line 1456
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1457
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    iget-wide v2, p2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1459
    :cond_0
    invoke-static {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getLayoutType(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v7

    .line 1461
    .local v7, "layoutType":I
    packed-switch v7, :pswitch_data_0

    .line 1483
    .end local v7    # "layoutType":I
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    if-eqz p5, :cond_2

    .line 1484
    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p5, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->checkInRange(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1485
    const/4 v8, 0x0

    .line 1489
    :cond_2
    return-object v8

    .line 1464
    .restart local v7    # "layoutType":I
    :pswitch_0
    const/4 v0, 0x3

    if-ne v7, v0, :cond_3

    const/4 v6, 0x1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->findSwapTargetItemForGridLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;IILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;Z)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v8

    .line 1468
    goto :goto_0

    .line 1470
    :pswitch_1
    invoke-static/range {p0 .. p5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->findSwapTargetItemForLinearLayoutManagerHorizontal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;IILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v8

    .line 1472
    goto :goto_0

    .line 1474
    :pswitch_2
    invoke-static/range {p0 .. p5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->findSwapTargetItemForLinearLayoutManagerVertical(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;IILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v8

    .line 1476
    goto :goto_0

    .line 1461
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static findSwapTargetItemForGridLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;IILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;Z)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 24
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "draggingItem"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "draggingItemInfo"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;
    .param p3, "overlayItemLeft"    # I
    .param p4, "overlayItemTop"    # I
    .param p5, "range"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;
    .param p6, "vertical"    # Z

    .prologue
    .line 1496
    const/16 v18, 0x0

    .line 1498
    .local v18, "swapTargetHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    move-object/from16 v0, p2

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->width:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v4, p3, v22

    .line 1499
    .local v4, "cx":I
    move-object/from16 v0, p2

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->height:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v6, p4, v22

    .line 1501
    .local v6, "cy":I
    int-to-float v0, v4

    move/from16 v22, v0

    int-to-float v0, v6

    move/from16 v23, v0

    .line 1502
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->findChildViewHolderUnderWithoutTranslation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;FF)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v19

    .line 1503
    .local v19, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v19, :cond_1

    .line 1504
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 1505
    move-object/from16 v18, v19

    .line 1538
    :cond_0
    :goto_0
    return-object v18

    .line 1508
    :cond_1
    invoke-static/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getSpanCount(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v17

    .line 1509
    .local v17, "spanCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v8

    .line 1510
    .local v8, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v21

    .line 1511
    .local v21, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v12

    .line 1512
    .local v12, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v14

    .line 1513
    .local v14, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingRight()I

    move-result v13

    .line 1514
    .local v13, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingBottom()I

    move-result v11

    .line 1515
    .local v11, "paddingBottom":I
    sub-int v22, v21, v12

    sub-int v22, v22, v13

    div-int v3, v22, v17

    .line 1516
    .local v3, "columnWidth":I
    sub-int v22, v8, v14

    sub-int v22, v22, v11

    div-int v16, v22, v17

    .line 1518
    .local v16, "rowHeight":I
    add-int/lit8 v9, v17, -0x1

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_0

    .line 1519
    if-eqz p6, :cond_2

    mul-int v22, v3, v9

    add-int v22, v22, v12

    div-int/lit8 v23, v3, 0x2

    add-int v5, v22, v23

    .line 1520
    .local v5, "cx2":I
    :goto_2
    if-nez p6, :cond_3

    mul-int v22, v16, v9

    add-int v22, v22, v14

    div-int/lit8 v23, v16, 0x2

    add-int v7, v22, v23

    .line 1521
    .local v7, "cy2":I
    :goto_3
    int-to-float v0, v5

    move/from16 v22, v0

    int-to-float v0, v7

    move/from16 v23, v0

    .line 1522
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->findChildViewHolderUnderWithoutTranslation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;FF)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v20

    .line 1524
    .local v20, "vh2":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v20, :cond_4

    .line 1525
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getItemCount()I

    move-result v10

    .line 1526
    .local v10, "itemCount":I
    invoke-virtual/range {v20 .. v20}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v15

    .line 1528
    .local v15, "pos":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v15, v0, :cond_0

    add-int/lit8 v22, v10, -0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_0

    .line 1529
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 1530
    move-object/from16 v18, v20

    goto :goto_0

    .end local v5    # "cx2":I
    .end local v7    # "cy2":I
    .end local v10    # "itemCount":I
    .end local v15    # "pos":I
    .end local v20    # "vh2":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_2
    move v5, v4

    .line 1519
    goto :goto_2

    .restart local v5    # "cx2":I
    :cond_3
    move v7, v6

    .line 1520
    goto :goto_3

    .line 1518
    .restart local v7    # "cy2":I
    .restart local v20    # "vh2":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_1
.end method

.method private static findSwapTargetItemForLinearLayoutManagerHorizontal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;IILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 4
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "draggingItem"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "draggingItemInfo"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;
    .param p3, "overlayItemLeft"    # I
    .param p4, "overlayItemTop"    # I
    .param p5, "range"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    .prologue
    .line 1571
    const/4 v2, 0x0

    .line 1573
    .local v2, "swapTargetHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz p1, :cond_0

    .line 1574
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 1575
    .local v0, "draggingItemPosition":I
    iget-object v3, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1577
    .local v1, "draggingViewLeft":I
    if-ge p3, v1, :cond_1

    .line 1578
    if-lez v0, :cond_0

    .line 1579
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    .line 1590
    .end local v0    # "draggingItemPosition":I
    .end local v1    # "draggingViewLeft":I
    :cond_0
    :goto_0
    return-object v2

    .line 1582
    .restart local v0    # "draggingItemPosition":I
    .restart local v1    # "draggingViewLeft":I
    :cond_1
    if-le p3, v1, :cond_0

    .line 1583
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 1584
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    goto :goto_0
.end method

.method private static findSwapTargetItemForLinearLayoutManagerVertical(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;IILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 4
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "draggingItem"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "draggingItemInfo"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;
    .param p3, "overlayItemLeft"    # I
    .param p4, "overlayItemTop"    # I
    .param p5, "range"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    .prologue
    .line 1545
    const/4 v2, 0x0

    .line 1547
    .local v2, "swapTargetHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz p1, :cond_0

    .line 1548
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 1549
    .local v0, "draggingItemPosition":I
    iget-object v3, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1551
    .local v1, "draggingViewTop":I
    if-ge p4, v1, :cond_1

    .line 1552
    if-lez v0, :cond_0

    .line 1553
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    .line 1564
    .end local v0    # "draggingItemPosition":I
    .end local v1    # "draggingViewTop":I
    :cond_0
    :goto_0
    return-object v2

    .line 1556
    .restart local v0    # "draggingItemPosition":I
    .restart local v1    # "draggingViewTop":I
    :cond_1
    if-le p4, v1, :cond_0

    .line 1557
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 1558
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    goto :goto_0
.end method

.method private finishDragging(Z)V
    .locals 7
    .param p1, "result"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 751
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->isDragging()Z

    move-result v2

    if-nez v2, :cond_0

    .line 835
    :goto_0
    return-void

    .line 756
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDeferredCancelProcess:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 757
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDeferredCancelProcess:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 758
    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDeferredCancelProcess:Ljava/lang/Runnable;

    .line 762
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v2, :cond_2

    .line 763
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mOrigOverScrollMode:I

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setOverScrollMode(Landroid/view/View;I)V

    .line 764
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mIndexOfFrontChild:I

    .line 767
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

    if-eqz v2, :cond_3

    .line 768
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemSettleBackIntoPlaceAnimationDuration:I

    .line 769
    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->setReturnToDefaultPositionAnimationDuration(I)V

    .line 770
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemSettleBackIntoPlaceAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 771
    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->setReturnToDefaultPositionAnimationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 772
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

    invoke-virtual {v2, v6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->finish(Z)V

    .line 775
    :cond_3
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mSwapTargetItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;

    if-eqz v2, :cond_4

    .line 776
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mSwapTargetItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;

    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemSettleBackIntoPlaceAnimationDuration:I

    .line 777
    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->setReturnToDefaultPositionAnimationDuration(I)V

    .line 778
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mSwapTargetItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemSettleBackIntoPlaceAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 779
    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->setReturnToDefaultPositionAnimationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 780
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mSwapTargetItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;

    invoke-virtual {v2, v6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->finish(Z)V

    .line 783
    :cond_4
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mEdgeEffectDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;

    if-eqz v2, :cond_5

    .line 784
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mEdgeEffectDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->releaseBothGlows()V

    .line 787
    :cond_5
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->stopScrollOnDraggingProcess()V

    .line 789
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 790
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 793
    :cond_6
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v2, :cond_7

    .line 794
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->invalidate()V

    .line 797
    :cond_7
    const/4 v1, -0x1

    .line 798
    .local v1, "draggingItemInitialPosition":I
    const/4 v0, -0x1

    .line 801
    .local v0, "draggingItemCurrentPosition":I
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    if-eqz v2, :cond_8

    .line 802
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->getDraggingItemInitialPosition()I

    move-result v1

    .line 803
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->getDraggingItemCurrentPosition()I

    move-result v0

    .line 804
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->onDragItemFinished(Z)V

    .line 811
    :cond_8
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemDragEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;

    if-eqz v2, :cond_9

    .line 812
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemDragEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;

    invoke-interface {v2, v1, v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;->onItemDragFinished(IIZ)V

    .line 817
    :cond_9
    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggableRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    .line 818
    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

    .line 819
    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mSwapTargetItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;

    .line 820
    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 821
    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    .line 823
    iput v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchX:I

    .line 824
    iput v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchY:I

    .line 825
    iput v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragStartTouchX:I

    .line 826
    iput v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragStartTouchY:I

    .line 827
    iput v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMinTouchX:I

    .line 828
    iput v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMinTouchY:I

    .line 829
    iput v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMaxTouchX:I

    .line 830
    iput v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMaxTouchY:I

    .line 831
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mCanDragH:Z

    .line 832
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mCanDragV:Z

    .line 834
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mShouldDragOnNextEvent:Z

    goto/16 :goto_0
.end method

.method private static getDraggableItemWrapperAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;
    .locals 2
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    const-class v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/WrapperAdapterUtils;->findWrappedAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    return-object v0
.end method

.method private handleActionDown(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 605
    .line 606
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {p1, v3, v6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->findChildViewHolderUnderWithoutTranslation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;FF)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 608
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->checkTouchedItemState(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 629
    :goto_0
    return v4

    .line 612
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getOrientation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v1

    .line 613
    .local v1, "orientation":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getSpanCount(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v2

    .line 615
    .local v2, "spanCount":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchX:I

    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitialTouchX:I

    .line 616
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchY:I

    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitialTouchY:I

    .line 617
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v6

    iput-wide v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitialTouchItemId:J

    .line 618
    if-eqz v1, :cond_1

    if-ne v1, v5, :cond_5

    if-le v2, v5, :cond_5

    :cond_1
    move v3, v5

    :goto_1
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mCanDragH:Z

    .line 620
    if-eq v1, v5, :cond_2

    if-nez v1, :cond_3

    if-le v2, v5, :cond_3

    :cond_2
    move v4, v5

    :cond_3
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mCanDragV:Z

    .line 625
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitiateOnLongPress:Z

    if-eqz v3, :cond_4

    .line 626
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$InternalHandler;

    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLongPressTimeout:I

    invoke-virtual {v3, p2, v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$InternalHandler;->startLongPressDetection(Landroid/view/MotionEvent;I)V

    :cond_4
    move v4, v5

    .line 629
    goto :goto_0

    :cond_5
    move v3, v4

    .line 618
    goto :goto_1
.end method

.method private handleActionMoveWhileDragging(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 972
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchX:I

    .line 973
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchY:I

    .line 975
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMinTouchX:I

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMinTouchX:I

    .line 976
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMinTouchY:I

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMinTouchY:I

    .line 977
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMaxTouchX:I

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMaxTouchX:I

    .line 978
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMaxTouchY:I

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMaxTouchY:I

    .line 981
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->updateDragDirectionMask()V

    .line 984
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->update(Landroid/view/MotionEvent;)V

    .line 985
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mSwapTargetItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mSwapTargetItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->getDraggingItemTranslationX()I

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

    .line 987
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->getDraggingItemTranslationY()I

    move-result v2

    .line 986
    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->update(II)V

    .line 990
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemDragEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;

    if-eqz v0, :cond_1

    .line 991
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemDragEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

    .line 992
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->getDraggingItemTranslationY()I

    move-result v1

    .line 991
    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;->onDragProgress(I)V

    .line 996
    :cond_1
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->checkItemSwapping(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 997
    return-void
.end method

.method private handleActionMoveWhileNotDragging(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 871
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitiateOnMove:Z

    if-eqz v0, :cond_0

    .line 872
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->checkConditionAndStartDragging(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;Z)Z

    move-result v0

    .line 874
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleActionUpOrCancel(IZ)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "invokeFinish"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 838
    if-ne p1, v1, :cond_1

    move v0, v1

    .line 840
    .local v0, "result":Z
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$InternalHandler;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$InternalHandler;->cancelLongPressDetection()V

    .line 842
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitialTouchX:I

    .line 843
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitialTouchY:I

    .line 844
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchX:I

    .line 845
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchY:I

    .line 846
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragStartTouchX:I

    .line 847
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragStartTouchY:I

    .line 848
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMinTouchX:I

    .line 849
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMinTouchY:I

    .line 850
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMaxTouchX:I

    .line 851
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMaxTouchY:I

    .line 852
    const/4 v3, 0x0

    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLongPressInitialTouchY:F

    .line 853
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mShouldDragOnNextEvent:Z

    .line 854
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLongPressEvent:Landroid/view/MotionEvent;

    .line 855
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitialTouchItemId:J

    .line 856
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mCanDragH:Z

    .line 857
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mCanDragV:Z

    .line 859
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->isDragging()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 864
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->finishDragging(Z)V

    .line 867
    :cond_0
    return v1

    .end local v0    # "result":Z
    :cond_1
    move v0, v2

    .line 838
    goto :goto_0
.end method

.method private handleOnLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 634
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitiateOnLongPress:Z

    if-eqz v1, :cond_1

    .line 635
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitialTouchX:I

    int-to-float v2, v2

    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitialTouchY:I

    int-to-float v3, v3

    .line 636
    invoke-static {v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->findChildViewHolderUnderWithoutTranslation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;FF)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 638
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemDragEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 639
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemDragEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 640
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    .line 639
    invoke-interface {v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;->onItemLongPress(Landroid/view/View;I)V

    .line 642
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mShouldDragOnNextEvent:Z

    .line 643
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLongPressEvent:Landroid/view/MotionEvent;

    .line 645
    .end local v0    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method private handleScrollOnDraggingInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Z)V
    .locals 33
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "horizontal"    # Z

    .prologue
    .line 1052
    if-eqz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v12

    .line 1054
    .local v12, "edge":I
    :goto_0
    if-nez v12, :cond_1

    .line 1183
    :goto_1
    return-void

    .line 1052
    .end local v12    # "edge":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v12

    goto :goto_0

    .line 1058
    .restart local v12    # "edge":I
    :cond_1
    const/high16 v30, 0x3f800000    # 1.0f

    int-to-float v0, v12

    move/from16 v31, v0

    div-float v16, v30, v31

    .line 1059
    .local v16, "invEdge":F
    if-eqz p2, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchX:I

    move/from16 v30, v0

    :goto_2
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v22, v30, v16

    .line 1060
    .local v22, "normalizedTouchPos":F
    const v29, 0x3e99999a    # 0.3f

    .line 1061
    .local v29, "threshold":F
    const v17, 0x40555555

    .line 1062
    .local v17, "invThreshold":F
    const/high16 v30, 0x3f000000    # 0.5f

    sub-float v7, v22, v30

    .line 1063
    .local v7, "centerOffset":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1064
    .local v2, "absCenterOffset":F
    const/16 v30, 0x0

    const v31, 0x3e99999a    # 0.3f

    const/high16 v32, 0x3f000000    # 0.5f

    sub-float v32, v32, v2

    sub-float v31, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(FF)F

    move-result v30

    const v31, 0x40555555

    mul-float v4, v30, v31

    .line 1066
    .local v4, "acceleration":F
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollDirMask:I

    move/from16 v19, v0

    .line 1067
    .local v19, "mask":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

    .line 1069
    .local v8, "decorator":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;
    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragEdgeScrollSpeed:F

    move/from16 v32, v0

    mul-float v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDisplayDensity:F

    move/from16 v32, v0

    mul-float v31, v31, v32

    mul-float v31, v31, v4

    const/high16 v32, 0x3f000000    # 0.5f

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    mul-int v28, v30, v31

    .line 1071
    .local v28, "scrollAmount":I
    const/4 v6, 0x0

    .line 1073
    .local v6, "actualScrolledAmount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggableRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    move-object/from16 v23, v0

    .line 1075
    .local v23, "range":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v30, v0

    .line 1076
    invoke-static/range {v30 .. v30}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->findFirstCompletelyVisibleItemPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v15

    .line 1077
    .local v15, "firstVisibleChild":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v30, v0

    .line 1078
    invoke-static/range {v30 .. v30}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->findLastCompletelyVisibleItemPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v18

    .line 1080
    .local v18, "lastVisibleChild":I
    const/16 v24, 0x0

    .line 1081
    .local v24, "reachedToFirstHardLimit":Z
    const/16 v25, 0x0

    .line 1082
    .local v25, "reachedToFirstSoftLimit":Z
    const/16 v26, 0x0

    .line 1083
    .local v26, "reachedToLastHardLimit":Z
    const/16 v27, 0x0

    .line 1085
    .local v27, "reachedToLastSoftLimit":Z
    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v15, v0, :cond_3

    .line 1086
    invoke-virtual/range {v23 .. v23}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->getStart()I

    move-result v30

    move/from16 v0, v30

    if-gt v15, v0, :cond_2

    .line 1087
    const/16 v25, 0x1

    .line 1089
    :cond_2
    invoke-virtual/range {v23 .. v23}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->getStart()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v30

    if-gt v15, v0, :cond_3

    .line 1090
    const/16 v24, 0x1

    .line 1094
    :cond_3
    const/16 v30, -0x1

    move/from16 v0, v18

    move/from16 v1, v30

    if-eq v0, v1, :cond_5

    .line 1095
    invoke-virtual/range {v23 .. v23}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->getEnd()I

    move-result v30

    move/from16 v0, v18

    move/from16 v1, v30

    if-lt v0, v1, :cond_4

    .line 1096
    const/16 v27, 0x1

    .line 1098
    :cond_4
    invoke-virtual/range {v23 .. v23}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->getEnd()I

    move-result v30

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v18

    move/from16 v1, v30

    if-lt v0, v1, :cond_5

    .line 1099
    const/16 v26, 0x1

    .line 1104
    :cond_5
    if-lez v28, :cond_e

    .line 1105
    if-eqz p2, :cond_d

    const/16 v30, 0x8

    :goto_3
    and-int v30, v30, v19

    if-nez v30, :cond_6

    .line 1106
    const/16 v28, 0x0

    .line 1115
    :cond_6
    :goto_4
    if-nez v24, :cond_7

    if-ltz v28, :cond_8

    :cond_7
    if-nez v26, :cond_14

    if-lez v28, :cond_14

    .line 1117
    :cond_8
    invoke-static/range {p1 .. p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->safeEndAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 1119
    if-eqz p2, :cond_10

    .line 1120
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->scrollByXAndGetScrolledAmount(I)I

    move-result v6

    .line 1123
    :goto_5
    if-gez v28, :cond_12

    .line 1124
    if-nez v25, :cond_11

    const/16 v30, 0x1

    :goto_6
    move/from16 v0, v30

    invoke-virtual {v8, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->setIsScrolling(Z)V

    .line 1129
    :goto_7
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->refresh()V

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mSwapTargetItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;

    move-object/from16 v30, v0

    if-eqz v30, :cond_9

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mSwapTargetItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;

    move-object/from16 v30, v0

    .line 1132
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->getDraggingItemTranslationX()I

    move-result v31

    .line 1133
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->getDraggingItemTranslationY()I

    move-result v32

    .line 1131
    invoke-virtual/range {v30 .. v32}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->update(II)V

    .line 1139
    :cond_9
    :goto_8
    if-eqz v6, :cond_15

    const/4 v5, 0x1

    .line 1142
    .local v5, "actualIsScrolling":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mEdgeEffectDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;

    move-object/from16 v30, v0

    if-eqz v30, :cond_b

    .line 1143
    const v14, 0x3ba3d70a    # 0.005f

    .line 1145
    .local v14, "edgeEffectStrength":F
    if-eqz p2, :cond_16

    .line 1146
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->getTranslatedItemPositionLeft()I

    move-result v11

    .line 1147
    .local v11, "draggingItemTopLeft":I
    :goto_a
    if-eqz p2, :cond_17

    .line 1148
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->getTranslatedItemPositionRight()I

    move-result v9

    .line 1149
    .local v9, "draggingItemBottomRight":I
    :goto_b
    add-int v30, v11, v9

    div-int/lit8 v10, v30, 0x2

    .line 1152
    .local v10, "draggingItemCenter":I
    if-nez v15, :cond_19

    if-nez v18, :cond_19

    .line 1154
    if-gez v28, :cond_18

    move/from16 v21, v11

    .line 1161
    .local v21, "nearEdgePosition":I
    :goto_c
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v16

    const/high16 v31, 0x3f000000    # 0.5f

    sub-float v20, v30, v31

    .line 1162
    .local v20, "nearEdgeOffset":F
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1163
    .local v3, "absNearEdgeOffset":F
    const/4 v13, 0x0

    .line 1165
    .local v13, "edgeEffectPullDistance":F
    const v30, 0x3ecccccd    # 0.4f

    cmpl-float v30, v3, v30

    if-lez v30, :cond_a

    if-eqz v28, :cond_a

    if-nez v5, :cond_a

    .line 1166
    const/16 v30, 0x0

    cmpg-float v30, v20, v30

    if-gez v30, :cond_1c

    .line 1167
    if-eqz p2, :cond_1b

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->isReachedToLeftLimit()Z

    move-result v30

    if-eqz v30, :cond_a

    .line 1169
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDisplayDensity:F

    move/from16 v30, v0

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v30, v0

    const v31, 0x3ba3d70a    # 0.005f

    mul-float v13, v30, v31

    .line 1179
    :cond_a
    :goto_e
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->updateEdgeEffect(F)V

    .line 1182
    .end local v3    # "absNearEdgeOffset":F
    .end local v9    # "draggingItemBottomRight":I
    .end local v10    # "draggingItemCenter":I
    .end local v11    # "draggingItemTopLeft":I
    .end local v13    # "edgeEffectPullDistance":F
    .end local v14    # "edgeEffectStrength":F
    .end local v20    # "nearEdgeOffset":F
    .end local v21    # "nearEdgePosition":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mCheckItemSwappingRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1059
    .end local v2    # "absCenterOffset":F
    .end local v4    # "acceleration":F
    .end local v5    # "actualIsScrolling":Z
    .end local v6    # "actualScrolledAmount":I
    .end local v7    # "centerOffset":F
    .end local v8    # "decorator":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;
    .end local v15    # "firstVisibleChild":I
    .end local v17    # "invThreshold":F
    .end local v18    # "lastVisibleChild":I
    .end local v19    # "mask":I
    .end local v22    # "normalizedTouchPos":F
    .end local v23    # "range":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;
    .end local v24    # "reachedToFirstHardLimit":Z
    .end local v25    # "reachedToFirstSoftLimit":Z
    .end local v26    # "reachedToLastHardLimit":Z
    .end local v27    # "reachedToLastSoftLimit":Z
    .end local v28    # "scrollAmount":I
    .end local v29    # "threshold":F
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchY:I

    move/from16 v30, v0

    goto/16 :goto_2

    .line 1105
    .restart local v2    # "absCenterOffset":F
    .restart local v4    # "acceleration":F
    .restart local v6    # "actualScrolledAmount":I
    .restart local v7    # "centerOffset":F
    .restart local v8    # "decorator":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;
    .restart local v15    # "firstVisibleChild":I
    .restart local v17    # "invThreshold":F
    .restart local v18    # "lastVisibleChild":I
    .restart local v19    # "mask":I
    .restart local v22    # "normalizedTouchPos":F
    .restart local v23    # "range":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;
    .restart local v24    # "reachedToFirstHardLimit":Z
    .restart local v25    # "reachedToFirstSoftLimit":Z
    .restart local v26    # "reachedToLastHardLimit":Z
    .restart local v27    # "reachedToLastSoftLimit":Z
    .restart local v28    # "scrollAmount":I
    .restart local v29    # "threshold":F
    :cond_d
    const/16 v30, 0x2

    goto/16 :goto_3

    .line 1108
    :cond_e
    if-gez v28, :cond_6

    .line 1109
    if-eqz p2, :cond_f

    const/16 v30, 0x4

    :goto_f
    and-int v30, v30, v19

    if-nez v30, :cond_6

    .line 1110
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 1109
    :cond_f
    const/16 v30, 0x1

    goto :goto_f

    .line 1121
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->scrollByYAndGetScrolledAmount(I)I

    move-result v6

    goto/16 :goto_5

    .line 1124
    :cond_11
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 1126
    :cond_12
    if-nez v27, :cond_13

    const/16 v30, 0x1

    :goto_10
    move/from16 v0, v30

    invoke-virtual {v8, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->setIsScrolling(Z)V

    goto/16 :goto_7

    :cond_13
    const/16 v30, 0x0

    goto :goto_10

    .line 1136
    :cond_14
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->setIsScrolling(Z)V

    goto/16 :goto_8

    .line 1139
    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 1146
    .restart local v5    # "actualIsScrolling":Z
    .restart local v14    # "edgeEffectStrength":F
    :cond_16
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->getTranslatedItemPositionTop()I

    move-result v11

    goto/16 :goto_a

    .line 1148
    .restart local v11    # "draggingItemTopLeft":I
    :cond_17
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->getTranslatedItemPositionBottom()I

    move-result v9

    goto/16 :goto_b

    .restart local v9    # "draggingItemBottomRight":I
    .restart local v10    # "draggingItemCenter":I
    :cond_18
    move/from16 v21, v9

    .line 1154
    goto/16 :goto_c

    .line 1157
    :cond_19
    div-int/lit8 v30, v12, 0x2

    move/from16 v0, v30

    if-ge v10, v0, :cond_1a

    move/from16 v21, v11

    .restart local v21    # "nearEdgePosition":I
    :goto_11
    goto/16 :goto_c

    .end local v21    # "nearEdgePosition":I
    :cond_1a
    move/from16 v21, v9

    goto :goto_11

    .line 1168
    .restart local v3    # "absNearEdgeOffset":F
    .restart local v13    # "edgeEffectPullDistance":F
    .restart local v20    # "nearEdgeOffset":F
    .restart local v21    # "nearEdgePosition":I
    :cond_1b
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->isReachedToTopLimit()Z

    move-result v30

    if-eqz v30, :cond_a

    goto/16 :goto_d

    .line 1172
    :cond_1c
    if-eqz p2, :cond_1d

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->isReachedToRightLimit()Z

    move-result v30

    if-eqz v30, :cond_a

    .line 1174
    :goto_12
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDisplayDensity:F

    move/from16 v30, v0

    const v31, 0x3ba3d70a    # 0.005f

    mul-float v13, v30, v31

    goto/16 :goto_e

    .line 1173
    :cond_1d
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->isReachedToBottomLimit()Z

    move-result v30

    if-eqz v30, :cond_a

    goto :goto_12
.end method

.method private performSwapItems(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Landroid/graphics/Rect;II)V
    .locals 8
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "swapTargetHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "swapTargetMargins"    # Landroid/graphics/Rect;
    .param p4, "fromPosition"    # I
    .param p5, "toPosition"    # I

    .prologue
    .line 1332
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemDragEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;

    if-eqz v6, :cond_0

    .line 1333
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemDragEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;

    invoke-interface {v6, p4, p5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;->onItemDragPositionChanged(II)V

    .line 1336
    :cond_0
    const/4 v3, 0x0

    .line 1338
    .local v3, "firstVisibleItem":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 1339
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1340
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1341
    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v3

    .line 1345
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    if-eqz v3, :cond_4

    .line 1346
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    .line 1348
    .local v5, "prevFirstItemPosition":I
    :goto_0
    if-eq p5, v5, :cond_2

    .line 1350
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    invoke-virtual {v6, p4, p5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->moveItem(II)V

    .line 1353
    :cond_2
    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->safeEndAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 1355
    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getOrientation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1387
    :cond_3
    :goto_1
    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->safeEndAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 1388
    return-void

    .line 1346
    .end local v5    # "prevFirstItemPosition":I
    :cond_4
    const/4 v5, -0x1

    goto :goto_0

    .line 1357
    .restart local v5    # "prevFirstItemPosition":I
    :pswitch_0
    if-ne p4, v5, :cond_3

    .line 1359
    move-object v4, p3

    .line 1360
    .local v4, "margins":Landroid/graphics/Rect;
    iget-object v6, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int v2, v6, v7

    .line 1362
    .local v2, "curTopItemHeight":I
    neg-int v6, v2

    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->scrollByYAndGetScrolledAmount(I)I

    goto :goto_1

    .line 1372
    .end local v2    # "curTopItemHeight":I
    .end local v4    # "margins":Landroid/graphics/Rect;
    :pswitch_1
    if-ne p4, v5, :cond_5

    .line 1374
    move-object v4, p3

    .line 1375
    .restart local v4    # "margins":Landroid/graphics/Rect;
    iget-object v6, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int v1, v6, v7

    .line 1377
    .local v1, "curLeftItemHeight":I
    neg-int v6, v1

    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->scrollByXAndGetScrolledAmount(I)I

    goto :goto_1

    .line 1378
    .end local v1    # "curLeftItemHeight":I
    .end local v4    # "margins":Landroid/graphics/Rect;
    :cond_5
    if-ne p5, v5, :cond_3

    .line 1379
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget-object v4, v6, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->margins:Landroid/graphics/Rect;

    .line 1380
    .restart local v4    # "margins":Landroid/graphics/Rect;
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget v6, v6, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->width:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int v1, v6, v7

    .line 1382
    .restart local v1    # "curLeftItemHeight":I
    neg-int v6, v1

    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->scrollByXAndGetScrolledAmount(I)I

    goto :goto_1

    .line 1355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static safeEndAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 1426
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getItemAnimator()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 1427
    .local v0, "itemAnimator":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
    :goto_0
    if-eqz v0, :cond_0

    .line 1428
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 1430
    :cond_0
    return-void

    .line 1426
    .end local v0    # "itemAnimator":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static safeEndAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 1
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 1433
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getItemAnimator()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 1434
    .local v0, "itemAnimator":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
    :goto_0
    if-eqz v0, :cond_0

    .line 1435
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1437
    :cond_0
    return-void

    .line 1433
    .end local v0    # "itemAnimator":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollByXAndGetScrolledAmount(I)I
    .locals 2
    .param p1, "rx"    # I

    .prologue
    const/4 v1, 0x0

    .line 1220
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mActualScrollByXAmount:I

    .line 1221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInScrollByMethod:Z

    .line 1222
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollBy(II)V

    .line 1223
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInScrollByMethod:Z

    .line 1225
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mActualScrollByXAmount:I

    return v0
.end method

.method private scrollByYAndGetScrolledAmount(I)I
    .locals 2
    .param p1, "ry"    # I

    .prologue
    const/4 v1, 0x0

    .line 1211
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mActualScrollByYAmount:I

    .line 1212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInScrollByMethod:Z

    .line 1213
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollBy(II)V

    .line 1214
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInScrollByMethod:Z

    .line 1216
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mActualScrollByYAmount:I

    return v0
.end method

.method private startDragging(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;)V
    .locals 6
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;
    .param p3, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p4, "range"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 651
    invoke-static {p1, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->safeEndAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 653
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$InternalHandler;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$InternalHandler;->cancelLongPressDetection()V

    .line 655
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchX:I

    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchY:I

    invoke-direct {v1, p3, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;II)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    .line 656
    iput-object p3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 663
    iput-object p4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggableRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    .line 665
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mOrigOverScrollMode:I

    .line 666
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setOverScrollMode(I)V

    .line 668
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchX:I

    .line 669
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchY:I

    .line 672
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchY:I

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMaxTouchY:I

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMinTouchY:I

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragStartTouchY:I

    .line 673
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchX:I

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMaxTouchX:I

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMinTouchX:I

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragStartTouchX:I

    .line 674
    const/4 v1, 0x0

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollDirMask:I

    .line 676
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 678
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->startScrollOnDraggingProcess()V

    .line 681
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggableRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    invoke-virtual {v1, v2, p3, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->onDragItemStarted(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;)V

    .line 684
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    invoke-virtual {p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, p3, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 686
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggableRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    invoke-direct {v1, v2, p3, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

    .line 687
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->setShadowDrawable(Landroid/graphics/drawable/NinePatchDrawable;)V

    .line 688
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    invoke-virtual {v1, p2, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->start(Landroid/view/MotionEvent;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;)V

    .line 690
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getLayoutType(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v0

    .line 692
    .local v0, "layoutType":I
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->supportsViewTranslation()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq v0, v5, :cond_0

    if-nez v0, :cond_1

    .line 695
    :cond_0
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggableRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    invoke-direct {v1, v2, p3, v3, v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mSwapTargetItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;

    .line 697
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mSwapTargetItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mSwapTargetTranslationInterpolator:Landroid/view/animation/Interpolator;

    .line 698
    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->setSwapTargetTranslationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 699
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mSwapTargetItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->start()V

    .line 700
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mSwapTargetItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->getDraggingItemTranslationX()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

    .line 701
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->getDraggingItemTranslationY()I

    move-result v3

    .line 700
    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->update(II)V

    .line 704
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mEdgeEffectDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;

    if-eqz v1, :cond_2

    .line 705
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mEdgeEffectDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->reorderToTop()V

    .line 708
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemDragEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitiateOnLongPress:Z

    if-nez v1, :cond_3

    .line 709
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemDragEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;

    iget-object v2, p3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    .line 710
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->getDraggingItemInitialPosition()I

    move-result v3

    .line 709
    invoke-interface {v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;->onItemLongPress(Landroid/view/View;I)V

    .line 712
    :cond_3
    return-void
.end method

.method private startScrollOnDraggingProcess()V
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollOnDraggingProcess:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;->start()V

    .line 1234
    return-void
.end method

.method private stopScrollOnDraggingProcess()V
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollOnDraggingProcess:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollOnDraggingProcess:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;->stop()V

    .line 1240
    :cond_0
    return-void
.end method

.method private static supportsEdgeEffect()Z
    .locals 2

    .prologue
    .line 1418
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static supportsViewTranslation()Z
    .locals 2

    .prologue
    .line 1422
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private swapItems(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;ILcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 22
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "draggingItemAdapterPosition"    # I
    .param p3, "draggingItem"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "swapTargetHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1248
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mTmpRect1:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getLayoutMargins(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 1250
    .local v5, "swapTargetMargins":Landroid/graphics/Rect;
    move/from16 v6, p2

    .line 1251
    .local v6, "fromPosition":I
    invoke-virtual/range {p4 .. p4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v7

    .line 1252
    .local v7, "toPosition":I
    sub-int v2, v6, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 1253
    .local v11, "diffPosition":I
    const/16 v17, 0x0

    .line 1255
    .local v17, "performSwapping":Z
    const/4 v2, -0x1

    if-eq v6, v2, :cond_0

    const/4 v2, -0x1

    if-ne v7, v2, :cond_1

    .line 1324
    :cond_0
    :goto_0
    return-void

    .line 1259
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v8

    .line 1260
    .local v8, "actualDraggingItemId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget-wide v2, v2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->id:J

    cmp-long v2, v8, v2

    if-nez v2, :cond_0

    .line 1268
    if-nez v11, :cond_3

    .line 1321
    :cond_2
    :goto_1
    if-eqz v17, :cond_0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    .line 1322
    invoke-direct/range {v2 .. v7}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->performSwapItems(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Landroid/graphics/Rect;II)V

    goto :goto_0

    .line 1269
    :cond_3
    const/4 v2, 0x1

    if-ne v11, v2, :cond_7

    if-eqz p3, :cond_7

    .line 1270
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v20, v0

    .line 1271
    .local v20, "v1":Landroid/view/View;
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v21, v0

    .line 1272
    .local v21, "v2":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget-object v13, v2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->margins:Landroid/graphics/Rect;

    .line 1274
    .local v13, "m1":Landroid/graphics/Rect;
    move-object v14, v5

    .line 1276
    .local v14, "m2":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mCanDragH:Z

    if-eqz v2, :cond_4

    .line 1277
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1278
    .local v12, "left":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v14, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 1280
    .local v18, "right":I
    int-to-float v2, v12

    sub-int v3, v18, v12

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float v15, v2, v3

    .line 1281
    .local v15, "midPointOfTheItems":F
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchX:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget v3, v3, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->grabbedPositionX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget v3, v3, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->width:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float v16, v2, v3

    .line 1284
    .local v16, "midPointOfTheOverlaidItem":F
    if-ge v7, v6, :cond_5

    .line 1285
    cmpg-float v2, v16, v15

    if-gez v2, :cond_4

    .line 1287
    const/16 v17, 0x1

    .line 1297
    .end local v12    # "left":I
    .end local v15    # "midPointOfTheItems":F
    .end local v16    # "midPointOfTheOverlaidItem":F
    .end local v18    # "right":I
    :cond_4
    :goto_2
    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mCanDragV:Z

    if-eqz v2, :cond_2

    .line 1298
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 1299
    .local v19, "top":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v14, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1301
    .local v10, "bottom":I
    move/from16 v0, v19

    int-to-float v2, v0

    sub-int v3, v10, v19

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float v15, v2, v3

    .line 1302
    .restart local v15    # "midPointOfTheItems":F
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget v3, v3, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->grabbedPositionY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget v3, v3, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->height:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float v16, v2, v3

    .line 1305
    .restart local v16    # "midPointOfTheOverlaidItem":F
    if-ge v7, v6, :cond_6

    .line 1306
    cmpg-float v2, v16, v15

    if-gez v2, :cond_2

    .line 1308
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 1290
    .end local v10    # "bottom":I
    .end local v19    # "top":I
    .restart local v12    # "left":I
    .restart local v18    # "right":I
    :cond_5
    cmpl-float v2, v16, v15

    if-lez v2, :cond_4

    .line 1292
    const/16 v17, 0x1

    goto :goto_2

    .line 1311
    .end local v12    # "left":I
    .end local v18    # "right":I
    .restart local v10    # "bottom":I
    .restart local v19    # "top":I
    :cond_6
    cmpl-float v2, v16, v15

    if-lez v2, :cond_2

    .line 1313
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 1318
    .end local v10    # "bottom":I
    .end local v13    # "m1":Landroid/graphics/Rect;
    .end local v14    # "m2":Landroid/graphics/Rect;
    .end local v15    # "midPointOfTheItems":F
    .end local v16    # "midPointOfTheOverlaidItem":F
    .end local v19    # "top":I
    .end local v20    # "v1":Landroid/view/View;
    .end local v21    # "v2":Landroid/view/View;
    :cond_7
    const/16 v17, 0x1

    goto/16 :goto_1
.end method

.method private updateDragDirectionMask()V
    .locals 2

    .prologue
    .line 1000
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getOrientation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1002
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragStartTouchY:I

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMinTouchY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollTouchSlop:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMaxTouchY:I

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollTouchSlop:I

    if-le v0, v1, :cond_1

    .line 1004
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollDirMask:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollDirMask:I

    .line 1006
    :cond_1
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMaxTouchY:I

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragStartTouchY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollTouchSlop:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchY:I

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMinTouchY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollTouchSlop:I

    if-le v0, v1, :cond_3

    .line 1008
    :cond_2
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollDirMask:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollDirMask:I

    .line 1021
    :cond_3
    :goto_0
    return-void

    .line 1010
    :cond_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getOrientation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1012
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragStartTouchX:I

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMinTouchX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollTouchSlop:I

    if-gt v0, v1, :cond_5

    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMaxTouchX:I

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollTouchSlop:I

    if-le v0, v1, :cond_6

    .line 1014
    :cond_5
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollDirMask:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollDirMask:I

    .line 1016
    :cond_6
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMaxTouchX:I

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragStartTouchX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollTouchSlop:I

    if-gt v0, v1, :cond_7

    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLastTouchX:I

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragMinTouchX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollTouchSlop:I

    if-le v0, v1, :cond_3

    .line 1018
    :cond_7
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollDirMask:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollDirMask:I

    goto :goto_0
.end method

.method private updateEdgeEffect(F)V
    .locals 2
    .param p1, "distance"    # F

    .prologue
    const/4 v1, 0x0

    .line 1186
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_1

    .line 1187
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 1189
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mEdgeEffectDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->pullFirstEdge(F)V

    .line 1197
    :goto_0
    return-void

    .line 1192
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mEdgeEffectDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->pullSecondEdge(F)V

    goto :goto_0

    .line 1195
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mEdgeEffectDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->releaseBothGlows()V

    goto :goto_0
.end method

.method private verifyItemDraggableRange(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 5
    .param p1, "range"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;
    .param p2, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 944
    const/4 v1, 0x0

    .line 945
    .local v1, "start":I
    const/4 v2, 0x0

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 947
    .local v0, "end":I
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->getStart()I

    move-result v2

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->getEnd()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 948
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid range specified --- start > range (range = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 952
    :cond_0
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->getStart()I

    move-result v2

    if-gez v2, :cond_1

    .line 953
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid range specified --- start < 0 (range = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 957
    :cond_1
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->getEnd()I

    move-result v2

    if-le v2, v0, :cond_2

    .line 958
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid range specified --- end >= count (range = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 962
    :cond_2
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->checkInRange(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 963
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid range specified --- does not contain drag target item (range = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 966
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 968
    :cond_3
    return-void
.end method


# virtual methods
.method public attachRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 2
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RecyclerView cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Accessing released object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_2

    .line 275
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView instance has already been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->getDraggableItemWrapperAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    if-eq v0, v1, :cond_4

    .line 279
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "adapter is not set properly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_4
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 284
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInternalUseOnScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setOnScrollListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;)V

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollEventRegisteredToDistributor:Z

    .line 287
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addOnItemTouchListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;)V

    .line 289
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDisplayDensity:F

    .line 290
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mTouchSlop:I

    .line 291
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mTouchSlop:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollTouchSlop:I

    .line 292
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$InternalHandler;

    invoke-direct {v0, p0, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$InternalHandler;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$InternalHandler;

    .line 294
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->supportsEdgeEffect()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 296
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getOrientation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 304
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mEdgeEffectDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;

    if-eqz v0, :cond_5

    .line 305
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mEdgeEffectDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->start()V

    .line 309
    :cond_5
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$3;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$3;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setChildDrawingOrderCallback(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;)V

    .line 330
    return-void

    .line 298
    :pswitch_0
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/LeftRightEdgeEffectDecorator;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/LeftRightEdgeEffectDecorator;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mEdgeEffectDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;

    goto :goto_0

    .line 301
    :pswitch_1
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/TopBottomEdgeEffectDecorator;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/TopBottomEdgeEffectDecorator;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mEdgeEffectDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public cancelDrag()V
    .locals 1

    .prologue
    .line 718
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->cancelDrag(Z)V

    .line 719
    return-void
.end method

.method public cancelLongPressDetection()V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$InternalHandler;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$InternalHandler;->cancelLongPressDetection()V

    .line 746
    return-void
.end method

.method public createWrappedAdapter(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .locals 2
    .param p1, "adapter"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 236
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .line 238
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already have a wrapped adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    .line 244
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    return-object v0
.end method

.method public getDragEdgeScrollSpeed()F
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragEdgeScrollSpeed:F

    return v0
.end method

.method public getItemSettleBackIntoPlaceAnimationDuration()I
    .locals 1

    .prologue
    .line 1619
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemSettleBackIntoPlaceAnimationDuration:I

    return v0
.end method

.method public getItemSettleBackIntoPlaceAnimationInterpolator()Landroid/view/animation/Interpolator;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1640
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemSettleBackIntoPlaceAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getOnItemDragEventListener()Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemDragEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;

    return-object v0
.end method

.method getRecyclerView()Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    return-object v0
.end method

.method handleScrollOnDragging()V
    .locals 2

    .prologue
    .line 1039
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 1041
    .local v0, "rv":Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getOrientation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1049
    :goto_0
    return-void

    .line 1043
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->handleScrollOnDraggingInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Z)V

    goto :goto_0

    .line 1046
    :pswitch_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->handleScrollOnDraggingInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Z)V

    goto :goto_0

    .line 1041
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDeferredCancelProcess:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitiateOnLongPressEnabled()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitiateOnLongPress:Z

    return v0
.end method

.method public isInitiateOnMoveEnabled()Z
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitiateOnMove:Z

    return v0
.end method

.method public isReleased()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onDraggingItemViewRecycled()V
    .locals 1

    .prologue
    .line 1644
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 1645
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->invalidateDraggingItem()V

    .line 1646
    return-void
.end method

.method onInterceptTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 491
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mEnableScrolling:Z

    if-nez v3, :cond_1

    .line 543
    :cond_0
    :goto_0
    return v1

    .line 495
    :cond_1
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 501
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 513
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLongPressInitialTouchY:F

    .line 514
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->isDragging()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->isLongPressing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 515
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->handleActionDown(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z

    .line 517
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mIndexOfFrontChild:I

    goto :goto_0

    .line 505
    :pswitch_1
    invoke-direct {p0, v0, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->handleActionUpOrCancel(IZ)Z

    .line 507
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemDragEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;

    if-eqz v3, :cond_0

    .line 508
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemDragEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;

    invoke-interface {v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;->onItemRelease()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 521
    :pswitch_2
    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLongPressInitialTouchY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 522
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mShouldDragOnNextEvent:Z

    if-eqz v3, :cond_3

    .line 523
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLongPressEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v3, v4, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->checkConditionAndStartDragging(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;Z)Z

    .line 524
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mShouldDragOnNextEvent:Z

    .line 526
    :cond_3
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->isDragging()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 529
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->handleActionMoveWhileDragging(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)V

    move v1, v2

    .line 530
    goto :goto_0

    .line 532
    :cond_4
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitiateOnLongPress:Z

    if-eqz v3, :cond_5

    .line 534
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->cancelLongPressDetection()V

    .line 536
    :cond_5
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->handleActionMoveWhileNotDragging(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 537
    goto :goto_0

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method onNewDraggingItemViewBound(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 1649
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 1650
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDraggingItemDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->setDraggingItemViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 1651
    return-void
.end method

.method onRequestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 576
    if-eqz p1, :cond_0

    .line 577
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->cancelDrag(Z)V

    .line 579
    :cond_0
    return-void
.end method

.method onScrollStateChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const/4 v0, 0x1

    .line 598
    if-ne p2, v0, :cond_0

    .line 599
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->cancelDrag(Z)V

    .line 601
    :cond_0
    return-void
.end method

.method onScrolled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 587
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInScrollByMethod:Z

    if-eqz v0, :cond_0

    .line 588
    iput p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mActualScrollByXAmount:I

    .line 589
    iput p3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mActualScrollByYAmount:I

    .line 591
    :cond_0
    return-void
.end method

.method onTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 547
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 553
    .local v0, "action":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->isDragging()Z

    move-result v1

    if-nez v1, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 561
    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->handleActionUpOrCancel(IZ)Z

    .line 563
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemDragEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemDragEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;

    invoke-interface {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;->onItemRelease()Z

    goto :goto_0

    .line 569
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->handleActionMoveWhileDragging(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 337
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->cancelDrag()V

    .line 339
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$InternalHandler;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$InternalHandler;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$InternalHandler;->release()V

    .line 341
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$InternalHandler;

    .line 344
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mEdgeEffectDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mEdgeEffectDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->finish()V

    .line 346
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mEdgeEffectDecorator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;

    .line 349
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeOnItemTouchListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;)V

    .line 352
    :cond_2
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    .line 354
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInternalUseOnScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollEventRegisteredToDistributor:Z

    if-eqz v0, :cond_3

    .line 356
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setOnScrollListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;)V

    .line 358
    :cond_3
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInternalUseOnScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    .line 360
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollOnDraggingProcess:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;

    if-eqz v0, :cond_4

    .line 361
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollOnDraggingProcess:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;->release()V

    .line 362
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollOnDraggingProcess:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;

    .line 364
    :cond_4
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;

    .line 365
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 366
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mSwapTargetTranslationInterpolator:Landroid/view/animation/Interpolator;

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mScrollEventRegisteredToDistributor:Z

    .line 368
    return-void
.end method

.method public setDragEdgeScrollSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mDragEdgeScrollSpeed:F

    .line 478
    return-void
.end method

.method public setDraggingItemShadowDrawable(Landroid/graphics/drawable/NinePatchDrawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/NinePatchDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 385
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 386
    return-void
.end method

.method public setInitiateOnLongPress(Z)V
    .locals 0
    .param p1, "initiateOnLongPress"    # Z

    .prologue
    .line 412
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitiateOnLongPress:Z

    .line 413
    return-void
.end method

.method public setInitiateOnMove(Z)V
    .locals 0
    .param p1, "initiateOnMove"    # Z

    .prologue
    .line 430
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mInitiateOnMove:Z

    .line 431
    return-void
.end method

.method public setItemSettleBackIntoPlaceAnimationDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 1610
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemSettleBackIntoPlaceAnimationDuration:I

    .line 1611
    return-void
.end method

.method public setItemSettleBackIntoPlaceAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1629
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemSettleBackIntoPlaceAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 1630
    return-void
.end method

.method public setLongPressTimeout(I)V
    .locals 0
    .param p1, "longPressTimeout"    # I

    .prologue
    .line 439
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mLongPressTimeout:I

    .line 440
    return-void
.end method

.method public setOnItemDragEventListener(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 468
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mItemDragEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;

    .line 469
    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 1
    .param p1, "scrollingEnabled"    # Z

    .prologue
    .line 1599
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mEnableScrolling:Z

    .line 1601
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->cancelDrag(Z)V

    .line 1602
    return-void
.end method

.method public setSwapTargetTranslationInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mSwapTargetTranslationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public setSwapTargetTranslationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 394
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->mSwapTargetTranslationInterpolator:Landroid/view/animation/Interpolator;

    .line 395
    return-void
.end method
