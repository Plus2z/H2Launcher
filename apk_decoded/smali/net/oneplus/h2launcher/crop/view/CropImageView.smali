.class public Lnet/oneplus/h2launcher/crop/view/CropImageView;
.super Lnet/oneplus/h2launcher/crop/view/TransformImageView;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/crop/view/CropImageView$ZoomImageToPosition;,
        Lnet/oneplus/h2launcher/crop/view/CropImageView$WrapCropBoundsRunnable;,
        Lnet/oneplus/h2launcher/crop/view/CropImageView$CropBoundsChangeListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_ASPECT_RATIO:F = 0.0f

.field public static final DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION:I = 0x1f4

.field public static final DEFAULT_MAX_BITMAP_SIZE:I = 0xc00

.field public static final DEFAULT_MAX_SCALE_MULTIPLIER:F = 10.0f

.field public static final LANDSCAPE_IMAGE_ASPECT_RATIO:F

.field public static final PORTRAIT_IMAGE_ASPECT_RATIO:F

.field public static final SOURCE_IMAGE_ASPECT_RATIO:F


# instance fields
.field private mCropBoundsChangeListener:Lnet/oneplus/h2launcher/crop/view/CropImageView$CropBoundsChangeListener;

.field private final mCropRect:Landroid/graphics/RectF;

.field private mImageToWrapCropBoundsAnimDuration:J

.field private mMaxResultImageSizeX:I

.field private mMaxResultImageSizeY:I

.field private mMaxScale:F

.field private mMaxScaleMultiplier:F

.field private mMinScale:F

.field private mTargetAspectRatio:F

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private mWrapCropBoundsRunnable:Ljava/lang/Runnable;

