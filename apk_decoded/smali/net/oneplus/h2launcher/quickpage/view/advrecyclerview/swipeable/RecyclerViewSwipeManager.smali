.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;
.super Ljava/lang/Object;
.source "RecyclerViewSwipeManager.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;,
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$OnItemSwipeEventListener;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MIN_DISTANCE_TOUCH_SLOP_MUL:I = 0xa

.field private static final SLIDE_ITEM_IMMEDIATELY_SET_TRANSLATION_THRESHOLD_DP:I = 0x8

.field private static final SWIPE_THRESHOLD:I = 0x50

.field private static final TAG:Ljava/lang/String; = "ARVSwipeManager"


# instance fields
.field private mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableScrolling:Z

.field private mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

.field private mItemPosition:I

.field private mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

.field private mItemSwipeEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$OnItemSwipeEventListener;

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mLongPressEvent:Landroid/view/MotionEvent;

.field private mLongPressInitialTouchX:F

.field private mLongPressTimeout:I

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mMoveToOutsideWindowAnimationDuration:J

.field private mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field private mReturnToDefaultPositionAnimationDuration:J

.field private mShouldSwipeOnNextEvent:Z

.field private mSwipeHorizontal:Z

.field private mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field private mSwipingItemId:J

.field private mSwipingItemMargins:Landroid/graphics/Rect;

.field private mSwipingItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;

.field private mSwipingItemPosition:I

.field private mSwipingItemReactionType:I

.field private mTouchSlop:I

.field private mTouchedItemOffsetX:I

