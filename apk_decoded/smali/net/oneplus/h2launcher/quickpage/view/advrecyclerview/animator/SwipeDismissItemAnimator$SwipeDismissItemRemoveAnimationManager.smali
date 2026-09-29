.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;
.source "SwipeDismissItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwipeDismissItemRemoveAnimationManager"
.end annotation


# static fields
.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V
    .locals 0
    .param p1, "itemAnimator"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V

    .line 116
    return-void
.end method

.method private static isSwipeDismissed(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 6
    .param p0, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    instance-of v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    if-nez v5, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p0

    .line 142
    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    .line 143
    .local v0, "item2":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;
    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeResult()I

    move-result v2

    .line 144
    .local v2, "result":I
    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getAfterSwipeReaction()I

    move-result v1

    .line 146
    .local v1, "reaction":I
    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    :cond_2
    if-ne v1, v4, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method private static isSwipeDismissed(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;)Z
    .locals 1
    .param p0, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;

    .prologue
    .line 154
    instance-of v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissRemoveAnimationInfo;

    return v0
.end method


# virtual methods
.method public addPendingAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 6
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 187
    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;->isSwipeDismissed(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 189
    .local v0, "itemView":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v3

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 190
    .local v1, "prevItemX":I
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v3

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 192
    .local v2, "prevItemY":I
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;->endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 194
    int-to-float v3, v1

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 195
    int-to-float v3, v2

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 197
    new-instance v3, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissRemoveAnimationInfo;

    invoke-direct {v3, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissRemoveAnimationInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;->enqueuePendingAnimationInfo(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;)V

    .line 205
    .end local v0    # "itemView":Landroid/view/View;
    .end local v1    # "prevItemX":I
    .end local v2    # "prevItemY":I
    :goto_0
    return v5

    .line 201
    :cond_0
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;->endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 203
    new-instance v3, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;

    invoke-direct {v3, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;->enqueuePendingAnimationInfo(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;)V

    goto :goto_0
.end method

.method protected bridge synthetic onAnimationCancel(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 111
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;->onAnimationCancel(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onAnimationCancel(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 183
    return-void
.end method

.method protected bridge synthetic onAnimationEndedBeforeStarted(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 111
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;->onAnimationEndedBeforeStarted(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onAnimationEndedBeforeStarted(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 173
    .local v0, "view":Landroid/view/View;
    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;->isSwipeDismissed(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 175
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0
.end method

.method protected bridge synthetic onAnimationEndedSuccessfully(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 111
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;->onAnimationEndedSuccessfully(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onAnimationEndedSuccessfully(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 161
    .local v0, "view":Landroid/view/View;
    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;->isSwipeDismissed(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 163
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0
.end method

.method protected bridge synthetic onCreateAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;)V
    .locals 0

    .prologue
    .line 111
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;->onCreateAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;)V

    return-void
.end method

.method protected onCreateAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;)V
    .locals 4
    .param p1, "info"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;

    .prologue
    .line 122
    iget-object v2, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;->isSwipeDismissed(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 124
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 125
    .local v0, "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 134
    :goto_0
    iget-object v2, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v2, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;->startActiveItemAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    .line 135
    return-void

    .line 127
    .end local v0    # "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    iget-object v2, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/RemoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 128
    .restart local v1    # "view":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 129
    .restart local v0    # "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 130
    sget-object v2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 131
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    goto :goto_0
.end method
