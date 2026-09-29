.class final Lcom/oneplus/lib/design/widget/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# static fields
.field private static final DEBUG_DRAW:Z

.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private mBoundsChanged:Z

.field private final mCollapsedBounds:Landroid/graphics/Rect;

.field private mCollapsedDrawX:F

.field private mCollapsedDrawY:F

.field private mCollapsedShadowColor:I

.field private mCollapsedShadowDx:F

.field private mCollapsedShadowDy:F

.field private mCollapsedShadowRadius:F

.field private mCollapsedTextColor:Landroid/content/res/ColorStateList;

.field private mCollapsedTextGravity:I

.field private mCollapsedTextSize:F

.field private mCollapsedTypeface:Landroid/graphics/Typeface;

.field private final mCurrentBounds:Landroid/graphics/RectF;

.field private mCurrentDrawX:F

.field private mCurrentDrawY:F

.field private mCurrentTextSize:F

.field private mCurrentTypeface:Landroid/graphics/Typeface;

.field private mDrawTitle:Z

.field private final mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedDrawX:F

.field private mExpandedDrawY:F

.field private mExpandedFraction:F

.field private mExpandedShadowColor:I

.field private mExpandedShadowDx:F

.field private mExpandedShadowDy:F

.field private mExpandedShadowRadius:F

.field private mExpandedTextColor:Landroid/content/res/ColorStateList;

.field private mExpandedTextGravity:I

.field private mExpandedTextSize:F

.field private mExpandedTitleTexture:Landroid/graphics/Bitmap;

.field private mExpandedTypeface:Landroid/graphics/Typeface;

.field private mIsRtl:Z

.field private mPositionInterpolator:Landroid/view/animation/Interpolator;

.field private mScale:F

