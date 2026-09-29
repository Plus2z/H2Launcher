.class public Lnet/oneplus/h2launcher/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source "HolographicOutlineHelper.java"


# static fields
.field private static sInstance:Lnet/oneplus/h2launcher/HolographicOutlineHelper;


# instance fields
.field private final mBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mShadowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    .line 41
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 52
    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0c01d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 58
    .local v0, "mediumBlur":F
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v0, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 59
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v0, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 61
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    const v3, 0x7f0c01d1

    .line 62
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 64
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    const v3, 0x7f0c01cf

    .line 65
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mShadowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 67
    iget-object v2, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 68
    iget-object v2, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v2, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 70
    iget-object v2, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v2, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 72
    iget-object v2, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 73
    iget-object v2, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    return-void
.end method

.method public static obtain(Landroid/content/Context;)Lnet/oneplus/h2launcher/HolographicOutlineHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    sget-object v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->sInstance:Lnet/oneplus/h2launcher/HolographicOutlineHelper;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/HolographicOutlineHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->sInstance:Lnet/oneplus/h2launcher/HolographicOutlineHelper;

    .line 80
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->sInstance:Lnet/oneplus/h2launcher/HolographicOutlineHelper;

    return-object v0
.end method


# virtual methods
.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I

    .prologue
    .line 89
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V

    .line 90
    return-void
.end method

.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V
    .locals 19
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I
    .param p5, "clipAlpha"    # Z

    .prologue
    .line 96
    if-eqz p5, :cond_2

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 98
    .local v3, "srcBuffer":[I
    const/4 v4, 0x0

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v2, p1

    .line 98
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 100
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v2, v3

    if-ge v14, v2, :cond_1

    .line 101
    aget v2, v3, v14

    ushr-int/lit8 v10, v2, 0x18

    .line 102
    .local v10, "alpha":I
    const/16 v2, 0xbc

    if-ge v10, v2, :cond_0

    .line 103
    const/4 v2, 0x0

    aput v2, v3, v14

    .line 100
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 106
    .end local v10    # "alpha":I
    :cond_1
    const/4 v4, 0x0

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v2, p1

    .line 106
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 109
    .end local v3    # "srcBuffer":[I
    .end local v14    # "i":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 112
    .local v13, "glowShape":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 113
    const/4 v2, 0x2

    new-array v15, v2, [I

    .line 114
    .local v15, "outerBlurOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v2, v15}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 116
    .local v18, "thickOuterBlur":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 117
    const/4 v2, 0x2

    new-array v12, v2, [I

    .line 118
    .local v12, "brightOutlineOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v2, v12}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 121
    .local v11, "brightOutline":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    const/high16 v2, -0x1000000

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 124
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 125
    .local v17, "thickInnerBlurOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v17

    invoke-virtual {v13, v2, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 128
    .local v16, "thickInnerBlur":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    const/4 v2, 0x0

    aget v2, v17, v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aget v4, v17, v4

    neg-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 131
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    aget v2, v17, v2

    neg-int v2, v2

    int-to-float v7, v2

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 133
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v7, v2

    const/4 v2, 0x1

    aget v2, v17, v2

    neg-int v2, v2

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 137
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    const/4 v2, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    const/4 v2, 0x0

    aget v2, v17, v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aget v4, v17, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 142
    const/4 v2, 0x0

    aget v2, v15, v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aget v4, v15, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    const/4 v2, 0x0

    aget v2, v12, v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aget v4, v12, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 153
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 156
    return-void
.end method

.method createMediumDropShadow(Lnet/oneplus/h2launcher/BubbleTextView;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "view"    # Lnet/oneplus/h2launcher/BubbleTextView;

    .prologue
    const/4 v6, 0x0

    .line 159
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 160
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-object v6

    .line 163
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 165
    .local v5, "rect":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getScaleX()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v1, v7

    .line 166
    .local v1, "bitmapWidth":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getScaleY()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v0, v7

    .line 168
    .local v0, "bitmapHeight":I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 172
    shl-int/lit8 v7, v1, 0x10

    or-int v4, v7, v0

    .line 173
    .local v4, "key":I
    iget-object v7, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 174
    .local v2, "cache":Landroid/graphics/Bitmap;
    if-nez v2, :cond_2

    .line 175
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 176
    iget-object v7, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 177
    iget-object v7, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    :goto_1
    iget-object v7, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 184
    iget-object v7, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getScaleX()F

    move-result v8

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getScaleY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 185
    iget-object v7, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    int-to-float v8, v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 186
    iget-object v7, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 187
    iget-object v7, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 188
    iget-object v7, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 190
    iget-object v7, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mShadowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 191
    iget-object v7, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7, v6}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    .line 179
    :cond_2
    iget-object v7, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 180
    iget-object v7, p0, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method
