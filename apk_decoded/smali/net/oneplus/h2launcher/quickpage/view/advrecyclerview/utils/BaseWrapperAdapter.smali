.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
.source "BaseWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
        ">",
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter",
        "<TVH;>;"
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "ARVBaseWrapperAdapter"


# instance fields
.field private mBridgeObserver:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;

.field private mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter",
            "<TVH;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter",
            "<TVH;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    .local p1, "adapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;-><init>()V

    .line 35
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    .line 36
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mBridgeObserver:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;

    .line 37
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mBridgeObserver:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->registerAdapterDataObserver(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;)V

    .line 38
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    invoke-super {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 39
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 108
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 113
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter",
            "<TVH;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    return-object v0
.end method

.method public onAttachedToRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 62
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 63
    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 99
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 1
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
    .line 93
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 67
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 68
    return-void
.end method

.method protected onHandleWrappedAdapterChanged()V
    .locals 0

    .prologue
    .line 117
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->notifyDataSetChanged()V

    .line 118
    return-void
.end method

.method protected onHandleWrappedAdapterItemRangeChanged(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 121
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->notifyItemRangeChanged(II)V

    .line 122
    return-void
.end method

.method protected onHandleWrappedAdapterItemRangeInserted(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 125
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->notifyItemRangeInserted(II)V

    .line 126
    return-void
.end method

.method protected onHandleWrappedAdapterItemRangeRemoved(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 129
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->notifyItemRangeRemoved(II)V

    .line 130
    return-void
.end method

.method protected onHandleWrappedAdapterRangeMoved(III)V
    .locals 3
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 134
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemCount should be always 1  (actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->notifyItemMoved(II)V

    .line 140
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .prologue
    .line 54
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    return-void
.end method

.method public onViewAttachedToWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onViewAttachedToWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 73
    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onViewDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 78
    return-void
.end method

.method public onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 83
    return-void
.end method

.method final onWrappedAdapterChanged()V
    .locals 0

    .prologue
    .line 148
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onHandleWrappedAdapterChanged()V

    .line 149
    return-void
.end method

.method final onWrappedAdapterItemRangeChanged(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 158
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onHandleWrappedAdapterItemRangeChanged(II)V

    .line 159
    return-void
.end method

.method final onWrappedAdapterItemRangeInserted(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 168
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onHandleWrappedAdapterItemRangeInserted(II)V

    .line 169
    return-void
.end method

.method final onWrappedAdapterItemRangeRemoved(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 178
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onHandleWrappedAdapterItemRangeRemoved(II)V

    .line 179
    return-void
.end method

.method final onWrappedAdapterRangeMoved(III)V
    .locals 0
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 188
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    invoke-virtual {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onHandleWrappedAdapterRangeMoved(III)V

    .line 189
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->onRelease()V

    .line 44
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mBridgeObserver:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mBridgeObserver:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;)V

    .line 48
    :cond_0
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    .line 49
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mBridgeObserver:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter$BridgeObserver;

    .line 50
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1
    .param p1, "hasStableIds"    # Z

    .prologue
    .line 87
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter<TVH;>;"
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 88
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 89
    return-void
.end method
