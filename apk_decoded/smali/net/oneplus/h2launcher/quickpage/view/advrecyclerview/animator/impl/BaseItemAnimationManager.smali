.class public abstract Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;
.super Ljava/lang/Object;
.source "BaseItemAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager$BaseAnimatorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mActive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field protected mDeferredReadySets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field protected mItemAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

.field protected mPending:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V
    .locals 1
    .param p1, "itemAnimator"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    .prologue
    .line 36
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mItemAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mPending:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mActive:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mDeferredReadySets:Ljava/util/List;

    .line 41
    return-void
.end method

.method private addActiveAnimationTarget(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 178
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager<TT;>;"
    if-nez p1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "item is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mActive:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method


# virtual methods
.method public cancelAllStartedAnimations()V
    .locals 4

    .prologue
    .line 60
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager<TT;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mActive:Ljava/util/List;

    .line 61
    .local v0, "active":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v2, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 63
    .local v2, "view":Landroid/view/View;
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 61
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 65
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method createAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager<TT;>;"
    .local p1, "info":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;, "TT;"
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->onCreateAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;)V

    .line 153
    return-void
.end method

.method protected final debugLogEnabled()Z
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager<TT;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mItemAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->debugLogEnabled()Z

    move-result v0

    return v0
.end method

.method public abstract dispatchFinished(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation
.end method

.method protected dispatchFinishedWhenDone()V
    .locals 1

    .prologue
    .line 160
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager<TT;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mItemAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->dispatchFinishedWhenDone()Z

    .line 161
    return-void
.end method

.method public abstract dispatchStarting(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation
.end method

.method public endAllDeferredReadyAnimations()V
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->endDeferredReadyAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 149
    return-void
.end method

.method public endAllPendingAnimations()V
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->endPendingAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 123
    return-void
.end method

.method protected endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 156
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager<TT;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mItemAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 157
    return-void
.end method

.method public endDeferredReadyAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 5
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 126
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager<TT;>;"
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mDeferredReadySets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 127
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mDeferredReadySets:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 129
    .local v3, "ready":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_1

    .line 130
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;

    .line 132
    .local v1, "info":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;, "TT;"
    invoke-virtual {p0, v1, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->endNotStartedAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 133
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 129
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 137
    .end local v1    # "info":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;, "TT;"
    :cond_1
    if-nez p1, :cond_2

    .line 138
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 141
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 142
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mDeferredReadySets:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 145
    .end local v2    # "j":I
    .end local v3    # "ready":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_4
    return-void
.end method

.method protected abstract endNotStartedAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ")Z"
        }
    .end annotation
.end method

.method public endPendingAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 106
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager<TT;>;"
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mPending:Ljava/util/List;

    .line 108
    .local v2, "pending":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 109
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;

    .line 111
    .local v1, "info":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;, "TT;"
    invoke-virtual {p0, v1, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->endNotStartedAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 112
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 116
    .end local v1    # "info":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;, "TT;"
    :cond_1
    if-nez p1, :cond_2

    .line 117
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 119
    :cond_2
    return-void
.end method

.method protected enqueuePendingAnimationInfo(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager<TT;>;"
    .local p1, "info":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;, "TT;"
    if-nez p1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "info is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mPending:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public abstract getDuration()J
.end method

.method public hasPending()Z
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager<TT;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mPending:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager<TT;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mPending:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mActive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mDeferredReadySets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onAnimationCancel(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract onAnimationEndedBeforeStarted(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract onAnimationEndedSuccessfully(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract onCreateAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public removeFromActive(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 56
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager<TT;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mActive:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public runPendingAnimations(ZJ)V
    .locals 6
    .param p1, "deferred"    # Z
    .param p2, "deferredDelay"    # J

    .prologue
    .line 68
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v2, "ready":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mPending:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mPending:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mDeferredReadySets:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager$1;

    invoke-direct {v1, p0, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager$1;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;Ljava/util/List;)V

    .line 87
    .local v1, "process":Ljava/lang/Runnable;
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;->getAvailableViewHolder()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v4

    iget-object v3, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 88
    .local v3, "view":Landroid/view/View;
    invoke-static {v3, v1, p2, p3}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 95
    .end local v1    # "process":Ljava/lang/Runnable;
    .end local v3    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;

    .line 91
    .local v0, "info":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;, "TT;"
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->createAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;)V

    goto :goto_1

    .line 93
    .end local v0    # "info":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;, "TT;"
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public abstract setDuration(J)V
.end method

.method protected startActiveItemAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1
    .param p2, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "animator"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager<TT;>;"
    .local p1, "info":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;, "TT;"
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager$BaseAnimatorListener;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager$BaseAnimatorListener;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {p3, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 173
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->addActiveAnimationTarget(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 174
    invoke-virtual {p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 175
    return-void
.end method
