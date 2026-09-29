.class public abstract Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;
.source "ItemChangeAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager",
        "<",
        "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ARVItemChangeAnimMgr"


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
.method public abstract addPendingAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z
.end method

.method public dispatchFinished(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 42
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->debugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "ARVItemChangeAnimMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchChangeFinished("

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

    .line 45
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->mItemAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p2, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->dispatchChangeFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V

    .line 46
    return-void

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic dispatchFinished(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->dispatchFinished(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public dispatchStarting(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 34
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->debugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "ARVItemChangeAnimMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchChangeStarting("

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

    .line 37
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->mItemAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p2, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->dispatchChangeStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V

    .line 38
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic dispatchStarting(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->dispatchStarting(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected endNotStartedAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 72
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_1

    .line 73
    :cond_0
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->onAnimationEndedBeforeStarted(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 74
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->dispatchFinished(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 75
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->clear(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 78
    :cond_1
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_3

    .line 79
    :cond_2
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->onAnimationEndedBeforeStarted(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 80
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->dispatchFinished(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 81
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->clear(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 84
    :cond_3
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-nez v0, :cond_4

    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic endNotStartedAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->endNotStartedAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->mItemAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->getChangeDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onCreateAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;)V
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;

    .prologue
    .line 60
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->onCreateChangeAnimationForOldItem(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;)V

    .line 64
    :cond_0
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->onCreateChangeAnimationForNewItem(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;)V

    .line 67
    :cond_1
    return-void
.end method

.method protected bridge synthetic onCreateAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->onCreateAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;)V

    return-void
.end method

.method protected abstract onCreateChangeAnimationForNewItem(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;)V
.end method

.method protected abstract onCreateChangeAnimationForOldItem(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;)V
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 55
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->mItemAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->setChangeDuration(J)V

    .line 56
    return-void
.end method
