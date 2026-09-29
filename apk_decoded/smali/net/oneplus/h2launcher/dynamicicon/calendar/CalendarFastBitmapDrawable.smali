.class public Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;
.super Lnet/oneplus/h2launcher/FastBitmapDrawable;
.source "CalendarFastBitmapDrawable.java"


# static fields
.field public static final KEY_DAY:Ljava/lang/String; = "day"


# instance fields
.field private drawDay:Z

.field private mAlignX:I

.field private mAlignY:I

.field private mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

.field private mBaseIconSize:I

.field private mContext:Landroid/content/Context;

.field private mDayTextConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

.field private mOffsetX:F

.field private mOffsetY:F

.field private mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

.field private mText:Ljava/lang/String;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mTextWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 36
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 28
    const/4 v3, 0x0

    iput-boolean v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->drawDay:Z

    .line 37
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mContext:Landroid/content/Context;

    .line 38
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextPaint:Landroid/graphics/Paint;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 40
    .local v2, "resources":Landroid/content/res/Resources;
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    const v3, 0x7f0c000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextSize:F

    .line 42
    const v3, 0x7f0e019c

    invoke-virtual {v2, v3, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 43
    .local v0, "color":I
    const v3, 0xffffff

    and-int/2addr v0, v3

    .line 44
    const/high16 v3, 0xe000000

    or-int/2addr v0, v3

    .line 45
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v5, v5, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 46
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 47
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextPaint:Landroid/graphics/Paint;

    const v4, 0x7f0e01a7

    invoke-virtual {v2, v4, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    const-string v3, "sans-serif"

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 49
    .local v1, "lTypeface":Landroid/graphics/Typeface;
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 50
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mBaseIconSize:I

    .line 51
    return-void
.end method

.method private measureText()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextWidth:F

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextWidth:F

    goto :goto_0
.end method

.method private updateTextConfig()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mDayTextConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mDayTextConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->drawDay:Z

    .line 85
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->drawDay:Z

    .line 72
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mDayTextConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->getTextSize()F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextSize:F

    .line 73
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mDayTextConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mDayTextConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->getShadowLayerRadius()F

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mDayTextConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->getShadowLayerX()F

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mDayTextConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    .line 75
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->getShadowLayerY()F

    move-result v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mDayTextConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->getShadowLayerColor()I

    move-result v4

    .line 74
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 76
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mDayTextConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 77
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mDayTextConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->getAlignX()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mAlignX:I

    .line 78
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mDayTextConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->getAlignY()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mAlignY:I

    .line 79
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mDayTextConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->getOffsetX()F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mOffsetX:F

    .line 80
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mDayTextConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;->getOffsetY()F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mOffsetY:F

    .line 84
    :goto_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->measureText()V

    goto :goto_0

    .line 82
    :cond_1
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->drawDay:Z

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 102
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 104
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 105
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mText:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->drawDay:Z

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->refreshIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 108
    :cond_0
    return-void
.end method

.method protected refreshIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 111
    iget v5, p2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mBaseIconSize:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 112
    .local v1, "iconScaleSize":F
    iget v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextWidth:F

    mul-float v2, v5, v1

    .line 113
    .local v2, "scaleTextWidth":F
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget v6, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextSize:F

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 114
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->getAlpha()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 116
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    const/4 v4, 0x0

    .line 117
    .local v4, "y":F
    const/4 v3, 0x0

    .line 118
    .local v3, "x":F
    iget v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mAlignX:I

    if-nez v5, :cond_2

    .line 119
    iget v5, p2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float v3, v5, v6

    .line 123
    :cond_0
    :goto_0
    iget v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mOffsetX:F

    mul-float/2addr v5, v1

    add-float/2addr v3, v5

    .line 124
    iget v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mAlignY:I

    if-nez v5, :cond_3

    .line 125
    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v5, v6

    int-to-float v4, v5

    .line 129
    :cond_1
    :goto_1
    iget v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mOffsetY:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    .line 130
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mText:Ljava/lang/String;

    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 131
    return-void

    .line 120
    :cond_2
    iget v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mAlignX:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 121
    iget v5, p2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float v3, v5, v2

    goto :goto_0

    .line 126
    :cond_3
    iget v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mAlignY:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 127
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v7, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v4, v5

    goto :goto_1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mText:Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->measureText()V

    .line 90
    return-void
.end method

.method public updateConfig(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)V
    .locals 2
    .param p1, "originalConfig"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    .param p2, "assetPackConfig"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .prologue
    .line 54
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 55
    iput-object p2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    const-string v1, "day"

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->getTextConfig(Ljava/lang/String;)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mDayTextConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    .line 59
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mDayTextConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    const-string v1, "day"

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->getTextConfig(Ljava/lang/String;)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->mDayTextConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    .line 62
    :cond_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->updateTextConfig()V

    .line 63
    return-void
.end method
