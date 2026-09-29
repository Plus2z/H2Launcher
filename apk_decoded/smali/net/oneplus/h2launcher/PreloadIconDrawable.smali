.class Lnet/oneplus/h2launcher/PreloadIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PreloadIconDrawable.java"


# static fields
.field private static final ANIMATION_PROGRESS_COMPLETED:F = 1.0f

.field private static final ANIMATION_PROGRESS_STARTED:F = 0.0f

.field private static final ANIMATION_PROGRESS_STOPPED:F = -1.0f

.field private static final DEFAULT_COLOR:I = -0xff6978

.field private static final ICON_SCALE_FACTOR:F = 0.5f

.field private static final MIN_LIGHTNESS:F = 0.6f

.field private static final MIN_SATUNATION:F = 0.2f

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAnimationProgress:F

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field final mIcon:Landroid/graphics/drawable/Drawable;

.field private mIndicatorColor:I

.field private final mIndicatorRect:Landroid/graphics/RectF;

.field private mIndicatorRectDirty:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mRingOutset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    .line 38
    iput v2, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorColor:I

    .line 44
    iput v2, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mProgress:I

    .line 46
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimationProgress:F

    .line 50
    iput-object p1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 56
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PreloadIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 57
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/PreloadIconDrawable;->applyPreloaderTheme(Landroid/content/res/Resources$Theme;)V

    .line 58
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/PreloadIconDrawable;->onLevelChange(I)Z

    .line 59
    return-void
.end method

.method private getIndicatorColor()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const v3, -0xff6978

    .line 231
    iget v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorColor:I

    if-eqz v1, :cond_0

    .line 232
    iget v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorColor:I

    .line 250
    :goto_0
    return v1

    .line 234
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    if-nez v1, :cond_1

    .line 235
    iput v3, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorColor:I

    .line 236
    iget v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorColor:I

    goto :goto_0

    .line 238
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    .line 239
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x14

    .line 238
    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/Utilities;->findDominantColorByHue(Landroid/graphics/Bitmap;I)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorColor:I

    .line 242
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 243
    .local v0, "hsv":[F
    iget v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorColor:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 244
    const/4 v1, 0x1

    aget v1, v0, v1

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 245
    iput v3, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorColor:I

    .line 246
    iget v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorColor:I

    goto :goto_0

    .line 248
    :cond_2
    const v1, 0x3f19999a    # 0.6f

    aget v2, v0, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v4

    .line 249
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorColor:I

    .line 250
    iget v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorColor:I

    goto :goto_0
.end method

.method private initIndicatorRect()V
    .locals 11

    .prologue
    .line 92
    iget-object v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 95
    .local v0, "bounds":Landroid/graphics/Rect;
    sget-object v5, Lnet/oneplus/h2launcher/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 98
    .local v3, "paddingScaleX":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 99
    .local v4, "paddingScaleY":F
    iget-object v5, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sget-object v7, Lnet/oneplus/h2launcher/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sget-object v8, Lnet/oneplus/h2launcher/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sget-object v9, Lnet/oneplus/h2launcher/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    sget-object v10, Lnet/oneplus/h2launcher/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 105
    iget-object v5, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v2, v5, v6

    .line 106
    .local v2, "inset":F
    iget-object v5, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 107
    const/4 v5, 0x0

    iput-boolean v5, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorRectDirty:Z

    .line 108
    return-void
.end method


# virtual methods
.method public applyPreloaderTheme(Landroid/content/res/Resources$Theme;)V
    .locals 6
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    sget-object v1, Lnet/oneplus/h2launcher/R$styleable;->PreloadIconDrawable:[I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    iget-object v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 65
    iget-object v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mRingOutset:I

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PreloadIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/PreloadIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 69
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PreloadIconDrawable;->invalidateSelf()V

    .line 70
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v4, 0xff

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 112
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PreloadIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 113
    .local v7, "r":Landroid/graphics/Rect;
    sget-object v0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    invoke-static {v0, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorRectDirty:Z

    if-eqz v0, :cond_1

    .line 118
    invoke-direct {p0}, Lnet/oneplus/h2launcher/PreloadIconDrawable;->initIndicatorRect()V

    .line 122
    :cond_1
    iget v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimationProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimationProgress:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 124
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimationProgress:F

    sub-float v1, v2, v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 126
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 129
    iget v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimationProgress:F

    mul-float/2addr v0, v3

    add-float v6, v3, v0

    .line 145
    .local v6, "iconScale":F
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 146
    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p1, v6, v6, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 147
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 130
    .end local v6    # "iconScale":F
    :cond_3
    iget v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimationProgress:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 131
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    const/high16 v6, 0x3f000000    # 0.5f

    .line 133
    .restart local v6    # "iconScale":F
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 134
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    iget v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mProgress:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_4

    .line 137
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 138
    :cond_4
    iget v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mProgress:I

    if-lez v0, :cond_2

    .line 139
    iget-object v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mProgress:I

    int-to-float v0, v0

    const v3, 0x40666666    # 3.6f

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    .line 142
    .end local v6    # "iconScale":F
    :cond_5
    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v6    # "iconScale":F
    goto :goto_1
.end method

.method public getAnimationProgress()F
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimationProgress:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, -0x3

    return v0
.end method

.method public getOutset()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mRingOutset:I

    return v0
.end method

.method public hasNotCompleted()Z
    .locals 2

    .prologue
    .line 217
    iget v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimationProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybePerformFinishedAnimation()V
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimationProgress:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 199
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PreloadIconDrawable;->setAnimationProgress(F)V

    .line 200
    const-string v0, "animationProgress"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 202
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 200
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 74
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 75
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 77
    sget-object v0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    iget v1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mRingOutset:I

    neg-int v1, v1

    iget v2, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mRingOutset:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 78
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lnet/oneplus/h2launcher/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 80
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIndicatorRectDirty:Z

    .line 81
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 3
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x1

    .line 168
    iput p1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mProgress:I

    .line 171
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 175
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimationProgress:F

    .line 176
    if-lez p1, :cond_1

    .line 179
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/PreloadIconDrawable;->getIndicatorColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    if-gtz p1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    .line 185
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PreloadIconDrawable;->invalidateSelf()V

    .line 186
    return v2

    .line 182
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 159
    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 206
    iget v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimationProgress:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 207
    iput p1, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mAnimationProgress:F

    .line 208
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PreloadIconDrawable;->invalidateSelf()V

    .line 210
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 163
    iget-object v0, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 164
    return-void
.end method
