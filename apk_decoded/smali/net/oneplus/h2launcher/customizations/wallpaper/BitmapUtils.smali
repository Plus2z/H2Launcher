.class public Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSampleSizeLarger(F)I
    .locals 4
    .param p0, "scale"    # F

    .prologue
    const/4 v1, 0x1

    .line 39
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 40
    .local v0, "initialSize":I
    if-gt v0, v1, :cond_0

    .line 43
    :goto_0
    return v1

    .line 42
    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    .line 43
    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapUtils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static getRotationFromExif(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapUtils;->getRotationFromExifHelper(Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static getRotationFromExif(Landroid/content/res/Resources;I)I
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-static {p0, p1, v0, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapUtils;->getRotationFromExifHelper(Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method private static getRotationFromExifHelper(Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 56
    new-instance v3, Lnet/oneplus/gallery3d/exif/ExifInterface;

    invoke-direct {v3}, Lnet/oneplus/gallery3d/exif/ExifInterface;-><init>()V

    .line 57
    .local v3, "ei":Lnet/oneplus/gallery3d/exif/ExifInterface;
    const/4 v4, 0x0

    .line 58
    .local v4, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 60
    .local v0, "bis":Ljava/io/BufferedInputStream;
    if-eqz p3, :cond_2

    .line 61
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 62
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-virtual {v3, v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 69
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    :goto_0
    :try_start_2
    sget v6, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v3, v6}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v5

    .line 70
    .local v5, "ori":Ljava/lang/Integer;
    if-eqz v5, :cond_3

    .line 71
    invoke-virtual {v5}, Ljava/lang/Integer;->shortValue()S

    move-result v6

    invoke-static {v6}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 80
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 84
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 88
    .end local v5    # "ori":Ljava/lang/Integer;
    :cond_1
    :goto_2
    return v6

    .line 65
    :cond_2
    :try_start_5
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 66
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 67
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :try_start_6
    invoke-virtual {v3, v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 80
    .restart local v5    # "ori":Ljava/lang/Integer;
    :cond_3
    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 84
    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 88
    .end local v5    # "ori":Ljava/lang/Integer;
    :cond_5
    :goto_4
    const/4 v6, 0x0

    goto :goto_2

    .line 73
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/io/IOException;
    :goto_5
    :try_start_9
    const-string v6, "BitmapUtils"

    const-string v7, "Getting exif data failed"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 80
    if-eqz v0, :cond_6

    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 84
    :cond_6
    :goto_6
    if-eqz v4, :cond_5

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_4

    .line 85
    :catch_1
    move-exception v6

    goto :goto_4

    .line 75
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/NullPointerException;
    :goto_7
    :try_start_c
    const-string v6, "BitmapUtils"

    const-string v7, "Getting exif data failed"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 80
    if-eqz v0, :cond_7

    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 84
    :cond_7
    :goto_8
    if-eqz v4, :cond_5

    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_4

    .line 85
    :catch_3
    move-exception v6

    goto :goto_4

    .line 79
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v6

    .line 80
    :goto_9
    if-eqz v0, :cond_8

    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 84
    :cond_8
    :goto_a
    if-eqz v4, :cond_9

    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 86
    :cond_9
    :goto_b
    throw v6

    .line 81
    .restart local v5    # "ori":Ljava/lang/Integer;
    :catch_4
    move-exception v7

    goto :goto_1

    .line 85
    :catch_5
    move-exception v7

    goto :goto_2

    .line 81
    :catch_6
    move-exception v6

    goto :goto_3

    .line 85
    :catch_7
    move-exception v6

    goto :goto_4

    .line 81
    .end local v5    # "ori":Ljava/lang/Integer;
    .local v2, "e":Ljava/io/IOException;
    :catch_8
    move-exception v6

    goto :goto_6

    .local v2, "e":Ljava/lang/NullPointerException;
    :catch_9
    move-exception v6

    goto :goto_8

    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_a
    move-exception v7

    goto :goto_a

    .line 85
    :catch_b
    move-exception v7

    goto :goto_b

    .line 79
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_9

    .line 75
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_c
    move-exception v2

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_7

    .line 73
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_d
    move-exception v2

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_5
.end method

.method private static prevPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 110
    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 111
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "rotation"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 92
    if-nez p1, :cond_0

    .line 103
    .end local p0    # "source":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 96
    .restart local p0    # "source":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 97
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 98
    .local v4, "height":I
    const-string v0, "BitmapUtils"

    const-string v2, "rotate: rotation=%d"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v0, v2, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 101
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    div-int/lit8 v2, v3, 0x2

    int-to-float v2, v2

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v0, v2, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move-object v0, p0

    move v2, v1

    .line 103
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method
