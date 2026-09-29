.class public abstract Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;
.source "GeneralItemAnimator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ARVGeneralItemAnimator"


# instance fields
.field private mAddAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;

.field private mChangeAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;

.field private mDebug:Z

.field private mMoveAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;

.field private mRemoveAnimationManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;-><init>()V

    .line 40
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->setup()V

    .line 41
    return-void
.end method

.method private setup()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->onSetup()V

    .line 46
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mRemoveAnimationManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mAddAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mChangeAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mMoveAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;

    if-nez v0, :cond_1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setup incomplete"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method public animateAdd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 77
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mDebug:Z

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "ARVGeneralItemAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateAdd(id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mAddAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;->addPendingAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public animateChange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z
    .locals 13
    .param p1, "oldHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .prologue
    .line 101
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mDebug:Z

    if-eqz v2, :cond_0

    .line 102
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 103
    .local v11, "oldId":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    int-to-long v2, v2

    .line 103
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 105
    .local v12, "oldPosition":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, "newId":Ljava/lang/String;
    :goto_2
    if-eqz p2, :cond_4

    .line 107
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    int-to-long v2, v2

    .line 106
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 109
    .local v10, "newPosition":Ljava/lang/String;
    :goto_3
    const-string v2, "ARVGeneralItemAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateChange(old.id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", old.position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new.id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new.position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fromX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fromY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v9    # "newId":Ljava/lang/String;
    .end local v10    # "newPosition":Ljava/lang/String;
    .end local v11    # "oldId":Ljava/lang/String;
    .end local v12    # "oldPosition":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mChangeAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->addPendingAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z

    move-result v2

    return v2

    .line 102
    :cond_1
    const-string v11, "-"

    goto/16 :goto_0

    .line 103
    .restart local v11    # "oldId":Ljava/lang/String;
    :cond_2
    const-string v12, "-"

    goto/16 :goto_1

    .line 105
    .restart local v12    # "oldPosition":Ljava/lang/String;
    :cond_3
    const-string v9, "-"

    goto/16 :goto_2

    .line 106
    .restart local v9    # "newId":Ljava/lang/String;
    :cond_4
    const-string v10, "-"

    goto/16 :goto_3
.end method

.method public animateMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z
    .locals 6
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    .line 88
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mDebug:Z

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "ARVGeneralItemAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateMove(id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fromX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fromY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", toX ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", toY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mMoveAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->addPendingAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0
.end method

.method public animateRemove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 67
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mDebug:Z

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "ARVGeneralItemAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateRemove(id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 69
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mRemoveAnimationManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->addPendingAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method protected cancelAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 120
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 121
    return-void
.end method

.method public debugLogEnabled()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mDebug:Z

    return v0
.end method

.method public dispatchFinishedWhenDone()Z
    .locals 2

    .prologue
    .line 204
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mDebug:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const-string v0, "ARVGeneralItemAnimator"

    const-string v1, "dispatchFinishedWhenDone()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    invoke-super {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;->dispatchFinishedWhenDone()Z

    move-result v0

    return v0
.end method

