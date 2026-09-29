.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemInternalUtils;
.super Ljava/lang/Object;
.source "SwipeableItemInternalUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static invokeOnSwipeItem(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;II)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;
    .locals 6
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "position"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter",
            "<*>;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            "II)",
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "adapter":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter<*>;"
    instance-of v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/LegacySwipeableItemAdapter;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 35
    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/LegacySwipeableItemAdapter;

    invoke-interface {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/LegacySwipeableItemAdapter;->onSwipeItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;II)I

    move-result v5

    .line 38
    .local v5, "reaction":I
    packed-switch v5, :pswitch_data_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected reaction type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :pswitch_0
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction;

    move-object v1, p0

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/LegacySwipeableItemAdapter;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/LegacySwipeableItemAdapter;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;III)V

    .line 50
    .end local v5    # "reaction":I
    .end local p0    # "adapter":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter<*>;"
    :goto_0
    return-object v0

    .restart local p0    # "adapter":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter<*>;"
    :cond_0
    check-cast p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemAdapter;

    .end local p0    # "adapter":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/BaseSwipeableItemAdapter<*>;"
    invoke-interface {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemAdapter;->onSwipeItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;II)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;

    move-result-object v0

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
