.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;
.source "LegacySwipeResultAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
        ">",
        "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;"
    }
.end annotation


# instance fields
.field mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/LegacySwipeableItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/LegacySwipeableItemAdapter",
            "<TVH;>;"
        }
    .end annotation
.end field

.field mHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVH;"
        }
    .end annotation
.end field

.field mPosition:I

.field mReaction:I

.field mResult:I


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/LegacySwipeableItemAdapter;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;III)V
    .locals 0
    .param p3, "position"    # I
    .param p4, "result"    # I
    .param p5, "reaction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/LegacySwipeableItemAdapter",
            "<TVH;>;TVH;III)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction<TVH;>;"
    .local p1, "adapter":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/LegacySwipeableItemAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/LegacySwipeableItemAdapter<TVH;>;"
    .local p2, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    invoke-direct {p0, p5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;-><init>(I)V

    .line 36
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/LegacySwipeableItemAdapter;

    .line 37
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction;->mHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 38
    iput p3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction;->mPosition:I

    .line 39
    iput p4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction;->mResult:I

    .line 40
    iput p5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction;->mReaction:I

    .line 41
    return-void
.end method


# virtual methods
.method protected onCleanUp()V
    .locals 1

    .prologue
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction<TVH;>;"
    const/4 v0, 0x0

    .line 51
    invoke-super {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;->onCleanUp()V

    .line 53
    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/LegacySwipeableItemAdapter;

    .line 54
    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction;->mHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 55
    return-void
.end method

.method protected onPerformAction()V
    .locals 5

    .prologue
    .line 45
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction<TVH;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction;->mAdapter:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/LegacySwipeableItemAdapter;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction;->mHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction;->mPosition:I

    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction;->mResult:I

    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/LegacySwipeResultAction;->mReaction:I

    invoke-interface {v0, v1, v2, v3, v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/LegacySwipeableItemAdapter;->onPerformAfterSwipeReaction(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;III)V

    .line 47
    return-void
.end method