.method public endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->cancelAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 129
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mMoveAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->endPendingAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 130
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mChangeAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->endPendingAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 131
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mRemoveAnimationManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->endPendingAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 132
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mAddAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;->endPendingAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 134
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mMoveAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->endDeferredReadyAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 135
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mChangeAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->endDeferredReadyAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 136
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mRemoveAnimationManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->endDeferredReadyAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 137
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mAddAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;->endDeferredReadyAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 140
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mRemoveAnimationManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->removeFromActive(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mDebug:Z

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "after animation is cancelled, item should not be in the active animation list [remove]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mAddAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;->removeFromActive(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mDebug:Z

    if-eqz v0, :cond_1

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "after animation is cancelled, item should not be in the active animation list [add]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mChangeAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->removeFromActive(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mDebug:Z

    if-eqz v0, :cond_2

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "after animation is cancelled, item should not be in the active animation list [change]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mMoveAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->removeFromActive(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mDebug:Z

    if-eqz v0, :cond_3

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "after animation is cancelled, item should not be in the active animation list [move]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_3
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->dispatchFinishedWhenDone()Z

    .line 161
    return-void
.end method

.method public endAnimations()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mMoveAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->endAllPendingAnimations()V

    .line 175
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mRemoveAnimationManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->endAllPendingAnimations()V

    .line 176
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mAddAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;->endAllPendingAnimations()V

    .line 177
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mChangeAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->endAllPendingAnimations()V

    .line 179
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mMoveAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->endAllDeferredReadyAnimations()V

    .line 185
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mAddAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;->endAllDeferredReadyAnimations()V

    .line 186
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mChangeAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->endAllDeferredReadyAnimations()V

    .line 189
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mRemoveAnimationManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->cancelAllStartedAnimations()V

    .line 190
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mMoveAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->cancelAllStartedAnimations()V

    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mAddAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;->cancelAllStartedAnimations()V

    .line 192
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mChangeAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->cancelAllStartedAnimations()V

    .line 194
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->dispatchAnimationsFinished()V

    goto :goto_0
.end method

.method protected getItemAddAnimationsManager()Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mAddAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;

    return-object v0
.end method

.method protected getItemChangeAnimationsManager()Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mChangeAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;

    return-object v0
.end method

.method protected getItemMoveAnimationsManager()Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mMoveAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;

    return-object v0
.end method

.method protected getRemoveAnimationManager()Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mRemoveAnimationManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;

    return-object v0
.end method

.method protected hasPendingAnimations()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mRemoveAnimationManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->hasPending()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mMoveAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;

    .line 213
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->hasPending()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mChangeAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;

    .line 214
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->hasPending()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mAddAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;

    .line 215
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;->hasPending()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mDebug:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mRemoveAnimationManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mAddAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;

    .line 166
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mChangeAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;

    .line 167
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mMoveAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;

    .line 168
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSchedulePendingAnimations()V
    .locals 0

    .prologue
    .line 265
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->schedulePendingAnimationsByDefaultRule()V

    .line 266
    return-void
.end method

.method protected abstract onSetup()V
.end method

.method public runPendingAnimations()V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->hasPendingAnimations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->onSchedulePendingAnimations()V

    goto :goto_0
.end method

.method protected schedulePendingAnimationsByDefaultRule()V
    .locals 24

    .prologue
    .line 270
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mRemoveAnimationManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;

    invoke-virtual {v15}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->hasPending()Z

    move-result v14

    .line 271
    .local v14, "removalsPending":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mMoveAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;

    invoke-virtual {v15}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->hasPending()Z

    move-result v9

    .line 272
    .local v9, "movesPending":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mChangeAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;

    invoke-virtual {v15}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->hasPending()Z

    move-result v5

    .line 273
    .local v5, "changesPending":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mAddAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;

    invoke-virtual {v15}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;->hasPending()Z

    move-result v4

    .line 275
    .local v4, "additionsPending":Z
    if-eqz v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->getRemoveDuration()J

    move-result-wide v16

    .line 276
    .local v16, "removeDuration":J
    :goto_0
    if-eqz v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->getMoveDuration()J

    move-result-wide v12

    .line 277
    .local v12, "moveDuration":J
    :goto_1
    if-eqz v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->getChangeDuration()J

    move-result-wide v6

    .line 279
    .local v6, "changeDuration":J
    :goto_2
    if-eqz v14, :cond_0

    .line 280
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mRemoveAnimationManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;

    const/16 v20, 0x0

    const-wide/16 v22, 0x0

    move/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v15, v0, v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;->runPendingAnimations(ZJ)V

    .line 283
    :cond_0
    if-eqz v9, :cond_1

    .line 284
    move v8, v14

    .line 285
    .local v8, "deferred":Z
    move-wide/from16 v10, v16

    .line 286
    .local v10, "deferredDelay":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mMoveAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;

    invoke-virtual {v15, v8, v10, v11}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;->runPendingAnimations(ZJ)V

    .line 289
    .end local v8    # "deferred":Z
    .end local v10    # "deferredDelay":J
    :cond_1
    if-eqz v5, :cond_2

    .line 290
    move v8, v14

    .line 291
    .restart local v8    # "deferred":Z
    move-wide/from16 v10, v16

    .line 292
    .restart local v10    # "deferredDelay":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mChangeAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;

    invoke-virtual {v15, v8, v10, v11}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;->runPendingAnimations(ZJ)V

    .line 295
    .end local v8    # "deferred":Z
    .end local v10    # "deferredDelay":J
    :cond_2
    if-eqz v4, :cond_4

    .line 296
    if-nez v14, :cond_3

    if-nez v9, :cond_3

    if-eqz v5, :cond_8

    :cond_3
    const/4 v8, 0x1

    .line 297
    .restart local v8    # "deferred":Z
    :goto_3
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    add-long v18, v16, v20

    .line 298
    .local v18, "totalDelay":J
    if-eqz v8, :cond_9

    move-wide/from16 v10, v18

    .line 299
    .restart local v10    # "deferredDelay":J
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mAddAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;

    invoke-virtual {v15, v8, v10, v11}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;->runPendingAnimations(ZJ)V

    .line 301
    .end local v8    # "deferred":Z
    .end local v10    # "deferredDelay":J
    .end local v18    # "totalDelay":J
    :cond_4
    return-void

    .line 275
    .end local v6    # "changeDuration":J
    .end local v12    # "moveDuration":J
    .end local v16    # "removeDuration":J
    :cond_5
    const-wide/16 v16, 0x0

    goto :goto_0

    .line 276
    .restart local v16    # "removeDuration":J
    :cond_6
    const-wide/16 v12, 0x0

    goto :goto_1

    .line 277
    .restart local v12    # "moveDuration":J
    :cond_7
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 296
    .restart local v6    # "changeDuration":J
    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 298
    .restart local v8    # "deferred":Z
    .restart local v18    # "totalDelay":J
    :cond_9
    const-wide/16 v10, 0x0

    goto :goto_4
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mDebug:Z

    .line 258
    return-void
.end method

.method protected setItemAddAnimationsManager(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;)V
    .locals 0
    .param p1, "addAnimationsManager"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;

    .prologue
    .line 232
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mAddAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;

    .line 233
    return-void
.end method

.method protected setItemChangeAnimationsManager(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;)V
    .locals 0
    .param p1, "changeAnimationsManager"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;

    .prologue
    .line 241
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mChangeAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;

    .line 242
    return-void
.end method

.method protected setItemMoveAnimationsManager(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;)V
    .locals 0
    .param p1, "moveAnimationsManager"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;

    .prologue
    .line 249
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mMoveAnimationsManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;

    .line 250
    return-void
.end method

.method protected setItemRemoveAnimationManager(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;)V
    .locals 0
    .param p1, "removeAnimationManager"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;

    .prologue
    .line 224
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->mRemoveAnimationManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;

    .line 225
    return-void
.end method
