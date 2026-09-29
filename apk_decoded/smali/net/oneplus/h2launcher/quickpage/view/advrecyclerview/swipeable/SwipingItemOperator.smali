.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;
.super Ljava/lang/Object;
.source "SwipingItemOperator.java"


# static fields
.field private static final MIN_GRABBING_AREA_SIZE:I = 0x30

.field private static final REACTION_CAN_NOT_SWIPE:I = 0x0

.field private static final REACTION_CAN_NOT_SWIPE_WITH_RUBBER_BAND_EFFECT:I = 0x1

.field private static final REACTION_CAN_SWIPE:I = 0x2

.field private static final RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final RUBBER_BAND_LIMIT:F = 0.15f

.field private static final TAG:Ljava/lang/String; = "SwipingItemOperator"


# instance fields
.field private mDownSwipeReactionType:I

.field private mInitialTranslateAmountX:I

.field private mInitialTranslateAmountY:I

.field private mInvSwipingItemHeight:F

.field private mInvSwipingItemWidth:F

.field private mLeftSwipeReactionType:I

.field private mPrevTranslateAmount:F

.field private mRightSwipeReactionType:I

.field private mSwipeDistanceX:I

.field private mSwipeDistanceY:I

.field private final mSwipeHorizontal:Z

.field private mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

.field private mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field private mSwipingItemContainerView:Landroid/view/View;

.field private final mSwipingItemHeight:I

.field private mSwipingItemWidth:I

