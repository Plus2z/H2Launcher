.class public Lnet/oneplus/h2launcher/util/WallpaperComposer;
.super Ljava/lang/Object;
.source "WallpaperComposer.java"


# static fields
.field public static final BLUR_RADIUS:I = 0xe

.field private static final TAG:Ljava/lang/String; = "WallpaperComposer"

.field private static sBlurPaint:Landroid/graphics/Paint;

.field private static volatile sCachedBlurWallpaper:Landroid/graphics/Bitmap;

.field private static volatile sCachedMaskColor:I

.field private static volatile sIsGenerating:Z


# direct methods
.method static bridge synthetic -$$Nest$sfputsIsGenerating(Z)V
    .locals 0

    sput-boolean p0, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sIsGenerating:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sCachedBlurWallpaper:Landroid/graphics/Bitmap;

    .line 32
    const/4 v1, 0x0

    sput v1, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sCachedMaskColor:I

    .line 33
    sput-boolean v1, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sIsGenerating:Z

    .line 34
    sput-object v0, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sBlurPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeHomeScreenWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 16

    .line 37
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "WallpaperComposer"

    if-nez v2, :cond_0

    .line 38
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v1, v4}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    iget v5, v0, Landroid/graphics/Point;->x:I

    if-lez v5, :cond_1

    iget v5, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    const/16 v5, 0x438

    .line 44
    :goto_0
    if-eqz v0, :cond_2

    iget v6, v0, Landroid/graphics/Point;->y:I

    if-lez v6, :cond_2

    iget v0, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v6, v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x960

    const/16 v6, 0x960

    .line 46
    :goto_1
    nop

    .line 47
    const/4 v7, 0x0

    if-nez p2, :cond_4

    .line 49
    :try_start_1
    invoke-static {v2}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->loadWallpaperSwatches(Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 51
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 52
    instance-of v8, v0, Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v8, :cond_3

    .line 53
    check-cast v0, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 57
    :cond_3
    move/from16 v0, p2

    :goto_2
    goto :goto_3

    .line 56
    :catchall_0
    move-exception v0

    .line 59
    :cond_4
    move/from16 v0, p2

    :goto_3
    if-nez v0, :cond_5

    .line 60
    const v0, -0x1f1f20

    .line 63
    :cond_5
    const-string v8, " color="

    const-string v9, " H="

    move/from16 v11, p3

    if-ne v11, v4, :cond_9

    .line 65
    :try_start_2
    invoke-static {}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getLandscapeWallpaperAspectRatio()F

    move-result v1

    .line 66
    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_6

    .line 67
    const v1, 0x3f90e7da

    .line 70
    :cond_6
    int-to-float v4, v5

    div-float v1, v4, v1

    float-to-int v1, v1

    .line 71
    if-lez v1, :cond_7

    if-lt v1, v6, :cond_8

    .line 72
    :cond_7
    int-to-float v1, v6

    const v11, 0x3eb33333    # 0.35f

    mul-float v1, v1, v11

    float-to-int v1, v1

    .line 75
    :cond_8
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 76
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 78
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 79
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 80
    int-to-float v15, v13

    div-float v15, v4, v15

    const/16 p2, 0x2

    int-to-float v10, v1

    int-to-float v7, v14

    div-float v7, v10, v7

    invoke-static {v15, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 81
    div-float/2addr v4, v7

    float-to-int v4, v4

    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 82
    div-float/2addr v10, v7

    float-to-int v7, v10

    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 83
    sub-int/2addr v13, v4

    div-int/lit8 v13, v13, 0x2

    const/4 v10, 0x0

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 84
    sub-int/2addr v14, v7

    div-int/lit8 v14, v14, 0x2

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 86
    new-instance v10, Landroid/graphics/Rect;

    add-int/2addr v4, v13

    add-int/2addr v7, v14

    invoke-direct {v10, v13, v14, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 87
    new-instance v4, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 88
    new-instance v7, Landroid/graphics/Paint;

    const/4 v13, 0x2

    invoke-direct {v7, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 89
    invoke-virtual {v12, v2, v10, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 92
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 93
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    new-instance v7, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-direct {v7, v10, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v7, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 96
    nop

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "composeHomeScreenWallpaper (33% window): W="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dstH="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-object v11

    .line 101
    :cond_9
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 102
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 105
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 106
    int-to-float v12, v5

    int-to-float v13, v10

    div-float v13, v12, v13

    int-to-float v14, v6

    int-to-float v15, v11

    div-float v15, v14, v15

    invoke-static {v13, v15}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 107
    div-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 108
    div-float/2addr v14, v13

    float-to-int v13, v14

    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 109
    sub-int/2addr v10, v12

    const/4 v14, 0x2

    div-int/2addr v10, v14

    const/4 v15, 0x0

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 110
    sub-int/2addr v11, v13

    div-int/2addr v11, v14

    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 112
    new-instance v14, Landroid/graphics/Rect;

    add-int/2addr v12, v10

    add-int/2addr v13, v11

    invoke-direct {v14, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 113
    new-instance v10, Landroid/graphics/Rect;

    const/4 v15, 0x0

    invoke-direct {v10, v15, v15, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    new-instance v11, Landroid/graphics/Paint;

    const/4 v13, 0x2

    invoke-direct {v11, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 115
    invoke-virtual {v7, v2, v14, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 117
    const/4 v15, 0x0

    invoke-static {v1, v4, v0, v15}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->paintWallpaperColorMask(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_a

    if-eq v1, v4, :cond_a

    .line 119
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 120
    move-object v4, v1

    .line 123
    :cond_a
    nop

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "composeHomeScreenWallpaper (portrait): W="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    return-object v4

    .line 127
    :catchall_1
    move-exception v0

    .line 128
    const-string v1, "failed to compose home screen wallpaper"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    return-object v2
.end method

.method public static drawBlurBackground(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 8

    .line 328
    if-eqz p0, :cond_15

    if-nez p1, :cond_0

    goto/16 :goto_7

    .line 332
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 333
    if-nez v0, :cond_1

    .line 334
    return-void

    .line 337
    :cond_1
    nop

    .line 339
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getBlurWallpaperSettings(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v2

    .line 340
    if-eqz v2, :cond_2

    .line 341
    iget-boolean v2, v2, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 340
    :cond_2
    const/4 v2, 0x1

    .line 344
    :goto_0
    goto :goto_1

    .line 343
    :catchall_0
    move-exception v2

    const/4 v2, 0x1

    .line 346
    :goto_1
    if-nez v2, :cond_3

    .line 347
    return-void

    .line 350
    :cond_3
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_4

    .line 351
    return-void

    .line 353
    :cond_4
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    .line 354
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 355
    if-gt v3, v1, :cond_5

    .line 356
    return-void

    .line 359
    :cond_5
    nop

    .line 360
    instance-of v4, p0, Lnet/oneplus/h2launcher/Workspace;

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    .line 362
    :try_start_1
    move-object v4, p0

    check-cast v4, Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Workspace;->numCustomPages()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 364
    goto :goto_2

    .line 363
    :catchall_1
    move-exception v4

    .line 366
    :cond_6
    const/4 v4, 0x0

    :goto_2
    if-lt v4, v3, :cond_7

    .line 367
    const/4 v4, 0x0

    .line 370
    :cond_7
    add-int/lit8 v6, v4, 0x1

    .line 371
    if-lt v6, v3, :cond_8

    .line 372
    return-void

    .line 375
    :cond_8
    nop

    .line 376
    nop

    .line 377
    instance-of v3, p0, Lnet/oneplus/h2launcher/PagedView;

    if-eqz v3, :cond_9

    .line 378
    move-object v2, p0

    check-cast v2, Lnet/oneplus/h2launcher/PagedView;

    .line 379
    invoke-virtual {v2, v4}, Lnet/oneplus/h2launcher/PagedView;->getScrollForPage(I)I

    move-result v5

    .line 380
    invoke-virtual {v2, v6}, Lnet/oneplus/h2launcher/PagedView;->getScrollForPage(I)I

    move-result v2

    .line 381
    move v7, v5

    move v5, v2

    move v2, v7

    goto :goto_3

    .line 382
    :cond_9
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 383
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 384
    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    .line 385
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 386
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    move v7, v5

    move v5, v2

    move v2, v7

    goto :goto_3

    .line 390
    :cond_a
    const/4 v2, 0x0

    :goto_3
    sub-int/2addr v5, v2

    .line 391
    if-nez v5, :cond_b

    .line 392
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 393
    if-gtz v5, :cond_b

    return-void

    .line 396
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 397
    sub-int v2, v3, v2

    int-to-float v2, v2

    int-to-float v4, v5

    div-float/2addr v2, v4

    .line 398
    const v4, 0x3a83126f    # 0.001f

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_c

    .line 400
    return-void

    .line 402
    :cond_c
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v4

    if-lez v5, :cond_d

    .line 403
    const/high16 v2, 0x3f800000    # 1.0f

    .line 406
    :cond_d
    invoke-static {v0}, Lnet/oneplus/h2launcher/util/WallpaperComposer;->getBlurWallpaper(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 407
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_6

    .line 411
    :cond_e
    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_f

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_f

    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_4

    :cond_f
    const/16 v1, 0x438

    .line 413
    :goto_4
    if-eqz v0, :cond_10

    iget v5, v0, Landroid/graphics/Point;->y:I

    if-lez v5, :cond_10

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_5

    :cond_10
    const/16 v0, 0x960

    .line 415
    :goto_5
    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v2, v2, v5

    float-to-int v2, v2

    .line 416
    if-gtz v2, :cond_11

    .line 417
    return-void

    .line 419
    :cond_11
    const/16 v5, 0xff

    if-le v2, v5, :cond_12

    .line 420
    const/16 v2, 0xff

    .line 423
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    .line 424
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v3, v6

    .line 425
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    sub-int/2addr v5, p0

    .line 426
    new-instance p0, Landroid/graphics/Rect;

    add-int/2addr v1, v3

    add-int/2addr v0, v5

    invoke-direct {p0, v3, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 428
    sget-object v0, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sBlurPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_13

    .line 429
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sBlurPaint:Landroid/graphics/Paint;

    .line 431
    :cond_13
    sget-object v0, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 432
    const/4 v0, 0x0

    sget-object v1, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0, p0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 433
    return-void

    .line 408
    :cond_14
    :goto_6
    return-void

    .line 329
    :cond_15
    :goto_7
    return-void
.end method

.method public static ensureBlurWallpaper(Landroid/content/Context;)V
    .locals 2

    .line 267
    if-nez p0, :cond_0

    return-void

    .line 268
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sCachedBlurWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sCachedBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 269
    :cond_1
    sget-boolean v0, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sIsGenerating:Z

    if-eqz v0, :cond_2

    return-void

    .line 271
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sIsGenerating:Z

    .line 272
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/oneplus/h2launcher/util/WallpaperComposer$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/util/WallpaperComposer$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 308
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 309
    return-void
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 36

    .line 457
    move/from16 v0, p1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 458
    move-object/from16 v3, p0

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v3, v2

    .line 463
    :goto_0
    if-ge v0, v1, :cond_1

    .line 464
    const/4 v0, 0x0

    return-object v0

    .line 467
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 468
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 470
    mul-int v2, v6, v10

    new-array v4, v2, [I

    .line 471
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 473
    add-int/lit8 v5, v6, -0x1

    .line 474
    add-int/lit8 v7, v10, -0x1

    .line 475
    nop

    .line 476
    add-int v8, v0, v0

    add-int/2addr v8, v1

    .line 478
    new-array v9, v2, [I

    .line 479
    new-array v11, v2, [I

    .line 480
    new-array v2, v2, [I

    .line 482
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v12

    new-array v12, v12, [I

    .line 484
    add-int/lit8 v13, v8, 0x1

    shr-int/2addr v13, v1

    .line 485
    mul-int v13, v13, v13

    .line 486
    mul-int/lit16 v14, v13, 0x100

    new-array v15, v14, [I

    .line 487
    const/16 v16, 0x1

    const/16 p0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v14, :cond_2

    .line 488
    div-int v17, v1, v13

    aput v17, v15, v1

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 491
    :cond_2
    nop

    .line 493
    const/4 v1, 0x2

    new-array v13, v1, [I

    const/4 v14, 0x3

    aput v14, v13, v16

    aput v8, v13, p0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[I

    .line 498
    add-int/lit8 v14, v0, 0x1

    .line 502
    const/16 p2, 0x2

    const/4 v1, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_2
    if-ge v1, v10, :cond_7

    .line 503
    nop

    .line 504
    move/from16 v19, v1

    neg-int v1, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_3
    const v29, 0xff00

    const/high16 v30, 0xff0000

    if-gt v1, v0, :cond_4

    .line 505
    move-object/from16 v31, v2

    move-object/from16 v32, v3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v17, v3

    aget v3, v4, v3

    .line 506
    add-int v33, v1, v0

    aget-object v33, v13, v33

    .line 507
    and-int v30, v3, v30

    shr-int/lit8 v30, v30, 0x10

    aput v30, v33, v2

    .line 508
    and-int v2, v3, v29

    shr-int/lit8 v2, v2, 0x8

    aput v2, v33, v16

    .line 509
    and-int/lit16 v2, v3, 0xff

    aput v2, v33, p2

    .line 510
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v2, v14, v2

    .line 511
    const/4 v3, 0x0

    aget v29, v33, v3

    mul-int v29, v29, v2

    add-int v28, v28, v29

    .line 512
    aget v3, v33, v16

    mul-int v3, v3, v2

    add-int v20, v20, v3

    .line 513
    aget v3, v33, p2

    mul-int v3, v3, v2

    add-int v21, v21, v3

    .line 514
    if-lez v1, :cond_3

    .line 515
    const/4 v2, 0x0

    aget v3, v33, v2

    add-int v25, v25, v3

    .line 516
    aget v3, v33, v16

    add-int v26, v26, v3

    .line 517
    aget v3, v33, p2

    add-int v27, v27, v3

    goto :goto_4

    .line 519
    :cond_3
    const/4 v2, 0x0

    aget v3, v33, v2

    add-int v22, v22, v3

    .line 520
    aget v2, v33, v16

    add-int v23, v23, v2

    .line 521
    aget v2, v33, p2

    add-int v24, v24, v2

    .line 504
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    const/16 p0, 0x0

    goto :goto_3

    .line 524
    :cond_4
    move-object/from16 v31, v2

    move-object/from16 v32, v3

    .line 526
    move v2, v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v6, :cond_6

    .line 527
    aget v3, v15, v28

    aput v3, v9, v17

    .line 528
    aget v3, v15, v20

    aput v3, v11, v17

    .line 529
    aget v3, v15, v21

    aput v3, v31, v17

    .line 531
    sub-int v28, v28, v22

    .line 532
    sub-int v20, v20, v23

    .line 533
    sub-int v21, v21, v24

    .line 535
    sub-int v3, v2, v0

    add-int/2addr v3, v8

    .line 536
    rem-int/2addr v3, v8

    aget-object v3, v13, v3

    .line 538
    const/16 v33, 0x0

    aget v34, v3, v33

    sub-int v22, v22, v34

    .line 539
    aget v33, v3, v16

    sub-int v23, v23, v33

    .line 540
    aget v33, v3, p2

    sub-int v24, v24, v33

    .line 542
    if-nez v19, :cond_5

    .line 543
    add-int v33, v1, v0

    move/from16 v34, v1

    add-int/lit8 v1, v33, 0x1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v12, v34

    goto :goto_6

    .line 542
    :cond_5
    move/from16 v34, v1

    .line 545
    :goto_6
    aget v1, v12, v34

    add-int v1, v18, v1

    aget v1, v4, v1

    .line 547
    and-int v33, v1, v30

    shr-int/lit8 v33, v33, 0x10

    const/16 v35, 0x0

    aput v33, v3, v35

    .line 548
    and-int v33, v1, v29

    shr-int/lit8 v33, v33, 0x8

    aput v33, v3, v16

    .line 549
    and-int/lit16 v1, v1, 0xff

    aput v1, v3, p2

    .line 551
    aget v1, v3, v35

    add-int v25, v25, v1

    .line 552
    aget v1, v3, v16

    add-int v26, v26, v1

    .line 553
    aget v1, v3, p2

    add-int v27, v27, v1

    .line 555
    add-int v28, v28, v25

    .line 556
    add-int v20, v20, v26

    .line 557
    add-int v21, v21, v27

    .line 559
    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v8

    .line 560
    rem-int v1, v2, v8

    aget-object v1, v13, v1

    .line 562
    const/16 v33, 0x0

    aget v3, v1, v33

    add-int v22, v22, v3

    .line 563
    aget v3, v1, v16

    add-int v23, v23, v3

    .line 564
    aget v3, v1, p2

    add-int v24, v24, v3

    .line 566
    aget v3, v1, v33

    sub-int v25, v25, v3

    .line 567
    aget v3, v1, v16

    sub-int v26, v26, v3

    .line 568
    aget v1, v1, p2

    sub-int v27, v27, v1

    .line 570
    add-int/lit8 v17, v17, 0x1

    .line 526
    add-int/lit8 v1, v34, 0x1

    goto/16 :goto_5

    .line 572
    :cond_6
    add-int v18, v18, v6

    .line 502
    add-int/lit8 v1, v19, 0x1

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    const/16 p0, 0x0

    goto/16 :goto_2

    .line 574
    :cond_7
    move-object/from16 v31, v2

    move-object/from16 v32, v3

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v6, :cond_d

    .line 575
    nop

    .line 576
    neg-int v1, v0

    mul-int v3, v1, v6

    .line 577
    move/from16 v24, v2

    move v2, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_8
    if-gt v1, v0, :cond_a

    .line 578
    const/4 v0, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v25

    add-int v25, v25, v24

    .line 580
    add-int v26, v1, p1

    aget-object v26, v13, v26

    .line 582
    aget v27, v9, v25

    aput v27, v26, v0

    .line 583
    aget v0, v11, v25

    aput v0, v26, v16

    .line 584
    aget v0, v31, v25

    aput v0, v26, p2

    .line 586
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v0, v14, v0

    .line 588
    aget v27, v9, v25

    mul-int v27, v27, v0

    add-int v23, v23, v27

    .line 589
    aget v27, v11, v25

    mul-int v27, v27, v0

    add-int v3, v3, v27

    .line 590
    aget v25, v31, v25

    mul-int v25, v25, v0

    add-int v5, v5, v25

    .line 592
    if-lez v1, :cond_8

    .line 593
    const/16 v33, 0x0

    aget v0, v26, v33

    add-int v20, v20, v0

    .line 594
    aget v0, v26, v16

    add-int v21, v21, v0

    .line 595
    aget v0, v26, p2

    add-int v22, v22, v0

    goto :goto_9

    .line 597
    :cond_8
    const/16 v33, 0x0

    aget v0, v26, v33

    add-int v17, v17, v0

    .line 598
    aget v0, v26, v16

    add-int v18, v18, v0

    .line 599
    aget v0, v26, p2

    add-int v19, v19, v0

    .line 602
    :goto_9
    if-ge v1, v7, :cond_9

    .line 603
    add-int/2addr v2, v6

    .line 577
    :cond_9
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, p1

    goto :goto_8

    .line 606
    :cond_a
    nop

    .line 607
    nop

    .line 608
    move/from16 v1, v23

    move/from16 v0, v24

    const/4 v2, 0x0

    move/from16 v23, p1

    :goto_a
    if-ge v2, v10, :cond_c

    .line 609
    const/high16 v25, -0x1000000

    aget v26, v4, v0

    and-int v25, v26, v25

    aget v26, v15, v1

    shl-int/lit8 v26, v26, 0x10

    or-int v25, v25, v26

    aget v26, v15, v3

    shl-int/lit8 v26, v26, 0x8

    or-int v25, v25, v26

    aget v26, v15, v5

    or-int v25, v25, v26

    aput v25, v4, v0

    .line 611
    sub-int v1, v1, v17

    .line 612
    sub-int v3, v3, v18

    .line 613
    sub-int v5, v5, v19

    .line 615
    sub-int v25, v23, p1

    add-int v25, v25, v8

    .line 616
    rem-int v25, v25, v8

    aget-object v25, v13, v25

    .line 618
    const/16 v33, 0x0

    aget v26, v25, v33

    sub-int v17, v17, v26

    .line 619
    aget v26, v25, v16

    sub-int v18, v18, v26

    .line 620
    aget v26, v25, p2

    sub-int v19, v19, v26

    .line 622
    if-nez v24, :cond_b

    .line 623
    move/from16 v26, v0

    add-int v0, v2, v14

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v0, v0, v6

    aput v0, v12, v2

    goto :goto_b

    .line 622
    :cond_b
    move/from16 v26, v0

    .line 625
    :goto_b
    aget v0, v12, v2

    add-int v0, v24, v0

    .line 627
    aget v27, v9, v0

    const/16 v33, 0x0

    aput v27, v25, v33

    .line 628
    aget v27, v11, v0

    aput v27, v25, v16

    .line 629
    aget v0, v31, v0

    aput v0, v25, p2

    .line 631
    aget v0, v25, v33

    add-int v20, v20, v0

    .line 632
    aget v0, v25, v16

    add-int v21, v21, v0

    .line 633
    aget v0, v25, p2

    add-int v22, v22, v0

    .line 635
    add-int v1, v1, v20

    .line 636
    add-int v3, v3, v21

    .line 637
    add-int v5, v5, v22

    .line 639
    add-int/lit8 v23, v23, 0x1

    rem-int v23, v23, v8

    .line 640
    aget-object v0, v13, v23

    .line 642
    const/16 v33, 0x0

    aget v25, v0, v33

    add-int v17, v17, v25

    .line 643
    aget v25, v0, v16

    add-int v18, v18, v25

    .line 644
    aget v25, v0, p2

    add-int v19, v19, v25

    .line 646
    aget v25, v0, v33

    sub-int v20, v20, v25

    .line 647
    aget v25, v0, v16

    sub-int v21, v21, v25

    .line 648
    aget v0, v0, p2

    sub-int v22, v22, v0

    .line 650
    add-int v0, v26, v6

    .line 608
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    .line 574
    :cond_c
    const/16 v33, 0x0

    add-int/lit8 v2, v24, 0x1

    move/from16 v0, p1

    goto/16 :goto_7

    .line 654
    :cond_d
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move v9, v6

    move-object/from16 v3, v32

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 655
    return-object v3
.end method

.method public static generateBlurWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 17

    .line 134
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "WallpaperComposer"

    if-eqz v2, :cond_b

    if-nez v1, :cond_0

    const/16 v16, 0x0

    goto/16 :goto_c

    .line 139
    :cond_0
    const/4 v5, 0x1

    :try_start_0
    invoke-static {v1, v5}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_1

    iget v6, v0, Landroid/graphics/Point;->x:I

    if-lez v6, :cond_1

    iget v6, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    const/16 v6, 0x438

    .line 141
    :goto_0
    if-eqz v0, :cond_2

    iget v7, v0, Landroid/graphics/Point;->y:I

    if-lez v7, :cond_2

    iget v0, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move v7, v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x960

    const/16 v7, 0x960

    .line 143
    :goto_1
    nop

    .line 144
    if-nez p2, :cond_4

    .line 146
    :try_start_1
    invoke-static {v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getBlurWallpaperSettings(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_3

    iget v8, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    if-eqz v8, :cond_3

    .line 148
    iget v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 151
    :cond_3
    move/from16 v0, p2

    :goto_2
    goto :goto_3

    .line 150
    :catchall_0
    move-exception v0

    .line 153
    :cond_4
    move/from16 v0, p2

    :goto_3
    if-nez v0, :cond_5

    .line 154
    const v0, -0xdfd7b0

    const v8, -0xdfd7b0

    goto :goto_4

    .line 153
    :cond_5
    move v8, v0

    .line 157
    :goto_4
    :try_start_2
    div-int/lit8 v0, v6, 0x4

    const/16 v9, 0x10e

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 158
    div-int/lit8 v9, v7, 0x4

    const/16 v10, 0x258

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 160
    int-to-float v6, v6

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 161
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 162
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 163
    int-to-float v11, v7

    int-to-float v12, v10

    div-float v13, v11, v12

    .line 166
    const/4 v14, 0x2

    const/4 v15, 0x0

    cmpl-float v13, v13, v6

    if-lez v13, :cond_6

    .line 167
    nop

    .line 168
    mul-float v12, v12, v6

    float-to-int v6, v12

    .line 169
    sub-int/2addr v7, v6

    div-int/2addr v7, v14

    .line 170
    move v11, v10

    const/4 v10, 0x0

    goto :goto_5

    .line 172
    :cond_6
    nop

    .line 173
    div-float/2addr v11, v6

    float-to-int v6, v11

    .line 174
    nop

    .line 175
    sub-int/2addr v10, v6

    div-int/2addr v10, v14

    move v11, v6

    move v6, v7

    const/4 v7, 0x0

    .line 178
    :goto_5
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v9, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 179
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 180
    const/16 v16, 0x0

    :try_start_3
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v6, v7

    add-int/2addr v11, v10

    invoke-direct {v4, v7, v10, v6, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 181
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v15, v15, v0, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 182
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v14}, Landroid/graphics/Paint;-><init>(I)V

    .line 183
    invoke-virtual {v13, v2, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 185
    const/16 v2, 0xe

    invoke-static {v12, v2, v5}, Lnet/oneplus/h2launcher/util/WallpaperComposer;->fastBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 186
    if-nez v2, :cond_7

    .line 187
    goto :goto_6

    .line 186
    :cond_7
    move-object v12, v2

    .line 191
    :goto_6
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 192
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 193
    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 194
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v14}, Landroid/graphics/Paint;-><init>(I)V

    .line 195
    const/16 v5, 0xf2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 196
    const/4 v5, 0x0

    invoke-virtual {v0, v12, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 198
    if-eq v12, v2, :cond_8

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 199
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v4, "blur_wallpaper"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 204
    nop

    .line 206
    :try_start_4
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 207
    :try_start_5
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5c

    invoke-virtual {v2, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 208
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved blur_wallpaper successfully: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 213
    nop

    .line 214
    :goto_7
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_9

    .line 210
    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v1, v16

    .line 211
    :goto_8
    :try_start_7
    const-string v4, "Failed to save blur_wallpaper file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 213
    if-eqz v1, :cond_9

    .line 214
    goto :goto_7

    .line 218
    :cond_9
    :goto_9
    :try_start_8
    sput-object v2, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sCachedBlurWallpaper:Landroid/graphics/Bitmap;

    .line 219
    sput v8, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sCachedMaskColor:I

    .line 221
    invoke-static {}, Lnet/oneplus/h2launcher/util/WallpaperComposer;->notifyWorkspaceInvalidate()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 222
    return-object v2

    .line 213
    :catchall_4
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_a

    .line 214
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    .line 216
    :cond_a
    :goto_a
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 223
    :catchall_6
    move-exception v0

    goto :goto_b

    :catchall_7
    move-exception v0

    const/16 v16, 0x0

    .line 224
    :goto_b
    const-string v1, "Failed to generate blur wallpaper"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    return-object v16

    .line 134
    :cond_b
    const/16 v16, 0x0

    .line 135
    :goto_c
    return-object v16
.end method

.method public static getBlurWallpaper(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7

    .line 230
    const-string v0, "blur_radius_ver"

    sget-object v1, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sCachedBlurWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sCachedBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    sget-object p0, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sCachedBlurWallpaper:Landroid/graphics/Bitmap;

    return-object p0

    .line 234
    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 235
    return-object v1

    .line 239
    :cond_1
    :try_start_0
    const-string v2, "h2_blur_pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 240
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "blur_wallpaper"

    const/16 v5, 0xe

    if-eq v3, v5, :cond_3

    .line 241
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 243
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 245
    :cond_2
    sput-object v1, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sCachedBlurWallpaper:Landroid/graphics/Bitmap;

    .line 246
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 247
    goto :goto_0

    .line 248
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_4

    .line 252
    sput-object v0, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sCachedBlurWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    return-object v0

    .line 259
    :cond_4
    :goto_0
    goto :goto_1

    .line 257
    :catchall_0
    move-exception v0

    .line 258
    const-string v1, "WallpaperComposer"

    const-string v2, "failed to decode blur_wallpaper file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    :goto_1
    invoke-static {p0}, Lnet/oneplus/h2launcher/util/WallpaperComposer;->ensureBlurWallpaper(Landroid/content/Context;)V

    .line 263
    sget-object p0, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sCachedBlurWallpaper:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private static notifyWorkspaceInvalidate()V
    .locals 5

    .line 437
    :try_start_0
    const-string v0, "net.oneplus.h2launcher.LauncherAppState"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 438
    const-string v1, "getInstanceNoCreate"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 439
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 440
    if-eqz v1, :cond_0

    .line 441
    const-string v3, "getLauncher"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 442
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getWorkspace"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 445
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 446
    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :cond_0
    goto :goto_0

    .line 451
    :catchall_0
    move-exception v0

    .line 453
    :goto_0
    return-void
.end method

.method public static onBlurSettingsChanged(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;)V
    .locals 2

    .line 318
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 319
    :cond_0
    sget v0, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sCachedMaskColor:I

    iget v1, p1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    if-eq v0, v1, :cond_1

    .line 320
    iget p1, p1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    sput p1, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sCachedMaskColor:I

    .line 321
    invoke-static {p0}, Lnet/oneplus/h2launcher/util/WallpaperComposer;->reloadBlurWallpaper(Landroid/content/Context;)V

    goto :goto_0

    .line 323
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/util/WallpaperComposer;->notifyWorkspaceInvalidate()V

    .line 325
    :goto_0
    return-void

    .line 318
    :cond_2
    :goto_1
    return-void
.end method

.method public static reloadBlurWallpaper(Landroid/content/Context;)V
    .locals 1

    .line 312
    if-nez p0, :cond_0

    return-void

    .line 313
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sCachedBlurWallpaper:Landroid/graphics/Bitmap;

    .line 314
    invoke-static {p0}, Lnet/oneplus/h2launcher/util/WallpaperComposer;->ensureBlurWallpaper(Landroid/content/Context;)V

    .line 315
    return-void
.end method
