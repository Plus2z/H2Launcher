.class Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "OPTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/OPTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private mSelectedPosition:I

.field private mSelectionOffset:F

.field final synthetic this$0:Lcom/oneplus/lib/widget/OPTabLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 1278
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    .line 1279
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1272
    iput v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1275
    iput v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1276
    iput v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1280
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setWillNotDraw(Z)V

    .line 1281
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 1282
    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1268
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method

.method static synthetic access$1802(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 1268
    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$1902(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;
    .param p1, "x1"    # F

    .prologue
    .line 1268
    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    return p1
.end method

.method private setIndicatorPosition(II)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1395
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    if-eq p2, v0, :cond_1

    .line 1397
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1398
    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1399
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->postInvalidateOnAnimation()V

    .line 1401
    :cond_1
    return-void
.end method

.method private updateIndicatorPosition()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1372
    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1375
    .local v3, "selectedTitle":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_1

    .line 1376
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1377
    .local v0, "left":I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1379
    .local v2, "right":I
    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 1381
    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1382
    .local v1, "nextTitle":Landroid/view/View;
    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float v5, v7, v5

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 1384
    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float v5, v7, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 1391
    .end local v1    # "nextTitle":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    .line 1392
    return-void

    .line 1388
    .end local v0    # "left":I
    .end local v2    # "right":I
    :cond_1
    const/4 v2, -0x1

    .restart local v2    # "right":I
    move v0, v2

    .restart local v0    # "left":I
    goto :goto_0
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v0, 0x1

    .line 1404
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_2

    move v7, v0

    .line 1407
    .local v7, "isRtl":Z
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1408
    .local v9, "targetView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1409
    .local v3, "targetLeft":I
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1413
    .local v5, "targetRight":I
    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v0, :cond_3

    .line 1415
    iget v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1416
    .local v2, "startLeft":I
    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1437
    .local v4, "startRight":I
    :goto_1
    if-ne v2, v3, :cond_0

    if-eq v4, v5, :cond_1

    .line 1438
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1502(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 1439
    .local v6, "animator":Landroid/animation/ValueAnimator;
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v0}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1600(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1440
    int-to-long v0, p2

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1441
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1442
    new-instance v0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;-><init>(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;IIII)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1451
    new-instance v0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$2;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$2;-><init>(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;I)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1464
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 1466
    .end local v6    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    return-void

    .line 1404
    .end local v2    # "startLeft":I
    .end local v3    # "targetLeft":I
    .end local v4    # "startRight":I
    .end local v5    # "targetRight":I
    .end local v7    # "isRtl":Z
    .end local v9    # "targetView":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 1419
    .restart local v3    # "targetLeft":I
    .restart local v5    # "targetRight":I
    .restart local v7    # "isRtl":Z
    .restart local v9    # "targetView":Landroid/view/View;
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1300(Lcom/oneplus/lib/widget/OPTabLayout;I)I

    move-result v8

    .line 1420
    .local v8, "offset":I
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    if-ge p1, v0, :cond_5

    .line 1422
    if-eqz v7, :cond_4

    .line 1423
    sub-int v4, v3, v8

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_1

    .line 1425
    .end local v2    # "startLeft":I
    .end local v4    # "startRight":I
    :cond_4
    add-int v4, v5, v8

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_1

    .line 1429
    .end local v2    # "startLeft":I
    .end local v4    # "startRight":I
    :cond_5
    if-eqz v7, :cond_6

    .line 1430
    add-int v4, v5, v8

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_1

    .line 1432
    .end local v2    # "startLeft":I
    .end local v4    # "startRight":I
    :cond_6
    sub-int v4, v3, v8

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_1

    .line 1441
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method childrenNeedLayout()Z
    .locals 4

    .prologue
    .line 1299
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1300
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1301
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1302
    const/4 v3, 0x1

    .line 1305
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v3

    .line 1299
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1305
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1470
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1473
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-le v0, v1, :cond_0

    .line 1474
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    int-to-float v3, v0

    .line 1475
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 1474
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1477
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1366
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1368
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    .line 1369
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1316
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1318
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v8, v9, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return-void

    .line 1324
    :cond_1
    iget-object v8, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v8}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1100(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v8

    if-ne v8, v10, :cond_0

    iget-object v8, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v8}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1200(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v8

    if-ne v8, v10, :cond_0

    .line 1325
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    .line 1327
    .local v1, "count":I
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1330
    .local v6, "unspecifiedSpec":I
    const/4 v4, 0x0

    .line 1331
    .local v4, "largestTabWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v7, v1

    .local v7, "z":I
    :goto_1
    if-ge v3, v7, :cond_2

    .line 1332
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1333
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v6, p2}, Landroid/view/View;->measure(II)V

    .line 1334
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1331
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1337
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    if-lez v4, :cond_0

    .line 1342
    iget-object v8, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    const/16 v9, 0x10

    invoke-static {v8, v9}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1300(Lcom/oneplus/lib/widget/OPTabLayout;I)I

    move-result v2

    .line 1343
    .local v2, "gutter":I
    mul-int v8, v4, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getMeasuredWidth()I

    move-result v9

    mul-int/lit8 v10, v2, 0x2

    sub-int/2addr v9, v10

    if-gt v8, v9, :cond_3

    .line 1346
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_4

    .line 1347
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1348
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1349
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1350
    const/4 v8, 0x0

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1346
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1355
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v8, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v8, v11}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1202(Lcom/oneplus/lib/widget/OPTabLayout;I)I

    .line 1356
    iget-object v8, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v8}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1400(Lcom/oneplus/lib/widget/OPTabLayout;)V

    .line 1360
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 1309
    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1310
    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    .line 1311
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    .line 1312
    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1287
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->postInvalidateOnAnimation()V

    .line 1289
    :cond_0
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 1292
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    if-eq v0, p1, :cond_0

    .line 1293
    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    .line 1294
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->postInvalidateOnAnimation()V

    .line 1296
    :cond_0
    return-void
.end method