.field private mZoomImageToPositionRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/Utilities;->getScreenAspectRatio(Landroid/content/Context;Z)F

    move-result v1

    sput v1, Lnet/oneplus/h2launcher/crop/view/CropImageView;->PORTRAIT_IMAGE_ASPECT_RATIO:F

    .line 62
    invoke-static {}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getLandscapeWallpaperAspectRatio()F

    move-result v1

    sput v1, Lnet/oneplus/h2launcher/crop/view/CropImageView;->LANDSCAPE_IMAGE_ASPECT_RATIO:F

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 49
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mMaxScaleMultiplier:F

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mZoomImageToPositionRunnable:Ljava/lang/Runnable;

    .line 56
    iput v1, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mMaxResultImageSizeX:I

    iput v1, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mMaxResultImageSizeY:I

    .line 57
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mImageToWrapCropBoundsAnimDuration:J

    .line 85
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/crop/view/CropImageView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/view/CropImageView;

    .prologue
    .line 34
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method private calculateImageIndents()[F
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 353
    iget-object v10, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 354
    iget-object v10, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getCurrentAngle()F

    move-result v11

    neg-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 356
    iget-object v10, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCurrentImageCorners:[F

    iget-object v11, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCurrentImageCorners:[F

    array-length v11, v11

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v7

    .line 357
    .local v7, "unrotatedImageCorners":[F
    iget-object v10, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-static {v10}, Lnet/oneplus/h2launcher/crop/util/RectUtils;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v5

    .line 359
    .local v5, "unrotatedCropBoundsCorners":[F
    iget-object v10, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 360
    iget-object v10, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 362
    invoke-static {v7}, Lnet/oneplus/h2launcher/crop/util/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v8

    .line 363
    .local v8, "unrotatedImageRect":Landroid/graphics/RectF;
    invoke-static {v5}, Lnet/oneplus/h2launcher/crop/util/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v6

    .line 365
    .local v6, "unrotatedCropRect":Landroid/graphics/RectF;
    iget v10, v8, Landroid/graphics/RectF;->left:F

    iget v11, v6, Landroid/graphics/RectF;->left:F

    sub-float v1, v10, v11

    .line 366
    .local v1, "deltaLeft":F
    iget v10, v8, Landroid/graphics/RectF;->top:F

    iget v11, v6, Landroid/graphics/RectF;->top:F

    sub-float v3, v10, v11

    .line 367
    .local v3, "deltaTop":F
    iget v10, v8, Landroid/graphics/RectF;->right:F

    iget v11, v6, Landroid/graphics/RectF;->right:F

    sub-float v2, v10, v11

    .line 368
    .local v2, "deltaRight":F
    iget v10, v8, Landroid/graphics/RectF;->bottom:F

    iget v11, v6, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v10, v11

    .line 370
    .local v0, "deltaBottom":F
    const/4 v10, 0x4

    new-array v4, v10, [F

    .line 371
    .local v4, "indents":[F
    const/4 v10, 0x0

    cmpl-float v11, v1, v9

    if-lez v11, :cond_0

    .end local v1    # "deltaLeft":F
    :goto_0
    aput v1, v4, v10

    .line 372
    const/4 v10, 0x1

    cmpl-float v11, v3, v9

    if-lez v11, :cond_1

    .end local v3    # "deltaTop":F
    :goto_1
    aput v3, v4, v10

    .line 373
    const/4 v10, 0x2

    cmpg-float v11, v2, v9

    if-gez v11, :cond_2

    .end local v2    # "deltaRight":F
    :goto_2
    aput v2, v4, v10

    .line 374
    const/4 v10, 0x3

    cmpg-float v11, v0, v9

    if-gez v11, :cond_3

    .end local v0    # "deltaBottom":F
    :goto_3
    aput v0, v4, v10

    .line 376
    iget-object v9, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 377
    iget-object v9, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getCurrentAngle()F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 378
    iget-object v9, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 380
    return-object v4

    .restart local v0    # "deltaBottom":F
    .restart local v1    # "deltaLeft":F
    .restart local v2    # "deltaRight":F
    .restart local v3    # "deltaTop":F
    :cond_0
    move v1, v9

    .line 371
    goto :goto_0

    .end local v1    # "deltaLeft":F
    :cond_1
    move v3, v9

    .line 372
    goto :goto_1

    .end local v3    # "deltaTop":F
    :cond_2
    move v2, v9

    .line 373
    goto :goto_2

    .end local v2    # "deltaRight":F
    :cond_3
    move v0, v9

    .line 374
    goto :goto_3
.end method

.method private setupCropBounds()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 507
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 508
    .local v1, "cropRectWidth":F
    iget v2, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTargetAspectRatio:F

    div-float v0, v1, v2

    .line 509
    .local v0, "cropRectHeight":F
    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 511
    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropBoundsChangeListener:Lnet/oneplus/h2launcher/crop/view/CropImageView$CropBoundsChangeListener;

    if-eqz v2, :cond_0

    .line 512
    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropBoundsChangeListener:Lnet/oneplus/h2launcher/crop/view/CropImageView$CropBoundsChangeListener;

    iget v3, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTargetAspectRatio:F

    invoke-interface {v2, v3}, Lnet/oneplus/h2launcher/crop/view/CropImageView$CropBoundsChangeListener;->onCropBoundsChangedRotate(F)V

    .line 514
    :cond_0
    return-void
.end method

.method private setupInitialImagePosition(FF)V
    .locals 9
    .param p1, "drawableWidth"    # F
    .param p2, "drawableHeight"    # F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 469
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 470
    .local v1, "cropRectWidth":F
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 472
    .local v0, "cropRectHeight":F
    div-float v5, v1, p1

    .line 473
    .local v5, "widthScale":F
    div-float v2, v0, p2

    .line 475
    .local v2, "heightScale":F
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mMinScale:F

    .line 476
    iget v6, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mMinScale:F

    iget v7, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mMaxScaleMultiplier:F

    mul-float/2addr v6, v7

    iput v6, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mMaxScale:F

    .line 478
    iget v6, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mMinScale:F

    mul-float/2addr v6, p1

    sub-float v6, v1, v6

    div-float/2addr v6, v8

    iget-object v7, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float v4, v6, v7

    .line 479
    .local v4, "tw":F
    iget v6, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mMinScale:F

    mul-float/2addr v6, p2

    sub-float v6, v0, v6

    div-float/2addr v6, v8

    iget-object v7, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float v3, v6, v7

    .line 481
    .local v3, "th":F
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 482
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    iget v7, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mMinScale:F

    iget v8, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mMinScale:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 483
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 484
    return-void
.end method


# virtual methods
.method public cancelAllAnimations()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mWrapCropBoundsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 278
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mZoomImageToPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method

.method public cropAndSaveImage(Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;)V
    .locals 13
    .param p1, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "compressQuality"    # I
    .param p3, "outputUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "cropCallback"    # Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->cancelAllAnimations()V

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->setImageToWrapCropBounds(Z)V

    .line 96
    new-instance v0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCurrentImageCorners:[F

    .line 97
    invoke-static {v4}, Lnet/oneplus/h2launcher/crop/util/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v4

    .line 98
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getCurrentScale()F

    move-result v5

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getCurrentAngle()F

    move-result v6

    iget v7, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mMaxResultImageSizeX:I

    iget v8, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mMaxResultImageSizeY:I

    move-object v9, p1

    move v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v0 .. v12}, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;FFIILandroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 101
    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    return-void
.end method

.method public getCropBoundsChangeListener()Lnet/oneplus/h2launcher/crop/view/CropImageView$CropBoundsChangeListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropBoundsChangeListener:Lnet/oneplus/h2launcher/crop/view/CropImageView$CropBoundsChangeListener;

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mMaxScale:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mMinScale:F

    return v0
.end method

.method public getTargetAspectRatio()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTargetAspectRatio:F

    return v0
.end method

.method protected isImageWrapCropBounds()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCurrentImageCorners:[F

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->isImageWrapCropBounds([F)Z

    move-result v0

    return v0
.end method

.method protected isImageWrapCropBounds([F)Z
    .locals 6
    .param p1, "imageCorners"    # [F

    .prologue
    .line 426
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 427
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getCurrentAngle()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 429
    array-length v4, p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    .line 430
    .local v3, "unrotatedImageCorners":[F
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 432
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-static {v4}, Lnet/oneplus/h2launcher/crop/util/RectUtils;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v2

    .line 433
    .local v2, "unrotatedCropBoundsCorners":[F
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 435
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, "rectImage":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 436
    .local v0, "rectCropBounds":Landroid/graphics/Rect;
    invoke-static {v3}, Lnet/oneplus/h2launcher/crop/util/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 437
    invoke-static {v2}, Lnet/oneplus/h2launcher/crop/util/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 438
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    return v4
.end method

.method protected onImageLaidOut()V
    .locals 5

    .prologue
    .line 388
    invoke-super {p0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->onImageLaidOut()V

    .line 389
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 390
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v2, v3

    .line 395
    .local v2, "drawableWidth":F
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v1, v3

    .line 397
    .local v1, "drawableHeight":F
    iget v3, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTargetAspectRatio:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 398
    div-float v3, v2, v1

    iput v3, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTargetAspectRatio:F

    .line 401
    :cond_2
    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->setupCropBounds()V

    .line 402
    invoke-direct {p0, v2, v1}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->setupInitialImagePosition(FF)V

    .line 403
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 405
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTransformImageListener:Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;

    if-eqz v3, :cond_0

    .line 406
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTransformImageListener:Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getCurrentScale()F

    move-result v4

    invoke-interface {v3, v4}, Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;->onScale(F)V

    .line 407
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTransformImageListener:Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getCurrentAngle()F

    move-result v4

    invoke-interface {v3, v4}, Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;->onRotate(F)V

    goto :goto_0
.end method

.method public postRotate(F)V
    .locals 2
    .param p1, "deltaAngle"    # F

    .prologue
    .line 270
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->postRotate(FFF)V

    .line 271
    return-void
.end method

.method public postScale(FFF)V
    .locals 3
    .param p1, "deltaScale"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 257
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getCurrentScale()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getMaxScale()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 258
    invoke-super {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->postScale(FFF)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getCurrentScale()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getMinScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 260
    invoke-super {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->postScale(FFF)V

    goto :goto_0
.end method

.method protected processStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 492
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 493
    .local v0, "targetAspectRatioX":F
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 495
    .local v1, "targetAspectRatioY":F
    cmpl-float v2, v0, v3

    if-eqz v2, :cond_0

    cmpl-float v2, v1, v3

    if-nez v2, :cond_1

    .line 496
    :cond_0
    iput v3, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTargetAspectRatio:F

    .line 500
    :goto_0
    return-void

    .line 498
    :cond_1
    div-float v2, v0, v1

    iput v2, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTargetAspectRatio:F

    goto :goto_0
.end method

.method public resetTargetAspectRatio(F)V
    .locals 3
    .param p1, "targetAspectRatio"    # F

    .prologue
    .line 151
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 152
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 153
    iput p1, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTargetAspectRatio:F

    .line 165
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    .line 158
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTargetAspectRatio:F

    .line 163
    :goto_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->onImageLaidOut()V

    .line 164
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->postInvalidate()V

    goto :goto_0

    .line 160
    :cond_1
    iput p1, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTargetAspectRatio:F

    goto :goto_1
.end method

.method public setCropBoundsChangeListener(Lnet/oneplus/h2launcher/crop/view/CropImageView$CropBoundsChangeListener;)V
    .locals 0
    .param p1, "cropBoundsChangeListener"    # Lnet/oneplus/h2launcher/crop/view/CropImageView$CropBoundsChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 173
    iput-object p1, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropBoundsChangeListener:Lnet/oneplus/h2launcher/crop/view/CropImageView$CropBoundsChangeListener;

    .line 174
    return-void
.end method

.method public setImageToWrapCropBounds()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->setImageToWrapCropBounds(Z)V

    .line 283
    return-void
.end method

.method public setImageToWrapCropBounds(Z)V
    .locals 15
    .param p1, "animate"    # Z

    .prologue
    .line 294
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->isImageWrapCropBounds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCurrentImageCenter:[F

    const/4 v1, 0x0

    aget v4, v0, v1

    .line 297
    .local v4, "currentX":F
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCurrentImageCenter:[F

    const/4 v1, 0x1

    aget v5, v0, v1

    .line 298
    .local v5, "currentY":F
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getCurrentScale()F

    move-result v8

    .line 300
    .local v8, "currentScale":F
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float v6, v0, v4

    .line 301
    .local v6, "deltaX":F
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float v7, v0, v5

    .line 302
    .local v7, "deltaY":F
    const/4 v9, 0x0

    .line 304
    .local v9, "deltaScale":F
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 305
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 307
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCurrentImageCorners:[F

    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCurrentImageCorners:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v14

    .line 308
    .local v14, "tempCurrentImageCorners":[F
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 310
    invoke-virtual {p0, v14}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->isImageWrapCropBounds([F)Z

    move-result v10

    .line 312
    .local v10, "willImageWrapCropBoundsAfterTranslate":Z
    if-eqz v10, :cond_1

    .line 313
    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->calculateImageIndents()[F

    move-result-object v12

    .line 314
    .local v12, "imageIndents":[F
    const/4 v0, 0x0

    aget v0, v12, v0

    const/4 v1, 0x2

    aget v1, v12, v1

    add-float/2addr v0, v1

    neg-float v6, v0

    .line 315
    const/4 v0, 0x1

    aget v0, v12, v0

    const/4 v1, 0x3

    aget v1, v12, v1

    add-float/2addr v0, v1

    neg-float v7, v0

    .line 331
    .end local v12    # "imageIndents":[F
    :goto_0
    if-eqz p1, :cond_2

    .line 332
    new-instance v0, Lnet/oneplus/h2launcher/crop/view/CropImageView$WrapCropBoundsRunnable;

    iget-wide v2, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mImageToWrapCropBoundsAnimDuration:J

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lnet/oneplus/h2launcher/crop/view/CropImageView$WrapCropBoundsRunnable;-><init>(Lnet/oneplus/h2launcher/crop/view/CropImageView;JFFFFFFZ)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mWrapCropBoundsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->post(Ljava/lang/Runnable;)Z

    .line 342
    .end local v4    # "currentX":F
    .end local v5    # "currentY":F
    .end local v6    # "deltaX":F
    .end local v7    # "deltaY":F
    .end local v8    # "currentScale":F
    .end local v9    # "deltaScale":F
    .end local v10    # "willImageWrapCropBoundsAfterTranslate":Z
    .end local v14    # "tempCurrentImageCorners":[F
    :cond_0
    :goto_1
    return-void

    .line 317
    .restart local v4    # "currentX":F
    .restart local v5    # "currentY":F
    .restart local v6    # "deltaX":F
    .restart local v7    # "deltaY":F
    .restart local v8    # "currentScale":F
    .restart local v9    # "deltaScale":F
    .restart local v10    # "willImageWrapCropBoundsAfterTranslate":Z
    .restart local v14    # "tempCurrentImageCorners":[F
    :cond_1
    new-instance v13, Landroid/graphics/RectF;

    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-direct {v13, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 318
    .local v13, "tempCropRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 319
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getCurrentAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 320
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 322
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCurrentImageCorners:[F

    invoke-static {v0}, Lnet/oneplus/h2launcher/crop/util/RectUtils;->getRectSidesFromCorners([F)[F

    move-result-object v11

    .line 324
    .local v11, "currentImageSides":[F
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    aget v1, v11, v1

    div-float/2addr v0, v1

    .line 325
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x1

    aget v2, v11, v2

    div-float/2addr v1, v2

    .line 324
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 327
    float-to-double v0, v9

    const-wide v2, 0x3ff028f5c28f5c29L    # 1.01

    mul-double/2addr v0, v2

    double-to-float v9, v0

    .line 328
    mul-float v0, v9, v8

    sub-float v9, v0, v8

    goto :goto_0

    .line 336
    .end local v11    # "currentImageSides":[F
    .end local v13    # "tempCropRect":Landroid/graphics/RectF;
    :cond_2
    invoke-virtual {p0, v6, v7}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->postTranslate(FF)V

    .line 337
    if-nez v10, :cond_0

    .line 338
    add-float v0, v8, v9

    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->zoomInImage(FFF)V

    goto :goto_1
.end method

.method public setImageToWrapCropBoundsAnimDuration(J)V
    .locals 3
    .param p1, "imageToWrapCropBoundsAnimDuration"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x64L
        .end annotation
    .end param

    .prologue
    .line 200
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 201
    iput-wide p1, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mImageToWrapCropBoundsAnimDuration:J

    .line 205
    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxResultImageSizeX(I)V
    .locals 0
    .param p1, "maxResultImageSizeX"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0xaL
        .end annotation
    .end param

    .prologue
    .line 182
    iput p1, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mMaxResultImageSizeX:I

    .line 183
    return-void
.end method

.method public setMaxResultImageSizeY(I)V
    .locals 0
    .param p1, "maxResultImageSizeY"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0xaL
        .end annotation
    .end param

    .prologue
    .line 191
    iput p1, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mMaxResultImageSizeY:I

    .line 192
    return-void
.end method

.method public setMaxScaleMultiplier(F)V
    .locals 0
    .param p1, "maxScaleMultiplier"    # F

    .prologue
    .line 213
    iput p1, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mMaxScaleMultiplier:F

    .line 214
    return-void
.end method

.method public setTargetAspectRatio(F)V
    .locals 3
    .param p1, "targetAspectRatio"    # F

    .prologue
    .line 134
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 136
    iput p1, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTargetAspectRatio:F

    .line 148
    :goto_0
    return-void

    .line 140
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    .line 141
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTargetAspectRatio:F

    .line 146
    :goto_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->setupCropBounds()V

    .line 147
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->postInvalidate()V

    goto :goto_0

    .line 143
    :cond_1
    iput p1, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mTargetAspectRatio:F

    goto :goto_1
.end method

.method protected zoomImageToPosition(FFFJ)V
    .locals 8
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "durationMs"    # J

    .prologue
    .line 450
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getMaxScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getMaxScale()F

    move-result p1

    .line 454
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getCurrentScale()F

    move-result v4

    .line 455
    .local v4, "oldScale":F
    sub-float v5, p1, v4

    .line 457
    .local v5, "deltaScale":F
    new-instance v0, Lnet/oneplus/h2launcher/crop/view/CropImageView$ZoomImageToPosition;

    move-object v1, p0

    move-wide v2, p4

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/crop/view/CropImageView$ZoomImageToPosition;-><init>(Lnet/oneplus/h2launcher/crop/view/CropImageView;JFFFF)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mZoomImageToPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->post(Ljava/lang/Runnable;)Z

    .line 459
    return-void
.end method

.method public zoomInImage(F)V
    .locals 2
    .param p1, "deltaScale"    # F

    .prologue
    .line 236
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->zoomInImage(FFF)V

    .line 237
    return-void
.end method

.method public zoomInImage(FFF)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 243
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getMaxScale()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getCurrentScale()F

    move-result v0

    div-float v0, p1, v0

    invoke-virtual {p0, v0, p2, p3}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->postScale(FFF)V

    .line 246
    :cond_0
    return-void
.end method

.method public zoomOutImage(F)V
    .locals 2
    .param p1, "deltaScale"    # F

    .prologue
    .line 220
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->zoomOutImage(FFF)V

    .line 221
    return-void
.end method

.method public zoomOutImage(FFF)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 227
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getMinScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->getCurrentScale()F

    move-result v0

    div-float v0, p1, v0

    invoke-virtual {p0, v0, p2, p3}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->postScale(FFF)V

    .line 230
    :cond_0
    return-void
.end method
