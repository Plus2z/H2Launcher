.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;
.super Ljava/lang/Object;
.source "ItemSlidingAnimator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;
.implements Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlidingAnimatorListenerObject"
.end annotation


# instance fields
.field private mActive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

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

.field private mAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private final mDuration:J

.field private final mHorizontal:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mInvSize:F

.field private final mSwipeFinish:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;

.field private final mToX:I

.field private final mToY:I

.field private mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;Ljava/util/List;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIJZLandroid/view/animation/Interpolator;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;)V
    .locals 0
    .param p3, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p4, "toX"    # I
    .param p5, "toY"    # I
    .param p6, "duration"    # J
    .param p8, "horizontal"    # Z
    .param p9, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p10, "swipeFinish"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            "IIJZ",
            "Landroid/view/animation/Interpolator;",
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 523
    .local p1, "adapter":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    .local p2, "activeViewHolders":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    .line 525
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mActive:Ljava/util/List;

    .line 526
    iput-object p3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 527
    iput p4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mToX:I

    .line 528
    iput p5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mToY:I

    .line 529
    iput-boolean p8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mHorizontal:Z

    .line 530
    iput-object p10, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mSwipeFinish:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;

    .line 531
    iput-wide p6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mDuration:J

    .line 532
    iput-object p9, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 533
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 606
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 570
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 574
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 575
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 580
    :goto_0
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mToX:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 581
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mToY:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 584
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mActive:Ljava/util/List;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 588
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 589
    .local v0, "itemParentView":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 590
    check-cast v0, Landroid/view/View;

    .end local v0    # "itemParentView":Landroid/view/ViewParent;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 593
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mSwipeFinish:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;

    if-eqz v1, :cond_1

    .line 594
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mSwipeFinish:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;->resultAction:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;->slideAnimationEnd()V

    .line 598
    :cond_1
    iput-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mActive:Ljava/util/List;

    .line 599
    iput-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 600
    iput-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 601
    iput-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    .line 602
    return-void

    .line 577
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 566
    return-void
.end method

.method public onAnimationUpdate(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 558
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mHorizontal:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v6

    .line 559
    .local v6, "translation":F
    :goto_0
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mInvSize:F

    mul-float v4, v6, v0

    .line 561
    .local v4, "amount":F
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mHorizontal:Z

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->onUpdateSlideAmount(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IZFZ)V

    .line 562
    return-void

    .line 558
    .end local v4    # "amount":F
    .end local v6    # "translation":F
    :cond_0
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v6

    goto :goto_0
.end method

.method start()V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 536
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    invoke-interface {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeableContainerView()Landroid/view/View;

    move-result-object v0

    .line 538
    .local v0, "containerView":Landroid/view/View;
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mHorizontal:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    :goto_0
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float v1, v2, v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mInvSize:F

    .line 541
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 542
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 543
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mToX:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 544
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mToY:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 545
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_0

    .line 546
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 548
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 549
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 552
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mActive:Ljava/util/List;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->mAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 554
    return-void

    .line 538
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0
.end method
