.class abstract Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;
.source "BaseDraggableItemDecorator.java"


# static fields
.field private static final RETURN_TO_DEFAULT_POS_ANIMATE_THRESHOLD_DP:I = 0x2

.field private static final RETURN_TO_DEFAULT_POS_ANIMATE_THRESHOLD_MSEC:I = 0x14


# instance fields
.field protected mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field protected mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field private mReturnToDefaultPositionAnimateThreshold:I

.field private mReturnToDefaultPositionDuration:I

.field private mReturnToDefaultPositionInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "draggingItemViewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;-><init>()V

    .line 33
    const/16 v1, 0xc8

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;->mReturnToDefaultPositionDuration:I

    .line 42
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 43
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 45
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 46
    .local v0, "displayDensity":F
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;->mReturnToDefaultPositionAnimateThreshold:I

    .line 48
    return-void
.end method

.method protected static setItemTranslation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FF)V
    .locals 2
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getItemAnimator()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 122
    .local v0, "itemAnimator":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 125
    :cond_0
    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 126
    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 127
    return-void
.end method

.method private static supportsViewPropertyAnimation()Z
    .locals 2

    .prologue
    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected moveToDefaultPosition(Landroid/view/View;Z)V
    .locals 21
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v7, v0

    .line 60
    .local v7, "curTranslationX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v8, v0

    .line 62
    .local v8, "curTranslationY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v17

    div-int/lit8 v10, v17, 0x2

    .line 63
    .local v10, "halfItemWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v17

    div-int/lit8 v9, v17, 0x2

    .line 64
    .local v9, "halfItemHeight":I
    if-lez v10, :cond_0

    int-to-float v0, v7

    move/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 66
    .local v13, "translationProportionX":F
    :goto_0
    if-lez v9, :cond_1

    int-to-float v0, v8

    move/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 68
    .local v14, "translationProportionY":F
    :goto_1
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-static {v13, v0}, Ljava/lang/Math;->min(FF)F

    move-result v18

    sub-float v15, v17, v18

    .line 69
    .local v15, "tx":F
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v18

    sub-float v16, v17, v18

    .line 70
    .local v16, "ty":F
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;->mReturnToDefaultPositionDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v19, v15, v15

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v5, v0

    .line 72
    .local v5, "animDurationX":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;->mReturnToDefaultPositionDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v19, v16, v16

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v6, v0

    .line 74
    .local v6, "animDurationY":I
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 75
    .local v4, "animDuration":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v17

    .line 76
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v18

    .line 75
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 78
    .local v11, "maxAbsTranslation":I
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;->supportsViewPropertyAnimation()Z

    move-result v17

    if-eqz v17, :cond_2

    if-eqz p2, :cond_2

    const/16 v17, 0x14

    move/from16 v0, v17

    if-le v4, v0, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;->mReturnToDefaultPositionAnimateThreshold:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v11, v0, :cond_2

    .line 82
    new-instance v12, Landroid/view/animation/TranslateAnimation;

    const/16 v17, 0x0

    const/16 v18, 0x0

    int-to-float v0, v8

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 83
    .local v12, "translate":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v12}, Landroid/view/animation/TranslateAnimation;->cancel()V

    .line 84
    int-to-long v0, v4

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;->mReturnToDefaultPositionInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 86
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 87
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 89
    new-instance v17, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v12, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator$1;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;Landroid/view/animation/TranslateAnimation;Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 111
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 117
    .end local v12    # "translate":Landroid/view/animation/TranslateAnimation;
    :goto_2
    return-void

    .line 64
    .end local v4    # "animDuration":I
    .end local v5    # "animDurationX":I
    .end local v6    # "animDurationY":I
    .end local v11    # "maxAbsTranslation":I
    .end local v13    # "translationProportionX":F
    .end local v14    # "translationProportionY":F
    .end local v15    # "tx":F
    .end local v16    # "ty":F
    :cond_0
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 66
    .restart local v13    # "translationProportionX":F
    :cond_1
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 114
    .restart local v4    # "animDuration":I
    .restart local v5    # "animDurationX":I
    .restart local v6    # "animDurationY":I
    .restart local v11    # "maxAbsTranslation":I
    .restart local v14    # "translationProportionY":F
    .restart local v15    # "tx":F
    .restart local v16    # "ty":F
    :cond_2
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 115
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2
.end method

.method public setReturnToDefaultPositionAnimationDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 51
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;->mReturnToDefaultPositionDuration:I

    .line 52
    return-void
.end method

.method public setReturnToDefaultPositionAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 55
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;->mReturnToDefaultPositionInterpolator:Landroid/view/animation/Interpolator;

    .line 56
    return-void
.end method
