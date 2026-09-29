.class public interface abstract Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;
.super Ljava/lang/Object;
.source "DraggableItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onCheckCanStartDrag(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;III)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation
.end method

.method public abstract onGetItemDraggableRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;"
        }
    .end annotation
.end method

.method public abstract onMoveItem(II)V
.end method
