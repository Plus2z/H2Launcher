.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemChangeAnimationManager;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;
.source "RefactoredDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DefaultItemChangeAnimationManager"
.end annotation


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V
    .locals 0
    .param p1, "itemAnimator"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V

    .line 147
    return-void
.end method


# virtual methods
.method public addPendingAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z
    .locals 12
    .param p1, "oldHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .prologue
    .line 199
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v10

    .line 200
    .local v10, "prevTranslationX":F
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v11

    .line 201
    .local v11, "prevTranslationY":F
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v9

    .line 203
    .local v9, "prevAlpha":F
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemChangeAnimationManager;->endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 205
    sub-int v0, p5, p3

    int-to-float v0, v0

    sub-float/2addr v0, v10

    float-to-int v7, v0

    .line 206
    .local v7, "deltaX":I
    sub-int v0, p6, p4

    int-to-float v0, v0

    sub-float/2addr v0, v11

    float-to-int v8, v0

    .line 209
    .local v8, "deltaY":I
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v10}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 210
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v11}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 211
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 213
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemChangeAnimationManager;->endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 216
    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v1, v7

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 217
    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v1, v8

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 218
    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 221
    :cond_0
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemChangeAnimationManager;->enqueuePendingAnimationInfo(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;)V

    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method protected onAnimationCancel(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 194
    return-void
.end method

.method protected bridge synthetic onAnimationCancel(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 144
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemChangeAnimationManager;->onAnimationCancel(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onAnimationEndedBeforeStarted(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 187
    .local v0, "view":Landroid/view/View;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 188
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 189
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 190
    return-void
.end method

.method protected bridge synthetic onAnimationEndedBeforeStarted(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 144
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemChangeAnimationManager;->onAnimationEndedBeforeStarted(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onAnimationEndedSuccessfully(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 178
    .local v0, "view":Landroid/view/View;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 179
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 180
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 181
    return-void
.end method

.method protected bridge synthetic onAnimationEndedSuccessfully(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 144
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemChangeAnimationManager;->onAnimationEndedSuccessfully(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onCreateChangeAnimationForNewItem(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;)V
    .locals 4
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v1, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 166
    .local v0, "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 167
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 168
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemChangeAnimationManager;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 169
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 171
    iget-object v1, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v1, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemChangeAnimationManager;->startActiveItemAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    .line 172
    return-void
.end method

.method protected onCreateChangeAnimationForOldItem(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;)V
    .locals 4
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;

    .prologue
    .line 151
    iget-object v1, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 153
    .local v0, "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemChangeAnimationManager;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 154
    iget v1, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->toX:I

    iget v2, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->fromX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 155
    iget v1, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->toY:I

    iget v2, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->fromY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 158
    iget-object v1, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ChangeAnimationInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v1, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemChangeAnimationManager;->startActiveItemAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    .line 159
    return-void
.end method
