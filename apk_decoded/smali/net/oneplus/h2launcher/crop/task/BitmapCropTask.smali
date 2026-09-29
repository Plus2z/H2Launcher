.class public Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;
.super Landroid/os/AsyncTask;
.source "BitmapCropTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final mCompressQuality:I

.field private final mContext:Landroid/content/Context;

.field private final mCropCallback:Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;

.field private final mCropRect:Landroid/graphics/RectF;

.field private mCurrentAngle:F

.field private final mCurrentImageRect:Landroid/graphics/RectF;

.field private mCurrentScale:F

.field private final mMaxResultImageSizeX:I

.field private final mMaxResultImageSizeY:I

.field private final mOutputUri:Landroid/net/Uri;

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private mViewBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;FFIILandroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "cropRect"    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "currentImageRect"    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "currentScale"    # F
    .param p6, "currentAngle"    # F
    .param p7, "maxResultImageSizeX"    # I
    .param p8, "maxResultImageSizeY"    # I
    .param p9, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10, "compressQuality"    # I
    .param p11, "outputUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p12, "cropCallback"    # Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mTempMatrix:Landroid/graphics/Matrix;

    .line 53
    iput-object p1, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 56
    iput-object p3, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    .line 57
    iput-object p4, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    .line 59
    iput p5, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCurrentScale:F

    .line 60
    iput p6, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCurrentAngle:F

    .line 61
    iput p7, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mMaxResultImageSizeX:I

    .line 62
    iput p8, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mMaxResultImageSizeY:I

    .line 64
    iput-object p9, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 65
    iput p10, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCompressQuality:I

    .line 67
    iput-object p11, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mOutputUri:Landroid/net/Uri;

    .line 69
    iput-object p12, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCropCallback:Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;

    .line 70
    return-void
.end method

.method private crop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 146
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 147
    .local v2, "top":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 148
    .local v1, "left":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 149
    .local v3, "width":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 150
    .local v0, "height":I
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 151
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 152
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 153
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 154
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v1, v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 155
    return-void
.end method

.method private resize()V
    .locals 10

    .prologue
    .line 112
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v7, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCurrentScale:F

    div-float v1, v6, v7

    .line 113
    .local v1, "cropWidth":F
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget v7, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCurrentScale:F

    div-float v0, v6, v7

    .line 115
    .local v0, "cropHeight":F
    iget v6, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mMaxResultImageSizeX:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-gtz v6, :cond_0

    iget v6, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mMaxResultImageSizeY:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_2

    .line 117
    :cond_0
    iget v6, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mMaxResultImageSizeX:I

    int-to-float v6, v6

    div-float v4, v6, v1

    .line 118
    .local v4, "scaleX":F
    iget v6, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mMaxResultImageSizeY:I

    int-to-float v6, v6

    div-float v5, v6, v0

    .line 119
    .local v5, "scaleY":F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 121
    .local v2, "resizeScale":F
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 122
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 123
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x0

    .line 121
    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 124
    .local v3, "resizedBitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    if-eq v6, v3, :cond_1

    .line 125
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    :cond_1
    iput-object v3, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 129
    iget v6, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v6, v2

    iput v6, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCurrentScale:F

    .line 131
    .end local v2    # "resizeScale":F
    .end local v3    # "resizedBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "scaleX":F
    .end local v5    # "scaleY":F
    :cond_2
    return-void
.end method

.method private rotate()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 135
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mTempMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCurrentAngle:F

    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 137
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mTempMatrix:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 139
    .local v7, "rotatedBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v7, :cond_0

    .line 140
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 142
    :cond_0
    iput-object v7, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 143
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 75
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "ViewBitmap is null or already recycled"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-object v0

    .line 78
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "CurrentImageRect is empty"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    :try_start_0
    iget v3, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mMaxResultImageSizeX:I

    if-lez v3, :cond_3

    iget v3, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mMaxResultImageSizeY:I

    if-lez v3, :cond_3

    .line 84
    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->resize()V

    .line 87
    :cond_3
    iget v3, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCurrentAngle:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    .line 88
    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->rotate()V

    .line 91
    :cond_4
    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->crop()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    const/4 v2, 0x0

    .line 99
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mOutputUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 100
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v5, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCompressQuality:I

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 101
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    invoke-static {v2}, Lnet/oneplus/h2launcher/crop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 92
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "error":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->TAG:Ljava/lang/String;

    const-string v4, "Failed to crop image, error: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    .end local v1    # "error":Ljava/lang/OutOfMemoryError;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lnet/oneplus/h2launcher/crop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lnet/oneplus/h2launcher/crop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    throw v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 159
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCropCallback:Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;

    if-eqz v0, :cond_0

    .line 160
    if-nez p1, :cond_1

    .line 161
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCropCallback:Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;->onBitmapCropped()V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->mCropCallback:Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;->onCropFailure(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/crop/task/BitmapCropTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
