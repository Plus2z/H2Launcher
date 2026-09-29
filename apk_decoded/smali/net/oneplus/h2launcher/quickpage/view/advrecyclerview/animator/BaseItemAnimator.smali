.class public abstract Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
.source "BaseItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator$ItemAnimatorListener;
    }
.end annotation


# instance fields
.field private mListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator$ItemAnimatorListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public debugLogEnabled()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchFinishedWhenDone()Z
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->dispatchAnimationsFinished()V

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->onAddFinishedImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 60
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->mListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->mListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator$ItemAnimatorListener;->onAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 63
    :cond_0
    return-void
.end method

.method protected onAddFinishedImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 113
    return-void
.end method

.method public final onAddStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->onAddStartingImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 54
    return-void
.end method

.method protected onAddStartingImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 109
    return-void
.end method

.method public final onChangeFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->onChangeFinishedImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V

    .line 74
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->mListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->mListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator$ItemAnimatorListener;->onChangeFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 77
    :cond_0
    return-void
.end method

.method protected onChangeFinishedImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 121
    return-void
.end method

.method public final onChangeStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->onChangeStartingItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V

    .line 68
    return-void
.end method

.method protected onChangeStartingItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 117
    return-void
.end method

.method public final onMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->onMoveFinishedImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 88
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->mListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->mListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator$ItemAnimatorListener;->onMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 91
    :cond_0
    return-void
.end method

.method protected onMoveFinishedImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 129
    return-void
.end method

.method public final onMoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->onMoveStartingImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 82
    return-void
.end method

.method protected onMoveStartingImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 125
    return-void
.end method

.method public final onRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->onRemoveFinishedImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 102
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->mListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->mListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator$ItemAnimatorListener;->onRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 105
    :cond_0
    return-void
.end method

.method protected onRemoveFinishedImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 137
    return-void
.end method

.method public final onRemoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->onRemoveStartingImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 96
    return-void
.end method

.method protected onRemoveStartingImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 133
    return-void
.end method

.method public setListener(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator$ItemAnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator$ItemAnimatorListener;

    .prologue
    .line 48
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->mListener:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator$ItemAnimatorListener;

    .line 49
    return-void
.end method
