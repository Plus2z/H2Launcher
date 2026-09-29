.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;
.source "DraggableItemWrapperAdapter.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter$Constants;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
        ">",
        "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter",
        "<TVH;>;",
        "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemAdapter",
        "<TVH;>;"
    }
.end annotation


# static fields
.field private static final DEBUG_BYPASS_MOVE_OPERATION_MODE:Z = false

.field private static final LOCAL_LOGD:Z = false

.field private static final LOCAL_LOGI:Z = true

.field private static final LOCAL_LOGV:Z = false

.field private static final STATE_FLAG_INITIAL_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ARVDraggableWrapper"


# instance fields
.field private mDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

.field private mDraggableItemAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;

.field private mDraggableRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

.field private mDraggingItemCurrentPosition:I

.field private mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

.field private mDraggingItemInitialPosition:I

.field private mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "manager"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter",
            "<TVH;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    .local p2, "adapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    const/4 v0, -0x1

    .line 56
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    .line 51
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemInitialPosition:I

    .line 52
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemCurrentPosition:I

    .line 58
    invoke-static {p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->getDraggableItemAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggableItemAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;

    .line 59
    invoke-static {p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->getDraggableItemAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adapter does not implement DraggableItemAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    if-nez p1, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "manager cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    .line 68
    return-void
.end method

.method private cancelDrag()V
    .locals 1

    .prologue
    .line 231
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->cancelDrag()V

    .line 234
    :cond_0
    return-void
.end method

.method protected static convertToOriginalPosition(III)I
    .locals 0
    .param p0, "position"    # I
    .param p1, "dragInitial"    # I
    .param p2, "dragCurrent"    # I

    .prologue
    .line 152
    if-ltz p1, :cond_0

    if-gez p2, :cond_2

    :cond_0
    move p1, p0

    .line 170
    .end local p1    # "dragInitial":I
    :cond_1
    :goto_0
    return p1

    .line 156
    .restart local p1    # "dragInitial":I
    :cond_2
    if-eq p1, p2, :cond_4

    if-ge p0, p1, :cond_3

    if-lt p0, p2, :cond_4

    :cond_3
    if-le p0, p1, :cond_5

    if-le p0, p2, :cond_5

    :cond_4
    move p1, p0

    .line 159
    goto :goto_0

    .line 160
    :cond_5
    if-ge p2, p1, :cond_6

    .line 161
    if-eq p0, p2, :cond_1

    .line 164
    add-int/lit8 p1, p0, -0x1

    goto :goto_0

    .line 167
    :cond_6
    if-eq p0, p2, :cond_1

    .line 170
    add-int/lit8 p1, p0, 0x1

    goto :goto_0
.end method

.method private static getDraggableItemAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;
    .locals 1
    .param p0, "adapter"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    .prologue
    .line 390
    const-class v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;

    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/WrapperAdapterUtils;->findWrappedAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;

    return-object v0
.end method

.method private getOriginalPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 396
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemInitialPosition:I

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemCurrentPosition:I

    invoke-static {p1, v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->convertToOriginalPosition(III)I

    move-result v0

    .line 402
    .local v0, "correctedPosition":I
    :goto_0
    return v0

    .line 400
    .end local v0    # "correctedPosition":I
    :cond_0
    move v0, p1

    .restart local v0    # "correctedPosition":I
    goto :goto_0
.end method

.method private static safeUpdateFlags(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p0, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p1, "flags"    # I

    .prologue
    .line 372
    instance-of v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemViewHolder;

    if-nez v3, :cond_0

    .line 387
    .end local p0    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :goto_0
    return-void

    .restart local p0    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_0
    move-object v1, p0

    .line 376
    check-cast v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemViewHolder;

    .line 378
    .local v1, "holder2":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemViewHolder;
    invoke-interface {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemViewHolder;->getDragStateFlags()I

    move-result v0

    .line 379
    .local v0, "curFlags":I
    const v2, 0x7fffffff

    .line 382
    .local v2, "mask":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    xor-int v3, v0, p1

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 383
    :cond_1
    const/high16 v3, -0x80000000

    or-int/2addr p1, v3

    .line 386
    :cond_2
    check-cast p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemViewHolder;

    .end local p0    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-interface {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemViewHolder;->setDragStateFlags(I)V

    goto :goto_0
.end method

.method private shouldCancelDragOnDataUpdated()Z
    .locals 1

    .prologue
    .line 227
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->isDragging()Z

    move-result v0

    return v0
.end method


# virtual methods
.method canStartDrag(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;III)Z
    .locals 1
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 309
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggableItemAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;->onCheckCanStartDrag(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;III)Z

    move-result v0

    return v0
.end method

.method getDraggingItemCurrentPosition()I
    .locals 1

    .prologue
    .line 368
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemCurrentPosition:I

    return v0
.end method

.method getDraggingItemInitialPosition()I
    .locals 1

    .prologue
    .line 364
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemInitialPosition:I

    return v0
.end method

.method getItemDraggableRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;
    .locals 1
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 320
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggableItemAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;

    invoke-interface {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;->onGetItemDraggableRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 131
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemInitialPosition:I

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemCurrentPosition:I

    invoke-static {p1, v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->convertToOriginalPosition(III)I

    move-result v0

    .line 134
    .local v0, "origPosition":I
    invoke-super {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->getItemId(I)J

    move-result-wide v2

    .line 136
    .end local v0    # "origPosition":I
    :goto_0
    return-wide v2

    :cond_0
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 142
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemInitialPosition:I

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemCurrentPosition:I

    invoke-static {p1, v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->convertToOriginalPosition(III)I

    move-result v0

    .line 145
    .local v0, "origPosition":I
    invoke-super {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->getItemViewType(I)I

    move-result v1

    .line 147
    .end local v0    # "origPosition":I
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_0
.end method

.method protected isDragging()Z
    .locals 1

    .prologue
    .line 360
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveItem(II)V
    .locals 4
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 335
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemInitialPosition:I

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemCurrentPosition:I

    invoke-static {p1, v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->convertToOriginalPosition(III)I

    move-result v0

    .line 338
    .local v0, "origFromPosition":I
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemInitialPosition:I

    if-eq v0, v1, :cond_0

    .line 339
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMoveItem() - may be a bug or has duplicate IDs  --- mDraggingItemInitialPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemInitialPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mDraggingItemCurrentPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemCurrentPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "origFromPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fromPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "toPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 350
    :cond_0
    iput p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemCurrentPosition:I

    .line 356
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->notifyItemMoved(II)V

    .line 357
    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 8
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->isDragging()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 92
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget-wide v0, v6, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->id:J

    .line 93
    .local v0, "draggingItemId":J
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    .line 95
    .local v4, "itemId":J
    iget v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemInitialPosition:I

    iget v7, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemCurrentPosition:I

    invoke-static {p2, v6, v7}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->convertToOriginalPosition(III)I

    move-result v3

    .line 98
    .local v3, "origPosition":I
    cmp-long v6, v4, v0

    if-nez v6, :cond_0

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eq p1, v6, :cond_0

    .line 99
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-nez v6, :cond_3

    .line 101
    const-string v6, "ARVDraggableWrapper"

    const-string v7, "a new view holder object for the currently dragging item is assigned"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 105
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    invoke-virtual {v6, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->onNewDraggingItemViewBound(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 112
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 114
    .local v2, "flags":I
    cmp-long v6, v4, v0

    if-nez v6, :cond_1

    .line 115
    or-int/lit8 v2, v2, 0x2

    .line 117
    :cond_1
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggableRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    invoke-virtual {v6, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->checkInRange(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 118
    or-int/lit8 v2, v2, 0x4

    .line 121
    :cond_2
    invoke-static {p1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->safeUpdateFlags(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 122
    invoke-super {p0, p1, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 127
    .end local v0    # "draggingItemId":J
    .end local v2    # "flags":I
    .end local v3    # "origPosition":I
    .end local v4    # "itemId":J
    :goto_1
    return-void

    .line 107
    .restart local v0    # "draggingItemId":J
    .restart local v3    # "origPosition":I
    .restart local v4    # "itemId":J
    :cond_3
    const-string v6, "ARVDraggableWrapper"

    const-string v7, "an another view holder object for the currently dragging item is assigned"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    .end local v0    # "draggingItemId":J
    .end local v3    # "origPosition":I
    .end local v4    # "itemId":J
    :cond_4
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->safeUpdateFlags(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 125
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    goto :goto_1
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
    .line 80
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 82
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    instance-of v1, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemViewHolder;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 83
    check-cast v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemViewHolder;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemViewHolder;->setDragStateFlags(I)V

    .line 86
    :cond_0
    return-object v0
.end method

.method onDragItemFinished(Z)V
    .locals 5
    .param p1, "result"    # Z

    .prologue
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 269
    if-eqz p1, :cond_0

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemCurrentPosition:I

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemInitialPosition:I

    if-eq v1, v2, :cond_0

    .line 272
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->getWrappedAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v1

    const-class v2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;

    .line 271
    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/WrapperAdapterUtils;->findWrappedAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;

    .line 273
    .local v0, "adapter":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemInitialPosition:I

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemCurrentPosition:I

    invoke-interface {v0, v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;->onMoveItem(II)V

    .line 276
    .end local v0    # "adapter":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;
    :cond_0
    iput v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemInitialPosition:I

    .line 277
    iput v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemCurrentPosition:I

    .line 278
    iput-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggableRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    .line 279
    iput-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    .line 280
    iput-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 282
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->notifyDataSetChanged()V

    .line 283
    return-void
.end method

.method onDragItemStarted(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;)V
    .locals 4
    .param p1, "draggingItemInfo"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;
    .param p2, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "range"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    .prologue
    .line 247
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dragging target must provides valid ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemCurrentPosition:I

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemInitialPosition:I

    .line 252
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    .line 253
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 254
    iput-object p3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggableRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    .line 256
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->notifyDataSetChanged()V

    .line 257
    return-void
.end method

.method public onGetSwipeReactionType(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;III)I
    .locals 4
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;III)I"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->getWrappedAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    .line 412
    .local v0, "adapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    instance-of v3, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;

    if-nez v3, :cond_0

    .line 413
    const/4 v3, 0x0

    .line 419
    :goto_0
    return v3

    .line 416
    :cond_0
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->getOriginalPosition(I)I

    move-result v1

    .local v1, "correctedPosition":I
    move-object v2, v0

    .line 418
    check-cast v2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;

    .line 419
    .local v2, "swipeableItemAdapter":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter<TVH;>;"
    invoke-interface {v2, p1, v1, p3, p4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;->onGetSwipeReactionType(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;III)I

    move-result v3

    goto :goto_0
.end method

.method protected onHandleWrappedAdapterChanged()V
    .locals 1

    .prologue
    .line 178
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->shouldCancelDragOnDataUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->cancelDrag()V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-super {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onHandleWrappedAdapterChanged()V

    goto :goto_0
.end method

.method protected onHandleWrappedAdapterItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 187
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->shouldCancelDragOnDataUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->cancelDrag()V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onHandleWrappedAdapterItemRangeChanged(II)V

    goto :goto_0
.end method

.method protected onHandleWrappedAdapterItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 196
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->shouldCancelDragOnDataUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->cancelDrag()V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onHandleWrappedAdapterItemRangeInserted(II)V

    goto :goto_0
.end method

.method protected onHandleWrappedAdapterItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 205
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->shouldCancelDragOnDataUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->cancelDrag()V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onHandleWrappedAdapterItemRangeRemoved(II)V

    goto :goto_0
.end method

.method protected onHandleWrappedAdapterRangeMoved(III)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 215
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->shouldCancelDragOnDataUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->cancelDrag()V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onHandleWrappedAdapterRangeMoved(III)V

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    const/4 v0, 0x0

    .line 72
    invoke-super {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onRelease()V

    .line 73
    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 74
    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggableItemAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;

    .line 75
    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    .line 76
    return-void
.end method

.method public onSetSwipeBackground(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;II)V
    .locals 4
    .param p2, "position"    # I
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;II)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->getWrappedAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    .line 426
    .local v0, "adapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    instance-of v3, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;

    if-nez v3, :cond_0

    .line 434
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->getOriginalPosition(I)I

    move-result v1

    .local v1, "correctedPosition":I
    move-object v2, v0

    .line 432
    check-cast v2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;

    .line 433
    .local v2, "swipeableItemAdapter":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter<TVH;>;"
    invoke-interface {v2, p1, v1, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;->onSetSwipeBackground(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;II)V

    goto :goto_0
.end method

.method public onSwipeItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;II)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;
    .locals 3
    .param p2, "position"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;II)",
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->getWrappedAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    .line 440
    .local v0, "adapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    instance-of v2, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;

    if-nez v2, :cond_0

    .line 441
    new-instance v2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultActionDefault;

    invoke-direct {v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultActionDefault;-><init>()V

    .line 446
    .end local v0    # "adapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    :goto_0
    return-object v2

    .line 444
    .restart local v0    # "adapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    :cond_0
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->getOriginalPosition(I)I

    move-result v1

    .line 446
    .local v1, "correctedPosition":I
    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;

    .end local v0    # "adapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    invoke-static {v0, p1, v1, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemInternalUtils;->invokeOnSwipeItem(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;II)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;

    move-result-object v2

    goto :goto_0
.end method

.method public onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne p1, v0, :cond_0

    .line 290
    const-string v0, "ARVDraggableWrapper"

    const-string v1, "a view holder object which is bound to currently dragging item is recycled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 294
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemWrapperAdapter;->mDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->onDraggingItemViewRecycled()V

    .line 298
    :cond_0
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 299
    return-void
.end method
