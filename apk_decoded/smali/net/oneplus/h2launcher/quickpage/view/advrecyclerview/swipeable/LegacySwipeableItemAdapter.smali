.class public interface abstract Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/LegacySwipeableItemAdapter;
.super Ljava/lang/Object;
.source "LegacySwipeableItemAdapter.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract onPerformAfterSwipeReaction(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)V"
        }
    .end annotation
.end method

.method public abstract onSwipeItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;II)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)I"
        }
    .end annotation
.end method
