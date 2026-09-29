.class public Lnet/oneplus/h2launcher/customizations/ColorCircleView;
.super Landroid/widget/FrameLayout;
.source "ColorCircleView.java"


# static fields
.field private static final INVALID_RADIUS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCheck:Landroid/graphics/drawable/Drawable;

.field private mCheckedCircle:Landroid/widget/ImageView;

.field private final mCheckedCircleBorderSize:I

.field private final mCheckedCircleEndBottomMargin:I

.field private final mCheckedCircleSize:I

.field private mColorDot:Landroid/widget/ImageView;

.field private mIndex:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSwatch:Landroid/support/v7/graphics/Palette$Swatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 49
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0c00df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 50
    .local v0, "colorCircleSize":I
    const v2, 0x7f0c0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mCheckedCircleSize:I

    .line 51
    const v2, 0x7f0c0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mCheckedCircleBorderSize:I

    .line 52
    div-int/lit8 v2, v0, 0x2

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mCheckedCircleSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mCheckedCircleEndBottomMargin:I

    .line 54
    const v2, 0x7f0200da

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mCheck:Landroid/graphics/drawable/Drawable;

    .line 55
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mPaint:Landroid/graphics/Paint;

    .line 56
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    return-void
.end method

.method private createCheckedCircle()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    .line 114
    iget v6, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mCheckedCircleSize:I

    .local v6, "h":I
    move v8, v6

    .line 115
    .local v8, "w":I
    if-lez v8, :cond_0

    if-gtz v6, :cond_1

    .line 116
    :cond_0
    sget-object v9, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->TAG:Ljava/lang/String;

    const-string v10, "invalid width or height for creating check circle"

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    .line 143
    :goto_0
    return-object v0

    .line 121
    :cond_1
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 123
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 124
    .local v2, "center":Landroid/graphics/Point;
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->getCenterAndRadius(Landroid/graphics/Point;)I

    .line 125
    iget v9, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mCheckedCircleSize:I

    div-int/lit8 v5, v9, 0x2

    .line 126
    .local v5, "checkCircleRadius":I
    iget v9, v2, Landroid/graphics/Point;->x:I

    add-int v3, v9, v5

    .line 127
    .local v3, "checkCircleCenterX":I
    iget v9, v2, Landroid/graphics/Point;->y:I

    add-int v4, v9, v5

    .line 128
    .local v4, "checkCircleCenterY":I
    iget-object v9, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    int-to-float v9, v3

    int-to-float v10, v4

    int-to-float v11, v5

    iget-object v12, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 132
    iget v9, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mCheckedCircleBorderSize:I

    sub-int/2addr v5, v9

    .line 133
    iget-object v9, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0e020b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    int-to-float v9, v3

    int-to-float v10, v4

    int-to-float v11, v5

    iget-object v12, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 137
    new-instance v7, Landroid/graphics/Rect;

    sub-int v9, v3, v5

    sub-int v10, v3, v5

    add-int v11, v4, v5

    add-int v12, v4, v5

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 141
    .local v7, "rect":Landroid/graphics/Rect;
    iget-object v9, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mCheck:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 142
    iget-object v9, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mCheck:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private createColorDot()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 96
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 97
    .local v2, "center":Landroid/graphics/Point;
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->getCenterAndRadius(Landroid/graphics/Point;)I

    move-result v4

    .line 99
    .local v4, "radius":I
    mul-int/lit8 v3, v4, 0x2

    .local v3, "h":I
    move v5, v3

    .line 100
    .local v5, "w":I
    if-lez v5, :cond_0

    if-gtz v3, :cond_1

    .line 101
    :cond_0
    sget-object v6, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->TAG:Ljava/lang/String;

    const-string v7, "invalid width or height for creating color dot"

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    .line 105
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 107
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-nez v6, :cond_2

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget v6, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    int-to-float v8, v4

    iget-object v9, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v6}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v6

    goto :goto_1
.end method

.method private getCenterAndRadius(Landroid/graphics/Point;)I
    .locals 11
    .param p1, "outCenter"    # Landroid/graphics/Point;

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    sget-object v9, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->TAG:Ljava/lang/String;

    const-string v10, "invalid parameter \'outCenter\'"

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v5, 0x0

    .line 166
    :goto_0
    return v5

    .line 152
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->getWidth()I

    move-result v8

    .line 153
    .local v8, "w":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->getHeight()I

    move-result v0

    .line 155
    .local v0, "h":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->getPaddingLeft()I

    move-result v2

    .line 156
    .local v2, "pl":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->getPaddingRight()I

    move-result v3

    .line 157
    .local v3, "pr":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->getPaddingTop()I

    move-result v4

    .line 158
    .local v4, "pt":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->getPaddingBottom()I

    move-result v1

    .line 160
    .local v1, "pb":I
    add-int v9, v2, v3

    sub-int v7, v8, v9

    .line 161
    .local v7, "usableWidth":I
    add-int v9, v4, v1

    sub-int v6, v0, v9

    .line 163
    .local v6, "usableHeight":I
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    div-int/lit8 v5, v9, 0x2

    .line 164
    .local v5, "radius":I
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v2

    iput v9, p1, Landroid/graphics/Point;->x:I

    .line 165
    div-int/lit8 v9, v6, 0x2

    add-int/2addr v9, v4

    iput v9, p1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mIndex:I

    return v0
.end method

.method public getSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 63
    const v1, 0x7f1101e1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mColorDot:Landroid/widget/ImageView;

    .line 64
    const v1, 0x7f1101e2

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mCheckedCircle:Landroid/widget/ImageView;

    .line 65
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mCheckedCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mCheckedCircle:Landroid/widget/ImageView;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->createCheckedCircle()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mCheckedCircle:Landroid/widget/ImageView;

    .line 68
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 69
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mCheckedCircleEndBottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 70
    iget v1, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mCheckedCircleEndBottomMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 72
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 79
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mIndex:I

    .line 80
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 92
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mCheckedCircle:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setSwatch(Landroid/support/v7/graphics/Palette$Swatch;)V
    .locals 2
    .param p1, "swatch"    # Landroid/support/v7/graphics/Palette$Swatch;

    .prologue
    .line 87
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    .line 88
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mColorDot:Landroid/widget/ImageView;

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->mSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->createColorDot()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
