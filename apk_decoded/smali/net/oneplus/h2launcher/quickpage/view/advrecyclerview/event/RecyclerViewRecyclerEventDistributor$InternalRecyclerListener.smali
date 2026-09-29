.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor$InternalRecyclerListener;
.super Ljava/lang/Object;
.source "RecyclerViewRecyclerEventDistributor.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalRecyclerListener"
.end annotation


# instance fields
.field private mRefDistributor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor;)V
    .locals 1
    .param p1, "distributor"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor$InternalRecyclerListener;->mRefDistributor:Ljava/lang/ref/WeakReference;

    .line 67
    return-void
.end method


# virtual methods
.method public onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 71
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor$InternalRecyclerListener;->mRefDistributor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor;

    .line 73
    .local v0, "distributor":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor;->handleOnViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 76
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewRecyclerEventDistributor$InternalRecyclerListener;->mRefDistributor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 80
    return-void
.end method