.field private mTouchedItemOffsetY:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mReturnToDefaultPositionAnimationDuration:J

    .line 80
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mMoveToOutsideWindowAnimationDuration:J

    .line 87
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemPosition:I

    .line 93
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemPosition:I

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemId:J

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemMargins:Landroid/graphics/Rect;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mEnableScrolling:Z

    .line 116
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$1;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    .line 132
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 133
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLongPressTimeout:I

    .line 134
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->handleOnLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private checkConditionAndStartSwiping(Landroid/view/MotionEvent;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 545
    invoke-static {p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getSynchronizedPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v0

    .line 547
    .local v0, "itemPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 548
    const/4 v1, 0x0

    .line 553
    :goto_0
    return v1

    .line 551
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->startSwiping(Landroid/view/MotionEvent;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 553
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static determineBackgroundType(FZ)I
    .locals 1
    .param p0, "amount"    # F
    .param p1, "horizontal"    # Z

    .prologue
    const/4 v0, 0x0

    .line 911
    if-eqz p1, :cond_1

    .line 912
    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 916
    :goto_0
    return v0

    .line 912
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 916
    :cond_1
    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private finishSwiping(I)V
    .locals 26
    .param p1, "result"    # I

    .prologue
    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 604
    .local v3, "swipingItem":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-nez v3, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->cancelLongPressDetection()V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 614
    :cond_2
    move-object/from16 v0, p0

    iget v8, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemPosition:I

    .line 616
    .local v8, "itemPosition":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 618
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 619
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemPosition:I

    .line 620
    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    iput-wide v6, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemId:J

    .line 621
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLastTouchX:I

    .line 622
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLastTouchY:I

    .line 623
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mInitialTouchX:I

    .line 624
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mTouchedItemOffsetX:I

    .line 625
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mTouchedItemOffsetY:I

    .line 626
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemPosition:I

    .line 627
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemReactionType:I

    .line 628
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mShouldSwipeOnNextEvent:Z

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;

    if-eqz v2, :cond_3

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->finish()V

    .line 632
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;

    .line 635
    :cond_3
    invoke-static/range {p1 .. p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->resultCodeToSlideDirection(I)I

    move-result v4

    .line 636
    .local v4, "slideDir":I
    const/4 v9, 0x0

    .line 638
    .local v9, "resultAction":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    if-eqz v2, :cond_4

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    move/from16 v0, p1

    invoke-virtual {v2, v3, v8, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->onSwipeItemFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;II)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;

    move-result-object v9

    .line 642
    :cond_4
    const/16 v22, 0x0

    .line 644
    .local v22, "afterReaction":I
    if-eqz v9, :cond_5

    .line 645
    invoke-virtual {v9}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;->getResultActionType()I

    move-result v22

    .line 648
    :cond_5
    move/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->verifyAfterReaction(II)V

    .line 650
    const/16 v25, 0x0

    .line 652
    .local v25, "slideAnimated":Z
    packed-switch v22, :pswitch_data_0

    .line 693
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown after reaction type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 654
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipeHorizontal:Z

    .end local v4    # "slideDir":I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mReturnToDefaultPositionAnimationDuration:J

    invoke-virtual/range {v2 .. v9}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->finishSwipeSlideToDefaultPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZZJILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;)Z

    move-result v25

    .line 696
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    if-eqz v2, :cond_6

    if-eqz v9, :cond_6

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move/from16 v20, v8

    move/from16 v21, p1

    move-object/from16 v23, v9

    invoke-virtual/range {v18 .. v23}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->onSwipeItemFinished2(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;)V

    .line 702
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSwipeEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$OnItemSwipeEventListener;

    if-eqz v2, :cond_7

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSwipeEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$OnItemSwipeEventListener;

    move/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v2, v8, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$OnItemSwipeEventListener;->onItemSwipeFinished(III)V

    .line 707
    :cond_7
    if-nez v25, :cond_0

    if-eqz v9, :cond_0

    .line 708
    invoke-virtual {v9}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;->slideAnimationEnd()V

    goto/16 :goto_0

    .line 660
    .restart local v4    # "slideDir":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mMoveToOutsideWindowAnimationDuration:J

    invoke-virtual/range {v2 .. v9}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->finishSwipeSlideToOutsideOfWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IZJILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;)Z

    move-result v25

    .line 663
    goto :goto_1

    .line 665
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getItemAnimator()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    move-result-object v24

    .line 667
    .local v24, "itemAnimator":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
    if-eqz v24, :cond_9

    .line 668
    invoke-virtual/range {v24 .. v24}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v14

    .line 670
    .local v14, "removeAnimationDuration":J
    :goto_2
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->supportsViewPropertyAnimator()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 671
    if-eqz v24, :cond_a

    .line 672
    invoke-virtual/range {v24 .. v24}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v16

    .line 674
    .local v16, "moveAnimationDuration":J
    :goto_3
    new-instance v10, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object v12, v3

    move/from16 v13, p1

    invoke-direct/range {v10 .. v17}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IJJ)V

    .line 678
    .local v10, "decorator":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;
    sget-object v2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator;->MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->setMoveAnimationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 681
    :try_start_0
    invoke-virtual {v10}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    .end local v10    # "decorator":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;
    .end local v16    # "moveAnimationDuration":J
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    const/4 v5, 0x1

    move-wide v6, v14

    invoke-virtual/range {v2 .. v9}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->finishSwipeSlideToOutsideOfWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IZJILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;)Z

    move-result v25

    .line 691
    goto :goto_1

    .line 668
    .end local v14    # "removeAnimationDuration":J
    :cond_9
    const-wide/16 v14, 0x0

    goto :goto_2

    .line 672
    .restart local v14    # "removeAnimationDuration":J
    :cond_a
    const-wide/16 v16, 0x0

    goto :goto_3

    .line 682
    .restart local v10    # "decorator":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;
    .restart local v16    # "moveAnimationDuration":J
    :catch_0
    move-exception v2

    goto :goto_4

    .line 652
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static getItemPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;JI)I
    .locals 7
    .param p0, "adapter"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "itemId"    # J
    .param p3, "itemPositionGuess"    # I

    .prologue
    const/4 v2, -0x1

    .line 746
    if-nez p0, :cond_1

    move p3, v2

    .line 760
    .end local p3    # "itemPositionGuess":I
    :cond_0
    :goto_0
    return p3

    .line 749
    .restart local p3    # "itemPositionGuess":I
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 750
    .local v1, "itemCount":I
    if-ltz p3, :cond_2

    if-ge p3, v1, :cond_2

    .line 751
    invoke-virtual {p0, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-eqz v3, :cond_0

    .line 755
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 756
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_3

    move p3, v0

    .line 757
    goto :goto_0

    .line 755
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move p3, v2

    .line 760
    goto :goto_0
.end method

.method private static getSwipeableItemWrapperAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;
    .locals 2
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    const-class v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/WrapperAdapterUtils;->findWrappedAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    return-object v0
.end method

.method private handleActionDown(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 343
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v2

    .line 345
    .local v2, "adapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->findChildViewHolderUnderWithTranslation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;FF)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v3

    .line 347
    .local v3, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    instance-of v13, v3, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    if-nez v13, :cond_0

    .line 348
    const/4 v13, 0x0

    .line 384
    :goto_0
    return v13

    .line 351
    :cond_0
    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getSynchronizedPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v4

    .line 354
    .local v4, "itemPosition":I
    if-ltz v4, :cond_1

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v13

    if-lt v4, v13, :cond_2

    .line 355
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v14

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-eqz v13, :cond_3

    .line 358
    const/4 v13, 0x0

    goto :goto_0

    .line 361
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v6, v13

    .line 362
    .local v6, "touchX":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v7, v13

    .line 364
    .local v7, "touchY":I
    iget-object v10, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 365
    .local v10, "view":Landroid/view/View;
    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v8, v13

    .line 366
    .local v8, "translateX":I
    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v9, v13

    .line 367
    .local v9, "translateY":I
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v13

    add-int/2addr v13, v8

    sub-int v11, v6, v13

    .line 368
    .local v11, "viewX":I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    add-int/2addr v13, v9

    sub-int v12, v7, v13

    .line 370
    .local v12, "viewY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    invoke-virtual {v13, v3, v4, v11, v12}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->getSwipeReactionType(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;III)I

    move-result v5

    .line 372
    .local v5, "reactionType":I
    if-nez v5, :cond_4

    .line 373
    const/4 v13, 0x0

    goto :goto_0

    .line 376
    :cond_4
    move-object/from16 v0, p0

    iput v6, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mInitialTouchX:I

    .line 377
    move-object/from16 v0, p0

    iput v7, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mInitialTouchY:I

    .line 378
    move-object/from16 v0, p0

    iput v4, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemPosition:I

    .line 379
    move-object/from16 v0, p0

    iput v5, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemReactionType:I

    .line 381
    const/high16 v13, 0x1000000

    and-int/2addr v13, v5

    if-eqz v13, :cond_5

    .line 382
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;

    move-object/from16 v0, p0

    iget v14, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLongPressTimeout:I

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->startLongPressDetection(Landroid/view/MotionEvent;I)V

    .line 384
    :cond_5
    const/4 v13, 0x1

    goto :goto_0
.end method

.method private handleActionMoveWhileNotSwiping(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v0, 0x1

    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 470
    iget v7, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemPosition:I

    if-ne v7, v9, :cond_1

    .line 529
    :cond_0
    :goto_0
    return v6

    .line 474
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    add-float/2addr v7, v10

    float-to-int v7, v7

    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mInitialTouchX:I

    sub-int v1, v7, v8

    .line 475
    .local v1, "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    add-float/2addr v7, v10

    float-to-int v7, v7

    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mInitialTouchY:I

    sub-int v2, v7, v8

    .line 480
    .local v2, "dy":I
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipeHorizontal:Z

    if-eqz v7, :cond_2

    .line 481
    move v4, v2

    .line 482
    .local v4, "scrollAxisDelta":I
    move v5, v1

    .line 488
    .local v5, "swipeAxisDelta":I
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mTouchSlop:I

    if-le v7, v8, :cond_3

    .line 490
    iput v9, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemPosition:I

    goto :goto_0

    .line 484
    .end local v4    # "scrollAxisDelta":I
    .end local v5    # "swipeAxisDelta":I
    :cond_2
    move v4, v1

    .line 485
    .restart local v4    # "scrollAxisDelta":I
    move v5, v2

    .restart local v5    # "swipeAxisDelta":I
    goto :goto_1

    .line 494
    :cond_3
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mTouchSlop:I

    if-le v7, v8, :cond_0

    .line 500
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipeHorizontal:Z

    if-eqz v7, :cond_7

    .line 501
    if-gez v5, :cond_5

    .line 502
    iget v7, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemReactionType:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_4

    .line 514
    .local v0, "dirMasked":Z
    :goto_2
    if-eqz v0, :cond_b

    .line 516
    iput v9, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemPosition:I

    goto :goto_0

    .end local v0    # "dirMasked":Z
    :cond_4
    move v0, v6

    .line 502
    goto :goto_2

    .line 504
    :cond_5
    iget v7, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemReactionType:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-eqz v7, :cond_6

    .restart local v0    # "dirMasked":Z
    :goto_3
    goto :goto_2

    .end local v0    # "dirMasked":Z
    :cond_6
    move v0, v6

    goto :goto_3

    .line 507
    :cond_7
    if-gez v5, :cond_9

    .line 508
    iget v7, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemReactionType:I

    and-int/lit16 v7, v7, 0x200

    if-eqz v7, :cond_8

    .restart local v0    # "dirMasked":Z
    :goto_4
    goto :goto_2

    .end local v0    # "dirMasked":Z
    :cond_8
    move v0, v6

    goto :goto_4

    .line 510
    :cond_9
    iget v7, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemReactionType:I

    const/high16 v8, 0x200000

    and-int/2addr v7, v8

    if-eqz v7, :cond_a

    .restart local v0    # "dirMasked":Z
    :goto_5
    goto :goto_2

    .end local v0    # "dirMasked":Z
    :cond_a
    move v0, v6

    goto :goto_5

    .line 521
    .restart local v0    # "dirMasked":Z
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {p1, v7, v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->findChildViewHolderUnderWithTranslation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;FF)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v3

    .line 523
    .local v3, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v3, :cond_c

    .line 524
    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getSynchronizedPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v7

    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemPosition:I

    if-eq v7, v8, :cond_d

    .line 525
    :cond_c
    iput v9, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemPosition:I

    goto :goto_0

    .line 529
    :cond_d
    invoke-direct {p0, p2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->checkConditionAndStartSwiping(Landroid/view/MotionEvent;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v6

    goto/16 :goto_0
.end method

.method private handleActionMoveWhileSwiping(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLastTouchX:I

    .line 534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLastTouchY:I

    .line 535
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 537
    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLastTouchX:I

    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mTouchedItemOffsetX:I

    sub-int v0, v3, v4

    .line 538
    .local v0, "swipeDistanceX":I
    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLastTouchY:I

    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mTouchedItemOffsetY:I

    sub-int v1, v3, v4

    .line 539
    .local v1, "swipeDistanceY":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->getSwipingItemPosition()I

    move-result v2

    .line 541
    .local v2, "swipingItemPosition":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;

    invoke-virtual {v3, v2, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->update(III)V

    .line 542
    return-void
.end method

.method private handleActionUpOrCancel(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 393
    const/4 v0, 0x3

    .line 395
    .local v0, "action":I
    if-eqz p1, :cond_0

    .line 396
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLastTouchX:I

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLastTouchY:I

    .line 401
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLongPressInitialTouchX:F

    .line 402
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mShouldSwipeOnNextEvent:Z

    .line 403
    iput-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLongPressEvent:Landroid/view/MotionEvent;

    .line 405
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;

    invoke-virtual {v2, v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 407
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->isSwiping()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->handleActionUpOrCancelWhileSwiping(I)V

    .line 409
    const/4 v1, 0x1

    .line 412
    :goto_0
    return v1

    .line 411
    :cond_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->handleActionUpOrCancelWhileNotSwiping()V

    goto :goto_0
.end method

.method private handleActionUpOrCancelWhileNotSwiping()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->cancelLongPressDetection()V

    .line 419
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemPosition:I

    .line 420
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemReactionType:I

    .line 421
    return-void
.end method

.method private handleActionUpOrCancelWhileSwiping(I)V
    .locals 12
    .param p1, "action"    # I

    .prologue
    const/4 v11, 0x0

    .line 424
    const/4 v5, 0x1

    .line 426
    .local v5, "result":I
    const/4 v8, 0x1

    if-ne p1, v8, :cond_1

    .line 427
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipeHorizontal:Z

    .line 428
    .local v3, "horizontal":Z
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v4, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 429
    .local v4, "itemView":Landroid/view/View;
    if-eqz v3, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 430
    .local v7, "viewSize":I
    :goto_0
    if-eqz v3, :cond_3

    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLastTouchX:I

    iget v9, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mInitialTouchX:I

    sub-int/2addr v8, v9

    int-to-float v2, v8

    .line 432
    .local v2, "distance":F
    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 434
    .local v0, "absDistance":F
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    iget v10, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mMaxFlingVelocity:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 437
    if-eqz v3, :cond_4

    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    .line 439
    .local v6, "velocity":F
    :goto_2
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 441
    .local v1, "absVelocity":F
    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mTouchSlop:I

    mul-int/lit8 v8, v8, 0xa

    int-to-float v8, v8

    cmpl-float v8, v0, v8

    if-lez v8, :cond_1

    mul-float v8, v2, v6

    cmpl-float v8, v8, v11

    if-lez v8, :cond_1

    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mMaxFlingVelocity:I

    int-to-float v8, v8

    cmpg-float v8, v1, v8

    if-gtz v8, :cond_1

    div-int/lit8 v8, v7, 0x2

    int-to-float v8, v8

    cmpl-float v8, v0, v8

    if-gtz v8, :cond_0

    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mMinFlingVelocity:I

    int-to-float v8, v8

    cmpl-float v8, v1, v8

    if-ltz v8, :cond_1

    .line 446
    :cond_0
    if-eqz v3, :cond_5

    cmpg-float v8, v2, v11

    if-gez v8, :cond_5

    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemReactionType:I

    .line 447
    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeReactionUtils;->canSwipeLeft(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 448
    const/4 v5, 0x2

    .line 466
    .end local v0    # "absDistance":F
    .end local v1    # "absVelocity":F
    .end local v2    # "distance":F
    .end local v3    # "horizontal":Z
    .end local v4    # "itemView":Landroid/view/View;
    .end local v6    # "velocity":F
    .end local v7    # "viewSize":I
    :cond_1
    :goto_3
    invoke-direct {p0, v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->finishSwiping(I)V

    .line 467
    return-void

    .line 429
    .restart local v3    # "horizontal":Z
    .restart local v4    # "itemView":Landroid/view/View;
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    goto :goto_0

    .line 430
    .restart local v7    # "viewSize":I
    :cond_3
    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLastTouchY:I

    iget v9, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mInitialTouchY:I

    sub-int/2addr v8, v9

    int-to-float v2, v8

    goto :goto_1

    .line 437
    .restart local v0    # "absDistance":F
    .restart local v2    # "distance":F
    :cond_4
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 438
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    goto :goto_2

    .line 449
    .restart local v1    # "absVelocity":F
    .restart local v6    # "velocity":F
    :cond_5
    if-nez v3, :cond_6

    cmpg-float v8, v2, v11

    if-gez v8, :cond_6

    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemReactionType:I

    .line 450
    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeReactionUtils;->canSwipeUp(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 451
    const/4 v5, 0x3

    goto :goto_3

    .line 452
    :cond_6
    if-eqz v3, :cond_7

    cmpl-float v8, v2, v11

    if-lez v8, :cond_7

    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemReactionType:I

    .line 453
    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeReactionUtils;->canSwipeRight(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 454
    const/4 v5, 0x4

    goto :goto_3

    .line 455
    :cond_7
    if-nez v3, :cond_1

    cmpl-float v8, v2, v11

    if-lez v8, :cond_1

    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemReactionType:I

    .line 456
    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeReactionUtils;->canSwipeDown(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 457
    const/4 v5, 0x5

    goto :goto_3
.end method

.method private handleOnLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 936
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mShouldSwipeOnNextEvent:Z

    .line 937
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLongPressEvent:Landroid/view/MotionEvent;

    .line 938
    return-void
.end method

.method private static resultCodeToSlideDirection(I)I
    .locals 1
    .param p0, "result"    # I

    .prologue
    const/4 v0, 0x0

    .line 729
    packed-switch p0, :pswitch_data_0

    .line 740
    :goto_0
    :pswitch_0
    return v0

    .line 733
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 735
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 737
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 729
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private slideItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FZZ)V
    .locals 6
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "amount"    # F
    .param p3, "horizontal"    # Z
    .param p4, "shouldAnimate"    # Z

    .prologue
    .line 778
    const/high16 v0, -0x38800000    # -65536.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 779
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    const/4 v2, 0x0

    iget-wide v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mMoveToOutsideWindowAnimationDuration:J

    move-object v1, p1

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->slideToOutsideOfWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IZJ)V

    .line 796
    :goto_0
    return-void

    .line 781
    :cond_0
    const v0, -0x387fff80    # -65537.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 782
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    const/4 v2, 0x1

    iget-wide v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mMoveToOutsideWindowAnimationDuration:J

    move-object v1, p1

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->slideToOutsideOfWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IZJ)V

    goto :goto_0

    .line 784
    :cond_1
    const/high16 v0, 0x47800000    # 65536.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    .line 785
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    const/4 v2, 0x2

    iget-wide v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mMoveToOutsideWindowAnimationDuration:J

    move-object v1, p1

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->slideToOutsideOfWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IZJ)V

    goto :goto_0

    .line 787
    :cond_2
    const v0, 0x47800080    # 65537.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_3

    .line 788
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    const/4 v2, 0x3

    iget-wide v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mMoveToOutsideWindowAnimationDuration:J

    move-object v1, p1

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->slideToOutsideOfWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IZJ)V

    goto :goto_0

    .line 790
    :cond_3
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_4

    .line 791
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    iget-wide v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mReturnToDefaultPositionAnimationDuration:J

    move-object v1, p1

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->slideToDefaultPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZZJ)V

    goto :goto_0

    .line 794
    :cond_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->slideToSpecifiedPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FZ)V

    goto :goto_0
.end method

.method private startSwiping(Landroid/view/MotionEvent;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "itemPosition"    # I

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 561
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->cancelLongPressDetection()V

    .line 563
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 564
    iput p3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemPosition:I

    .line 565
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    invoke-virtual {v0, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemId:J

    .line 566
    if-eqz p1, :cond_0

    .line 567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLastTouchX:I

    .line 568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLastTouchY:I

    .line 570
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLastTouchX:I

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mTouchedItemOffsetX:I

    .line 571
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLastTouchY:I

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mTouchedItemOffsetY:I

    .line 572
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemPosition:I

    .line 573
    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemMargins:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getLayoutMargins(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 575
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemReactionType:I

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipeHorizontal:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IZ)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;

    .line 577
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemOperator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->start()V

    .line 579
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 580
    if-eqz p1, :cond_1

    .line 581
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 584
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 587
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSwipeEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$OnItemSwipeEventListener;

    if-eqz v0, :cond_2

    .line 588
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSwipeEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$OnItemSwipeEventListener;

    invoke-interface {v0, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$OnItemSwipeEventListener;->onItemSwipeStarted(I)V

    .line 592
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    iget-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemId:J

    invoke-virtual {v0, p0, p2, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->onSwipeItemStarted(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;J)V

    .line 593
    return-void
.end method

.method private static supportsViewPropertyAnimator()Z
    .locals 2

    .prologue
    .line 954
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

.method private static verifyAfterReaction(II)V
    .locals 3
    .param p0, "result"    # I
    .param p1, "afterReaction"    # I

    .prologue
    .line 713
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 715
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 722
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected after reaction has been requested: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", afterReaction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_1
    :pswitch_0
    return-void

    .line 715
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method applySlideItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IFFZZZ)V
    .locals 17
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "itemPosition"    # I
    .param p3, "prevAmount"    # F
    .param p4, "amount"    # F
    .param p5, "horizontal"    # Z
    .param p6, "shouldAnimate"    # Z
    .param p7, "isSwiping"    # Z

    .prologue
    .line 871
    move-object/from16 v14, p1

    check-cast v14, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    .line 872
    .local v14, "holder2":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;
    invoke-interface {v14}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeableContainerView()Landroid/view/View;

    move-result-object v13

    .line 874
    .local v13, "containerView":Landroid/view/View;
    if-nez v13, :cond_0

    .line 908
    :goto_0
    return-void

    .line 880
    :cond_0
    const/4 v5, 0x0

    cmpl-float v5, p4, v5

    if-nez v5, :cond_2

    .line 881
    const/4 v5, 0x0

    cmpl-float v5, p3, v5

    if-nez v5, :cond_1

    .line 882
    const/4 v11, 0x0

    .line 890
    .local v11, "reqBackgroundType":I
    :goto_1
    const/4 v5, 0x0

    cmpl-float v5, p4, v5

    if-nez v5, :cond_3

    .line 891
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->slideItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FZZ)V

    .line 892
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p5

    move/from16 v9, p4

    move/from16 v10, p7

    invoke-virtual/range {v5 .. v11}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->onUpdateSlideAmount(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IZFZI)V

    goto :goto_0

    .line 884
    .end local v11    # "reqBackgroundType":I
    :cond_1
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->determineBackgroundType(FZ)I

    move-result v11

    .restart local v11    # "reqBackgroundType":I
    goto :goto_1

    .line 887
    .end local v11    # "reqBackgroundType":I
    :cond_2
    invoke-static/range {p4 .. p5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->determineBackgroundType(FZ)I

    move-result v11

    .restart local v11    # "reqBackgroundType":I
    goto :goto_1

    .line 895
    :cond_3
    move/from16 v12, p4

    .line 896
    .local v12, "adjustedAmount":F
    if-eqz p5, :cond_4

    invoke-interface {v14}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getMaxLeftSwipeAmount()F

    move-result v16

    .line 898
    .local v16, "minLimit":F
    :goto_2
    if-eqz p5, :cond_5

    invoke-interface {v14}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getMaxRightSwipeAmount()F

    move-result v15

    .line 901
    .local v15, "maxLimit":F
    :goto_3
    move/from16 v0, v16

    invoke-static {v12, v0}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 902
    invoke-static {v12, v15}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 904
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p5

    move/from16 v9, p4

    move/from16 v10, p7

    invoke-virtual/range {v5 .. v11}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->onUpdateSlideAmount(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IZFZI)V

    .line 906
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct {v0, v1, v12, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->slideItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FZZ)V

    goto :goto_0

    .line 897
    .end local v15    # "maxLimit":F
    .end local v16    # "minLimit":F
    :cond_4
    invoke-interface {v14}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getMaxUpSwipeAmount()F

    move-result v16

    goto :goto_2

    .line 899
    .restart local v16    # "minLimit":F
    :cond_5
    invoke-interface {v14}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getMaxDownSwipeAmount()F

    move-result v15

    goto :goto_3
.end method

.method public attachRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 6
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 172
    if-nez p1, :cond_0

    .line 173
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "RecyclerView cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->isReleased()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Accessing released object"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v3, :cond_2

    .line 181
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "RecyclerView instance has already been set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    if-eqz v3, :cond_3

    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->getSwipeableItemWrapperAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    if-eq v3, v4, :cond_4

    .line 185
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "adapter is not set properly"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_4
    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getOrientation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v0

    .line 189
    .local v0, "layoutOrientation":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    .line 190
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "failed to determine layout orientation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :cond_5
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 194
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addOnItemTouchListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;)V

    .line 196
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 198
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mTouchSlop:I

    .line 199
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mMinFlingVelocity:I

    .line 200
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mMaxFlingVelocity:I

    .line 202
    new-instance v3, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    invoke-direct {v3, v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    .line 203
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    .line 204
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 203
    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->setImmediatelySetTranslationThreshold(I)V

    .line 207
    if-ne v0, v2, :cond_6

    :goto_0
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipeHorizontal:Z

    .line 208
    new-instance v2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;

    .line 209
    return-void

    .line 207
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public cancelLongPressDetection()V
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->cancelLongPressDetection()V

    .line 770
    return-void
.end method

.method cancelPendingAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 923
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 926
    :cond_0
    return-void
.end method

.method public cancelSwipe()V
    .locals 1

    .prologue
    .line 764
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->handleActionUpOrCancel(Landroid/view/MotionEvent;)Z

    .line 765
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->finishSwiping(I)V

    .line 766
    return-void
.end method

.method public createWrappedAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;
    .locals 2
    .param p1, "adapter"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 145
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already have a wrapped adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    .line 151
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    return-object v0
.end method

.method public getMoveToOutsideWindowAnimationDuration()J
    .locals 2

    .prologue
    .line 831
    iget-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mMoveToOutsideWindowAnimationDuration:J

    return-wide v0
.end method

.method public getOnItemSwipeEventListener()Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$OnItemSwipeEventListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 851
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSwipeEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$OnItemSwipeEventListener;

    return-object v0
.end method

.method public getReturnToDefaultPositionAnimationDuration()J
    .locals 2

    .prologue
    .line 813
    iget-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mReturnToDefaultPositionAnimationDuration:J

    return-wide v0
.end method

.method getSwipeContainerViewTranslationX(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 929
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->getSwipeContainerViewTranslationX(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method getSwipeContainerViewTranslationY(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 933
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->getSwipeContainerViewTranslationY(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method getSwipingItemPosition()I
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemPosition:I

    return v0
.end method

.method isAnimationRunning(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 773
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->isRunning(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReleased()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwiping()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onInterceptTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 259
    iget-boolean v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mEnableScrolling:Z

    if-nez v4, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v2

    .line 263
    :cond_1
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 269
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 278
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLongPressInitialTouchX:F

    .line 279
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->isSwiping()Z

    move-result v3

    if-nez v3, :cond_0

    .line 280
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->handleActionDown(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 272
    :pswitch_1
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->handleActionUpOrCancel(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 273
    goto :goto_0

    .line 285
    :pswitch_2
    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLongPressInitialTouchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x42a00000    # 80.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 286
    iget-boolean v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mShouldSwipeOnNextEvent:Z

    if-eqz v4, :cond_2

    .line 287
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemPosition:I

    .line 288
    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 289
    .local v1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v1, :cond_2

    .line 290
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLongPressEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v4, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->checkConditionAndStartSwiping(Landroid/view/MotionEvent;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    .line 291
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mShouldSwipeOnNextEvent:Z

    .line 295
    .end local v1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->isSwiping()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 298
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->handleActionMoveWhileSwiping(Landroid/view/MotionEvent;)V

    move v2, v3

    .line 299
    goto :goto_0

    .line 301
    :cond_3
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->handleActionMoveWhileNotSwiping(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 302
    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 337
    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->cancelSwipe()V

    .line 340
    :cond_0
    return-void
.end method

.method onTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 313
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 319
    .local v0, "action":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->isSwiping()Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    :goto_0
    return-void

    .line 324
    :cond_0
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 327
    :pswitch_0
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->handleActionUpOrCancel(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 331
    :pswitch_1
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->handleActionMoveWhileSwiping(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 324
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

    .line 216
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->release()V

    .line 218
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mHandler:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;

    .line 221
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeOnItemTouchListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;)V

    .line 224
    :cond_1
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    .line 226
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 228
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 231
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->endAnimations()V

    .line 233
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSlideAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;

    .line 236
    :cond_3
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    .line 237
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 238
    return-void
.end method

.method public setLongPressTimeout(I)V
    .locals 0
    .param p1, "longPressTimeout"    # I

    .prologue
    .line 255
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mLongPressTimeout:I

    .line 256
    return-void
.end method

.method public setMoveToOutsideWindowAnimationDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 840
    iput-wide p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mMoveToOutsideWindowAnimationDuration:J

    .line 841
    return-void
.end method

.method public setOnItemSwipeEventListener(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$OnItemSwipeEventListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$OnItemSwipeEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 860
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mItemSwipeEventListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$OnItemSwipeEventListener;

    .line 861
    return-void
.end method

.method public setReturnToDefaultPositionAnimationDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 822
    iput-wide p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mReturnToDefaultPositionAnimationDuration:J

    .line 823
    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 0
    .param p1, "scrollingEnabled"    # Z

    .prologue
    .line 804
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mEnableScrolling:Z

    .line 805
    return-void
.end method

.method swipeHorizontal()Z
    .locals 1

    .prologue
    .line 864
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipeHorizontal:Z

    return v0
.end method

.method public swipeItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "result"    # I

    .prologue
    .line 596
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->startSwiping(Landroid/view/MotionEvent;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 597
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 598
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->finishSwiping(I)V

    .line 599
    return-void
.end method

.method syncSwipingItemPosition()I
    .locals 1

    .prologue
    .line 945
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemPosition:I

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->syncSwipingItemPosition(I)I

    move-result v0

    return v0
.end method

.method syncSwipingItemPosition(I)I
    .locals 4
    .param p1, "positionGuess"    # I

    .prologue
    .line 949
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    iget-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemId:J

    invoke-static {v0, v2, v3, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->getItemPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;JI)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemPosition:I

    .line 950
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->mSwipingItemPosition:I

    return v0
.end method
