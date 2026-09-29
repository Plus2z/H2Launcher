.class public Lnet/oneplus/h2launcher/util/ShadowHelper;
.super Ljava/lang/Object;
.source "ShadowHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShadowHelper"

.field private static sInstance:Lnet/oneplus/h2launcher/util/ShadowHelper;

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mContext:Landroid/content/Context;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private final mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private mOffsetYBlur:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/util/ShadowHelper;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mDrawPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 47
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mCanvas:Landroid/graphics/Canvas;

    .line 55
    iput-object p1, p0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mOffsetYBlur:F

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 60
    .local v0, "sizeBlur":F
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v0, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 61
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v0, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 63
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 64
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 66
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    return-void
.end method

.method static drawClockView(Landroid/view/View;Landroid/graphics/Canvas;I)V
    .locals 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "destCanvas"    # Landroid/graphics/Canvas;
    .param p2, "padding"    # I

    .prologue
    .line 97
    sget-object v0, Lnet/oneplus/h2launcher/util/ShadowHelper;->sTempRect:Landroid/graphics/Rect;

    .line 98
    .local v0, "clipRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v2, p2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v3, p2, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 104
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 107
    return-void
.end method

.method public static obtain(Landroid/content/Context;)Lnet/oneplus/h2launcher/util/ShadowHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    sget-object v0, Lnet/oneplus/h2launcher/util/ShadowHelper;->sInstance:Lnet/oneplus/h2launcher/util/ShadowHelper;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lnet/oneplus/h2launcher/util/ShadowHelper;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/util/ShadowHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/oneplus/h2launcher/util/ShadowHelper;->sInstance:Lnet/oneplus/h2launcher/util/ShadowHelper;

    .line 73
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/util/ShadowHelper;->sInstance:Lnet/oneplus/h2launcher/util/ShadowHelper;

    return-object v0
.end method


# virtual methods
.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V
    .locals 17
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I
    .param p5, "clipAlpha"    # Z

    .prologue
    .line 118
    if-eqz p5, :cond_2

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 120
    .local v3, "srcBuffer":[I
    const/4 v4, 0x0

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v2, p1

    .line 120
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 122
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v2, v3

    if-ge v12, v2, :cond_1

    .line 123
    aget v2, v3, v12

    ushr-int/lit8 v10, v2, 0x18

    .line 124
    .local v10, "alpha":I
    const/16 v2, 0xbc

    if-ge v10, v2, :cond_0

    .line 125
    const/4 v2, 0x0

    aput v2, v3, v12

    .line 122
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 128
    .end local v10    # "alpha":I
    :cond_1
    const/4 v4, 0x0

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v2, p1

    .line 128
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 131
    .end local v3    # "srcBuffer":[I
    .end local v12    # "i":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 134
    .local v11, "glowShape":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 135
    const/4 v2, 0x2

    new-array v13, v2, [I

    .line 136
    .local v13, "outerBlurOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v2, v13}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 139
    .local v16, "thickOuterBlur":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 140
    const/4 v2, 0x2

    new-array v15, v2, [I

    .line 141
    .local v15, "thickInnerBlurOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v2, v15}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 144
    .local v14, "thickInnerBlur":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    const/4 v2, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mDrawPaint:Landroid/graphics/Paint;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    const/4 v2, 0x0

    aget v2, v15, v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aget v4, v15, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mOffsetYBlur:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 149
    const/4 v2, 0x0

    aget v2, v13, v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aget v4, v13, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 153
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 156
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 157
    return-void
.end method

.method public createShadow(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "padding"    # I

    .prologue
    const/4 v7, 0x0

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    .line 78
    :cond_0
    const-string v0, "ShadowHelper"

    const-string v2, "v.getWidth <= 0 or v.getHeight <= 0"

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 93
    :goto_0
    return-object v1

    .line 81
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e00a9

    invoke-virtual {v0, v2, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 84
    .local v3, "outlineColor":I
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 83
    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 85
    .local v1, "b":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {p1, v0, p2}, Lnet/oneplus/h2launcher/util/ShadowHelper;->drawClockView(Landroid/view/View;Landroid/graphics/Canvas;I)V

    .line 87
    iget-object v2, p0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/util/ShadowHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V

    .line 88
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/ShadowHelper;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v1    # "b":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    .line 91
    .local v6, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 92
    const-string v0, "ShadowHelper"

    const-string v2, "Cannot create shadow"

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 93
    goto :goto_0
.end method
