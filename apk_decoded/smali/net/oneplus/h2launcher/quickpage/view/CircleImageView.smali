.class public Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_OVERLAY:Z

.field private static final DEFAULT_BORDER_WIDTH:I

.field private static final DEFAULT_FILL_COLOR:I


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private mBorderOverlay:Z

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDefaultSize:I

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mEnableShapeChange:Z

.field private mFillColor:I

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    .line 53
    const/high16 v0, -0x1000000

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderColor:I

    .line 54
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderWidth:I

    .line 55
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mFillColor:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mEnableShapeChange:Z

    .line 77
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->init()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v2, -0x1000000

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    .line 53
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderColor:I

    .line 54
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderWidth:I

    .line 55
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mFillColor:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mEnableShapeChange:Z

    .line 87
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderWidth:I

    .line 88
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderColor:I

    .line 89
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderOverlay:Z

    .line 90
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mFillColor:I

    .line 92
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->init()V

    .line 93
    return-void
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 252
    if-nez p1, :cond_0

    move-object v0, v5

    .line 285
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 256
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v6, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_1

    .line 257
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 263
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    instance-of v6, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_2

    .line 264
    const/4 v6, 0x2

    const/4 v7, 0x2

    sget-object v8, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 279
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 280
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 281
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v5

    .line 285
    goto :goto_0

    .line 267
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 268
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 269
    .local v3, "height":I
    if-gtz v4, :cond_3

    .line 270
    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDefaultSize:I

    .line 273
    :cond_3
    if-gtz v3, :cond_4

    .line 274
    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDefaultSize:I

    .line 276
    :cond_4
    sget-object v6, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mReady:Z

    .line 98
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mSetupPending:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setup()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mSetupPending:Z

    .line 102
    :cond_0
    return-void
.end method

.method private setup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    .line 290
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mReady:Z

    if-nez v0, :cond_1

    .line 291
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mSetupPending:Z

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 300
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->invalidate()V

    goto :goto_0

    .line 304
    :cond_3
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 306
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 307
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 309
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 310
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 311
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 314
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 315
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 316
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmapHeight:I

    .line 319
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmapWidth:I

    .line 321
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 322
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 323
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    .line 322
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderRadius:F

    .line 325
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 326
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderOverlay:Z

    if-nez v0, :cond_4

    .line 327
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 329
    :cond_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v4

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDrawableRadius:F

    .line 331
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->updateShaderMatrix()V

    .line 332
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->invalidate()V

    goto/16 :goto_0
.end method

.method private updateShaderMatrix()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 340
    .local v1, "dy":F
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 342
    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 343
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmapHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 344
    .local v2, "scale":F
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v6

    .line 350
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 351
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float v4, v0, v6

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    add-float v5, v1, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 354
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 355
    return-void

    .line 346
    .end local v2    # "scale":F
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmapWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 347
    .restart local v2    # "scale":F
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v6

    goto :goto_0
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderWidth:I

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mFillColor:I

    return v0
.end method

.method public isBorderOverlay()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderOverlay:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 113
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mEnableShapeChange:Z

    if-nez v0, :cond_1

    .line 114
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 122
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mFillColor:I

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 125
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 126
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderWidth:I

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderRadius:F

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 134
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setup()V

    .line 135
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 2
    .param p1, "adjustViewBounds"    # Z

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adjustViewBounds not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 2
    .param p1, "borderColor"    # I

    .prologue
    .line 148
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderColor:I

    if-ne p1, v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderColor:I

    .line 153
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderColorResource(I)V
    .locals 1
    .param p1, "borderColorRes"    # I

    .prologue
    .line 158
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 158
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setBorderColor(I)V

    .line 160
    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1
    .param p1, "borderOverlay"    # Z

    .prologue
    .line 199
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderOverlay:Z

    if-ne p1, v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderOverlay:Z

    .line 204
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setup()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "borderWidth"    # I

    .prologue
    .line 186
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderWidth:I

    if-ne p1, v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBorderWidth:I

    .line 191
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setup()V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 242
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 246
    :cond_0
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 247
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 248
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setDefaultSize(I)V
    .locals 0
    .param p1, "defaultSize"    # I

    .prologue
    .line 208
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mDefaultSize:I

    .line 209
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .prologue
    .line 167
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mFillColor:I

    if-ne p1, v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mFillColor:I

    .line 172
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setFillColorResource(I)V
    .locals 1
    .param p1, "fillColorRes"    # I

    .prologue
    .line 177
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 177
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setFillColor(I)V

    .line 179
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 214
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 215
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setup()V

    .line 216
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 223
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setup()V

    .line 224
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 230
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setup()V

    .line 231
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 236
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 237
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setup()V

    .line 238
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShapeChangeEnabled(Z)V
    .locals 1
    .param p1, "enableShapeChange"    # Z

    .prologue
    .line 138
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mEnableShapeChange:Z

    if-ne v0, p1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->mEnableShapeChange:Z

    .line 140
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->invalidate()V

    goto :goto_0
.end method
