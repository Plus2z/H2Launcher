.class public Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;
.super Landroid/os/AsyncTask;
.source "BitmapLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapWorkerTask"


# instance fields
.field private final mBitmapLoadCallback:Lnet/oneplus/h2launcher/crop/callback/BitmapLoadCallback;

.field private final mContext:Landroid/content/Context;

.field private mInputUri:Landroid/net/Uri;

.field private final mOutputUri:Landroid/net/Uri;

.field private final mRequiredHeight:I

.field private final mRequiredWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;IILnet/oneplus/h2launcher/crop/callback/BitmapLoadCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "inputUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "outputUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "requiredWidth"    # I
    .param p5, "requiredHeight"    # I
    .param p6, "loadCallback"    # Lnet/oneplus/h2launcher/crop/callback/BitmapLoadCallback;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 55
    iput-object p1, p0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    .line 57
    iput-object p3, p0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;

    .line 58
    iput p4, p0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->mRequiredWidth:I

    .line 59
    iput p5, p0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->mRequiredHeight:I

    .line 60
    iput-object p6, p0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->mBitmapLoadCallback:Lnet/oneplus/h2launcher/crop/callback/BitmapLoadCallback;

    .line 61
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->doInBackground([Ljava/lang/Void;)Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;

    if-nez v13, :cond_1

    .line 67
    :cond_0
    new-instance v13, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/NullPointerException;

    const-string v16, "Uri cannot be null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14, v15}, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Exception;)V

    .line 146
    :goto_0
    return-object v13

    .line 81
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    const-string v15, "r"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 87
    .local v12, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    if-eqz v12, :cond_3

    .line 88
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    .line 93
    .local v8, "fileDescriptor":Ljava/io/FileDescriptor;
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 94
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 95
    const/4 v13, 0x0

    invoke-static {v8, v13, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 96
    iget v13, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    iget v13, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    .line 97
    :cond_2
    new-instance v13, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Bounds for bitmap could not be retrieved from Uri"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14, v15}, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Exception;)V

    goto :goto_0

    .line 82
    .end local v8    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v3

    .line 83
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v13, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;

    const/4 v14, 0x0

    invoke-direct {v13, v14, v3}, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Exception;)V

    goto :goto_0

    .line 90
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v12    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_3
    new-instance v13, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/NullPointerException;

    const-string v16, "ParcelFileDescriptor was null for given Uri"

    invoke-direct/range {v15 .. v16}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14, v15}, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Exception;)V

    goto :goto_0

    .line 100
    .restart local v8    # "fileDescriptor":Ljava/io/FileDescriptor;
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->mRequiredWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->mRequiredHeight:I

    invoke-static {v11, v13, v14}, Lnet/oneplus/h2launcher/crop/util/BitmapLoadUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v13

    iput v13, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 101
    const/4 v13, 0x0

    iput-boolean v13, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 103
    const/4 v2, 0x0

    .line 105
    .local v2, "decodeSampledBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 106
    .local v1, "decodeAttemptSuccess":Z
    :goto_1
    if-nez v1, :cond_5

    .line 108
    const/4 v13, 0x0

    :try_start_1
    invoke-static {v8, v13, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 109
    const/4 v1, 0x1

    goto :goto_1

    .line 110
    :catch_1
    move-exception v4

    .line 111
    .local v4, "error":Ljava/lang/OutOfMemoryError;
    const-string v13, "BitmapWorkerTask"

    const-string v14, "doInBackground: BitmapFactory.decodeFileDescriptor: "

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    iget v13, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 116
    .end local v4    # "error":Ljava/lang/OutOfMemoryError;
    :cond_5
    if-nez v2, :cond_6

    .line 117
    new-instance v13, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Bitmap could not be decoded from Uri"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14, v15}, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 120
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->mRequiredWidth:I

    if-gt v13, v14, :cond_7

    .line 121
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->mRequiredHeight:I

    if-le v13, v14, :cond_8

    .line 122
    :cond_7
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "The size [%d:%d] of decode bitmap is invalid"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 123
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    .line 122
    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 124
    .local v10, "message":Ljava/lang/String;
    new-instance v13, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14, v15}, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 127
    .end local v10    # "message":Ljava/lang/String;
    :cond_8
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x10

    if-lt v13, v14, :cond_9

    .line 128
    invoke-static {v12}, Lnet/oneplus/h2launcher/crop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    .line 131
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/crop/util/BitmapLoadUtils;->getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v6

    .line 132
    .local v6, "exifOrientation":I
    invoke-static {v6}, Lnet/oneplus/h2launcher/crop/util/BitmapLoadUtils;->exifToDegrees(I)I

    move-result v5

    .line 133
    .local v5, "exifDegrees":I
    invoke-static {v6}, Lnet/oneplus/h2launcher/crop/util/BitmapLoadUtils;->exifToTranslation(I)I

    move-result v7

    .line 135
    .local v7, "exifTranslation":I
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 136
    .local v9, "matrix":Landroid/graphics/Matrix;
    if-eqz v5, :cond_a

    .line 137
    int-to-float v13, v5

    invoke-virtual {v9, v13}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 139
    :cond_a
    const/4 v13, 0x1

    if-eq v7, v13, :cond_b

    .line 140
    int-to-float v13, v7

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v9, v13, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 142
    :cond_b
    invoke-virtual {v9}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v13

    if-nez v13, :cond_c

    .line 143
    new-instance v13, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;

    invoke-static {v2, v9}, Lnet/oneplus/h2launcher/crop/util/BitmapLoadUtils;->transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 146
    :cond_c
    new-instance v13, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;

    const/4 v14, 0x0

    invoke-direct {v13, v2, v14}, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    check-cast p1, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->onPostExecute(Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;)V

    return-void
.end method

.method protected onPostExecute(Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;)V
    .locals 2
    .param p1, "result"    # Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 186
    iget-object v0, p1, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;->mBitmapWorkerException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->mBitmapLoadCallback:Lnet/oneplus/h2launcher/crop/callback/BitmapLoadCallback;

    iget-object v1, p1, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;->mBitmapResult:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/crop/callback/BitmapLoadCallback;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->mBitmapLoadCallback:Lnet/oneplus/h2launcher/crop/callback/BitmapLoadCallback;

    iget-object v1, p1, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask$BitmapWorkerResult;->mBitmapWorkerException:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/crop/callback/BitmapLoadCallback;->onFailure(Ljava/lang/Exception;)V

    goto :goto_0
.end method
