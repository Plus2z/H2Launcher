.class public Lnet/oneplus/gallery3d/common/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSampleSizeLarger(F)I
    .locals 4
    .param p0, "scale"    # F

    .prologue
    const/4 v1, 0x1

    .line 36
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 37
    .local v0, "initialSize":I
    if-gt v0, v1, :cond_0

    .line 40
    :goto_0
    return v1

    .line 39
    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    .line 40
    invoke-static {v0}, Lnet/oneplus/gallery3d/common/Utils;->prevPowerOf2(I)I

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
    .line 45
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lnet/oneplus/gallery3d/common/BitmapUtils;->getRotationFromExifHelper(Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static getRotationFromExif(Landroid/content/res/Resources;I)I
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-static {p0, p1, v0, v0}, Lnet/oneplus/gallery3d/common/BitmapUtils;->getRotationFromExifHelper(Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I

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
    .line 53
    new-instance v3, Lnet/oneplus/gallery3d/exif/ExifInterface;

    invoke-direct {v3}, Lnet/oneplus/gallery3d/exif/ExifInterface;-><init>()V

    .line 54
    .local v3, "ei":Lnet/oneplus/gallery3d/exif/ExifInterface;
    const/4 v4, 0x0

    .line 55
    .local v4, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 57
    .local v0, "bis":Ljava/io/BufferedInputStream;
    if-eqz p3, :cond_0

    .line 58
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 59
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-virtual {v3, v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 66
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    :goto_0
    :try_start_2
    sget v6, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v3, v6}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v5

    .line 67
    .local v5, "ori":Ljava/lang/Integer;
    if-eqz v5, :cond_1

    .line 68
    invoke-virtual {v5}, Ljava/lang/Integer;->shortValue()S

    move-result v6

    invoke-static {v6}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 76
    invoke-static {v0}, Lnet/oneplus/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 77
    invoke-static {v4}, Lnet/oneplus/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 79
    .end local v5    # "ori":Ljava/lang/Integer;
    :goto_1
    return v6

    .line 62
    :cond_0
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 63
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :try_start_4
    invoke-virtual {v3, v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 76
    .restart local v5    # "ori":Ljava/lang/Integer;
    :cond_1
    invoke-static {v0}, Lnet/oneplus/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 77
    invoke-static {v4}, Lnet/oneplus/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 79
    .end local v5    # "ori":Ljava/lang/Integer;
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 70
    :catch_0
    move-exception v2

    .line 71
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v6, "BitmapUtils"

    const-string v7, "Getting exif data failed"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    invoke-static {v0}, Lnet/oneplus/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 77
    invoke-static {v4}, Lnet/oneplus/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    .line 72
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/NullPointerException;
    :goto_4
    :try_start_6
    const-string v6, "BitmapUtils"

    const-string v7, "Getting exif data failed"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 76
    invoke-static {v0}, Lnet/oneplus/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 77
    invoke-static {v4}, Lnet/oneplus/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    .line 76
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v6

    :goto_5
    invoke-static {v0}, Lnet/oneplus/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 77
    invoke-static {v4}, Lnet/oneplus/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .line 76
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 72
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 70
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3
.end method
