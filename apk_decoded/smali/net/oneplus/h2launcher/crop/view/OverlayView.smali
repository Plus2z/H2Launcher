.class public Lnet/oneplus/h2launcher/crop/view/OverlayView;
.super Landroid/view/View;
.source "OverlayView.java"


# static fields
.field public static final DEFAULT_CROP_GRID_COLUMN_COUNT:I = 0x2

.field public static final DEFAULT_CROP_GRID_ROW_COUNT:I = 0x2

.field public static final DEFAULT_OVAL_DIMMED_LAYER:Z = false

.field public static final DEFAULT_SHOW_CROP_COVER_COLOR_MASK:Z = false

.field public static final DEFAULT_SHOW_CROP_FRAME:Z = true

.field public static final DEFAULT_SHOW_CROP_GRID:Z = true


# instance fields
.field private mCircularPath:Landroid/graphics/Path;

.field private mCropCoverImage:Landroid/graphics/Bitmap;

.field private mCropCoverImageMaskColor:I

.field private mCropCoverPaint:Landroid/graphics/Paint;

.field private mCropFrameLandscape:Landroid/graphics/drawable/Drawable;

.field private mCropFramePaint:Landroid/graphics/Paint;

.field private mCropFramePortrait:Landroid/graphics/drawable/Drawable;

.field private mCropGridColumnCount:I

.field private mCropGridPaint:Landroid/graphics/Paint;

.field private mCropGridRowCount:I

.field private final mCropViewRect:Landroid/graphics/RectF;

.field private mDimmedColor:I

.field private mDimmedStrokePaint:Landroid/graphics/Paint;

