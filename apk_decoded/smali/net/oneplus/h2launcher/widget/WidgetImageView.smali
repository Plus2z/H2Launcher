.class public Lnet/oneplus/h2launcher/widget/WidgetImageView;
.super Landroid/view/View;
.source "WidgetImageView.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mDstRectF:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    .line 57
    return-void
.end method

.method private addShadow(Landroid/graphics/Bitmap;IIIIFF)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "dstHeight"    # I
    .param p3, "dstWidth"    # I
    .param p4, "color"    # I
    .param p5, "size"    # I
    .param p6, "dx"    # F
    .param p7, "dy"    # F

    .prologue
    .line 114
    sget-object v12, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 115
    .local v5, "mask":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 116
    .local v10, "scaleToFit":Landroid/graphics/Matrix;
    new-instance v11, Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 117
    .local v11, "src":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v0, p3

    int-to-float v14, v0

    sub-float v14, v14, p6

    move/from16 v0, p2

    int-to-float v15, v0

    sub-float v15, v15, p7

    invoke-direct {v3, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 118
    .local v3, "dst":Landroid/graphics/RectF;
    sget-object v12, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v11, v3, v12}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 119
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v10}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 120
    .local v2, "dropShadow":Landroid/graphics/Matrix;
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 121
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 122
    .local v6, "maskCanvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v7, v12}, Landroid/graphics/Paint;-><init>(I)V

    .line 123
    .local v7, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v10, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 124
    new-instance v12, Landroid/graphics/PorterDuffXfermode;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v13}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 125
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 126
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    move/from16 v0, p5

    int-to-float v12, v0

    sget-object v13, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v12, v13}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 127
    .local v4, "filter":Landroid/graphics/BlurMaskFilter;
    invoke-virtual {v7}, Landroid/graphics/Paint;->reset()V

    .line 128
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    move/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 131
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 132
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 133
    .local v8, "ret":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 134
    .local v9, "retCanvas":Landroid/graphics/Canvas;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v5, v12, v13, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 135
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 136
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    return-object v8
.end method

.method private isNeedAddShadow(Landroid/content/ComponentName;)Z
    .locals 6
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 141
    if-nez p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    sget-object v3, Lnet/oneplus/h2launcher/widget/WidgetConstant;->ADD_SHADOW_WIDGET_LIST:[Landroid/content/ComponentName;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 145
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 146
    const/4 v1, 0x1

    goto :goto_0

    .line 144
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private updateDstRectF()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 91
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 92
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 93
    .local v0, "scale":F
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 101
    .end local v0    # "scale":F
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    .line 96
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v7

    .line 97
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v7

    .line 98
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v7

    .line 99
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v7

    .line 95
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->updateDstRectF()V

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 109
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 110
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 74
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->updateDstRectF()V

    .line 76
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 78
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/content/ComponentName;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 60
    iput-object p1, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 62
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->isNeedAddShadow(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e0360

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->addShadow(Landroid/graphics/Bitmap;IIIIFF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 65
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->invalidate()V

    .line 66
    return-void
.end method
