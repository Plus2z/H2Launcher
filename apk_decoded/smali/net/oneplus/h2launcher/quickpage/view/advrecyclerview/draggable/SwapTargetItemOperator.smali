.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;
.source "SwapTargetItemOperator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SwapTargetItemOperator"


# instance fields
.field private mCurTranslationPhase:F

.field private mDraggingItemDecorationOffsets:Landroid/graphics/Rect;

.field private mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

.field private mRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

.field private mReqTranslationPhase:F

.field private mStarted:Z

.field private mSwapTargetDecorationOffsets:Landroid/graphics/Rect;

.field private mSwapTargetItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field private mSwapTargetItemMargins:Landroid/graphics/Rect;

.field private mSwapTargetTranslationInterpolator:Landroid/view/animation/Interpolator;

.field private mTranslationX:I

.field private mTranslationY:I


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "draggingItem"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "range"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;
    .param p4, "draggingItemInfo"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mSwapTargetDecorationOffsets:Landroid/graphics/Rect;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mSwapTargetItemMargins:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mDraggingItemDecorationOffsets:Landroid/graphics/Rect;

    .line 49
    iput-object p4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    .line 50
    iput-object p3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 53
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mDraggingItemDecorationOffsets:Landroid/graphics/Rect;

    .line 52
    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getDecorationOffsets(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 55
    return-void
.end method

.method private static calculateCurrentTranslationPhase(FF)F
    .locals 5
    .param p0, "cur"    # F
    .param p1, "req"    # F

    .prologue
    .line 58
    const v0, 0x3e99999a    # 0.3f

    .line 59
    .local v0, "A":F
    const v1, 0x3c23d70a    # 0.01f

    .line 60
    .local v1, "B":F
    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v3, p0

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v4, p1

    add-float v2, v3, v4

    .line 62
    .local v2, "tmp":F
    sub-float v3, v2, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .end local p1    # "req":F
    :goto_0
    return p1

    .restart local p1    # "req":F
    :cond_0
    move p1, v2

    goto :goto_0
.end method

.method private calculateTranslationPhase(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)F
    .locals 15
    .param p1, "draggingItem"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "swapTargetItem"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 106
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 108
    .local v10, "swapItemView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v8

    .line 109
    .local v8, "pos1":I
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v9

    .line 111
    .local v9, "pos2":I
    iget-object v13, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 112
    invoke-virtual {v13}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v13

    iget-object v14, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mSwapTargetDecorationOffsets:Landroid/graphics/Rect;

    .line 111
    invoke-static {v13, v10, v14}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getDecorationOffsets(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 113
    iget-object v13, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mSwapTargetItemMargins:Landroid/graphics/Rect;

    invoke-static {v10, v13}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getLayoutMargins(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 115
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mSwapTargetItemMargins:Landroid/graphics/Rect;

    .line 116
    .local v3, "m2":Landroid/graphics/Rect;
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mSwapTargetDecorationOffsets:Landroid/graphics/Rect;

    .line 117
    .local v1, "d2":Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v13

    iget v14, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v14

    iget v14, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    add-int v2, v13, v14

    .line 118
    .local v2, "h2":I
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v13

    iget v14, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v14

    iget v14, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    iget v14, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v14

    iget v14, v1, Landroid/graphics/Rect;->right:I

    add-int v12, v13, v14

    .line 120
    .local v12, "w2":I
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    iget v14, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mTranslationX:I

    sub-int/2addr v13, v14

    int-to-float v4, v13

    .line 122
    .local v4, "offsetXPx":F
    if-eqz v12, :cond_1

    int-to-float v13, v12

    div-float v6, v4, v13

    .line 123
    .local v6, "phaseX":F
    :goto_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    iget v14, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mTranslationY:I

    sub-int/2addr v13, v14

    int-to-float v5, v13

    .line 125
    .local v5, "offsetYPx":F
    if-eqz v2, :cond_2

    int-to-float v13, v2

    div-float v7, v5, v13

    .line 127
    .local v7, "phaseY":F
    :goto_1
    const/4 v11, 0x0

    .line 129
    .local v11, "translationPhase":F
    iget-object v13, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v13}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getOrientation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 131
    if-le v8, v9, :cond_3

    .line 133
    move v11, v7

    .line 150
    :cond_0
    :goto_2
    const/4 v13, 0x0

    invoke-static {v11, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    return v13

    .line 122
    .end local v5    # "offsetYPx":F
    .end local v6    # "phaseX":F
    .end local v7    # "phaseY":F
    .end local v11    # "translationPhase":F
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 125
    .restart local v5    # "offsetYPx":F
    .restart local v6    # "phaseX":F
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 136
    .restart local v7    # "phaseY":F
    .restart local v11    # "translationPhase":F
    :cond_3
    const/high16 v13, 0x3f800000    # 1.0f

    add-float v11, v13, v7

    goto :goto_2

    .line 138
    :cond_4
    iget-object v13, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v13}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getOrientation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v13

    if-nez v13, :cond_0

    .line 140
    if-le v8, v9, :cond_5

    .line 142
    move v11, v6

    goto :goto_2

    .line 145
    :cond_5
    const/high16 v13, 0x3f800000    # 1.0f

    add-float v11, v13, v6

    goto :goto_2
.end method

.method private updateSwapTargetTranslation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;F)V
    .locals 10
    .param p1, "draggingItem"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "swapTargetItem"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "translationPhase"    # F

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 155
    iget-object v5, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 157
    .local v5, "swapItemView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    .line 158
    .local v3, "pos1":I
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    .line 160
    .local v4, "pos2":I
    iget-object v7, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget-object v2, v7, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->margins:Landroid/graphics/Rect;

    .line 161
    .local v2, "m1":Landroid/graphics/Rect;
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mDraggingItemDecorationOffsets:Landroid/graphics/Rect;

    .line 162
    .local v0, "d1":Landroid/graphics/Rect;
    iget-object v7, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget v7, v7, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->height:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int v1, v7, v8

    .line 163
    .local v1, "h1":I
    iget-object v7, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget v7, v7, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->width:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget v8, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int v6, v7, v8

    .line 170
    .local v6, "w1":I
    iget-object v7, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v7}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getOrientation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 190
    :goto_0
    return-void

    .line 172
    :pswitch_0
    if-le v3, v4, :cond_0

    .line 174
    int-to-float v7, v1

    mul-float/2addr v7, p3

    invoke-static {v5, v7}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_0

    .line 177
    :cond_0
    sub-float v7, p3, v9

    int-to-float v8, v1

    mul-float/2addr v7, v8

    invoke-static {v5, v7}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_0

    .line 181
    :pswitch_1
    if-le v3, v4, :cond_1

    .line 183
    int-to-float v7, v6

    mul-float/2addr v7, p3

    invoke-static {v5, v7}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    goto :goto_0

    .line 186
    :cond_1
    sub-float v7, p3, v9

    int-to-float v8, v6

    mul-float/2addr v7, v8

    invoke-static {v5, v7}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public finish(Z)V
    .locals 7
    .param p1, "animate"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 203
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mStarted:Z

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V

    .line 207
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getItemAnimator()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 208
    .local v0, "itemAnimator":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->endAnimations()V

    .line 211
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->stopScroll()V

    .line 213
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mSwapTargetItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mSwapTargetItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mCurTranslationPhase:F

    invoke-direct {p0, v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->updateSwapTargetTranslation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;F)V

    .line 217
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mSwapTargetItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->moveToDefaultPosition(Landroid/view/View;Z)V

    .line 218
    iput-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mSwapTargetItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 221
    :cond_2
    iput-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    .line 222
    iput-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 223
    iput v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mTranslationX:I

    .line 224
    iput v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mTranslationY:I

    .line 225
    iput v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mCurTranslationPhase:F

    .line 226
    iput v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mReqTranslationPhase:F

    .line 227
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mStarted:Z

    .line 228
    iput-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    .line 229
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    const/4 v7, 0x0

    .line 71
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 73
    .local v1, "draggingItem":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget-wide v4, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->id:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mTranslationX:I

    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mTranslationY:I

    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    .line 78
    invoke-static/range {v0 .. v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->findSwapTargetItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;IILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v6

    .line 83
    .local v6, "swapTargetItem":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mSwapTargetItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eq v0, v6, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mSwapTargetItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mSwapTargetItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-static {v0, v2, v7, v7}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->setItemTranslation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FF)V

    .line 87
    :cond_2
    if-eqz v6, :cond_3

    .line 88
    invoke-direct {p0, v1, v6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->calculateTranslationPhase(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mReqTranslationPhase:F

    .line 90
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mSwapTargetItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eq v0, v6, :cond_4

    .line 91
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mReqTranslationPhase:F

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mCurTranslationPhase:F

    .line 98
    :goto_1
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mCurTranslationPhase:F

    invoke-direct {p0, v1, v6, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->updateSwapTargetTranslation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;F)V

    .line 101
    :cond_3
    iput-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mSwapTargetItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    goto :goto_0

    .line 94
    :cond_4
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mCurTranslationPhase:F

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mReqTranslationPhase:F

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->calculateCurrentTranslationPhase(FF)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mCurTranslationPhase:F

    goto :goto_1
.end method

.method public setSwapTargetTranslationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 66
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mSwapTargetTranslationInterpolator:Landroid/view/animation/Interpolator;

    .line 67
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 193
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mStarted:Z

    if-eqz v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;I)V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mStarted:Z

    goto :goto_0
.end method

.method public update(II)V
    .locals 0
    .param p1, "translationX"    # I
    .param p2, "translationY"    # I

    .prologue
    .line 232
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mTranslationX:I

    .line 233
    iput p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/SwapTargetItemOperator;->mTranslationY:I

    .line 234
    return-void
.end method
