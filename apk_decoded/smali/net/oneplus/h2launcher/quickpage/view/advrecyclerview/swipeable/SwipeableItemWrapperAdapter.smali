.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;
.source "SwipeableItemWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter$Constants;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
        ">",
        "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter",
        "<TVH;>;"
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final STATE_FLAG_INITIAL_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ARVSwipeableWrapper"


# instance fields
.field private mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

.field private mSwipeableItemAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;

.field private mSwipingItemId:J


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "manager"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter",
            "<TVH;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    .local p2, "adapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipingItemId:J

    .line 49
    invoke-static {p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->getSwipeableItemAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeableItemAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;

    .line 50
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeableItemAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adapter does not implement SwipeableItemAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    if-nez p1, :cond_1

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "manager cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    .line 59
    return-void
.end method

.method private cancelSwipe()V
    .locals 1

    .prologue
    .line 196
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->cancelSwipe()V

    .line 199
    :cond_0
    return-void
.end method

.method private static checkInRange(III)Z
    .locals 1
    .param p0, "pos"    # I
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 292
    if-lt p0, p1, :cond_0

    add-int v0, p1, p2

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSwipeAmountFromAfterReaction(II)F
    .locals 1
    .param p0, "result"    # I
    .param p1, "afterReaction"    # I

    .prologue
    const/4 v0, 0x0

    .line 316
    packed-switch p1, :pswitch_data_0

    .line 334
    :goto_0
    :pswitch_0
    return v0

    .line 321
    :pswitch_1
    packed-switch p0, :pswitch_data_1

    goto :goto_0

    .line 323
    :pswitch_2
    const/high16 v0, -0x38800000    # -65536.0f

    goto :goto_0

    .line 325
    :pswitch_3
    const/high16 v0, 0x47800000    # 65536.0f

    goto :goto_0

    .line 327
    :pswitch_4
    const v0, -0x387fff80    # -65537.0f

    goto :goto_0

    .line 329
    :pswitch_5
    const v0, 0x47800080    # 65537.0f

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 321
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static getSwipeItemSlideAmount(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;Z)F
    .locals 1
    .param p0, "holder"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;
    .param p1, "horizontal"    # Z

    .prologue
    .line 300
    if-eqz p1, :cond_0

    .line 301
    invoke-interface {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeItemHorizontalSlideAmount()F

    move-result v0

    .line 303
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeItemVerticalSlideAmount()F

    move-result v0

    goto :goto_0
.end method

.method private static getSwipeableItemAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;
    .locals 1
    .param p0, "adapter"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    .prologue
    .line 357
    const-class v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;

    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/WrapperAdapterUtils;->findWrappedAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;

    return-object v0
.end method

.method private static safeUpdateFlags(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p0, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p1, "flags"    # I

    .prologue
    .line 339
    instance-of v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    if-nez v3, :cond_0

    .line 354
    .end local p0    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :goto_0
    return-void

    .restart local p0    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_0
    move-object v1, p0

    .line 343
    check-cast v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    .line 345
    .local v1, "holder2":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;
    invoke-interface {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeStateFlags()I

    move-result v0

    .line 346
    .local v0, "curFlags":I
    const v2, 0x7fffffff

    .line 349
    .local v2, "mask":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    xor-int v3, v0, p1

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 350
    :cond_1
    const/high16 v3, -0x80000000

    or-int/2addr p1, v3

    .line 353
    :cond_2
    check-cast p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    .end local p0    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-interface {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->setSwipeStateFlags(I)V

    goto :goto_0
.end method

.method private static setSwipeItemSlideAmount(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;FZ)V
    .locals 0
    .param p0, "holder"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;
    .param p1, "amount"    # F
    .param p2, "horizontal"    # Z

    .prologue
    .line 308
    if-eqz p2, :cond_0

    .line 309
    invoke-interface {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->setSwipeItemHorizontalSlideAmount(F)V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-interface {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->setSwipeItemVerticalSlideAmount(F)V

    goto :goto_0
.end method

.method private swipeHorizontal()Z
    .locals 1

    .prologue
    .line 296
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->swipeHorizontal()Z

    move-result v0

    return v0
.end method


# virtual methods
.method getSwipeReactionType(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;III)I
    .locals 1
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 209
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeableItemAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;->onGetSwipeReactionType(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;III)I

    move-result v0

    return v0
.end method

.method protected isSwiping()Z
    .locals 4

    .prologue
    .line 288
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    iget-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipingItemId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 12
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 118
    .local v3, "prevSwipeItemSlideAmount":F
    instance-of v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 119
    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->swipeHorizontal()Z

    move-result v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->getSwipeItemSlideAmount(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;Z)F

    move-result v3

    .line 122
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->isSwiping()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    const/4 v8, 0x1

    .line 125
    .local v8, "flags":I
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    iget-wide v10, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipingItemId:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_1

    .line 126
    or-int/lit8 v8, v8, 0x2

    .line 129
    :cond_1
    invoke-static {p1, v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->safeUpdateFlags(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 130
    invoke-super {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 136
    .end local v8    # "flags":I
    :goto_0
    instance-of v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 137
    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->swipeHorizontal()Z

    move-result v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->getSwipeItemSlideAmount(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;Z)F

    move-result v4

    .line 139
    .local v4, "swipeItemSlideAmount":F
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->isSwiping()Z

    move-result v7

    .line 140
    .local v7, "isSwiping":Z
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->isAnimationRunning(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v9

    .line 141
    .local v9, "isAnimationRunning":Z
    cmpl-float v0, v3, v4

    if-nez v0, :cond_2

    if-nez v7, :cond_3

    if-nez v9, :cond_3

    .line 142
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    .line 144
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->swipeHorizontal()Z

    move-result v5

    const/4 v6, 0x1

    move-object v1, p1

    move v2, p2

    .line 142
    invoke-virtual/range {v0 .. v7}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->applySlideItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IFFZZZ)V

    .line 148
    .end local v4    # "swipeItemSlideAmount":F
    .end local v7    # "isSwiping":Z
    .end local v9    # "isAnimationRunning":Z
    :cond_3
    return-void

    .line 132
    :cond_4
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->safeUpdateFlags(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 133
    invoke-super {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ILjava/util/List;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 107
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    instance-of v1, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 108
    check-cast v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->setSwipeStateFlags(I)V

    .line 111
    :cond_0
    return-object v0
.end method

.method protected onHandleWrappedAdapterChanged()V
    .locals 1

    .prologue
    .line 152
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->isSwiping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->cancelSwipe()V

    .line 155
    :cond_0
    invoke-super {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onHandleWrappedAdapterChanged()V

    .line 156
    return-void
.end method

.method protected onHandleWrappedAdapterItemRangeChanged(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 160
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onHandleWrappedAdapterItemRangeChanged(II)V

    .line 161
    return-void
.end method

.method protected onHandleWrappedAdapterItemRangeInserted(II)V
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 165
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->isSwiping()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->getSwipingItemPosition()I

    move-result v0

    .line 167
    .local v0, "pos":I
    if-lt v0, p1, :cond_0

    .line 168
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    add-int v2, v0, p2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->syncSwipingItemPosition(I)I

    .line 171
    .end local v0    # "pos":I
    :cond_0
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onHandleWrappedAdapterItemRangeInserted(II)V

    .line 172
    return-void
.end method

.method protected onHandleWrappedAdapterItemRangeRemoved(II)V
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 176
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->isSwiping()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->getSwipingItemPosition()I

    move-result v0

    .line 178
    .local v0, "pos":I
    invoke-static {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->checkInRange(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->cancelSwipe()V

    .line 184
    .end local v0    # "pos":I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onHandleWrappedAdapterItemRangeRemoved(II)V

    .line 185
    return-void

    .line 180
    .restart local v0    # "pos":I
    :cond_1
    if-ge p1, v0, :cond_0

    .line 181
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    sub-int v2, v0, p2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->syncSwipingItemPosition(I)I

    goto :goto_0
.end method

.method protected onHandleWrappedAdapterRangeMoved(III)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 189
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->isSwiping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->syncSwipingItemPosition()I

    .line 192
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onHandleWrappedAdapterRangeMoved(III)V

    .line 193
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    const/4 v0, 0x0

    .line 63
    invoke-super {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onRelease()V

    .line 65
    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeableItemAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;

    .line 66
    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipingItemId:J

    .line 68
    return-void
.end method

.method onSwipeItemFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;II)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "position"    # I
    .param p3, "result"    # I

    .prologue
    .line 265
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipingItemId:J

    .line 267
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeableItemAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;

    invoke-static {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemInternalUtils;->invokeOnSwipeItem(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;II)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;

    move-result-object v0

    return-object v0
.end method

.method onSwipeItemFinished2(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;)V
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "position"    # I
    .param p3, "result"    # I
    .param p4, "afterReaction"    # I
    .param p5, "resultAction"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;

    .prologue
    .line 274
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    move-object v0, p1

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    invoke-interface {v0, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->setSwipeResult(I)V

    move-object v0, p1

    .line 275
    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    invoke-interface {v0, p4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->setAfterSwipeReaction(I)V

    .line 277
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    .line 279
    .end local p1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-static {p3, p4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->getSwipeAmountFromAfterReaction(II)F

    move-result v0

    .line 280
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->swipeHorizontal()Z

    move-result v1

    .line 277
    invoke-static {p1, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->setSwipeItemSlideAmount(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;FZ)V

    .line 282
    invoke-virtual {p5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;->performAction()V

    .line 284
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->notifyDataSetChanged()V

    .line 285
    return-void
.end method

.method onSwipeItemStarted(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;J)V
    .locals 1
    .param p1, "manager"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;
    .param p2, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "id"    # J

    .prologue
    .line 252
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    iput-wide p3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipingItemId:J

    .line 254
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->notifyDataSetChanged()V

    .line 255
    return-void
.end method

.method onUpdateSlideAmount(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IZFZ)V
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "position"    # I
    .param p3, "horizontal"    # Z
    .param p4, "amount"    # F
    .param p5, "isSwiping"    # Z

    .prologue
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    const/4 v0, 0x0

    .line 242
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    .end local p1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz p3, :cond_1

    move v1, p4

    :goto_0
    if-eqz p3, :cond_0

    move p4, v0

    .end local p4    # "amount":F
    :cond_0
    invoke-interface {p1, v1, p4, p5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->onSlideAmountUpdated(FFZ)V

    .line 244
    return-void

    .restart local p4    # "amount":F
    :cond_1
    move v1, v0

    .line 242
    goto :goto_0
.end method

.method onUpdateSlideAmount(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IZFZI)V
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "position"    # I
    .param p3, "horizontal"    # Z
    .param p4, "amount"    # F
    .param p5, "isSwiping"    # Z
    .param p6, "type"    # I

    .prologue
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    const/4 v0, 0x0

    .line 225
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeableItemAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;

    invoke-interface {v1, p1, p2, p6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;->onSetSwipeBackground(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;II)V

    .line 226
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    .end local p1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz p3, :cond_1

    move v1, p4

    :goto_0
    if-eqz p3, :cond_0

    move p4, v0

    .end local p4    # "amount":F
    :cond_0
    invoke-interface {p1, v1, p4, p5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->onSlideAmountUpdated(FFZ)V

    .line 228
    return-void

    .restart local p4    # "amount":F
    :cond_1
    move v1, v0

    .line 226
    goto :goto_0
.end method

.method public onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 72
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 74
    iget-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipingItemId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipingItemId:J

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 75
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->cancelSwipe()V

    .line 79
    :cond_0
    instance-of v2, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    if-eqz v2, :cond_2

    .line 80
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemWrapperAdapter;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->cancelPendingAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    :cond_1
    move-object v1, p1

    .line 84
    check-cast v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    .line 87
    .local v1, "swipeableHolder":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;
    invoke-interface {v1, v7}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->setSwipeResult(I)V

    .line 88
    invoke-interface {v1, v7}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->setAfterSwipeReaction(I)V

    .line 90
    invoke-interface {v1, v6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->setSwipeItemHorizontalSlideAmount(F)V

    .line 91
    invoke-interface {v1, v6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->setSwipeItemVerticalSlideAmount(F)V

    .line 93
    invoke-interface {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeableContainerView()Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "containerView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 96
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 97
    invoke-static {v0, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 98
    invoke-static {v0, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 101
    .end local v0    # "containerView":Landroid/view/View;
    .end local v1    # "swipeableHolder":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;
    :cond_2
    return-void
.end method
