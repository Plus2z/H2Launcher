.class public abstract Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;
.source "LinearSmoothScroller.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MILLISECONDS_PER_INCH:F = 25.0f

.field public static final SNAP_TO_ANY:I = 0x0

.field public static final SNAP_TO_END:I = 0x1

.field public static final SNAP_TO_START:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LinearSmoothScroller"

.field private static final TARGET_SEEK_EXTRA_SCROLL_RATIO:F = 1.2f

.field private static final TARGET_SEEK_SCROLL_DISTANCE_PX:I = 0x2710


# instance fields
.field private final MILLISECONDS_PER_PX:F

.field protected final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mInterimTargetDx:I

.field protected mInterimTargetDy:I

.field protected final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field protected mTargetVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;-><init>()V

    .line 78
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 80
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 88
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDx:I

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDy:I

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    .line 92
    return-void
.end method

.method private clampApplyScroll(II)I
    .locals 2
    .param p1, "tmpDt"    # I
    .param p2, "dt"    # I

    .prologue
    .line 251
    move v0, p1

    .line 252
    .local v0, "before":I
    sub-int/2addr p1, p2

    .line 253
    mul-int v1, v0, p1

    if-gtz v1, :cond_0

    .line 254
    const/4 p1, 0x0

    .line 256
    .end local p1    # "tmpDt":I
    :cond_0
    return p1
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 4
    .param p1, "viewStart"    # I
    .param p2, "viewEnd"    # I
    .param p3, "boxStart"    # I
    .param p4, "boxEnd"    # I
    .param p5, "snapPreference"    # I

    .prologue
    .line 265
    packed-switch p5, :pswitch_data_0

    .line 281
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    :pswitch_0
    sub-int v1, p3, p1

    .line 284
    :cond_0
    :goto_0
    return v1

    .line 269
    :pswitch_1
    sub-int v1, p4, p2

    goto :goto_0

    .line 271
    :pswitch_2
    sub-int v1, p3, p1

    .line 272
    .local v1, "dtStart":I
    if-gtz v1, :cond_0

    .line 275
    sub-int v0, p4, p2

    .line 276
    .local v0, "dtEnd":I
    if-gez v0, :cond_1

    move v1, v0

    .line 277
    goto :goto_0

    .line 284
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v6

    .line 325
    .local v6, "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0

    .line 329
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 330
    .local v7, "params":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    invoke-virtual {v6, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v1, v0, v5

    .line 331
    .local v1, "left":I
    invoke-virtual {v6, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->rightMargin:I

    add-int v2, v0, v5

    .line 332
    .local v2, "right":I
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    .line 333
    .local v3, "start":I
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int v4, v0, v5

    .local v4, "end":I
    move-object v0, p0

    move v5, p2

    .line 334
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v0

    goto :goto_0
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v6

    .line 300
    .local v6, "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 309
    :goto_0
    return v0

    .line 304
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 305
    .local v7, "params":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    invoke-virtual {v6, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->topMargin:I

    sub-int v1, v0, v5

    .line 306
    .local v1, "top":I
    invoke-virtual {v6, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v2, v0, v5

    .line 307
    .local v2, "bottom":I
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    .line 308
    .local v3, "start":I
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int v4, v0, v5

    .local v4, "end":I
    move-object v0, p0

    move v5, p2

    .line 309
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v0

    goto :goto_0
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 156
    const/high16 v0, 0x41c80000    # 25.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected calculateTimeForDeceleration(I)I
    .locals 4
    .param p1, "dx"    # I

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 2
    .param p1, "dx"    # I

    .prologue
    .line 187
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public abstract computeScrollVectorForPosition(I)Landroid/graphics/PointF;
.end method

.method protected getHorizontalSnapPreference()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getVerticalSnapPreference()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected onSeekTargetStep(IILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p4, "action"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->stop()V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDx:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDx:I

    .line 131
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDy:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDy:I

    .line 133
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDx:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDy:I

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->updateActionForInterimTarget(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDy:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDx:I

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 146
    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V
    .locals 7
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "action"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->getHorizontalSnapPreference()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result v1

    .line 108
    .local v1, "dx":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->getVerticalSnapPreference()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result v2

    .line 109
    .local v2, "dy":I
    mul-int v4, v1, v1

    mul-int v5, v2, v2

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 110
    .local v0, "distance":I
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v3

    .line 111
    .local v3, "time":I
    if-lez v3, :cond_0

    .line 112
    neg-int v4, v1

    neg-int v5, v2

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v4, v5, v3, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 114
    :cond_0
    return-void
.end method

.method protected updateActionForInterimTarget(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V
    .locals 7
    .param p1, "action"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    .prologue
    const v5, 0x461c4000    # 10000.0f

    const/4 v4, 0x0

    const v6, 0x3f99999a    # 1.2f

    .line 226
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->getTargetPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 227
    .local v0, "scrollVector":Landroid/graphics/PointF;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 228
    :cond_0
    const-string v3, "LinearSmoothScroller"

    const-string v4, "To support smooth scrolling, you should override \nLayoutManager#computeScrollVectorForPosition.\nFalling back to instant scroll"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->getTargetPosition()I

    move-result v1

    .line 232
    .local v1, "target":I
    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->jumpTo(I)V

    .line 233
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->stop()V

    .line 248
    .end local v1    # "target":I
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->normalize(Landroid/graphics/PointF;)V

    .line 237
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 239
    iget v3, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDx:I

    .line 240
    iget v3, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDy:I

    .line 241
    const/16 v3, 0x2710

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v2

    .line 245
    .local v2, "time":I
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDx:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDy:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v5, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method
