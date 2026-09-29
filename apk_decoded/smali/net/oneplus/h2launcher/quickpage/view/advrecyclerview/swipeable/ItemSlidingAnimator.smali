.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;
.super Ljava/lang/Object;
.source "ItemSlidingAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;,
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;,
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$DeferredSlideProcess;,
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$ViewHolderDeferredProcess;
    }
.end annotation


# static fields
.field public static final DIR_DOWN:I = 0x3

.field public static final DIR_LEFT:I = 0x0

.field public static final DIR_RIGHT:I = 0x2

.field public static final DIR_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ItemSlidingAnimator"


# instance fields
.field private final mActive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeferredProcesses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$ViewHolderDeferredProcess;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImmediatelySetTranslationThreshold:I

.field private final mSlideToDefaultPositionAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private final mSlideToOutsideOfWindowAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private final mTmpLocation:[I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "adapter":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mSlideToDefaultPositionAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 53
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mSlideToOutsideOfWindowAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mTmpLocation:[I

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mTmpRect:Landroid/graphics/Rect;

    .line 61
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mActive:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mDeferredProcesses:Ljava/util/List;

    .line 64
    return-void
.end method

.method private animateSlideInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZIIJLandroid/view/animation/Interpolator;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;)Z
    .locals 19
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "horizontal"    # Z
    .param p3, "translationX"    # I
    .param p4, "translationY"    # I
    .param p5, "duration"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "swipeFinish"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;

    .prologue
    .line 342
    move-object/from16 v0, p1

    instance-of v3, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    if-nez v3, :cond_0

    .line 343
    const/4 v3, 0x0

    .line 380
    :goto_0
    return v3

    :cond_0
    move-object/from16 v3, p1

    .line 346
    check-cast v3, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    invoke-interface {v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeableContainerView()Landroid/view/View;

    move-result-object v13

    .line 348
    .local v13, "containerView":Landroid/view/View;
    invoke-static {v13}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v17, v0

    .line 349
    .local v17, "prevTranslationX":I
    invoke-static {v13}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v18, v0

    .line 351
    .local v18, "prevTranslationY":I
    invoke-virtual/range {p0 .. p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 353
    invoke-static {v13}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v14, v3

    .line 354
    .local v14, "curTranslationX":I
    invoke-static {v13}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v15, v3

    .line 356
    .local v15, "curTranslationY":I
    move/from16 v6, p3

    .line 358
    .local v6, "toX":I
    move/from16 v7, p4

    .line 360
    .local v7, "toY":I
    const-wide/16 v4, 0x0

    cmp-long v3, p5, v4

    if-eqz v3, :cond_2

    if-ne v14, v6, :cond_1

    if-eq v15, v7, :cond_2

    :cond_1
    sub-int v3, v6, v17

    .line 362
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v4, v7, v18

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mImmediatelySetTranslationThreshold:I

    if-gt v3, v4, :cond_4

    .line 364
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v16, v6, v3

    .line 365
    .local v16, "current":I
    if-lez v16, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v0, v16

    int-to-float v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    .line 366
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 365
    :goto_1
    invoke-static {v13, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 367
    move/from16 v0, v17

    int-to-float v3, v0

    invoke-static {v13, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 368
    move/from16 v0, v18

    int-to-float v3, v0

    invoke-static {v13, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 369
    int-to-float v3, v6

    invoke-static {v13, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 370
    int-to-float v3, v7

    invoke-static {v13, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 372
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 366
    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    .line 375
    .end local v16    # "current":I
    :cond_4
    new-instance v2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mActive:Ljava/util/List;

    move-object/from16 v5, p1

    move-wide/from16 v8, p5

    move/from16 v10, p2

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;Ljava/util/List;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIJZLandroid/view/animation/Interpolator;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;)V

    .line 378
    .local v2, "listener":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SlidingAnimatorListenerObject;->start()V

    .line 380
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private animateSlideInternalCompat(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZIIJLandroid/view/animation/Interpolator;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;)Z
    .locals 3
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "horizontal"    # Z
    .param p3, "translationX"    # I
    .param p4, "translationY"    # I
    .param p5, "duration"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "swipeFinish"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;

    .prologue
    .line 250
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->supportsViewPropertyAnimator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-direct/range {p0 .. p8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->animateSlideInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZIIJLandroid/view/animation/Interpolator;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;)Z

    move-result v0

    .line 260
    .local v0, "result":Z
    :goto_0
    return v0

    .line 253
    .end local v0    # "result":Z
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->slideInternalPreHoneycomb(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZII)Z

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method private cancelDeferredProcess(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 101
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mDeferredProcesses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 102
    .local v2, "n":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 103
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mDeferredProcesses:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$ViewHolderDeferredProcess;

    .line 105
    .local v0, "dp":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$ViewHolderDeferredProcess;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$ViewHolderDeferredProcess;->hasTargetViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    iget-object v3, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 107
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mDeferredProcesses:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 102
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 108
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$ViewHolderDeferredProcess;->lostReference(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mDeferredProcesses:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 112
    .end local v0    # "dp":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$ViewHolderDeferredProcess;
    :cond_3
    return-void
.end method

.method private static getTranslationXPreHoneycomb(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 5
    .param p0, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 302
    check-cast p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    .end local p0    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-interface {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeableContainerView()Landroid/view/View;

    move-result-object v0

    .line 304
    .local v0, "containerView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 305
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 306
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 307
    .local v2, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 310
    .end local v2    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    return v3

    .line 309
    :cond_0
    const-string v3, "ItemSlidingAnimator"

    const-string v4, "should use MarginLayoutParams supported view for compatibility on Android 2.3"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getTranslationYPreHoneycomb(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 5
    .param p0, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 315
    check-cast p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    .end local p0    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-interface {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeableContainerView()Landroid/view/View;

    move-result-object v0

    .line 317
    .local v0, "containerView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 318
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 319
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 320
    .local v2, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 323
    .end local v2    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    return v3

    .line 322
    :cond_0
    const-string v3, "ItemSlidingAnimator"

    const-string v4, "should use MarginLayoutParams supported view for compatibility on Android 2.3"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private scheduleViewHolderDeferredSlideProcess(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$ViewHolderDeferredProcess;)V
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "deferredProcess"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$ViewHolderDeferredProcess;

    .prologue
    .line 115
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mDeferredProcesses:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method private static slideInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZII)V
    .locals 2
    .param p0, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p1, "horizontal"    # Z
    .param p2, "translationX"    # I
    .param p3, "translationY"    # I

    .prologue
    .line 328
    instance-of v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    if-nez v1, :cond_0

    .line 336
    .end local p0    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :goto_0
    return-void

    .line 332
    .restart local p0    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_0
    check-cast p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    .end local p0    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-interface {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeableContainerView()Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, "containerView":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 334
    int-to-float v1, p2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 335
    int-to-float v1, p3

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_0
.end method

.method static slideInternalCompat(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZII)V
    .locals 1
    .param p0, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p1, "horizontal"    # Z
    .param p2, "translationX"    # I
    .param p3, "translationY"    # I

    .prologue
    .line 264
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->supportsViewPropertyAnimator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->slideInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZII)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->slideInternalPreHoneycomb(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZII)Z

    goto :goto_0
.end method

.method private static slideInternalPreHoneycomb(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZII)Z
    .locals 6
    .param p0, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p1, "horizontal"    # Z
    .param p2, "translationX"    # I
    .param p3, "translationY"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 274
    instance-of v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    if-nez v3, :cond_0

    .line 298
    .end local p0    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :goto_0
    return v5

    .line 278
    .restart local p0    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_0
    check-cast p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    .end local p0    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-interface {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeableContainerView()Landroid/view/View;

    move-result-object v0

    .line 280
    .local v0, "containerView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 281
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_2

    move-object v2, v1

    .line 282
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 284
    .local v2, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 285
    neg-int v3, p2

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 286
    iput p3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 287
    neg-int v3, p3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 289
    instance-of v3, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_1

    .line 290
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/16 v3, 0x33

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 293
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 295
    .end local v2    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const-string v3, "ItemSlidingAnimator"

    const-string v4, "should use MarginLayoutParams supported view for compatibility on Android 2.3"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private slideToOutsideOfWindowInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IZJLnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;)Z
    .locals 24
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "dir"    # I
    .param p3, "shouldAnimate"    # Z
    .param p4, "duration"    # J
    .param p6, "swipeFinish"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;

    .prologue
    .line 163
    move-object/from16 v0, p1

    instance-of v3, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    if-nez v3, :cond_0

    .line 164
    const/4 v3, 0x0

    .line 238
    :goto_0
    return v3

    :cond_0
    move-object/from16 v3, p1

    .line 167
    check-cast v3, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    invoke-interface {v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeableContainerView()Landroid/view/View;

    move-result-object v12

    .line 168
    .local v12, "containerView":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 170
    .local v15, "parent":Landroid/view/ViewGroup;
    if-nez v15, :cond_1

    .line 171
    const/4 v3, 0x0

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 175
    .local v14, "left":I
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v17

    .line 176
    .local v17, "right":I
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v18

    .line 177
    .local v18, "top":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 178
    .local v2, "bottom":I
    sub-int v19, v17, v14

    .line 179
    .local v19, "width":I
    sub-int v13, v2, v18

    .line 180
    .local v13, "height":I
    invoke-virtual {v15}, Landroid/view/ViewGroup;->isShown()Z

    move-result v16

    .line 182
    .local v16, "parentIsShown":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v21

    .line 184
    .local v21, "windowWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v20

    .line 186
    .local v20, "windowHeight":I
    const/4 v6, 0x0

    .line 187
    .local v6, "translateX":I
    const/4 v7, 0x0

    .line 189
    .local v7, "translateY":I
    if-eqz v19, :cond_2

    if-eqz v13, :cond_2

    if-nez v16, :cond_5

    .line 191
    :cond_2
    packed-switch p2, :pswitch_data_0

    .line 207
    :goto_1
    const/16 p3, 0x0

    .line 231
    :goto_2
    if-eqz p3, :cond_3

    .line 232
    invoke-virtual {v12}, Landroid/view/View;->isShown()Z

    move-result p3

    .line 235
    :cond_3
    if-eqz p3, :cond_6

    .line 237
    :goto_3
    if-eqz p2, :cond_4

    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    :cond_4
    const/4 v5, 0x1

    .line 238
    .local v5, "horizontal":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mSlideToOutsideOfWindowAnimationInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v8, p4

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->animateSlideInternalCompat(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZIIJLandroid/view/animation/Interpolator;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;)Z

    move-result v3

    goto :goto_0

    .line 193
    .end local v5    # "horizontal":Z
    :pswitch_0
    move/from16 v0, v21

    neg-int v6, v0

    .line 194
    goto :goto_1

    .line 196
    :pswitch_1
    move/from16 v0, v20

    neg-int v7, v0

    .line 197
    goto :goto_1

    .line 199
    :pswitch_2
    move/from16 v6, v21

    .line 200
    goto :goto_1

    .line 202
    :pswitch_3
    move/from16 v7, v20

    .line 203
    goto :goto_1

    .line 209
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mTmpLocation:[I

    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mTmpLocation:[I

    const/4 v4, 0x0

    aget v22, v3, v4

    .line 211
    .local v22, "x":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mTmpLocation:[I

    const/4 v4, 0x1

    aget v23, v3, v4

    .line 213
    .local v23, "y":I
    packed-switch p2, :pswitch_data_1

    goto :goto_2

    .line 215
    :pswitch_4
    add-int v3, v22, v19

    neg-int v6, v3

    .line 216
    goto :goto_2

    .line 218
    :pswitch_5
    add-int v3, v23, v13

    neg-int v7, v3

    .line 219
    goto :goto_2

    .line 221
    :pswitch_6
    sub-int v3, v22, v14

    sub-int v6, v21, v3

    .line 222
    goto :goto_2

    .line 224
    :pswitch_7
    sub-int v3, v23, v18

    sub-int v7, v20, v3

    .line 225
    goto :goto_2

    .line 235
    .end local v22    # "x":I
    .end local v23    # "y":I
    :cond_6
    const-wide/16 p4, 0x0

    goto :goto_3

    .line 237
    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 213
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private slideToSpecifiedPositionInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FZZJLnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;)Z
    .locals 31
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "position"    # F
    .param p3, "horizontal"    # Z
    .param p4, "shouldAnimate"    # Z
    .param p5, "duration"    # J
    .param p7, "swipeFinish"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mSlideToDefaultPositionAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 125
    .local v12, "defaultInterpolator":Landroid/view/animation/Interpolator;
    if-eqz p4, :cond_0

    .line 127
    :goto_0
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-eqz v5, :cond_4

    move-object/from16 v5, p1

    .line 128
    check-cast v5, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    invoke-interface {v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeableContainerView()Landroid/view/View;

    move-result-object v4

    .line 129
    .local v4, "containerView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v29

    .line 130
    .local v29, "width":I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v28

    .line 132
    .local v28, "height":I
    if-eqz p3, :cond_1

    if-eqz v29, :cond_1

    .line 134
    move/from16 v0, v29

    int-to-float v5, v0

    mul-float v5, v5, p2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v8, v5

    .line 135
    .local v8, "translationX":I
    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p3

    move-wide/from16 v10, p5

    move-object/from16 v13, p7

    invoke-direct/range {v5 .. v13}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->animateSlideInternalCompat(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZIIJLandroid/view/animation/Interpolator;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;)Z

    move-result v5

    .line 154
    .end local v4    # "containerView":Landroid/view/View;
    .end local v8    # "translationX":I
    .end local v28    # "height":I
    .end local v29    # "width":I
    :goto_1
    return v5

    .line 125
    :cond_0
    const-wide/16 p5, 0x0

    goto :goto_0

    .line 137
    .restart local v4    # "containerView":Landroid/view/View;
    .restart local v28    # "height":I
    .restart local v29    # "width":I
    :cond_1
    if-nez p3, :cond_2

    if-eqz v28, :cond_2

    .line 139
    move/from16 v0, v28

    int-to-float v5, v0

    mul-float v5, v5, p2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v17, v0

    .line 140
    .local v17, "translationY":I
    const/16 v16, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v15, p3

    move-wide/from16 v18, p5

    move-object/from16 v20, v12

    move-object/from16 v21, p7

    invoke-direct/range {v13 .. v21}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->animateSlideInternalCompat(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZIIJLandroid/view/animation/Interpolator;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;)Z

    move-result v5

    goto :goto_1

    .line 143
    .end local v17    # "translationY":I
    :cond_2
    if-eqz p7, :cond_3

    .line 144
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unexpected state in slideToSpecifiedPositionInternal (swipeFinish == null)"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 148
    :cond_3
    new-instance v5, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$DeferredSlideProcess;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v5, v0, v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$DeferredSlideProcess;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->scheduleViewHolderDeferredSlideProcess(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$ViewHolderDeferredProcess;)V

    .line 151
    const/4 v5, 0x0

    goto :goto_1

    .line 154
    .end local v4    # "containerView":Landroid/view/View;
    .end local v28    # "height":I
    .end local v29    # "width":I
    :cond_4
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move/from16 v21, p3

    move-wide/from16 v24, p5

    move-object/from16 v26, v12

    move-object/from16 v27, p7

    invoke-direct/range {v19 .. v27}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->animateSlideInternalCompat(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZIIJLandroid/view/animation/Interpolator;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;)Z

    move-result v5

    goto :goto_1
.end method

.method private static supportsViewPropertyAnimator()Z
    .locals 2

    .prologue
    .line 423
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


# virtual methods
.method public endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 384
    instance-of v1, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    if-nez v1, :cond_1

    .line 397
    :cond_0
    return-void

    .line 388
    :cond_1
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->cancelDeferredProcess(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    move-object v1, p1

    .line 390
    check-cast v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    invoke-interface {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeableContainerView()Landroid/view/View;

    move-result-object v0

    .line 392
    .local v0, "containerView":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 394
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mActive:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "after animation is cancelled, item should not be in the active animation list [slide]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endAnimations()V
    .locals 3

    .prologue
    .line 400
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mActive:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 401
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mActive:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 402
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 400
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 404
    .end local v0    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_0
    return-void
.end method

.method public finishSwipeSlideToDefaultPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZZJILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;)Z
    .locals 12
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "horizontal"    # Z
    .param p3, "shouldAnimate"    # Z
    .param p4, "duration"    # J
    .param p6, "itemPosition"    # I
    .param p7, "resultAction"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->cancelDeferredProcess(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 86
    const/4 v5, 0x0

    new-instance v10, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;

    move/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {v10, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;-><init>(ILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;)V

    move-object v3, p0

    move-object v4, p1

    move v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v10}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->slideToSpecifiedPositionInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FZZJLnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;)Z

    move-result v2

    return v2
.end method

.method public finishSwipeSlideToOutsideOfWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IZJILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;)Z
    .locals 8
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "dir"    # I
    .param p3, "shouldAnimate"    # Z
    .param p4, "duration"    # J
    .param p6, "itemPosition"    # I
    .param p7, "resultAction"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->cancelDeferredProcess(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 95
    new-instance v6, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;

    invoke-direct {v6, p6, p7}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;-><init>(ILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->slideToOutsideOfWindowInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IZJLnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;)Z

    move-result v0

    return v0
.end method

.method public getImmediatelySetTranslationThreshold()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mImmediatelySetTranslationThreshold:I

    return v0
.end method

.method public getSwipeContainerViewTranslationX(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 3
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 427
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->supportsViewPropertyAnimator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    .end local p1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-interface {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeableContainerView()Landroid/view/View;

    move-result-object v0

    .line 429
    .local v0, "containerView":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 431
    .end local v0    # "containerView":Landroid/view/View;
    :goto_0
    return v1

    .restart local p1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_0
    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->getTranslationXPreHoneycomb(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v1

    goto :goto_0
.end method

.method public getSwipeContainerViewTranslationY(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 3
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 436
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->supportsViewPropertyAnimator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    .end local p1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-interface {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeableContainerView()Landroid/view/View;

    move-result-object v0

    .line 438
    .local v0, "containerView":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 440
    .end local v0    # "containerView":Landroid/view/View;
    :goto_0
    return v1

    .restart local p1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_0
    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->getTranslationYPreHoneycomb(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v1

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mActive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 407
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mActive:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setImmediatelySetTranslationThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 419
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->mImmediatelySetTranslationThreshold:I

    .line 420
    return-void
.end method

.method public slideToDefaultPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ZZJ)V
    .locals 10
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "horizontal"    # Z
    .param p3, "shouldAnimate"    # Z
    .param p4, "duration"    # J

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->cancelDeferredProcess(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 68
    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->slideToSpecifiedPositionInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FZZJLnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;)Z

    .line 69
    return-void
.end method

.method public slideToOutsideOfWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IZJ)V
    .locals 8
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "dir"    # I
    .param p3, "shouldAnimate"    # Z
    .param p4, "duration"    # J

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->cancelDeferredProcess(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 73
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->slideToOutsideOfWindowInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IZJLnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;)Z

    .line 74
    return-void
.end method

.method public slideToSpecifiedPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FZ)V
    .locals 9
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "position"    # F
    .param p3, "horizontal"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->cancelDeferredProcess(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 78
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;->slideToSpecifiedPositionInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FZZJLnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;)Z

    .line 79
    return-void
.end method
