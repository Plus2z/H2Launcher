.class public Lnet/oneplus/h2launcher/crop/util/BitmapLoadUtils;
.super Ljava/lang/Object;
.source "BitmapLoadUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapLoadUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 50
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 51
    .local v0, "height":I
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 52
    .local v2, "width":I
    const/4 v1, 0x1

    .line 54
    .local v1, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v2, p1, :cond_2

    .line 57
    :cond_0
    :goto_0
    div-int v3, v0, v1

    if-gt v3, p2, :cond_1

    div-int v3, v2, v1

    if-le v3, p1, :cond_2

    .line 58
    :cond_1
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 61
    :cond_2
    return v1
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 117
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static decodeBitmapInBackground(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;IILnet/oneplus/h2launcher/crop/callback/BitmapLoadCallback;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "outputUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "requiredWidth"    # I
    .param p4, "requiredHeight"    # I
    .param p5, "loadCallback"    # Lnet/oneplus/h2launcher/crop/callback/BitmapLoadCallback;

    .prologue
    .line 32
    new-instance v0, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;IILnet/oneplus/h2launcher/crop/callback/BitmapLoadCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/crop/task/BitmapLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 33
    return-void
.end method

.method public static exifToDegrees(I)I
    .locals 1
    .param p0, "exifOrientation"    # I

    .prologue
    .line 81
    packed-switch p0, :pswitch_data_0

    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "rotation":I
    :goto_0
    return v0

    .line 84
    .end local v0    # "rotation":I
    :pswitch_0
    const/16 v0, 0x5a

    .line 85
    .restart local v0    # "rotation":I
    goto :goto_0

    .line 88
    .end local v0    # "rotation":I
    :pswitch_1
    const/16 v0, 0xb4

    .line 89
    .restart local v0    # "rotation":I
    goto :goto_0

    .line 92
    .end local v0    # "rotation":I
    :pswitch_2
    const/16 v0, 0x10e

    .line 93
    .restart local v0    # "rotation":I
    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static exifToTranslation(I)I
    .locals 1
    .param p0, "exifOrientation"    # I

    .prologue
    .line 102
    packed-switch p0, :pswitch_data_0

    .line 110
    :pswitch_0
    const/4 v0, 0x1

    .line 112
    .local v0, "translation":I
    :goto_0
    return v0

    .line 107
    .end local v0    # "translation":I
    :pswitch_1
    const/4 v0, -0x1

    .line 108
    .restart local v0    # "translation":I
    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "imageUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, "orientation":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 68
    .local v3, "stream":Ljava/io/InputStream;
    if-nez v3, :cond_0

    move v2, v1

    .line 76
    .end local v1    # "orientation":I
    .end local v3    # "stream":Ljava/io/InputStream;
    .local v2, "orientation":I
    :goto_0
    return v2

    .line 71
    .end local v2    # "orientation":I
    .restart local v1    # "orientation":I
    .restart local v3    # "stream":Ljava/io/InputStream;
    :cond_0
    new-instance v4, Lnet/oneplus/h2launcher/crop/util/ImageHeaderParser;

    invoke-direct {v4, v3}, Lnet/oneplus/h2launcher/crop/util/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/crop/util/ImageHeaderParser;->getOrientation()I

    move-result v1

    .line 72
    invoke-static {v3}, Lnet/oneplus/h2launcher/crop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "stream":Ljava/io/InputStream;
    :goto_1
    move v2, v1

    .line 76
    .end local v1    # "orientation":I
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 73
    .end local v2    # "orientation":I
    .restart local v1    # "orientation":I
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BitmapLoadUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExifOrientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "transformMatrix"    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 38
    .local v7, "converted":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    move-object p0, v7

    .line 45
    .end local v7    # "converted":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 42
    :catch_0
    move-exception v8

    .line 43
    .local v8, "error":Ljava/lang/OutOfMemoryError;
    const-string v0, "BitmapLoadUtils"

    const-string v1, "transformBitmap: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
