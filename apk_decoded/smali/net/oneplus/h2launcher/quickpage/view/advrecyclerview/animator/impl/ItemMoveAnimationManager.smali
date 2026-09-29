.class public abstract Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;
.source "ItemMoveAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager",
        "<",
        "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ARVItemMoveAnimMgr"


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V
    .locals 0
    .param p1, "itemAnimator"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V

    .line 29
    return-void
.end method


# virtual methods
.method public abstract addPendingAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z
.end method

.method public bridge synthetic dispatchFinished(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->dispatchFinished(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public dispatchFinished(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 51
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->debugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "ARVItemMoveAnimMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMoveFinished("

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

    .line 54
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->mItemAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 55
    return-void
.end method

.method public bridge synthetic dispatchStarting(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->dispatchStarting(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public dispatchStarting(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 43
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->debugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "ARVItemMoveAnimMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMoveStarting("

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

    .line 46
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->mItemAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->dispatchMoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 47
    return-void
.end method

.method protected bridge synthetic endNotStartedAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->endNotStartedAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method protected endNotStartedAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 59
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_1

    .line 60
    :cond_0
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->onAnimationEndedBeforeStarted(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 61
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->dispatchFinished(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 62
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->clear(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->mItemAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->getMoveDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 38
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->mItemAnimator:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->setMoveDuration(J)V

    .line 39
    return-void
.end method