.field private mUpSwipeReactionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RubberBandInterpolator;

    const v1, 0x3e19999a    # 0.15f

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RubberBandInterpolator;-><init>(F)V

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IZ)V
    .locals 1
    .param p1, "manager"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;
    .param p2, "swipingItem"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "swipeReactionType"    # I
    .param p4, "swipeHorizontal"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    .line 60
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 61
    invoke-static {p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeReactionUtils;->extractLeftReaction(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mLeftSwipeReactionType:I

    .line 62
    invoke-static {p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeReactionUtils;->extractUpReaction(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mUpSwipeReactionType:I

    .line 63
    invoke-static {p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeReactionUtils;->extractRightReaction(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mRightSwipeReactionType:I

    .line 64
    invoke-static {p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeReactionUtils;->extractDownReaction(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mDownSwipeReactionType:I

    .line 65
    iput-boolean p4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeHorizontal:Z

    .line 67
    check-cast p2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    .end local p2    # "swipingItem":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-interface {p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeableContainerView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItemContainerView:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItemContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItemWidth:I

    .line 69
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItemContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItemHeight:I

    .line 70
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItemWidth:I

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->calcInv(I)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mInvSwipingItemWidth:F

    .line 71
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItemHeight:I

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->calcInv(I)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mInvSwipingItemHeight:F

    .line 72
    return-void
.end method

.method private static calcInv(I)F
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 146
    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p0

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static clip(III)I
    .locals 1
    .param p0, "v"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 150
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    .line 85
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 86
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeDistanceX:I

    .line 87
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeDistanceY:I

    .line 88
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItemWidth:I

    .line 89
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mInvSwipingItemWidth:F

    .line 90
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mInvSwipingItemHeight:F

    .line 91
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mLeftSwipeReactionType:I

    .line 92
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mUpSwipeReactionType:I

    .line 93
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mRightSwipeReactionType:I

    .line 94
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mDownSwipeReactionType:I

    .line 95
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mPrevTranslateAmount:F

    .line 96
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mInitialTranslateAmountX:I

    .line 97
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mInitialTranslateAmountY:I

    .line 98
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItemContainerView:Landroid/view/View;

    .line 99
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x42400000    # 48.0f

    .line 75
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 76
    .local v0, "density":F
    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItemWidth:I

    mul-float v4, v0, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 77
    .local v1, "maxAmountH":I
    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItemHeight:I

    mul-float v4, v0, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 79
    .local v2, "maxAmountV":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->getSwipeContainerViewTranslationX(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v3

    neg-int v4, v1

    invoke-static {v3, v4, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->clip(III)I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mInitialTranslateAmountX:I

    .line 80
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->getSwipeContainerViewTranslationY(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v3

    neg-int v4, v2

    invoke-static {v3, v4, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->clip(III)I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mInitialTranslateAmountY:I

    .line 81
    return-void
.end method

.method public update(III)V
    .locals 14
    .param p1, "itemPosition"    # I
    .param p2, "swipeDistanceX"    # I
    .param p3, "swipeDistanceY"    # I

    .prologue
    .line 102
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeDistanceX:I

    move/from16 v0, p2

    if-ne v1, v0, :cond_0

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeDistanceY:I

    move/from16 v0, p3

    if-ne v1, v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 106
    :cond_0
    move/from16 v0, p2

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeDistanceX:I

    .line 107
    move/from16 v0, p3

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeDistanceY:I

    .line 109
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeHorizontal:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeDistanceX:I

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mInitialTranslateAmountX:I

    add-int v9, v1, v2

    .line 112
    .local v9, "distance":I
    :goto_1
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeHorizontal:Z

    if-eqz v1, :cond_2

    iget v11, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItemWidth:I

    .line 113
    .local v11, "itemSize":I
    :goto_2
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeHorizontal:Z

    if-eqz v1, :cond_3

    iget v10, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mInvSwipingItemWidth:F

    .line 117
    .local v10, "invItemSize":F
    :goto_3
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeHorizontal:Z

    if-eqz v1, :cond_5

    .line 118
    if-lez v9, :cond_4

    iget v13, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mRightSwipeReactionType:I

    .line 123
    .local v13, "reactionType":I
    :goto_4
    const/4 v5, 0x0

    .line 125
    .local v5, "translateAmount":F
    packed-switch v13, :pswitch_data_0

    .line 137
    :goto_5
    :pswitch_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mPrevTranslateAmount:F

    iget-boolean v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeHorizontal:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v3, p1

    invoke-virtual/range {v1 .. v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->applySlideItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IFFZZZ)V

    .line 142
    iput v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mPrevTranslateAmount:F

    goto :goto_0

    .line 109
    .end local v5    # "translateAmount":F
    .end local v9    # "distance":I
    .end local v10    # "invItemSize":F
    .end local v11    # "itemSize":I
    .end local v13    # "reactionType":I
    :cond_1
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipeDistanceY:I

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mInitialTranslateAmountY:I

    add-int v9, v1, v2

    goto :goto_1

    .line 112
    .restart local v9    # "distance":I
    :cond_2
    iget v11, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mSwipingItemHeight:I

    goto :goto_2

    .line 113
    .restart local v11    # "itemSize":I
    :cond_3
    iget v10, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mInvSwipingItemHeight:F

    goto :goto_3

    .line 118
    .restart local v10    # "invItemSize":F
    :cond_4
    iget v13, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mLeftSwipeReactionType:I

    goto :goto_4

    .line 120
    :cond_5
    if-lez v9, :cond_6

    iget v13, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mDownSwipeReactionType:I

    .restart local v13    # "reactionType":I
    :goto_6
    goto :goto_4

    .end local v13    # "reactionType":I
    :cond_6
    iget v13, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->mUpSwipeReactionType:I

    goto :goto_6

    .line 129
    .restart local v5    # "translateAmount":F
    .restart local v13    # "reactionType":I
    :pswitch_1
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float v12, v1, v10

    .line 130
    .local v12, "proportion":F
    int-to-float v1, v9

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    sget-object v2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipingItemOperator;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float v5, v1, v2

    .line 131
    goto :goto_5

    .line 133
    .end local v12    # "proportion":F
    :pswitch_2
    int-to-float v1, v9

    mul-float/2addr v1, v10

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_5

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
