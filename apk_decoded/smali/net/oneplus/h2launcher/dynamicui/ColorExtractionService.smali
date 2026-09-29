.class public Lnet/oneplus/h2launcher/dynamicui/ColorExtractionService;
.super Landroid/app/job/JobService;
.source "ColorExtractionService.java"


# static fields
.field private static final HOTSEAT_FRACTION:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "ColorExtractionService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 58
    return-void
.end method

.method private getHotseatPalette()Landroid/support/v7/graphics/Palette;
    .locals 15
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 97
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    .line 98
    .local v7, "wallpaperManager":Landroid/app/WallpaperManager;
    sget-boolean v9, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v9, :cond_5

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->isOnePlusBlurWallpaper(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 101
    invoke-static {p0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getOnePlusBlurWallpaperFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    if-nez v0, :cond_0

    .line 104
    const v8, 0x7f0201d7

    .line 105
    .local v8, "wallpaperResId":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicui/ColorExtractionService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    .end local v8    # "wallpaperResId":I
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 121
    invoke-static {v0}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/graphics/Palette$Builder;->clearFilters()Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v9

    .line 130
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v9

    .line 108
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v9, 0x1

    .line 109
    :try_start_0
    invoke-virtual {v7, v9}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 108
    .local v4, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v10, 0x0

    .line 110
    :try_start_1
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {v9, v11}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    .line 111
    .local v2, "decoder":Landroid/graphics/BitmapRegionDecoder;
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v5

    .line 112
    .local v5, "height":I
    new-instance v1, Landroid/graphics/Rect;

    const/4 v9, 0x0

    int-to-float v11, v5

    const/high16 v12, 0x3f400000    # 0.75f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 113
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v12

    invoke-direct {v1, v9, v11, v12, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    .local v1, "decodeRegion":Landroid/graphics/Rect;
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v9}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    if-eqz v4, :cond_0

    if-eqz v10, :cond_2

    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_3
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .end local v1    # "decodeRegion":Landroid/graphics/Rect;
    .end local v2    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "height":I
    :catch_1
    move-exception v3

    .line 117
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    const-string v9, "ColorExtractionService"

    const-string v10, "Fetching partial bitmap failed, trying old method"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 116
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "decodeRegion":Landroid/graphics/Rect;
    .restart local v2    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "height":I
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .end local v1    # "decodeRegion":Landroid/graphics/Rect;
    .end local v2    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "height":I
    :catch_2
    move-exception v3

    goto :goto_2

    .line 108
    .restart local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v9

    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 116
    :catchall_0
    move-exception v10

    move-object v14, v10

    move-object v10, v9

    move-object v9, v14

    :goto_3
    if-eqz v4, :cond_3

    if-eqz v10, :cond_4

    :try_start_6
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_4
    :try_start_7
    throw v9

    :catch_4
    move-exception v11

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 125
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_5
    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 126
    .local v6, "wallpaper":Landroid/graphics/Bitmap;
    invoke-static {v6}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v9

    const/4 v10, 0x0

    .line 127
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f400000    # 0.75f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 128
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 127
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v7/graphics/Palette$Builder;->setRegion(IIII)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v9

    .line 129
    invoke-virtual {v9}, Landroid/support/v7/graphics/Palette$Builder;->clearFilters()Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v9

    .line 130
    invoke-virtual {v9}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v9

    goto/16 :goto_1

    .line 116
    .end local v6    # "wallpaper":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v9

    goto :goto_3
.end method

.method private getStatusBarPalette()Landroid/support/v7/graphics/Palette;
    .locals 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 135
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    .line 136
    .local v7, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicui/ColorExtractionService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0138

    .line 137
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 139
    .local v5, "statusBarHeight":I
    sget-boolean v9, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v9, :cond_5

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->isOnePlusBlurWallpaper(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 142
    invoke-static {p0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getOnePlusBlurWallpaperFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    if-nez v0, :cond_0

    .line 145
    const v8, 0x7f0201d7

    .line 146
    .local v8, "wallpaperResId":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicui/ColorExtractionService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    .end local v8    # "wallpaperResId":I
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 162
    invoke-static {v0}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/graphics/Palette$Builder;->clearFilters()Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v9

    .line 170
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v9

    .line 149
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v9, 0x1

    .line 150
    :try_start_0
    invoke-virtual {v7, v9}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 149
    .local v4, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v10, 0x0

    .line 152
    :try_start_1
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {v9, v11}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    .line 153
    .local v2, "decoder":Landroid/graphics/BitmapRegionDecoder;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 154
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v12

    invoke-direct {v1, v9, v11, v12, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 155
    .local v1, "decodeRegion":Landroid/graphics/Rect;
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v9}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    if-eqz v4, :cond_0

    if-eqz v10, :cond_2

    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_3
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .end local v1    # "decodeRegion":Landroid/graphics/Rect;
    .end local v2    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v3

    .line 158
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    const-string v9, "ColorExtractionService"

    const-string v10, "Fetching partial bitmap failed, trying old method"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 157
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "decodeRegion":Landroid/graphics/Rect;
    .restart local v2    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .end local v1    # "decodeRegion":Landroid/graphics/Rect;
    .end local v2    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v3

    goto :goto_2

    .line 149
    .restart local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v9

    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 157
    :catchall_0
    move-exception v10

    move-object v13, v10

    move-object v10, v9

    move-object v9, v13

    :goto_3
    if-eqz v4, :cond_3

    if-eqz v10, :cond_4

    :try_start_6
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_4
    :try_start_7
    throw v9

    :catch_4
    move-exception v11

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 166
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_5
    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 167
    .local v6, "wallpaper":Landroid/graphics/Bitmap;
    invoke-static {v6}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 168
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12, v5}, Landroid/support/v7/graphics/Palette$Builder;->setRegion(IIII)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v9

    .line 169
    invoke-virtual {v9}, Landroid/support/v7/graphics/Palette$Builder;->clearFilters()Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v9

    .line 170
    invoke-virtual {v9}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v9

    goto :goto_1

    .line 157
    .end local v6    # "wallpaper":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v9

    goto :goto_3
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 9
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v8, 0x0

    .line 62
    const-string v5, "ColorExtractionService"

    const-string v6, "onStartJob#"

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .line 64
    .local v4, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-static {v4}, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils;->getWallpaperId(Landroid/app/WallpaperManager;)I

    move-result v3

    .line 65
    .local v3, "wallpaperId":I
    new-instance v1, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;-><init>()V

    .line 66
    .local v1, "extractedColors":Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;
    invoke-static {p0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->isNormalLiveWallpaper(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    invoke-virtual {v1, p0, v8}, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->updateHotseatPalette(Landroid/content/Context;Landroid/support/v7/graphics/Palette;)V

    .line 78
    :goto_0
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->encodeAsString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "colorsString":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v2, "extras":Landroid/os/Bundle;
    const-string v5, "extra_wallpaperId"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string v5, "extra_extractedColors"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicui/ColorExtractionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lnet/oneplus/h2launcher/LauncherSettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "set_extracted_colors_and_wallpaper_id_setting"

    invoke-virtual {v5, v6, v7, v8, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 86
    const/4 v5, 0x0

    return v5

    .line 70
    .end local v0    # "colorsString":Ljava/lang/String;
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicui/ColorExtractionService;->getHotseatPalette()Landroid/support/v7/graphics/Palette;

    move-result-object v5

    invoke-virtual {v1, p0, v5}, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->updateHotseatPalette(Landroid/content/Context;Landroid/support/v7/graphics/Palette;)V

    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .prologue
    .line 91
    const-string v0, "ColorExtractionService"

    const-string v1, "onStopJob#"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x0

    return v0
.end method
