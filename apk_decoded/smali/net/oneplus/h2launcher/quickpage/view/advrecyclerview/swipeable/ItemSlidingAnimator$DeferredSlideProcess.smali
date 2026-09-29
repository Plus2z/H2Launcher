.class final Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$DeferredSlideProcess;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$ViewHolderDeferredProcess;
.source "ItemSlidingAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeferredSlideProcess"
.end annotation


# instance fields
.field final mHorizontal:Z

.field final mPosition:F


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FZ)V
    .locals 0
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "position"    # F
    .param p3, "horizontal"    # Z

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$ViewHolderDeferredProcess;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 479
    iput p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$DeferredSlideProcess;->mPosition:F

    .line 480
    iput-boolean p3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$DeferredSlideProcess;->mHorizontal:Z

    .line 481
    return-void
.end method


# virtual methods
.method protected onProcess(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 9
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 485
    move-object v5, p1

    check-cast v5, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    invoke-interface {v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeableContainerView()Landroid/view/View;

    move-result-object v0

    .line 487
    .local v0, "containerView":Landroid/view/View;
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$DeferredSlideProcess;->mHorizontal:Z

    if-eqz v5, :cond_0

    .line 488
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 491
    .local v4, "width":I
    int-to-float v5, v4

    iget v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$DeferredSlideProcess;->mPosition:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v2, v5

    .line 492
    .local v2, "translationX":I
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$DeferredSlideProcess;->mHorizontal:Z

    invoke-static {p1, v5, v2, v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->slideInternalCompat(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZII)V

    .line 500
    .end local v2    # "translationX":I
    .end local v4    # "width":I
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 497
    .local v1, "height":I
    int-to-float v5, v1

    iget v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$DeferredSlideProcess;->mPosition:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v3, v5

    .line 498
    .local v3, "translationY":I
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$DeferredSlideProcess;->mHorizontal:Z

    invoke-static {p1, v5, v8, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->slideInternalCompat(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZII)V

    goto :goto_0
.end method