.field private mState:[I

.field private mText:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSizeInterpolator:Landroid/view/animation/Interpolator;

.field private mTextToDraw:Ljava/lang/CharSequence;

.field private mTextureAscent:F

.field private mTextureDescent:F

.field private mTexturePaint:Landroid/graphics/Paint;

.field private mUseTexture:Z

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    .line 52
    sget-object v0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    sget-object v0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    :cond_0
    return-void

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x10

    const/high16 v0, 0x41700000    # 15.0f

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    .line 67
    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    .line 68
    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    .line 69
    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 112
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    .line 114
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 118
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    .line 119
    return-void
.end method

.method private static blendColors(IIF)I
    .locals 9
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 701
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, p2

    .line 702
    .local v3, "inverseRatio":F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    add-float v0, v5, v6

    .line 703
    .local v0, "a":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    add-float v4, v5, v6

    .line 704
    .local v4, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    add-float v2, v5, v6

    .line 705
    .local v2, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    add-float v1, v5, v6

    .line 706
    .local v1, "b":F
    float-to-int v5, v0

    float-to-int v6, v4

    float-to-int v7, v2

    float-to-int v8, v1

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method private calculateBaseOffsets()V
    .locals 14

    .prologue
    const v13, 0x800007

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    .line 396
    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    .line 399
    .local v1, "currentTextSize":F
    iget v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    invoke-direct {p0, v7}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 400
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v11, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 401
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v7, v10, v9, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    .line 402
    .local v5, "width":F
    :goto_0
    iget v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    iget-boolean v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mIsRtl:Z

    if-eqz v7, :cond_1

    move v7, v8

    :goto_1
    invoke-static {v10, v7}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 404
    .local v0, "collapsedAbsGravity":I
    and-int/lit8 v7, v0, 0x70

    sparse-switch v7, :sswitch_data_0

    .line 413
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v10

    sub-float v3, v7, v10

    .line 414
    .local v3, "textHeight":F
    div-float v7, v3, v12

    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v10

    sub-float v4, v7, v10

    .line 415
    .local v4, "textOffset":F
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v4

    iput v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    .line 418
    .end local v3    # "textHeight":F
    .end local v4    # "textOffset":F
    :goto_2
    and-int v7, v0, v13

    sparse-switch v7, :sswitch_data_1

    .line 427
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iput v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    .line 431
    :goto_3
    iget v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    invoke-direct {p0, v7}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 432
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 433
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v6, v7, v9, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    .line 434
    :goto_4
    iget v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    iget-boolean v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mIsRtl:Z

    if-eqz v7, :cond_3

    :goto_5
    invoke-static {v6, v8}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    .line 436
    .local v2, "expandedAbsGravity":I
    and-int/lit8 v6, v2, 0x70

    sparse-switch v6, :sswitch_data_2

    .line 445
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    sub-float v3, v6, v7

    .line 446
    .restart local v3    # "textHeight":F
    div-float v6, v3, v12

    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    sub-float v4, v6, v7

    .line 447
    .restart local v4    # "textOffset":F
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v4

    iput v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    .line 450
    .end local v3    # "textHeight":F
    .end local v4    # "textOffset":F
    :goto_6
    and-int v6, v2, v13

    sparse-switch v6, :sswitch_data_3

    .line 459
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iput v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    .line 464
    :goto_7
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->clearTexture()V

    .line 466
    invoke-direct {p0, v1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 467
    return-void

    .end local v0    # "collapsedAbsGravity":I
    .end local v2    # "expandedAbsGravity":I
    .end local v5    # "width":F
    :cond_0
    move v5, v6

    .line 401
    goto/16 :goto_0

    .restart local v5    # "width":F
    :cond_1
    move v7, v9

    .line 402
    goto/16 :goto_1

    .line 406
    .restart local v0    # "collapsedAbsGravity":I
    :sswitch_0
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    iput v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    goto :goto_2

    .line 409
    :sswitch_1
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v10

    sub-float/2addr v7, v10

    iput v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    goto/16 :goto_2

    .line 420
    :sswitch_2
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    div-float v10, v5, v12

    sub-float/2addr v7, v10

    iput v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    goto/16 :goto_3

    .line 423
    :sswitch_3
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, v5

    iput v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    goto/16 :goto_3

    :cond_2
    move v5, v6

    .line 433
    goto :goto_4

    :cond_3
    move v8, v9

    .line 434
    goto :goto_5

    .line 438
    .restart local v2    # "expandedAbsGravity":I
    :sswitch_4
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    goto :goto_6

    .line 441
    :sswitch_5
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    goto :goto_6

    .line 452
    :sswitch_6
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    div-float v7, v5, v12

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    goto :goto_7

    .line 455
    :sswitch_7
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v5

    iput v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    goto :goto_7

    .line 404
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 418
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch

    .line 436
    :sswitch_data_2
    .sparse-switch
        0x30 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    .line 450
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_7
    .end sparse-switch
.end method

.method private calculateCurrentOffsets()V
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->calculateOffsets(F)V

    .line 347
    return-void
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 525
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 527
    .local v0, "defaultIsRtl":Z
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 529
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1, p1, v2, v3}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v1

    return v1

    .end local v0    # "defaultIsRtl":Z
    :cond_0
    move v0, v2

    .line 525
    goto :goto_0

    .line 527
    .restart local v0    # "defaultIsRtl":Z
    :cond_1
    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_1
.end method

.method private calculateOffsets(F)V
    .locals 6
    .param p1, "fraction"    # F

    .prologue
    const/4 v5, 0x0

    .line 350
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->interpolateBounds(F)V

    .line 351
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentDrawX:F

    .line 353
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentDrawY:F

    .line 356
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 359
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 363
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCurrentExpandedTextColor()I

    move-result v1

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v2

    .line 362
    invoke-static {v1, v2, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->blendColors(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 368
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedShadowRadius:F

    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedShadowRadius:F

    .line 369
    invoke-static {v1, v2, p1, v5}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedShadowDx:F

    iget v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedShadowDx:F

    .line 370
    invoke-static {v2, v3, p1, v5}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedShadowDy:F

    iget v4, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedShadowDy:F

    .line 371
    invoke-static {v3, v4, p1, v5}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iget v4, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedShadowColor:I

    iget v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedShadowColor:I

    .line 372
    invoke-static {v4, v5, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->blendColors(IIF)I

    move-result v4

    .line 368
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 374
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 375
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method

.method private calculateUsingTextSize(F)V
    .locals 13
    .param p1, "textSize"    # F

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    .line 547
    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    if-nez v10, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v1, v10

    .line 550
    .local v1, "collapsedWidth":F
    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v2, v10

    .line 554
    .local v2, "expandedWidth":F
    const/4 v7, 0x0

    .line 556
    .local v7, "updateDrawText":Z
    iget v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    invoke-static {p1, v10}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 557
    iget v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 558
    .local v3, "newTextSize":F
    iput v12, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    .line 559
    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    iget-object v11, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    if-eq v10, v11, :cond_2

    .line 560
    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    iput-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    .line 561
    const/4 v7, 0x1

    .line 563
    :cond_2
    move v0, v1

    .line 594
    .local v0, "availableWidth":F
    :goto_1
    const/4 v10, 0x0

    cmpl-float v10, v0, v10

    if-lez v10, :cond_4

    .line 595
    iget v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    cmpl-float v10, v10, v3

    if-nez v10, :cond_3

    iget-boolean v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    if-nez v10, :cond_3

    if-eqz v7, :cond_a

    :cond_3
    move v7, v9

    .line 596
    :goto_2
    iput v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    .line 597
    iput-boolean v8, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    .line 600
    :cond_4
    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v10, :cond_5

    if-eqz v7, :cond_0

    .line 601
    :cond_5
    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v11, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 602
    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 604
    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v11, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_b

    :goto_3
    invoke-virtual {v10, v9}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 607
    iget-object v8, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    iget-object v9, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v8, v9, v0, v10}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 609
    .local v6, "title":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 610
    iput-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 611
    iget-object v8, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-direct {p0, v8}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mIsRtl:Z

    goto :goto_0

    .line 565
    .end local v0    # "availableWidth":F
    .end local v3    # "newTextSize":F
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_6
    iget v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    .line 566
    .restart local v3    # "newTextSize":F
    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    iget-object v11, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    if-eq v10, v11, :cond_7

    .line 567
    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    iput-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    .line 568
    const/4 v7, 0x1

    .line 570
    :cond_7
    iget v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    invoke-static {p1, v10}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 572
    iput v12, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    .line 578
    :goto_4
    iget v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    iget v11, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    div-float v5, v10, v11

    .line 581
    .local v5, "textSizeRatio":F
    mul-float v4, v2, v5

    .line 583
    .local v4, "scaledDownWidth":F
    cmpl-float v10, v4, v1

    if-lez v10, :cond_9

    .line 587
    div-float v10, v1, v5

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .restart local v0    # "availableWidth":F
    goto :goto_1

    .line 575
    .end local v0    # "availableWidth":F
    .end local v4    # "scaledDownWidth":F
    .end local v5    # "textSizeRatio":F
    :cond_8
    iget v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    div-float v10, p1, v10

    iput v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    goto :goto_4

    .line 590
    .restart local v4    # "scaledDownWidth":F
    .restart local v5    # "textSizeRatio":F
    :cond_9
    move v0, v2

    .restart local v0    # "availableWidth":F
    goto/16 :goto_1

    .end local v4    # "scaledDownWidth":F
    .end local v5    # "textSizeRatio":F
    :cond_a
    move v7, v8

    .line 595
    goto :goto_2

    :cond_b
    move v9, v8

    .line 604
    goto :goto_3
.end method

.method private clearTexture()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 674
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 676
    :cond_0
    return-void
.end method

.method private ensureExpandedTexture()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 617
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 618
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    invoke-direct {p0, v4}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->calculateOffsets(F)V

    .line 623
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextureAscent:F

    .line 624
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextureDescent:F

    .line 626
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v3, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 627
    .local v8, "w":I
    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextureDescent:F

    iget v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextureAscent:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 629
    .local v7, "h":I
    if-lez v8, :cond_0

    if-lez v7, :cond_0

    .line 633
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 635
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 636
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v5, v7

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 638
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 640
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method private getCurrentCollapsedTextColor()I
    .locals 3
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mState:[I

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mState:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 391
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0
.end method

.method private getCurrentExpandedTextColor()I
    .locals 3
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mState:[I

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mState:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 382
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0
.end method

.method private interpolateBounds(F)V
    .locals 4
    .param p1, "fraction"    # F

    .prologue
    .line 470
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 472
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 474
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 476
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 478
    return-void
.end method

.method private static isClose(FF)Z
    .locals 2
    .param p0, "value"    # F
    .param p1, "targetValue"    # F

    .prologue
    .line 683
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lerp(FFFLandroid/view/animation/Interpolator;)F
    .locals 1
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "fraction"    # F
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 711
    if-eqz p3, :cond_0

    .line 712
    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    .line 714
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oneplus/lib/design/widget/Utils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private readFontFamilyTypeface(I)Landroid/graphics/Typeface;
    .locals 6
    .param p1, "resId"    # I

    .prologue
    const/4 v5, 0x0

    .line 261
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x10103ac

    aput v4, v3, v5

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 264
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "family":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 266
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 269
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 271
    :goto_0
    return-object v2

    .line 269
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 271
    const/4 v2, 0x0

    goto :goto_0

    .line 269
    .end local v1    # "family":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .locals 1
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 718
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setInterpolatedTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 536
    sget-boolean v0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mUseTexture:Z

    .line 538
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mUseTexture:Z

    if-eqz v0, :cond_0

    .line 540
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->ensureExpandedTexture()V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 544
    return-void

    .line 536
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 481
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 483
    .local v10, "saveCount":I
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mDrawTitle:Z

    if-eqz v0, :cond_2

    .line 484
    iget v4, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentDrawX:F

    .line 485
    .local v4, "x":F
    iget v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentDrawY:F

    .line 487
    .local v5, "y":F
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mUseTexture:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    const/4 v9, 0x1

    .line 491
    .local v9, "drawTexture":Z
    :goto_0
    if-eqz v9, :cond_4

    .line 492
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextureAscent:F

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    mul-float v7, v0, v1

    .line 493
    .local v7, "ascent":F
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextureDescent:F

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    mul-float v8, v0, v1

    .line 505
    .local v8, "descent":F
    :goto_1
    if-eqz v9, :cond_0

    .line 506
    add-float/2addr v5, v7

    .line 509
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 510
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 513
    :cond_1
    if-eqz v9, :cond_5

    .line 515
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 521
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v7    # "ascent":F
    .end local v8    # "descent":F
    .end local v9    # "drawTexture":Z
    :cond_2
    :goto_2
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 522
    return-void

    .restart local v4    # "x":F
    .restart local v5    # "y":F
    :cond_3
    move v9, v2

    .line 487
    goto :goto_0

    .line 495
    .restart local v9    # "drawTexture":Z
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    mul-float v7, v0, v1

    .line 496
    .restart local v7    # "ascent":F
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    mul-float v8, v0, v1

    .restart local v8    # "descent":F
    goto :goto_1

    .line 517
    :cond_5
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method getCollapsedTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getCollapsedTextGravity()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    return v0
.end method

.method getCollapsedTextSize()F
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    return v0
.end method

.method getCollapsedTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method getExpandedTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getExpandedTextGravity()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    return v0
.end method

.method getExpandedTextSize()F
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    return v0
.end method

.method getExpandedTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method getExpansionFraction()F
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    return v0
.end method

.method getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final isStateful()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 330
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onBoundsChanged()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 177
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mDrawTitle:Z

    .line 178
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recalculate()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 648
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 649
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->calculateCurrentOffsets()V

    .line 651
    :cond_0
    return-void
.end method

.method setCollapsedBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    .line 171
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->onBoundsChanged()V

    .line 173
    :cond_0
    return-void
.end method

.method setCollapsedTextAppearance(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 205
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    .line 209
    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textSize:I

    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 214
    :cond_1
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedShadowColor:I

    .line 216
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowDx:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedShadowDx:F

    .line 218
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedShadowDy:F

    .line 220
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedShadowRadius:F

    .line 222
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 225
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 229
    return-void
.end method

.method setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 147
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    .line 148
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 150
    :cond_0
    return-void
.end method

.method setCollapsedTextGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 192
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    if-eq v0, p1, :cond_0

    .line 193
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    .line 194
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 196
    :cond_0
    return-void
.end method

.method setCollapsedTextSize(F)V
    .locals 1
    .param p1, "textSize"    # F

    .prologue
    .line 139
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 140
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 141
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 143
    :cond_0
    return-void
.end method

.method setCollapsedTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 276
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 277
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 279
    :cond_0
    return-void
.end method

.method setExpandedBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    .line 163
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->onBoundsChanged()V

    .line 165
    :cond_0
    return-void
.end method

.method setExpandedTextAppearance(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 232
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 234
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 238
    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textSize:I

    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    .line 243
    :cond_1
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedShadowColor:I

    .line 245
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowDx:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedShadowDx:F

    .line 247
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedShadowDy:F

    .line 249
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedShadowRadius:F

    .line 251
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 253
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 254
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    .line 257
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 258
    return-void
.end method

.method setExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 154
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 157
    :cond_0
    return-void
.end method

.method setExpandedTextGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 181
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    if-eq v0, p1, :cond_0

    .line 182
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    .line 183
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 185
    :cond_0
    return-void
.end method

.method setExpandedTextSize(F)V
    .locals 1
    .param p1, "textSize"    # F

    .prologue
    .line 132
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 133
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    .line 134
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 136
    :cond_0
    return-void
.end method

.method setExpandedTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 283
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    .line 284
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 286
    :cond_0
    return-void
.end method

.method setExpansionFraction(F)V
    .locals 2
    .param p1, "fraction"    # F

    .prologue
    .line 309
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/oneplus/lib/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 311
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 312
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    .line 313
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->calculateCurrentOffsets()V

    .line 315
    :cond_0
    return-void
.end method

.method setPositionInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    .line 128
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 129
    return-void
.end method

.method final setState([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 318
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mState:[I

    .line 320
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 322
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 659
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 660
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 662
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->clearTexture()V

    .line 663
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 665
    :cond_1
    return-void
.end method

.method setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 123
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 124
    return-void
.end method

.method setTypefaces(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 290
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 291
    return-void
.end method
