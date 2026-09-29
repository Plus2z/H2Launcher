.class public Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;
.super Ljava/lang/Object;
.source "BaseRecyclerViewFastScrollPopup.java"


# static fields
.field private static final FAST_SCROLL_OVERLAY_Y_OFFSET_FACTOR:F = 1.5f


# instance fields
.field private mAlpha:F

.field private mAlphaAnimator:Landroid/animation/Animator;

.field private mBg:Landroid/graphics/drawable/Drawable;

.field private mBgBounds:Landroid/graphics/Rect;

.field private mBgColor:I

.field private mBgOriginalSize:I

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mRes:Landroid/content/res/Resources;

.field private mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

.field private mSectionName:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/BaseRecyclerView;Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "rv"    # Lnet/oneplus/h2launcher/BaseRecyclerView;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgColor:I

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    .line 55
    iput-object p2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mRes:Landroid/content/res/Resources;

    .line 56
    iput-object p1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    .line 57
    const v0, 0x7f0c01e3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    .line 58
    const v0, 0x7f0200ad

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    .line 59
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    iget v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    const v1, 0x7f0c01e4

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    return-void
.end method


# virtual methods
.method public animateVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 116
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mVisible:Z

    if-eq v0, p1, :cond_1

    .line 117
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mVisible:Z

    .line 118
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 121
    :cond_0
    const-string v1, "alpha"

    const/4 v0, 0x1

    new-array v2, v0, [F

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    .line 122
    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_3

    const-wide/16 v0, 0xc8

    :goto_1
    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 123
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 125
    :cond_1
    return-void

    .line 121
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :cond_3
    const-wide/16 v0, 0x96

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    .line 146
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 149
    .local v0, "restoreCount":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 150
    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 151
    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 152
    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 153
    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 154
    iget v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgColor:I

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 157
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 158
    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 159
    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mSectionName:Ljava/lang/String;

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    .line 160
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    .line 159
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 162
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 164
    .end local v0    # "restoreCount":I
    :cond_1
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    return v0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mSectionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 133
    iput p1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    .line 134
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 135
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "bgColor"    # I

    .prologue
    .line 128
    iput p1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgColor:I

    .line 129
    return-void
.end method

.method public setSectionName(Ljava/lang/String;)V
    .locals 4
    .param p1, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mSectionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iput-object p1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mSectionName:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 74
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 76
    :cond_0
    return-void
.end method

.method public updateFastScrollerBounds(Lnet/oneplus/h2launcher/BaseRecyclerView;I)Landroid/graphics/Rect;
    .locals 7
    .param p1, "rv"    # Lnet/oneplus/h2launcher/BaseRecyclerView;
    .param p2, "lastTouchY"    # I

    .prologue
    .line 83
    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 85
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getMaxScrollbarWidth()I

    move-result v3

    .line 88
    .local v3, "edgePadding":I
    iget v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 89
    .local v1, "bgPadding":I
    iget v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    .line 90
    .local v0, "bgHeight":I
    iget v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 91
    .local v2, "bgWidth":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mRes:Landroid/content/res/Resources;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getBackgroundPadding()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getMaxScrollbarWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 93
    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 99
    :goto_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    const/high16 v5, 0x3fc00000    # 1.5f

    int-to-float v6, v0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v5, p2, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 100
    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 101
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getHeight()I

    move-result v6

    sub-int/2addr v6, v3

    sub-int/2addr v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 100
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 102
    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 108
    .end local v0    # "bgHeight":I
    .end local v1    # "bgPadding":I
    .end local v2    # "bgWidth":I
    .end local v3    # "edgePadding":I
    :goto_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 109
    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    return-object v4

    .line 95
    .restart local v0    # "bgHeight":I
    .restart local v1    # "bgPadding":I
    .restart local v2    # "bgWidth":I
    .restart local v3    # "edgePadding":I
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getBackgroundPadding()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 96
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getMaxScrollbarWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 97
    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 104
    .end local v0    # "bgHeight":I
    .end local v1    # "bgPadding":I
    .end local v2    # "bgWidth":I
    .end local v3    # "edgePadding":I
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1
.end method