.field private mGridPoints:[F

.field private mOvalDimmedLayer:Z

.field private mShowCropColorMask:Z

.field private mShowCropFrame:Z

.field private mShowCropGrid:Z

.field private mTargetAspectRatio:F

.field protected mThisHeight:I

.field protected mThisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropCoverImageMaskColor:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mGridPoints:[F

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCircularPath:Landroid/graphics/Path;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropCoverPaint:Landroid/graphics/Paint;

    .line 71
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->init()V

    .line 72
    return-void
.end method

.method private adjustCropFrameBoundsIfNecessary(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 353
    iget v4, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mTargetAspectRatio:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 354
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    .line 355
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v2

    .line 356
    .local v2, "realDisplaySize":Landroid/graphics/Point;
    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-eq v4, v5, :cond_0

    .line 357
    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 358
    .local v3, "screenHeightScale":F
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, v4, v5

    .line 359
    .local v1, "height":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    mul-float/2addr v5, v3

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 362
    .end local v0    # "displaySize":Landroid/graphics/Point;
    .end local v1    # "height":I
    .end local v2    # "realDisplaySize":Landroid/graphics/Point;
    .end local v3    # "screenHeightScale":F
    :cond_0
    return-void
.end method

.method private initCropFrameStyle(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 389
    const/16 v2, 0xa

    .line 390
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0140

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 389
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 391
    .local v1, "cropFrameStrokeSize":I
    const/16 v2, 0xb

    .line 392
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0351

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 391
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 393
    .local v0, "cropFrameColor":I
    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 394
    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 396
    return-void
.end method

.method private initCropGridStyle(Landroid/content/res/TypedArray;)V
    .locals 6
    .param p1, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x2

    .line 403
    const/4 v2, 0x5

    .line 404
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0141

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 403
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 405
    .local v1, "cropGridStrokeSize":I
    const/4 v2, 0x6

    .line 406
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0352

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 405
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 407
    .local v0, "cropGridColor":I
    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 408
    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropGridRowCount:I

    .line 411
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropGridColumnCount:I

    .line 412
    return-void
.end method


# virtual methods
.method protected drawCropCover(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 313
    iget-object v10, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropCoverImage:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_1

    .line 314
    iget-object v5, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropCoverPaint:Landroid/graphics/Paint;

    .line 317
    .local v5, "paint":Landroid/graphics/Paint;
    iget-boolean v10, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mShowCropColorMask:Z

    if-eqz v10, :cond_0

    iget v10, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropCoverImageMaskColor:I

    if-eqz v10, :cond_0

    .line 318
    iget-object v10, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 319
    .local v8, "w":I
    iget-object v10, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 320
    .local v2, "h":I
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v2, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 321
    .local v3, "mask":Landroid/graphics/Bitmap;
    iget v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropCoverImageMaskColor:I

    .line 322
    .local v0, "color":I
    iget v10, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mTargetAspectRatio:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_3

    const/4 v4, 0x1

    .line 325
    .local v4, "orientation":I
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v3, v0, v4}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->paintWallpaperColorMask(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 326
    if-eqz v3, :cond_0

    .line 327
    iget-object v10, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    iget-object v11, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v3, v10, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 331
    .end local v0    # "color":I
    .end local v2    # "h":I
    .end local v3    # "mask":Landroid/graphics/Bitmap;
    .end local v4    # "orientation":I
    .end local v8    # "w":I
    :cond_0
    iget-boolean v10, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mShowCropColorMask:Z

    if-eqz v10, :cond_4

    .line 333
    iget-object v9, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropCoverImage:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    iget-object v11, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v9, v10, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 341
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_1
    :goto_1
    iget-boolean v9, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mShowCropFrame:Z

    if-eqz v9, :cond_2

    .line 342
    iget v9, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mTargetAspectRatio:F

    cmpl-float v9, v9, v12

    if-lez v9, :cond_5

    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropFrameLandscape:Landroid/graphics/drawable/Drawable;

    .line 344
    .local v1, "cropFrameDrawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 345
    .local v6, "rect":Landroid/graphics/Rect;
    iget-object v9, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v9, v6}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 346
    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->adjustCropFrameBoundsIfNecessary(Landroid/graphics/Rect;)V

    .line 347
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 348
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 350
    .end local v1    # "cropFrameDrawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "rect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .restart local v0    # "color":I
    .restart local v2    # "h":I
    .restart local v3    # "mask":Landroid/graphics/Bitmap;
    .restart local v5    # "paint":Landroid/graphics/Paint;
    .restart local v8    # "w":I
    :cond_3
    move v4, v9

    .line 322
    goto :goto_0

    .line 336
    .end local v0    # "color":I
    .end local v2    # "h":I
    .end local v3    # "mask":Landroid/graphics/Bitmap;
    .end local v8    # "w":I
    :cond_4
    new-instance v7, Landroid/graphics/Rect;

    iget-object v10, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iget-object v11, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v7, v9, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 337
    .local v7, "src":Landroid/graphics/Rect;
    iget-object v9, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropCoverImage:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v9, v7, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 342
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v7    # "src":Landroid/graphics/Rect;
    :cond_5
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropFramePortrait:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method protected drawCropGrid(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 281
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mShowCropGrid:Z

    if-eqz v3, :cond_2

    .line 282
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mGridPoints:[F

    if-nez v3, :cond_1

    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 284
    iget v3, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropGridRowCount:I

    mul-int/lit8 v3, v3, 0x4

    iget v4, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropGridColumnCount:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    new-array v3, v3, [F

    iput-object v3, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mGridPoints:[F

    .line 286
    const/4 v1, 0x0

    .line 287
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropGridRowCount:I

    if-ge v0, v3, :cond_0

    .line 288
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mGridPoints:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    aput v4, v3, v1

    .line 289
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mGridPoints:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, v0

    add-float/2addr v5, v7

    iget v6, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropGridRowCount:I

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    aput v4, v3, v2

    .line 290
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mGridPoints:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    aput v4, v3, v1

    .line 291
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mGridPoints:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, v0

    add-float/2addr v5, v7

    iget v6, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropGridRowCount:I

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    aput v4, v3, v2

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropGridColumnCount:I

    if-ge v0, v3, :cond_1

    .line 295
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mGridPoints:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v5, v0

    add-float/2addr v5, v7

    iget v6, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropGridColumnCount:I

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    aput v4, v3, v1

    .line 296
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mGridPoints:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    aput v4, v3, v2

    .line 297
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mGridPoints:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v5, v0

    add-float/2addr v5, v7

    iget v6, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropGridColumnCount:I

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    aput v4, v3, v1

    .line 298
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mGridPoints:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    aput v4, v3, v2

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 302
    .end local v0    # "i":I
    .end local v1    # "index":I
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mGridPoints:[F

    if-eqz v3, :cond_2

    .line 303
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mGridPoints:[F

    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 310
    :cond_2
    return-void
.end method

.method protected drawDimmedLayer(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 261
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mOvalDimmedLayer:Z

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCircularPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 266
    :goto_0
    iget v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mDimmedColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 267
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 269
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mOvalDimmedLayer:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 272
    :cond_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method public getCropCoverMaskColor()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropCoverImageMaskColor:I

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 223
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 225
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropFramePortrait:Landroid/graphics/drawable/Drawable;

    .line 226
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropFrameLandscape:Landroid/graphics/drawable/Drawable;

    .line 227
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 249
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->drawDimmedLayer(Landroid/graphics/Canvas;)V

    .line 250
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->drawCropGrid(Landroid/graphics/Canvas;)V

    .line 251
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->drawCropCover(Landroid/graphics/Canvas;)V

    .line 252
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 231
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 232
    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getPaddingLeft()I

    move-result p2

    .line 234
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getPaddingTop()I

    move-result p3

    .line 235
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getPaddingRight()I

    move-result v1

    sub-int p4, v0, v1

    .line 236
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getPaddingBottom()I

    move-result v1

    sub-int p5, v0, v1

    .line 237
    sub-int v0, p4, p2

    iput v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mThisWidth:I

    .line 238
    sub-int v0, p5, p3

    iput v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mThisHeight:I

    .line 239
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->setupCropBounds()V

    .line 241
    :cond_0
    return-void
.end method

.method protected processStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 370
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mOvalDimmedLayer:Z

    .line 371
    const/4 v0, 0x4

    .line 372
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0353

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 371
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mDimmedColor:I

    .line 373
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mDimmedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 375
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 377
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->initCropFrameStyle(Landroid/content/res/TypedArray;)V

    .line 378
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mShowCropFrame:Z

    .line 380
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->initCropGridStyle(Landroid/content/res/TypedArray;)V

    .line 381
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mShowCropGrid:Z

    .line 382
    return-void
.end method

.method public setCropCoverImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "cropCoverImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 181
    iput-object p1, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropCoverImage:Landroid/graphics/Bitmap;

    .line 182
    return-void
.end method

.method public setCropCoverMaskColor(I)V
    .locals 1
    .param p1, "cropCoverMaskColor"    # I

    .prologue
    .line 190
    iput p1, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropCoverImageMaskColor:I

    .line 191
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mShowCropColorMask:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->invalidate()V

    .line 194
    :cond_0
    return-void
.end method

.method public setCropFrameColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 155
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    return-void
.end method

.method public setCropFrameStrokeWidth(I)V
    .locals 2
    .param p1, "width"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 141
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    return-void
.end method

.method public setCropGridColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 162
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    return-void
.end method

.method public setCropGridColumnCount(I)V
    .locals 1
    .param p1, "cropGridColumnCount"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 97
    iput p1, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropGridColumnCount:I

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mGridPoints:[F

    .line 99
    return-void
.end method

.method public setCropGridRowCount(I)V
    .locals 1
    .param p1, "cropGridRowCount"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 88
    iput p1, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropGridRowCount:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mGridPoints:[F

    .line 90
    return-void
.end method

.method public setCropGridStrokeWidth(I)V
    .locals 2
    .param p1, "width"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 148
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    return-void
.end method

.method public setDimmedColor(I)V
    .locals 0
    .param p1, "dimmedColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 134
    iput p1, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mDimmedColor:I

    .line 135
    return-void
.end method

.method public setOvalDimmedLayer(Z)V
    .locals 0
    .param p1, "ovalDimmedLayer"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mOvalDimmedLayer:Z

    .line 81
    return-void
.end method

.method public setShowCropCoverColorMask(Z)V
    .locals 0
    .param p1, "showCropColorMask"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mShowCropColorMask:Z

    .line 126
    return-void
.end method

.method public setShowCropFrame(Z)V
    .locals 0
    .param p1, "showCropFrame"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mShowCropFrame:Z

    .line 108
    return-void
.end method

.method public setShowCropGrid(Z)V
    .locals 0
    .param p1, "showCropGrid"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mShowCropGrid:Z

    .line 117
    return-void
.end method

.method public setTargetAspectRatio(F)V
    .locals 0
    .param p1, "targetAspectRatio"    # F

    .prologue
    .line 171
    iput p1, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mTargetAspectRatio:F

    .line 172
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->setupCropBounds()V

    .line 173
    return-void
.end method

.method public setupCropBounds()V
    .locals 7

    .prologue
    .line 210
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 211
    .local v1, "cropRectWidth":F
    iget v2, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mTargetAspectRatio:F

    div-float v0, v1, v2

    .line 212
    .local v0, "cropRectHeight":F
    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    .line 213
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    .line 212
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 215
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mGridPoints:[F

    .line 216
    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCircularPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 217
    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCircularPath:Landroid/graphics/Path;

    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 218
    return-void
.end method
