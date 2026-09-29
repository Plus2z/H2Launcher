.class abstract Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$ViewHolderDeferredProcess;
.super Ljava/lang/Object;
.source "ItemSlidingAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ViewHolderDeferredProcess"
.end annotation


# instance fields
.field final mRefHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$ViewHolderDeferredProcess;->mRefHolder:Ljava/lang/ref/WeakReference;

    .line 449
    return-void
.end method


# virtual methods
.method public hasTargetViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 466
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$ViewHolderDeferredProcess;->mRefHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 467
    .local v0, "holder2":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lostReference(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 461
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$ViewHolderDeferredProcess;->mRefHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 462
    .local v0, "holder2":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract onProcess(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
.end method

.method public run()V
    .locals 2

    .prologue
    .line 453
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$ViewHolderDeferredProcess;->mRefHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 455
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$ViewHolderDeferredProcess;->onProcess(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 458
    :cond_0
    return-void
.end method
