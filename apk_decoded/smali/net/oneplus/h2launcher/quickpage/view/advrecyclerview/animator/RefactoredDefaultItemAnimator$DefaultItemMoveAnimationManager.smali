.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemMoveAnimationManager;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;
.source "RefactoredDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DefaultItemMoveAnimationManager"
.end annotation


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V
    .locals 0
    .param p1, "itemAnimator"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V

    .line 235
    return-void
.end method


# virtual methods
.method public addPendingAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z
    .locals 9
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    .line 294
    iget-object v8, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 296
    .local v8, "view":Landroid/view/View;
    int-to-float v1, p2

    iget-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int p2, v1

    .line 297
    int-to-float v1, p3

    iget-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int p3, v1

    .line 299
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemMoveAnimationManager;->endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 301
    sub-int v6, p4, p2

    .line 302
    .local v6, "deltaX":I
    sub-int v7, p5, p3

    .line 304
    .local v7, "deltaY":I
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V

    .line 306
    .local v0, "info":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;
    if-nez v6, :cond_0

    if-nez v7, :cond_0

    .line 307
    iget-object v1, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemMoveAnimationManager;->dispatchFinished(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 308
    iget-object v1, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->clear(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 309
    const/4 v1, 0x0

    .line 321
    :goto_0
    return v1

    .line 312
    :cond_0
    if-eqz v6, :cond_1

    .line 313
    neg-int v1, v6

    int-to-float v1, v1

    invoke-static {v8, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 315
    :cond_1
    if-eqz v7, :cond_2

    .line 316
    neg-int v1, v7

    int-to-float v1, v1

    invoke-static {v8, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 319
    :cond_2
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemMoveAnimationManager;->enqueuePendingAnimationInfo(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;)V

    .line 321
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onAnimationCancel(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 231
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemMoveAnimationManager;->onAnimationCancel(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onAnimationCancel(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    const/4 v5, 0x0

    .line 272
    iget-object v2, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 273
    .local v2, "view":Landroid/view/View;
    iget v3, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->toX:I

    iget v4, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->fromX:I

    sub-int v0, v3, v4

    .line 274
    .local v0, "deltaX":I
    iget v3, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->toY:I

    iget v4, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->fromY:I

    sub-int v1, v3, v4

    .line 276
    .local v1, "deltaY":I
    if-eqz v0, :cond_0

    .line 277
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 279
    :cond_0
    if-eqz v1, :cond_1

    .line 280
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 283
    :cond_1
    if-eqz v0, :cond_2

    .line 284
    invoke-static {v2, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 286
    :cond_2
    if-eqz v1, :cond_3

    .line 287
    invoke-static {v2, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 289
    :cond_3
    return-void
.end method

.method protected bridge synthetic onAnimationEndedBeforeStarted(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 231
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemMoveAnimationManager;->onAnimationEndedBeforeStarted(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onAnimationEndedBeforeStarted(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 266
    .local v0, "view":Landroid/view/View;
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 267
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 268
    return-void
.end method

.method protected bridge synthetic onAnimationEndedSuccessfully(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 231
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemMoveAnimationManager;->onAnimationEndedSuccessfully(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onAnimationEndedSuccessfully(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 260
    return-void
.end method

.method protected bridge synthetic onCreateAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;)V
    .locals 0

    .prologue
    .line 231
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemMoveAnimationManager;->onCreateAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;)V

    return-void
.end method

.method protected onCreateAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;)V
    .locals 7
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;

    .prologue
    const/4 v6, 0x0

    .line 239
    iget-object v4, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v3, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 240
    .local v3, "view":Landroid/view/View;
    iget v4, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->toX:I

    iget v5, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->fromX:I

    sub-int v1, v4, v5

    .line 241
    .local v1, "deltaX":I
    iget v4, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->toY:I

    iget v5, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->fromY:I

    sub-int v2, v4, v5

    .line 243
    .local v2, "deltaY":I
    if-eqz v1, :cond_0

    .line 244
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 246
    :cond_0
    if-eqz v2, :cond_1

    .line 247
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 250
    :cond_1
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 252
    .local v0, "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemMoveAnimationManager;->getDuration()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 254
    iget-object v4, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v4, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemMoveAnimationManager;->startActiveItemAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    .line 255
    return-void
.end method
