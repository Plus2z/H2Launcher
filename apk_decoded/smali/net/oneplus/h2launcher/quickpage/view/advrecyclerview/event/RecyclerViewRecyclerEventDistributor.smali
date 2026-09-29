.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;
.source "RecyclerViewRecyclerEventDistributor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor$InternalRecyclerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor",
        "<",
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;",
        ">;"
    }
.end annotation


# instance fields
.field private mInternalRecyclerListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor$InternalRecyclerListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;-><init>()V

    .line 31
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor$InternalRecyclerListener;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor$InternalRecyclerListener;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor;->mInternalRecyclerListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor$InternalRecyclerListener;

    .line 32
    return-void
.end method


# virtual methods
.method handleOnViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 52
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor;->mListeners:Ljava/util/List;

    if-nez v1, :cond_1

    .line 59
    :cond_0
    return-void

    .line 56
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;

    .line 57
    .local v0, "listener":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;
    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;->onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method protected onRecyclerViewAttached(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 1
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->onRecyclerViewAttached(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 38
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor;->mInternalRecyclerListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor$InternalRecyclerListener;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setRecyclerListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;)V

    .line 39
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->onRelease()V

    .line 45
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor;->mInternalRecyclerListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor$InternalRecyclerListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor;->mInternalRecyclerListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor$InternalRecyclerListener;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor$InternalRecyclerListener;->release()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor;->mInternalRecyclerListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor$InternalRecyclerListener;

    .line 49
    :cond_0
    return-void
.end method
