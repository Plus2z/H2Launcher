.class public Lnet/oneplus/h2launcher/crop/view/TransformImageView;
.super Landroid/widget/ImageView;
.source "TransformImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;
    }
.end annotation


# static fields
.field private static final MATRIX_VALUES_COUNT:I = 0x9

.field private static final RECT_CENTER_POINT_COORDS:I = 0x2

.field private static final RECT_CORNER_POINTS_COORDS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "TransformImageView"


# instance fields
.field private mBitmapWasLoaded:Z

.field protected final mCurrentImageCenter:[F

.field protected final mCurrentImageCorners:[F

.field protected mCurrentImageMatrix:Landroid/graphics/Matrix;

.field private mImageUri:Landroid/net/Uri;

.field private mInitialImageCenter:[F

.field private mInitialImageCorners:[F

.field private final mMatrixValues:[F

.field private mMaxBitmapSize:I

.field protected mThisHeight:I

.field protected mThisWidth:I

.field protected mTransformImageListener:Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mCurrentImageCorners:[F

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mCurrentImageCenter:[F

    .line 42
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mMatrixValues:[F

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 52
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mBitmapWasLoaded:Z

    .line 54
    iput v1, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mMaxBitmapSize:I

    .line 84
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->init()V

    .line 85
    return-void
.end method

.method static synthetic access$002(Lnet/oneplus/h2launcher/crop/view/TransformImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/view/TransformImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mBitmapWasLoaded:Z

    return p1
.end method

.method private updateCurrentImagePoints()V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mCurrentImageCorners:[F

    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mInitialImageCorners:[F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 353
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mCurrentImageCenter:[F

    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mInitialImageCenter:[F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 354
    return-void
.end method


# virtual methods
.method protected calculateMaxBitmapSize()I
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 264
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 265
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 267
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 269
    .local v2, "size":Landroid/graphics/Point;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xd

    if-lt v5, v6, :cond_0

    .line 270
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 271
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 272
    .local v3, "width":I
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 277
    .local v1, "height":I
    :goto_0
    int-to-double v6, v3

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    return v5

    .line 274
    .end local v1    # "height":I
    .end local v3    # "width":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 275
    .restart local v3    # "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_0
.end method

.method public getCurrentAngle()F
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getMatrixAngle(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public getCurrentScale()F
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMatrixAngle(Landroid/graphics/Matrix;)F
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const/4 v2, 0x0

    .line 187
    invoke-virtual {p0, p1, v2}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    move-result v2

    float-to-double v2, v2

    .line 186
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, v2

    neg-double v0, v0

    double-to-float v0, v0

    return v0
.end method

.method public getMatrixScale(Landroid/graphics/Matrix;)F
    .locals 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/4 v2, 0x3

    .line 172
    invoke-virtual {p0, p1, v2}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 171
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected getMatrixValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "valueIndex"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x9L
        .end annotation
    .end param

    .prologue
    .line 329
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 330
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method public getMaxBitmapSize()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mMaxBitmapSize:I

    if-gtz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->calculateMaxBitmapSize()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mMaxBitmapSize:I

    .line 114
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mMaxBitmapSize:I

    return v0
.end method

.method public getViewBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;

    if-nez v0, :cond_1

    .line 199
    :cond_0
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 253
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 254
    return-void
.end method

.method protected onImageLaidOut()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 302
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 303
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v3, v4

    .line 308
    .local v3, "w":F
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v1, v4

    .line 310
    .local v1, "h":F
    const-string v4, "TransformImageView"

    const-string v5, "Image size: [%d:%d]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    float-to-int v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    float-to-int v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v9, v9, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 313
    .local v2, "initialImageRect":Landroid/graphics/RectF;
    invoke-static {v2}, Lnet/oneplus/h2launcher/crop/util/RectUtils;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mInitialImageCorners:[F

    .line 314
    invoke-static {v2}, Lnet/oneplus/h2launcher/crop/util/RectUtils;->getCenterFromRect(Landroid/graphics/RectF;)[F

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mInitialImageCenter:[F

    .line 316
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mTransformImageListener:Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;

    if-eqz v4, :cond_0

    .line 317
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mTransformImageListener:Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;

    invoke-interface {v4}, Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;->onLoadComplete()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 282
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 283
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mBitmapWasLoaded:Z

    if-eqz v0, :cond_2

    .line 284
    :cond_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mBitmapWasLoaded:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mBitmapWasLoaded:Z

    .line 286
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getPaddingLeft()I

    move-result p2

    .line 287
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getPaddingTop()I

    move-result p3

    .line 288
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getPaddingRight()I

    move-result v1

    sub-int p4, v0, v1

    .line 289
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getPaddingBottom()I

    move-result v1

    sub-int p5, v0, v1

    .line 290
    sub-int v0, p4, p2

    iput v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mThisWidth:I

    .line 291
    sub-int v0, p5, p3

    iput v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mThisHeight:I

    .line 293
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->onImageLaidOut()V

    .line 295
    :cond_2
    return-void
.end method

.method public postRotate(FFF)V
    .locals 2
    .param p1, "deltaAngle"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 243
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 245
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 246
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mTransformImageListener:Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mTransformImageListener:Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;

    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getMatrixAngle(Landroid/graphics/Matrix;)F

    move-result v1

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;->onRotate(F)V

    .line 250
    :cond_0
    return-void
.end method

.method public postScale(FFF)V
    .locals 2
    .param p1, "deltaScale"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 226
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 228
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 229
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mTransformImageListener:Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mTransformImageListener:Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;

    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result v1

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;->onScale(F)V

    .line 233
    :cond_0
    return-void
.end method

.method public postTranslate(FF)V
    .locals 2
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/4 v1, 0x0

    .line 212
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 214
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 216
    :cond_1
    return-void
.end method

.method protected printMatrix(Ljava/lang/String;Landroid/graphics/Matrix;)V
    .locals 7
    .param p1, "logPrefix"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "matrix"    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 339
    const/4 v4, 0x2

    invoke-virtual {p0, p2, v4}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    move-result v2

    .line 340
    .local v2, "x":F
    const/4 v4, 0x5

    invoke-virtual {p0, p2, v4}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    move-result v3

    .line 341
    .local v3, "y":F
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result v1

    .line 342
    .local v1, "rScale":F
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getMatrixAngle(Landroid/graphics/Matrix;)F

    move-result v0

    .line 343
    .local v0, "rAngle":F
    const-string v4, "TransformImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": matrix: { x: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", y: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", scale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", angle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " }"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 119
    new-instance v0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 193
    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->updateCurrentImagePoints()V

    .line 194
    return-void
.end method

.method public setImageUri(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 6
    .param p1, "imageUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "outputUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mImageUri:Landroid/net/Uri;

    .line 135
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getMaxBitmapSize()I

    move-result v3

    .line 137
    .local v3, "maxBitmapSize":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Lnet/oneplus/h2launcher/crop/view/TransformImageView$1;

    invoke-direct {v5, p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView$1;-><init>(Lnet/oneplus/h2launcher/crop/view/TransformImageView;)V

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Lnet/oneplus/h2launcher/crop/util/BitmapLoadUtils;->decodeBitmapInBackground(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;IILnet/oneplus/h2launcher/crop/callback/BitmapLoadCallback;)V

    .line 157
    return-void
.end method

.method public setMaxBitmapSize(I)V
    .locals 0
    .param p1, "maxBitmapSize"    # I

    .prologue
    .line 107
    iput p1, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mMaxBitmapSize:I

    .line 108
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 93
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    .line 94
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v0, "TransformImageView"

    const-string v1, "Invalid ScaleType. Only ScaleType.MATRIX can be used"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTransformImageListener(Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;)V
    .locals 0
    .param p1, "transformImageListener"    # Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;

    .prologue
    .line 88
    iput-object p1, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mTransformImageListener:Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;

    .line 89
    return-void
.end method
