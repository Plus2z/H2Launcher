.class public Lnet/oneplus/h2launcher/ClickShadowView;
.super Landroid/view/View;
.source "ClickShadowView.java"


# static fields
.field private static final SHADOW_HIGH_ALPHA:I = 0x3c

.field private static final SHADOW_LOW_ALPHA:I = 0x1e

.field private static final SHADOW_SIZE_FACTOR:I = 0x3


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mShadowOffset:F

.field private final mShadowPadding:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lnet/oneplus/h2launcher/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ClickShadowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/ClickShadowView;->mShadowPadding:F

    .line 46
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ClickShadowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/ClickShadowView;->mShadowOffset:F

    .line 47
    return-void
.end method


# virtual methods
.method public alignWithIconView(Lnet/oneplus/h2launcher/BubbleTextView;Landroid/view/ViewGroup;)V
    .locals 10
    .param p1, "view"    # Lnet/oneplus/h2launcher/BubbleTextView;
    .param p2, "viewParent"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    .line 92
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getLeft()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ClickShadowView;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v3, v5

    .line 93
    .local v3, "leftShift":F
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ClickShadowView;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v4, v5

    .line 94
    .local v4, "topShift":F
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getRight()I

    move-result v5

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getLeft()I

    move-result v6

    sub-int v2, v5, v6

    .line 95
    .local v2, "iconWidth":I
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v6

    sub-int v1, v5, v6

    .line 96
    .local v1, "iconHSpace":I
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v0, v5

    .line 99
    .local v0, "drawableWidth":F
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v5

    add-float/2addr v5, v3

    .line 100
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getScaleX()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    int-to-float v6, v1

    sub-float/2addr v6, v0

    .line 101
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getScaleX()F

    move-result v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    int-to-float v6, v2

    .line 102
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getScaleX()F

    move-result v7

    sub-float v7, v9, v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    iget v6, p0, Lnet/oneplus/h2launcher/ClickShadowView;->mShadowPadding:F

    sub-float/2addr v5, v6

    .line 98
    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/ClickShadowView;->setTranslationX(F)V

    .line 106
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    add-float/2addr v5, v4

    .line 107
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getScaleY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 108
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getScaleY()F

    move-result v7

    sub-float v7, v9, v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    iget v6, p0, Lnet/oneplus/h2launcher/ClickShadowView;->mShadowPadding:F

    sub-float/2addr v5, v6

    .line 105
    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/ClickShadowView;->setTranslationY(F)V

    .line 111
    return-void
.end method

.method public animateShadow()V
    .locals 4

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/ClickShadowView;->setAlpha(F)V

    .line 81
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ClickShadowView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 82
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 85
    return-void
.end method

.method public getExtraSize()I
    .locals 2

    .prologue
    .line 53
    const/high16 v0, 0x40400000    # 3.0f

    iget v1, p0, Lnet/oneplus/h2launcher/ClickShadowView;->mShadowPadding:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v0, p0, Lnet/oneplus/h2launcher/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lnet/oneplus/h2launcher/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 73
    iget-object v0, p0, Lnet/oneplus/h2launcher/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lnet/oneplus/h2launcher/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 74
    iget-object v0, p0, Lnet/oneplus/h2launcher/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 75
    iget-object v0, p0, Lnet/oneplus/h2launcher/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lnet/oneplus/h2launcher/ClickShadowView;->mShadowOffset:F

    iget-object v2, p0, Lnet/oneplus/h2launcher/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 77
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    iget-object v0, p0, Lnet/oneplus/h2launcher/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    .line 62
    iput-object p1, p0, Lnet/oneplus/h2launcher/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ClickShadowView;->invalidate()V

    .line 64
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
