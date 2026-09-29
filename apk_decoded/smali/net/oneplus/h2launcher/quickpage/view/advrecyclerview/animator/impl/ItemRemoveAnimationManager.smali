.class public abstract Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;
.source "ItemRemoveAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager",
        "<",
        "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ARVItemRemoveAnimMgr"


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V
    .locals 0
    .param p1, "itemAnimator"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V

    .line 30
    return-void
.end method


# virtual methods
.method public abstract addPendingAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
.end method

.method public bridge synthetic dispatchFinished(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->dispatchFinished(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public dispatchFinished(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 52
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->debugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "ARVItemRemoveAnimMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchRemoveFinished("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->mItemAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->dispatchRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 56
    return-void
.end method

.method public bridge synthetic dispatchStarting(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->dispatchStarting(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public dispatchStarting(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 44
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->debugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "ARVItemRemoveAnimMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchRemoveStarting("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->mItemAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->dispatchRemoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 48
    return-void
.end method

.method protected bridge synthetic endNotStartedAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->endNotStartedAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method protected endNotStartedAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 61
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_1

    .line 62
    :cond_0
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->onAnimationEndedBeforeStarted(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 63
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->dispatchFinished(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 64
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;->clear(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->mItemAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->getRemoveDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 39
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->mItemAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->setRemoveDuration(J)V

    .line 40
    return-void
.end method
