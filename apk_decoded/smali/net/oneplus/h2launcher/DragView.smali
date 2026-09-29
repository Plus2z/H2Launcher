.class public Lnet/oneplus/h2launcher/DragView;
.super Landroid/view/View;
.source "DragView.java"


# static fields
.field public static COLOR_CHANGE_DURATION:I

.field static sDragAlpha:F


# instance fields
.field mAnim:Landroid/animation/ValueAnimator;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCrossFadeBitmap:Landroid/graphics/Bitmap;

.field mCrossFadeProgress:F

.field mCurrentFilter:[F

.field private mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

.field private mDragRegion:Landroid/graphics/Rect;

.field private mDragView:Landroid/view/View;

.field private mDragVisualizeOffset:Landroid/graphics/Point;

.field private mFilterAnimator:Landroid/animation/ValueAnimator;

.field private mHasDrawn:Z

.field private mInitialScale:F

.field private mIntrinsicIconScale:F

.field mOffsetX:F

.field mOffsetY:F

.field mPaint:Landroid/graphics/Paint;

.field private mRegistrationX:I

.field private mRegistrationY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x78

    sput v0, Lnet/oneplus/h2launcher/DragView;->COLOR_CHANGE_DURATION:I

    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lnet/oneplus/h2launcher/DragView;->sDragAlpha:F

    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIF)V
    .locals 12
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "registrationX"    # I
    .param p5, "registrationY"    # I
    .param p6, "left"    # I
    .param p7, "top"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "initialScale"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v8, 0x0

    iput-object v8, p0, Lnet/oneplus/h2launcher/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 54
    const/4 v8, 0x0

    iput-object v8, p0, Lnet/oneplus/h2launcher/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 55
    const/4 v8, 0x0

    iput-object v8, p0, Lnet/oneplus/h2launcher/DragView;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    .line 56
    const/4 v8, 0x0

    iput-boolean v8, p0, Lnet/oneplus/h2launcher/DragView;->mHasDrawn:Z

    .line 57
    const/4 v8, 0x0

    iput v8, p0, Lnet/oneplus/h2launcher/DragView;->mCrossFadeProgress:F

    .line 60
    const/4 v8, 0x0

    iput v8, p0, Lnet/oneplus/h2launcher/DragView;->mOffsetX:F

    .line 61
    const/4 v8, 0x0

    iput v8, p0, Lnet/oneplus/h2launcher/DragView;->mOffsetY:F

    .line 62
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Lnet/oneplus/h2launcher/DragView;->mInitialScale:F

    .line 65
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Lnet/oneplus/h2launcher/DragView;->mIntrinsicIconScale:F

    .line 86
    iput-object p2, p0, Lnet/oneplus/h2launcher/DragView;->mDragView:Landroid/view/View;

    .line 88
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v8

    iput-object v8, p0, Lnet/oneplus/h2launcher/DragView;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    .line 89
    move/from16 v0, p10

    iput v0, p0, Lnet/oneplus/h2launcher/DragView;->mInitialScale:F

    .line 91
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 92
    .local v5, "res":Landroid/content/res/Resources;
    const v8, 0x7f0c023d

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v7, v8

    .line 93
    .local v7, "scaleDps":F
    move/from16 v0, p8

    int-to-float v8, v0

    add-float/2addr v8, v7

    move/from16 v0, p8

    int-to-float v9, v0

    div-float v6, v8, v9

    .line 96
    .local v6, "scale":F
    move/from16 v0, p10

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/DragView;->setScaleX(F)V

    .line 97
    move/from16 v0, p10

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/DragView;->setScaleY(F)V

    .line 100
    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {p0, v8}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v8

    iput-object v8, p0, Lnet/oneplus/h2launcher/DragView;->mAnim:Landroid/animation/ValueAnimator;

    .line 101
    iget-object v8, p0, Lnet/oneplus/h2launcher/DragView;->mAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v10, 0x96

    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 102
    iget-object v8, p0, Lnet/oneplus/h2launcher/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v9, Lnet/oneplus/h2launcher/DragView$1;

    move/from16 v0, p10

    invoke-direct {v9, p0, v0, v6}, Lnet/oneplus/h2launcher/DragView$1;-><init>(Lnet/oneplus/h2launcher/DragView;FF)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 127
    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-static {p3, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lnet/oneplus/h2launcher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 128
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-direct {v8, v9, v10, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v8}, Lnet/oneplus/h2launcher/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 131
    move/from16 v0, p4

    iput v0, p0, Lnet/oneplus/h2launcher/DragView;->mRegistrationX:I

    .line 132
    move/from16 v0, p5

    iput v0, p0, Lnet/oneplus/h2launcher/DragView;->mRegistrationY:I

    .line 135
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 136
    .local v4, "ms":I
    invoke-virtual {p0, v4, v4}, Lnet/oneplus/h2launcher/DragView;->measure(II)V

    .line 137
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lnet/oneplus/h2launcher/DragView;->mPaint:Landroid/graphics/Paint;

    .line 139
    sget-boolean v8, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v8, :cond_0

    .line 140
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c023e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {p0, v8}, Lnet/oneplus/h2launcher/DragView;->setElevation(F)V

    .line 142
    :cond_0
    return-void

    .line 100
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateFilterTo([F)V
    .locals 4
    .param p1, "targetFilter"    # [F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 282
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragView;->mCurrentFilter:[F

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 283
    .local v0, "oldFilter":[F
    :goto_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/DragView;->mCurrentFilter:[F

    .line 285
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 288
    :cond_0
    new-instance v1, Landroid/animation/FloatArrayEvaluator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/DragView;->mCurrentFilter:[F

    invoke-direct {v1, v2}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    .line 290
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    sget v2, Lnet/oneplus/h2launcher/DragView;->COLOR_CHANGE_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 291
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lnet/oneplus/h2launcher/DragView$3;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/DragView$3;-><init>(Lnet/oneplus/h2launcher/DragView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 299
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 300
    return-void

    .line 282
    .end local v0    # "oldFilter":[F
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragView;->mCurrentFilter:[F

    goto :goto_0
.end method

.method public static setColorScale(ILandroid/graphics/ColorMatrix;)V
    .locals 5
    .param p0, "color"    # I
    .param p1, "target"    # Landroid/graphics/ColorMatrix;

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 368
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 369
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 368
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 370
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragView;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 343
    :cond_0
    return-void
.end method

.method public crossFade(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 240
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 241
    .local v0, "va":Landroid/animation/ValueAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 242
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 243
    new-instance v1, Lnet/oneplus/h2launcher/DragView$2;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/DragView$2;-><init>(Lnet/oneplus/h2launcher/DragView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 250
    return-void

    .line 240
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getDragRegion()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragView;->mDragRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDragRegionHeight()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getDragRegionLeft()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragView;->mDragRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getDragRegionTop()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragView;->mDragRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getDragRegionWidth()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragView;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method public getDragVisualizeOffset()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getInitialScale()F
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lnet/oneplus/h2launcher/DragView;->mInitialScale:F

    return v0
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lnet/oneplus/h2launcher/DragView;->mIntrinsicIconScale:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lnet/oneplus/h2launcher/DragView;->mOffsetY:F

    return v0
.end method

.method public hasDrawn()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/DragView;->mHasDrawn:Z

    return v0
.end method

.method move(II)V
    .locals 2
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    .line 357
    iget v0, p0, Lnet/oneplus/h2launcher/DragView;->mRegistrationX:I

    sub-int v0, p1, v0

    iget v1, p0, Lnet/oneplus/h2launcher/DragView;->mOffsetX:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/DragView;->setTranslationX(F)V

    .line 358
    iget v0, p0, Lnet/oneplus/h2launcher/DragView;->mRegistrationY:I

    sub-int v0, p2, v0

    iget v1, p0, Lnet/oneplus/h2launcher/DragView;->mOffsetY:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/DragView;->setTranslationY(F)V

    .line 359
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x1

    const/high16 v9, 0x437f0000    # 255.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 209
    const/4 v2, 0x0

    .line 217
    .local v2, "debug":Z
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/DragView;->mHasDrawn:Z

    .line 218
    iget v5, p0, Lnet/oneplus/h2launcher/DragView;->mCrossFadeProgress:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2

    iget-object v5, p0, Lnet/oneplus/h2launcher/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 219
    .local v1, "crossFade":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 220
    if-eqz v1, :cond_3

    iget v5, p0, Lnet/oneplus/h2launcher/DragView;->mCrossFadeProgress:F

    sub-float v5, v8, v5

    mul-float/2addr v5, v9

    float-to-int v0, v5

    .line 221
    .local v0, "alpha":I
    :goto_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 223
    .end local v0    # "alpha":I
    :cond_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lnet/oneplus/h2launcher/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 224
    if-eqz v1, :cond_1

    .line 225
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragView;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lnet/oneplus/h2launcher/DragView;->mCrossFadeProgress:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 227
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iget-object v6, p0, Lnet/oneplus/h2launcher/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 228
    .local v3, "sX":F
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iget-object v6, p0, Lnet/oneplus/h2launcher/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 229
    .local v4, "sY":F
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 230
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lnet/oneplus/h2launcher/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 233
    .end local v3    # "sX":F
    .end local v4    # "sY":F
    :cond_1
    return-void

    .line 218
    .end local v1    # "crossFade":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 220
    .restart local v1    # "crossFade":Z
    :cond_3
    const/16 v0, 0xff

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/DragView;->setMeasuredDimension(II)V

    .line 204
    return-void
.end method

.method remove()V
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragView;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/DragLayer;->removeView(Landroid/view/View;)V

    .line 365
    :cond_0
    return-void
.end method

.method public resetLayoutParams()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/DragView;->mOffsetY:F

    iput v0, p0, Lnet/oneplus/h2launcher/DragView;->mOffsetX:F

    .line 347
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragView;->requestLayout()V

    .line 348
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 308
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 309
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 310
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragView;->invalidate()V

    .line 311
    return-void
.end method

.method public setColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 253
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragView;->mPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    .line 254
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/DragView;->mPaint:Landroid/graphics/Paint;

    .line 256
    :cond_0
    if-eqz p1, :cond_2

    .line 257
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 258
    .local v0, "m1":Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 260
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 261
    .local v1, "m2":Landroid/graphics/ColorMatrix;
    invoke-static {p1, v1}, Lnet/oneplus/h2launcher/DragView;->setColorScale(ILandroid/graphics/ColorMatrix;)V

    .line 262
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 264
    sget-boolean v2, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v2, :cond_1

    .line 265
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/DragView;->animateFilterTo([F)V

    .line 278
    .end local v0    # "m1":Landroid/graphics/ColorMatrix;
    .end local v1    # "m2":Landroid/graphics/ColorMatrix;
    :goto_0
    return-void

    .line 267
    .restart local v0    # "m1":Landroid/graphics/ColorMatrix;
    .restart local v1    # "m2":Landroid/graphics/ColorMatrix;
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragView;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 268
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragView;->invalidate()V

    goto :goto_0

    .line 271
    .end local v0    # "m1":Landroid/graphics/ColorMatrix;
    .end local v1    # "m2":Landroid/graphics/ColorMatrix;
    :cond_2
    sget-boolean v2, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/oneplus/h2launcher/DragView;->mCurrentFilter:[F

    if-nez v2, :cond_4

    .line 272
    :cond_3
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 273
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragView;->invalidate()V

    goto :goto_0

    .line 275
    :cond_4
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/DragView;->animateFilterTo([F)V

    goto :goto_0
.end method

.method public setCrossFadeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "crossFadeBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 236
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    .line 237
    return-void
.end method

.method public setDragRegion(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 186
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 187
    return-void
.end method

.method public setDragVisualizeOffset(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    .line 178
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 179
    return-void
.end method

.method public setIntrinsicIconScaleFactor(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 150
    iput p1, p0, Lnet/oneplus/h2launcher/DragView;->mIntrinsicIconScale:F

    .line 151
    return-void
.end method

.method public show(II)V
    .locals 3
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    const/4 v2, 0x0

    .line 321
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragView;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v1, p0}, Lnet/oneplus/h2launcher/DragLayer;->addView(Landroid/view/View;)V

    .line 324
    new-instance v0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    invoke-direct {v0, v2, v2}, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;-><init>(II)V

    .line 325
    .local v0, "lp":Lnet/oneplus/h2launcher/DragLayer$LayoutParams;
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->width:I

    .line 326
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->height:I

    .line 327
    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->customPosition:Z

    .line 328
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget v1, p0, Lnet/oneplus/h2launcher/DragView;->mRegistrationX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/DragView;->setTranslationX(F)V

    .line 330
    iget v1, p0, Lnet/oneplus/h2launcher/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/DragView;->setTranslationY(F)V

    .line 332
    new-instance v1, Lnet/oneplus/h2launcher/DragView$4;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/DragView$4;-><init>(Lnet/oneplus/h2launcher/DragView;)V

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/DragView;->post(Ljava/lang/Runnable;)Z

    .line 337
    return-void
.end method

.method public updateInitialScaleToCurrentScale()V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragView;->getScaleX()F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/DragView;->mInitialScale:F

    .line 199
    return-void
.end method
