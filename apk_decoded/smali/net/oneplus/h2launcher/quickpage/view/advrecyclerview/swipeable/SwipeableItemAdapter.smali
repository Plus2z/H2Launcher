.class public interface abstract Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemAdapter;
.super Ljava/lang/Object;
.source "SwipeableItemAdapter.java"

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
.method public abstract onSwipeItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;II)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;"
        }
    .end annotation
.end method
