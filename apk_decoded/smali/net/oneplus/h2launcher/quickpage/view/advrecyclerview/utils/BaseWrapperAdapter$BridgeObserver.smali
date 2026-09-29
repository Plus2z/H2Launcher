.class final Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;
.source "BaseWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BridgeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
        ">",
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;"
    }
.end annotation


# instance fields
.field private mRefHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter",
            "<TVH;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter",
            "<TVH;>;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver<TVH;>;"
    .local p1, "holder":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;-><init>()V

    .line 196
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;->mRefHolder:Ljava/lang/ref/WeakReference;

    .line 197
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 201
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver<TVH;>;"
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;->mRefHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;

    .line 202
    .local v0, "holder":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onWrappedAdapterChanged()V

    .line 205
    :cond_0
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 209
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver<TVH;>;"
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;->mRefHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;

    .line 210
    .local v0, "holder":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onWrappedAdapterItemRangeChanged(II)V

    .line 213
    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 217
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver<TVH;>;"
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;->mRefHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;

    .line 218
    .local v0, "holder":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onWrappedAdapterItemRangeInserted(II)V

    .line 221
    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 233
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver<TVH;>;"
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;->mRefHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;

    .line 235
    .local v0, "holder":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onWrappedAdapterRangeMoved(III)V

    .line 238
    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 225
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver<TVH;>;"
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;->mRefHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;

    .line 226
    .local v0, "holder":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onWrappedAdapterItemRangeRemoved(II)V

    .line 229
    :cond_0
    return-void
.end method
