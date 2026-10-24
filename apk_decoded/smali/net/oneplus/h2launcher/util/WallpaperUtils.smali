.class public final Lnet/oneplus/h2launcher/util/WallpaperUtils;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    }
.end annotation


# static fields
.field public static final LEGACY_ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

.field private static final MAX_WALLPAPER_BITMAP_SIZE:I = 0x1800

.field public static final ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

.field public static final ONEPLUS_BLUR_WALLPAPER2:Landroid/content/ComponentName;

.field public static final ONEPLUS_LIVE_WALLPAPER:Landroid/content/ComponentName;

.field private static final ONEPLUS_LIVE_WALLPAPER_URI:Landroid/net/Uri;

.field public static final TAG:Ljava/lang/String;

.field private static final WALLPAPER_HEIGHT_KEY:Ljava/lang/String; = "wallpaper.height"

.field public static final WALLPAPER_NAME:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_SCREENS_SPAN:F = 2.0f

.field private static final WALLPAPER_WIDTH_KEY:Ljava/lang/String; = "wallpaper.width"

.field private static sDefaultWallpaperSize:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    const-class v0, Lnet/oneplus/h2launcher/util/WallpaperUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    .line 90
    const-string v0, "net.oneplus.h2launcher/.wallpaper.BlurWallpaper"

    .line 91
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 90
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    sput-object v0, Lnet/oneplus/h2launcher/util/WallpaperUtils;->ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    .line 92
    const-string v0, "com.oneplus.wallpaper/.BlurWallpaper"

    .line 93
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 92
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    sput-object v0, Lnet/oneplus/h2launcher/util/WallpaperUtils;->LEGACY_ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    .line 94
    const-string v0, "net.oneplus.launcher/.wallpaper.BlurWallpaper"

    .line 95
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 94
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    sput-object v0, Lnet/oneplus/h2launcher/util/WallpaperUtils;->ONEPLUS_BLUR_WALLPAPER2:Landroid/content/ComponentName;

    .line 96
    const-string v0, "com.oneplus.wallpaper/.LiveWallpaper"

    .line 97
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 96
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    sput-object v0, Lnet/oneplus/h2launcher/util/WallpaperUtils;->ONEPLUS_LIVE_WALLPAPER:Landroid/content/ComponentName;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/util/WallpaperUtils;->ONEPLUS_LIVE_WALLPAPER:Landroid/content/ComponentName;

    .line 99
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/image/wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/util/WallpaperUtils;->ONEPLUS_LIVE_WALLPAPER_URI:Landroid/net/Uri;

    .line 98
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "requiredWidth"    # I
    .param p2, "requiredHeight"    # I

    .prologue
    const/16 v6, 0x1800

    .line 440
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 441
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 442
    .local v4, "width":I
    const/4 v3, 0x1

    .line 443
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_3

    .line 444
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 445
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 446
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p2, :cond_1

    div-int v5, v1, v3

    if-gt v5, p1, :cond_2

    :cond_1
    div-int v5, v0, v3

    if-gt v5, v6, :cond_2

    div-int v5, v1, v3

    if-le v5, v6, :cond_3

    .line 450
    :cond_2
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 453
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_3
    return v3
.end method

.method public static createBackground(Landroid/content/Context;Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;)Landroid/graphics/Bitmap;
    .locals 32
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;

    .prologue
    .line 303
    if-nez p1, :cond_0

    .line 304
    new-instance v26, Ljava/security/InvalidParameterException;

    const-string v27, "params can\'t be null"

    invoke-direct/range {v26 .. v27}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 307
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->uri:Landroid/net/Uri;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    .line 308
    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->uri:Landroid/net/Uri;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapUtils;->getRotationFromExif(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->rotation:I

    .line 309
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->uri:Landroid/net/Uri;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .local v9, "is":Ljava/io/InputStream;
    const/16 v27, 0x0

    .line 310
    :try_start_1
    invoke-static {v9}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->readStream(Ljava/io/InputStream;)[B

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->imageBytes:[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 311
    if-eqz v9, :cond_1

    if-eqz v27, :cond_3

    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 316
    .end local v9    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v6

    .line 317
    .local v6, "displaySize":Landroid/graphics/Point;
    move-object/from16 v0, p1

    iget v0, v0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->orientation:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    sget v3, Lnet/oneplus/h2launcher/crop/view/CropImageView;->LANDSCAPE_IMAGE_ASPECT_RATIO:F

    .line 319
    .local v3, "aspectRatio":F
    :goto_1
    iget v14, v6, Landroid/graphics/Point;->x:I

    .line 320
    .local v14, "requiredWidth":I
    move-object/from16 v0, p1

    iget v0, v0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->screen:I

    move/from16 v26, v0

    if-nez v26, :cond_7

    iget v13, v6, Landroid/graphics/Point;->y:I

    .line 322
    .local v13, "requiredHeight":I
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v14, v13}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getBitmapOption(Landroid/content/Context;Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    .line 323
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v26, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v27, "required: W=%d, H=%d"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v26 .. v28}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    move-object/from16 v0, p1

    iget-object v8, v0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->imageBytes:[B

    .line 326
    .local v8, "imageBytes":[B
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 329
    .local v16, "resources":Landroid/content/res/Resources;
    if-eqz v8, :cond_8

    .line 330
    const/16 v26, 0x0

    :try_start_3
    array-length v0, v8

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v8, v0, v1, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 335
    .local v23, "source":Landroid/graphics/Bitmap;
    :goto_3
    if-nez v23, :cond_9

    .line 336
    sget-object v26, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v27, "source bitmap is null"

    invoke-static/range {v26 .. v27}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4

    .line 337
    const/4 v4, 0x0

    .line 402
    .end local v23    # "source":Landroid/graphics/Bitmap;
    :cond_2
    :goto_4
    return-object v4

    .line 311
    .end local v3    # "aspectRatio":F
    .end local v6    # "displaySize":Landroid/graphics/Point;
    .end local v8    # "imageBytes":[B
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "requiredHeight":I
    .end local v14    # "requiredWidth":I
    .end local v16    # "resources":Landroid/content/res/Resources;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v26

    :try_start_4
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .end local v9    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v7

    .line 312
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 311
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v9    # "is":Ljava/io/InputStream;
    :cond_3
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 309
    :catch_2
    move-exception v26

    :try_start_6
    throw v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 311
    :catchall_0
    move-exception v27

    move-object/from16 v31, v27

    move-object/from16 v27, v26

    move-object/from16 v26, v31

    :goto_5
    if-eqz v9, :cond_4

    if-eqz v27, :cond_5

    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_4
    :goto_6
    :try_start_8
    throw v26

    :catch_3
    move-exception v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_6

    .line 317
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v6    # "displaySize":Landroid/graphics/Point;
    :cond_6
    sget v3, Lnet/oneplus/h2launcher/crop/view/CropImageView;->PORTRAIT_IMAGE_ASPECT_RATIO:F

    goto/16 :goto_1

    .line 320
    .restart local v3    # "aspectRatio":F
    .restart local v14    # "requiredWidth":I
    :cond_7
    int-to-float v0, v14

    move/from16 v26, v0

    div-float v26, v26, v3

    move/from16 v0, v26

    float-to-int v13, v0

    goto/16 :goto_2

    .line 332
    .restart local v8    # "imageBytes":[B
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "requiredHeight":I
    .restart local v16    # "resources":Landroid/content/res/Resources;
    :cond_8
    :try_start_9
    move-object/from16 v0, p1

    iget v0, v0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->resId:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-static {v0, v1, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v23

    .restart local v23    # "source":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 339
    :cond_9
    sget-object v26, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v27, "source: W=%d, H=%d, sampleSize=%d"

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    .line 340
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x2

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    .line 339
    invoke-static/range {v26 .. v28}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    move-object/from16 v0, p1

    iget v0, v0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->rotation:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 344
    .local v18, "rotated":Landroid/graphics/Bitmap;
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_a

    .line 345
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->recycle()V

    .line 349
    :cond_a
    move-object/from16 v0, v18

    invoke-static {v0, v14, v13}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/util/Pair;

    move-result-object v17

    .line 350
    .local v17, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/Float;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 351
    .local v5, "currentScale":F
    move-object/from16 v0, v17

    iget-object v15, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Landroid/graphics/Bitmap;

    .line 352
    .local v15, "resized":Landroid/graphics/Bitmap;
    move-object/from16 v0, v18

    if-eq v15, v0, :cond_b

    .line 353
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 355
    :cond_b
    sget-object v26, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v27, "currentScale=%f"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v26 .. v28}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    int-to-float v0, v14

    move/from16 v26, v0

    mul-float v26, v26, v5

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 359
    .local v21, "scaledRequiredWidth":I
    int-to-float v0, v13

    move/from16 v26, v0

    mul-float v26, v26, v5

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 360
    .local v20, "scaledRequiredHeight":I
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v15, v0, v1, v2}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->cropBitmap(Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 361
    .local v4, "cropped":Landroid/graphics/Bitmap;
    move-object/from16 v0, v18

    if-eq v4, v0, :cond_c

    .line 362
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 366
    :cond_c
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->reduceSize:Z

    move/from16 v26, v0

    if-nez v26, :cond_10

    .line 367
    const/high16 v26, 0x3f800000    # 1.0f

    cmpl-float v26, v5, v26

    if-eqz v26, :cond_2

    .line 370
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v26, v26, v5

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v25

    .local v25, "width":I
    move/from16 v25, v14

    .line 375
    :goto_8
    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v4, v0, v13, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 376
    .local v24, "wallpaper":Landroid/graphics/Bitmap;
    move-object/from16 v0, v24

    if-eq v0, v4, :cond_d

    .line 377
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    move-object/from16 v4, v24

    .line 379
    goto/16 :goto_4

    .line 382
    .end local v25    # "width":I
    :cond_10
    const v26, 0x7f0c00e4

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 383
    .local v22, "scaledWidth":I
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v26, v26, v3

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v19, v0

    .line 384
    .local v19, "scaledHeight":I
    const/16 v26, 0x0

    move/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v26

    invoke-static {v4, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 385
    .local v12, "preview":Landroid/graphics/Bitmap;
    if-eq v12, v4, :cond_11

    .line 386
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_4

    :cond_11
    move-object v4, v12

    .line 388
    goto/16 :goto_4

    .line 390
    .end local v4    # "cropped":Landroid/graphics/Bitmap;
    .end local v5    # "currentScale":F
    .end local v12    # "preview":Landroid/graphics/Bitmap;
    .end local v15    # "resized":Landroid/graphics/Bitmap;
    .end local v17    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Landroid/graphics/Bitmap;>;"
    .end local v18    # "rotated":Landroid/graphics/Bitmap;
    .end local v19    # "scaledHeight":I
    .end local v20    # "scaledRequiredHeight":I
    .end local v21    # "scaledRequiredWidth":I
    .end local v22    # "scaledWidth":I
    .end local v23    # "source":Landroid/graphics/Bitmap;
    :catch_4
    move-exception v7

    .line 391
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 392
    sget-object v26, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v27, "Failed to create wallpaper, error: %s"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v26 .. v28}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v26

    new-instance v27, Lnet/oneplus/h2launcher/util/WallpaperUtils$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/util/WallpaperUtils$1;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v26 .. v27}, Lnet/oneplus/h2launcher/util/TaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 402
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 311
    .end local v3    # "aspectRatio":F
    .end local v6    # "displaySize":Landroid/graphics/Point;
    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    .end local v8    # "imageBytes":[B
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "requiredHeight":I
    .end local v14    # "requiredWidth":I
    .end local v16    # "resources":Landroid/content/res/Resources;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v26

    goto/16 :goto_5
.end method

.method public static createThumbnail(Landroid/util/Size;Landroid/content/Context;Landroid/net/Uri;[BLandroid/content/res/Resources;IIZ)Landroid/graphics/Bitmap;
    .locals 24
    .param p0, "size"    # Landroid/util/Size;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "imageBytes"    # [B
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "resId"    # I
    .param p6, "rotation"    # I
    .param p7, "leftAligned"    # Z

    .prologue
    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 239
    .local v6, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/util/Size;->getHeight()I

    move-result v7

    .line 242
    .local v7, "height":I
    if-eqz p2, :cond_1

    .line 243
    new-instance v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p6

    invoke-direct/range {v1 .. v11}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZZLjava/lang/Runnable;)V

    .line 252
    .local v1, "cropTask":Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;
    :goto_0
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->getImageBounds()Landroid/graphics/Point;

    move-result-object v20

    .line 253
    .local v20, "bounds":Landroid/graphics/Point;
    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-eqz v2, :cond_0

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-nez v2, :cond_3

    .line 254
    :cond_0
    const/4 v2, 0x0

    .line 271
    :goto_1
    return-object v2

    .line 245
    .end local v1    # "cropTask":Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;
    .end local v20    # "bounds":Landroid/graphics/Point;
    :cond_1
    if-eqz p3, :cond_2

    .line 246
    new-instance v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v2, v1

    move-object/from16 v3, p3

    move/from16 v5, p6

    invoke-direct/range {v2 .. v11}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;-><init>([BLandroid/graphics/RectF;IIIZZZLjava/lang/Runnable;)V

    .restart local v1    # "cropTask":Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;
    goto :goto_0

    .line 249
    .end local v1    # "cropTask":Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;
    :cond_2
    new-instance v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v8, v1

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v13, p6

    move v14, v6

    move v15, v7

    invoke-direct/range {v8 .. v19}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;-><init>(Landroid/content/Context;Landroid/content/res/Resources;ILandroid/graphics/RectF;IIIZZZLjava/lang/Runnable;)V

    .restart local v1    # "cropTask":Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;
    goto :goto_0

    .line 257
    .restart local v20    # "bounds":Landroid/graphics/Point;
    :cond_3
    new-instance v22, Landroid/graphics/Matrix;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Matrix;-><init>()V

    .line 258
    .local v22, "rotateMatrix":Landroid/graphics/Matrix;
    move/from16 v0, p6

    int-to-float v2, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 259
    const/4 v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v23, v0

    const/4 v2, 0x0

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v23, v2

    const/4 v2, 0x1

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v23, v2

    .line 260
    .local v23, "rotatedBounds":[F
    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 261
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v23, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v23, v2

    .line 262
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v23, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v23, v2

    .line 264
    const/4 v2, 0x0

    aget v2, v23, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, v23, v3

    float-to-int v3, v3

    move/from16 v0, p7

    invoke-static {v2, v3, v6, v7, v0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getMaxCropRect(IIIIZ)Landroid/graphics/RectF;

    move-result-object v21

    .line 266
    .local v21, "cropRect":Landroid/graphics/RectF;
    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->setCropBounds(Landroid/graphics/RectF;)V

    .line 268
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->cropBitmap()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 269
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_1

    .line 271
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private static cropBitmap(Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "params"    # Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    .param p2, "requiredWidth"    # I
    .param p3, "requiredHeight"    # I

    .prologue
    .line 489
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 490
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move v3, p2

    .line 493
    .local v3, "maxWidth":I
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 494
    .local v1, "cropWidth":I
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 495
    .local v0, "cropHeight":I
    if-ne v4, v1, :cond_1

    if-ne v2, v0, :cond_1

    .line 503
    .end local p0    # "source":Landroid/graphics/Bitmap;
    :goto_1
    return-object p0

    .end local v0    # "cropHeight":I
    .end local v1    # "cropWidth":I
    .end local v3    # "maxWidth":I
    .restart local p0    # "source":Landroid/graphics/Bitmap;
    :cond_0
    move v3, p2

    .line 491
    goto :goto_0

    .line 499
    .restart local v0    # "cropHeight":I
    .restart local v1    # "cropWidth":I
    .restart local v3    # "maxWidth":I
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v1, 0x2

    sub-int v5, v7, v8

    .line 500
    .local v5, "x":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v0, 0x2

    sub-int v6, v7, v8

    .line 501
    .local v6, "y":I
    sget-object v7, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v8, "crop: screen=%d, x=%d, y=%d, cropW=%d, cropH=%d"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p1, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->screen:I

    .line 502
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 501
    invoke-static {v7, v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    invoke-static {p0, v5, v6, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1
.end method

.method public static getBitmapOption(Landroid/content/Context;Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;II)Landroid/graphics/BitmapFactory$Options;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    .param p2, "requiredWidth"    # I
    .param p3, "requiredHeight"    # I

    .prologue
    const/4 v4, 0x0

    .line 420
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 421
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 424
    iget-object v0, p1, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->imageBytes:[B

    .line 425
    .local v0, "imageBytes":[B
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 426
    .local v2, "resources":Landroid/content/res/Resources;
    iget-object v3, p1, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->imageBytes:[B

    if-eqz v3, :cond_0

    .line 427
    array-length v3, v0

    invoke-static {v0, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 433
    :goto_0
    invoke-static {v1, p2, p3}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->calculateSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 434
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 435
    return-object v1

    .line 429
    :cond_0
    iget v3, p1, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->resId:I

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private static getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "windowManager"    # Landroid/view/WindowManager;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 162
    sget-object v7, Lnet/oneplus/h2launcher/util/WallpaperUtils;->sDefaultWallpaperSize:Landroid/graphics/Point;

    if-nez v7, :cond_1

    .line 163
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 164
    .local v5, "minDims":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 165
    .local v3, "maxDims":Landroid/graphics/Point;
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v5, v3}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 167
    iget v7, v3, Landroid/graphics/Point;->x:I

    iget v8, v3, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 168
    .local v2, "maxDim":I
    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v8, v5, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 170
    .local v4, "minDim":I
    sget-boolean v7, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v7, :cond_0

    .line 171
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 172
    .local v6, "realSize":Landroid/graphics/Point;
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 173
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 174
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 180
    .end local v6    # "realSize":Landroid/graphics/Point;
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v8, 0x2d0

    if-lt v7, v8, :cond_2

    .line 181
    int-to-float v7, v2

    invoke-static {v2, v4}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v1, v7

    .line 182
    .local v1, "defaultWidth":I
    move v0, v2

    .line 187
    .local v0, "defaultHeight":I
    :goto_0
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    sput-object v7, Lnet/oneplus/h2launcher/util/WallpaperUtils;->sDefaultWallpaperSize:Landroid/graphics/Point;

    .line 189
    .end local v0    # "defaultHeight":I
    .end local v1    # "defaultWidth":I
    .end local v2    # "maxDim":I
    .end local v3    # "maxDims":Landroid/graphics/Point;
    .end local v4    # "minDim":I
    .end local v5    # "minDims":Landroid/graphics/Point;
    :cond_1
    sget-object v7, Lnet/oneplus/h2launcher/util/WallpaperUtils;->sDefaultWallpaperSize:Landroid/graphics/Point;

    return-object v7

    .line 184
    .restart local v2    # "maxDim":I
    .restart local v3    # "maxDims":Landroid/graphics/Point;
    .restart local v4    # "minDim":I
    .restart local v5    # "minDims":Landroid/graphics/Point;
    :cond_2
    int-to-float v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 185
    .restart local v1    # "defaultWidth":I
    move v0, v2

    .restart local v0    # "defaultHeight":I
    goto :goto_0
.end method

.method public static getDominantColor(Landroid/graphics/Bitmap;)I
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 710
    const/4 v2, 0x1

    .line 711
    .local v2, "scaleSize":I
    const/high16 v0, -0x1000000

    .line 712
    .local v0, "color":I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lt v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v4, v5, :cond_1

    .line 713
    :cond_0
    sget-object v4, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v5, "invalid bitmap"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 721
    .end local v0    # "color":I
    .local v1, "color":I
    :goto_0
    return v1

    .line 717
    .end local v1    # "color":I
    .restart local v0    # "color":I
    :cond_1
    invoke-static {p0, v5, v5, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 718
    .local v3, "scaledBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    .line 719
    invoke-virtual {v3, v6, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    :cond_2
    move v1, v0

    .line 721
    .end local v0    # "color":I
    .restart local v1    # "color":I
    goto :goto_0
.end method

.method public static getLandscapeWallpaperAspectRatio()F
    .locals 3

    .prologue
    .line 761
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->getDeviceTag()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 771
    const v0, 0x3f90e7d9

    :goto_1
    return v0

    .line 761
    :sswitch_0
    const-string v2, "15801"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "15811"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "16859"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "17801"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "17819"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 765
    :pswitch_0
    const v0, 0x3fb08d3e

    goto :goto_1

    .line 767
    :pswitch_1
    const v0, 0x3f9da0d7

    goto :goto_1

    .line 769
    :pswitch_2
    const v0, 0x3f94ce1f

    goto :goto_1

    .line 761
    nop

    :sswitch_data_0
    .sparse-switch
        0x2cb6f95 -> :sswitch_0
        0x2cb6fb4 -> :sswitch_1
        0x2cbe497 -> :sswitch_2
        0x2cc5853 -> :sswitch_3
        0x2cc587a -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getMaxCropRect(IIIIZ)Landroid/graphics/RectF;
    .locals 6
    .param p0, "inWidth"    # I
    .param p1, "inHeight"    # I
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "leftAligned"    # Z

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 277
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 279
    .local v0, "cropRect":Landroid/graphics/RectF;
    int-to-float v1, p0

    int-to-float v2, p1

    div-float/2addr v1, v2

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 280
    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 281
    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 282
    int-to-float v1, p0

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    int-to-float v3, p1

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 283
    int-to-float v1, p0

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 284
    if-eqz p4, :cond_0

    .line 285
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 286
    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 294
    :cond_0
    :goto_0
    return-object v0

    .line 289
    :cond_1
    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 290
    int-to-float v1, p0

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 291
    int-to-float v1, p1

    int-to-float v2, p3

    int-to-float v3, p2

    div-float/2addr v2, v3

    int-to-float v3, p0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 292
    int-to-float v1, p1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public static getOnePlusBlurWallpaperFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 555
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getOnePlusLiveWallpaperBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 849
    const/4 v0, 0x0

    .line 850
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lnet/oneplus/h2launcher/util/WallpaperUtils;->ONEPLUS_LIVE_WALLPAPER_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .local v2, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 851
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 852
    if-eqz v2, :cond_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 855
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 852
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v2    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 853
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOnePlusLiveWallpaperBitmap# error loading wallpaper image, error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 852
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 850
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 852
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_1
    :try_start_7
    throw v3

    :catch_3
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method private static getTransparentColor(I)I
    .locals 4
    .param p0, "color"    # I

    .prologue
    .line 640
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 641
    .local v2, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 642
    .local v1, "green":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 643
    .local v0, "blue":I
    const/4 v3, 0x0

    invoke-static {v3, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method public static getWallpaperMd5Hash(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 15
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v12, 0x0

    .line 870
    const-string v6, ""

    .line 871
    .local v6, "hash":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 872
    :cond_0
    sget-object v12, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v13, "invalid bitmap for md5 hash"

    invoke-static {v12, v13}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v6

    .line 901
    .end local v6    # "hash":Ljava/lang/String;
    .local v7, "hash":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 874
    .end local v7    # "hash":Ljava/lang/String;
    .restart local v6    # "hash":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-lez v13, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-gtz v13, :cond_3

    .line 875
    :cond_2
    sget-object v12, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "invalid bitmap(width="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", height="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") for md5 hash"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v6

    .line 876
    .end local v6    # "hash":Ljava/lang/String;
    .restart local v7    # "hash":Ljava/lang/String;
    goto :goto_0

    .line 879
    .end local v7    # "hash":Ljava/lang/String;
    .restart local v6    # "hash":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 881
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    div-int/lit8 v11, v13, 0x8

    .local v11, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v5, v13, 0x8

    .line 882
    .local v5, "h":I
    const/4 v13, 0x0

    invoke-static {p0, v11, v5, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 883
    .local v10, "scaled":Landroid/graphics/Bitmap;
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x19

    invoke-virtual {v10, v13, v14, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :try_start_1
    const-string v13, "MD5"

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 892
    .local v2, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/security/MessageDigest;->update([B)V

    .line 893
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 894
    .local v9, "messageDigest":[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 895
    .local v8, "hexString":Ljava/lang/StringBuilder;
    array-length v13, v9

    :goto_1
    if-ge v12, v13, :cond_4

    aget-byte v0, v9, v12

    .line 896
    .local v0, "aMessageDigest":B
    and-int/lit16 v14, v0, 0xff

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 895
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 884
    .end local v0    # "aMessageDigest":B
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "h":I
    .end local v8    # "hexString":Ljava/lang/StringBuilder;
    .end local v9    # "messageDigest":[B
    .end local v10    # "scaled":Landroid/graphics/Bitmap;
    .end local v11    # "w":I
    :catch_0
    move-exception v4

    .line 885
    .local v4, "error":Ljava/lang/OutOfMemoryError;
    sget-object v12, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v13, "failed to create scaled bitmap for md5 hash"

    invoke-static {v12, v13}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v6

    .line 886
    .end local v6    # "hash":Ljava/lang/String;
    .restart local v7    # "hash":Ljava/lang/String;
    goto/16 :goto_0

    .line 897
    .end local v4    # "error":Ljava/lang/OutOfMemoryError;
    .end local v7    # "hash":Ljava/lang/String;
    .restart local v2    # "digest":Ljava/security/MessageDigest;
    .restart local v5    # "h":I
    .restart local v6    # "hash":Ljava/lang/String;
    .restart local v8    # "hexString":Ljava/lang/StringBuilder;
    .restart local v9    # "messageDigest":[B
    .restart local v10    # "scaled":Landroid/graphics/Bitmap;
    .restart local v11    # "w":I
    :cond_4
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v8    # "hexString":Ljava/lang/StringBuilder;
    .end local v9    # "messageDigest":[B
    :goto_2
    move-object v7, v6

    .line 901
    .end local v6    # "hash":Ljava/lang/String;
    .restart local v7    # "hash":Ljava/lang/String;
    goto/16 :goto_0

    .line 898
    .end local v7    # "hash":Ljava/lang/String;
    .restart local v6    # "hash":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 899
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v12, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getWallpaperResourceIds(Landroid/content/res/Resources;I)[I
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "wallpaperArray"    # I

    .prologue
    .line 859
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 860
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 861
    .local v1, "length":I
    new-array v2, v1, [I

    .line 862
    .local v2, "resIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 863
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v0

    .line 862
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 865
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 866
    return-object v2
.end method

.method private static inputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 509
    .local v2, "byteBuffer":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    .line 510
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .line 513
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 514
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method public static isLatestOnePlusBlurWallpaper(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 803
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 804
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 805
    .local v1, "info":Landroid/app/WallpaperInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/util/WallpaperUtils;->ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isLegacyOnePlusBlurWallpaper(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 833
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 834
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 835
    .local v1, "info":Landroid/app/WallpaperInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/util/WallpaperUtils;->LEGACY_ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNormalLiveWallpaper(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 839
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 840
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 841
    .local v1, "info":Landroid/app/WallpaperInfo;
    if-eqz v1, :cond_0

    .line 842
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/util/WallpaperUtils;->LEGACY_ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 843
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/util/WallpaperUtils;->ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 844
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/util/WallpaperUtils;->ONEPLUS_BLUR_WALLPAPER2:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 845
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/util/WallpaperUtils;->ONEPLUS_LIVE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isOnePlusBlurWallpaper(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 814
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 815
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v2

    .line 816
    .local v2, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v7

    invoke-virtual {v7, v2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v4

    .line 817
    .local v4, "userSN":J
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 818
    .local v1, "info":Landroid/app/WallpaperInfo;
    sget-object v7, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v8, "[isOnePlusBlurWallpaper]: user=%d, info=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    aput-object v1, v9, v3

    invoke-static {v7, v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 819
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    sget-object v8, Lnet/oneplus/h2launcher/util/WallpaperUtils;->ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 820
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    sget-object v8, Lnet/oneplus/h2launcher/util/WallpaperUtils;->LEGACY_ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v6

    goto :goto_0
.end method

.method public static isOnePlusBlurWallpaper2(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 824
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 825
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v2

    .line 826
    .local v2, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v7

    invoke-virtual {v7, v2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v4

    .line 827
    .local v4, "userSN":J
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 828
    .local v1, "info":Landroid/app/WallpaperInfo;
    sget-object v7, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v8, "[isOnePlusBlurWallpaper2]: user=%d, info=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    aput-object v1, v9, v3

    invoke-static {v7, v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 829
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    sget-object v8, Lnet/oneplus/h2launcher/util/WallpaperUtils;->ONEPLUS_BLUR_WALLPAPER2:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v6

    goto :goto_0
.end method

.method public static isOnePlusLiveWallpaper(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 809
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 810
    .local v0, "info":Landroid/app/WallpaperInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    sget-object v2, Lnet/oneplus/h2launcher/util/WallpaperUtils;->ONEPLUS_LIVE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isWallpaperOfAspectRatio(Landroid/graphics/Bitmap;F)Z
    .locals 4
    .param p0, "wallpaper"    # Landroid/graphics/Bitmap;
    .param p1, "targetRatio"    # F

    .prologue
    .line 776
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 777
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wallpaper must not empty nor recycled"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 779
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 780
    .local v0, "aspectRatio":F
    sub-float v2, v0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v1, v2, p1

    .line 781
    .local v1, "aspectRatioDiffPercentage":F
    const v2, 0x3ba3d70a    # 0.005f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadWallpaperPredefinedColors(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wallpaperName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v7, 0x0

    .line 683
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 684
    sget-object v9, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v10, "invalid wallpaper name"

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :goto_0
    return-object v7

    .line 688
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 689
    .local v5, "packageName":Ljava/lang/String;
    const-string v9, "%s:%s/%s_colors"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v12

    const-string v11, "array"

    aput-object v11, v10, v13

    const/4 v11, 0x2

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, "colorsResName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 692
    .local v6, "resources":Landroid/content/res/Resources;
    invoke-virtual {v6, v2, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 693
    .local v1, "colorsResId":I
    if-gtz v1, :cond_1

    .line 694
    sget-object v9, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v10, "invalid wallpaper colors resource name: %s"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v2, v11, v12

    invoke-static {v9, v10, v11}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 698
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 699
    .local v8, "ta":Landroid/content/res/TypedArray;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v7, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 701
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 702
    invoke-virtual {v8, v4, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 703
    .local v0, "color":I
    new-instance v9, Landroid/support/v7/graphics/Palette$Swatch;

    sub-int v10, v3, v4

    invoke-direct {v9, v0, v10}, Landroid/support/v7/graphics/Palette$Swatch;-><init>(II)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 705
    .end local v0    # "color":I
    :cond_2
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public static loadWallpaperSwatches(Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 5
    .param p0, "wallpaper"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 654
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 655
    :cond_0
    sget-object v2, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v3, "invalid wallpaper"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const/4 v1, 0x0

    .line 671
    :cond_1
    :goto_0
    return-object v1

    .line 659
    :cond_2
    invoke-static {p0}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v0

    .line 660
    .local v0, "palette":Landroid/support/v7/graphics/Palette;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 661
    .local v1, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    new-instance v2, Lnet/oneplus/h2launcher/util/WallpaperUtils$2;

    invoke-direct {v2}, Lnet/oneplus/h2launcher/util/WallpaperUtils$2;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 668
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 669
    new-instance v2, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-static {p0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/graphics/Palette$Swatch;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static paintWallpaperColorMask(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "maskColor"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 202
    if-nez p2, :cond_0

    .line 232
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 206
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/high16 v19, 0x3f800000    # 1.0f

    .line 207
    .local v19, "screenHeightScale":F
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v17

    .line 208
    .local v17, "realDisplaySize":Landroid/graphics/Point;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v13

    .line 209
    .local v13, "displaySize":Landroid/graphics/Point;
    iget v4, v13, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Point;->y:I

    if-eq v4, v5, :cond_1

    .line 210
    iget v4, v13, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float v19, v4, v5

    .line 213
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 214
    .local v15, "masked":Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .local v21, "w":I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 215
    .local v14, "h":I
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 216
    .local v12, "canvas":Landroid/graphics/Canvas;
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 217
    .local v16, "paint":Landroid/graphics/Paint;
    if-nez p3, :cond_2

    .line 218
    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const v5, 0x3ed1eb85    # 0.41f

    int-to-float v6, v14

    mul-float/2addr v5, v6

    mul-float v5, v5, v19

    const/4 v6, 0x0

    const v7, 0x3f28f5c3    # 0.66f

    int-to-float v8, v14

    mul-float/2addr v7, v8

    mul-float v7, v7, v19

    .line 220
    invoke-static/range {p2 .. p2}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getTransparentColor(I)I

    move-result v8

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v9, p2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 223
    .local v3, "gradient":Landroid/graphics/LinearGradient;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 224
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .end local v3    # "gradient":Landroid/graphics/LinearGradient;
    :goto_1
    move-object/from16 p1, v15

    .line 232
    goto :goto_0

    .line 226
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getLandscapeWallpaperAspectRatio()F

    move-result v11

    .line 227
    .local v11, "aspectRatio":F
    move/from16 v0, v21

    int-to-float v4, v0

    div-float/2addr v4, v11

    mul-float v4, v4, v19

    float-to-int v0, v4

    move/from16 v20, v0

    .line 228
    .local v20, "top":I
    new-instance v18, Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 229
    .local v18, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public static purgeCropFiles(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 629
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 630
    .local v1, "files":[Ljava/io/File;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 631
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "crop_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 632
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 633
    sget-object v4, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 637
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 407
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 409
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 410
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 413
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/util/Pair;
    .locals 15
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "requiredWidth"    # I
    .param p2, "requiredHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 458
    .local v9, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 459
    .local v2, "height":I
    move/from16 v0, p1

    if-ne v9, v0, :cond_0

    move/from16 v0, p2

    if-ne v2, v0, :cond_0

    .line 460
    new-instance v10, Landroid/util/Pair;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct {v10, v11, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 482
    :goto_0
    return-object v10

    .line 463
    :cond_0
    int-to-float v10, v9

    move/from16 v0, p1

    int-to-float v11, v0

    div-float v7, v10, v11

    .line 464
    .local v7, "scaleX":F
    int-to-float v10, v2

    move/from16 v0, p2

    int-to-float v11, v0

    div-float v8, v10, v11

    .line 465
    .local v8, "scaleY":F
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 466
    .local v4, "resizeScale":F
    int-to-float v10, v9

    div-float/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 467
    .local v5, "resizeWidth":I
    int-to-float v10, v2

    div-float/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 468
    .local v3, "resizeHeight":I
    sget-object v10, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v11, "resize 1: W=%d, H=%d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    const/high16 v1, 0x3f800000    # 1.0f

    .line 472
    .local v1, "currentScale":F
    const/16 v10, 0x1800

    if-gt v5, v10, :cond_1

    const/16 v10, 0x1800

    if-le v3, v10, :cond_2

    .line 473
    :cond_1
    const/high16 v10, 0x45c00000    # 6144.0f

    int-to-float v11, v5

    div-float v7, v10, v11

    .line 474
    const/high16 v10, 0x45c00000    # 6144.0f

    int-to-float v11, v3

    div-float v8, v10, v11

    .line 475
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 476
    int-to-float v10, v5

    mul-float/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 477
    int-to-float v10, v3

    mul-float/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 480
    :cond_2
    sget-object v10, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v11, "resize 2: W=%d, H=%d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    const/4 v10, 0x1

    invoke-static {p0, v5, v3, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 482
    .local v6, "resized":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct {v10, v11, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static resolveWallpaperOrientation(Landroid/content/Context;Landroid/graphics/Bitmap;Z)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wallpaper"    # Landroid/graphics/Bitmap;
    .param p2, "onlyUseWallpaperDimension"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 735
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/oos/StyleManager;->isWallpaperScrollable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 755
    :goto_0
    return v4

    .line 738
    :cond_0
    if-nez p2, :cond_2

    .line 739
    invoke-static {p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getWallpaperTile(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v2

    .line 740
    .local v2, "wallpaperTileInfo":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    invoke-static {p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getBlurWallpaperSettings(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v0

    .line 741
    .local v0, "blurSettings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    if-eqz v2, :cond_1

    .line 742
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getOrientation()I

    move-result v4

    goto :goto_0

    .line 743
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {p0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->isOnePlusBlurWallpaper(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 744
    iget v4, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    goto :goto_0

    .line 748
    .end local v0    # "blurSettings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    .end local v2    # "wallpaperTileInfo":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    :cond_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 749
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_3

    sget v5, Lnet/oneplus/h2launcher/crop/view/CropImageView;->LANDSCAPE_IMAGE_ASPECT_RATIO:F

    .line 750
    invoke-static {p1, v5}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->isWallpaperOfAspectRatio(Landroid/graphics/Bitmap;F)Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v3

    .line 751
    .local v1, "isLandscape":Z
    :goto_1
    if-eqz v1, :cond_4

    :goto_2
    move v4, v3

    goto :goto_0

    .end local v1    # "isLandscape":Z
    :cond_3
    move v1, v4

    .line 750
    goto :goto_1

    .restart local v1    # "isLandscape":Z
    :cond_4
    move v3, v4

    .line 751
    goto :goto_2

    .line 755
    .end local v1    # "isLandscape":Z
    :cond_5
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static saveBitmapAsFile(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 522
    .local v4, "start":J
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 523
    .local v6, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p2, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 524
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 526
    .local v0, "byteArray":[B
    invoke-static {p0, p1, v0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->saveImageBytesAsFile(Landroid/content/Context;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v0    # "byteArray":[B
    .end local v6    # "stream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v4

    .line 531
    .local v2, "diff":J
    sget-object v7, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveBitmap fileName "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " spend "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    return-void

    .line 527
    .end local v2    # "diff":J
    :catch_0
    move-exception v1

    .line 528
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveBitmapAsFile# Failed writing bitmap to storage "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static saveImageBytesAsFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;

    .prologue
    .line 536
    :try_start_0
    invoke-static {p2}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->inputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {p0, p1, v1}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->saveImageBytesAsFile(Landroid/content/Context;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveImageBytesAsFile# Failed writing images to storage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static saveImageBytesAsFile(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "imageBytes"    # [B

    .prologue
    .line 543
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 545
    .local v1, "imageFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 546
    .local v3, "mode":I
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .local v2, "imageFileStream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 548
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    if-eqz v2, :cond_0

    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 552
    .end local v2    # "imageFileStream":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 549
    .restart local v2    # "imageFileStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    :try_start_3
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v2    # "imageFileStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 550
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveImageBytesAsFile# Failed writing images to storage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 549
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "imageFileStream":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 546
    :catch_2
    move-exception v5

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 549
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_1
    :try_start_7
    throw v4

    :catch_3
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method public static saveWallpaperByInputStream(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "screen"    # I

    .prologue
    .line 559
    if-nez p1, :cond_0

    .line 560
    sget-object v15, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v16, "[saveWallpaperByInputStream] bitmap is null, screen=%d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 566
    .local v12, "start":J
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v16, 0x0

    .line 567
    :try_start_1
    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v17, 0x64

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 568
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 569
    .local v6, "bytes":[B
    if-eqz v5, :cond_1

    if-eqz v16, :cond_3

    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 574
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 575
    .local v2, "appContext":Landroid/content/Context;
    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v11

    .line 576
    .local v11, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstanceNoCreate()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v3

    .line 577
    .local v3, "appState":Lnet/oneplus/h2launcher/LauncherAppState;
    if-nez p2, :cond_9

    .line 578
    :try_start_3
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .local v4, "bis":Ljava/io/ByteArrayInputStream;
    const/16 v16, 0x0

    .line 579
    :try_start_4
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-virtual {v11, v4, v7, v8, v9}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 580
    if-eqz v4, :cond_2

    if-eqz v16, :cond_6

    :try_start_5
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 603
    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    :cond_2
    :goto_2
    if-nez p2, :cond_b

    const/4 v14, 0x2

    .line 605
    .local v14, "which":I
    :goto_3
    invoke-virtual {v11, v14}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1, v15}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperId(Landroid/content/Context;II)V

    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v8, v16, v12

    .line 608
    .local v8, "diff":J
    sget-object v15, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v16, "[saveWallpaperByInputStream] screen=%d, time=%d "

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 569
    .end local v2    # "appContext":Landroid/content/Context;
    .end local v3    # "appState":Lnet/oneplus/h2launcher/LauncherAppState;
    .end local v8    # "diff":J
    .end local v11    # "wallpaperManager":Landroid/app/WallpaperManager;
    .end local v14    # "which":I
    :catch_0
    move-exception v15

    :try_start_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "bytes":[B
    :catch_1
    move-exception v10

    .line 570
    .local v10, "e":Ljava/io/IOException;
    sget-object v15, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v16, "failed to create wallpaper bytes"

    invoke-static/range {v15 .. v16}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 569
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "bytes":[B
    :cond_3
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 566
    .end local v6    # "bytes":[B
    :catch_2
    move-exception v15

    :try_start_8
    throw v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 569
    :catchall_0
    move-exception v16

    move-object/from16 v20, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v20

    :goto_4
    if-eqz v5, :cond_4

    if-eqz v16, :cond_5

    :try_start_9
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_4
    :goto_5
    :try_start_a
    throw v15

    :catch_3
    move-exception v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_5

    .line 580
    .restart local v2    # "appContext":Landroid/content/Context;
    .restart local v3    # "appState":Lnet/oneplus/h2launcher/LauncherAppState;
    .restart local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "bytes":[B
    .restart local v11    # "wallpaperManager":Landroid/app/WallpaperManager;
    :catch_4
    move-exception v15

    :try_start_b
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_2

    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    :catch_5
    move-exception v10

    .line 581
    .restart local v10    # "e":Ljava/io/IOException;
    sget-object v15, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v16, "failed to set keyguard wallpaper: %s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 580
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v4    # "bis":Ljava/io/ByteArrayInputStream;
    :cond_6
    :try_start_c
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_2

    .line 578
    :catch_6
    move-exception v16

    :try_start_d
    throw v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 580
    :catchall_1
    move-exception v15

    if-eqz v4, :cond_7

    if-eqz v16, :cond_8

    :try_start_e
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    :cond_7
    :goto_6
    :try_start_f
    throw v15

    :catch_7
    move-exception v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    goto :goto_6

    .line 585
    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    :cond_9
    move-object/from16 v2, p0

    move-object/from16 v5, p1

    const-string v7, "wallpaper"

    invoke-static {v2, v7, v6}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->saveImageBytesAsFile(Landroid/content/Context;Ljava/lang/String;[B)V

    invoke-static {v2}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getBlurWallpaperSettings(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v7

    if-eqz v7, :cond_no_blur_settings

    iget v8, v7, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    iget v9, v7, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    goto :goto_got_blur_settings

    :cond_no_blur_settings
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_got_blur_settings
    invoke-static {v2, v5, v8, v9}, Lnet/oneplus/h2launcher/util/WallpaperComposer;->composeHomeScreenWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v2, v5, v8}, Lnet/oneplus/h2launcher/util/WallpaperComposer;->generateBlurWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    :try_start_10
    invoke-virtual {v11, v10, v7, v8, v9}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_wm_done

    :catch_8
    move-exception v7

    sget-object v8, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v9, "failed to setBitmap on wallpaperManager"

    invoke-static {v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_wm_done
    if-eqz v10, :cond_no_recycle

    if-eq v10, v5, :cond_no_recycle

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    :cond_no_recycle
    new-instance v7, Landroid/content/Intent;

    const-string v8, "net.oneplus.h2launcher.action.FIRST_FRAME_DRAWN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v7, Landroid/content/Intent;

    const-string v8, "net.oneplus.h2launcher.action.BLUR_WALLPAPER_WALLPAPER_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 603
    .end local v10    # "e":Ljava/io/IOException;
    :cond_b
    const/4 v14, 0x1

    goto/16 :goto_3

    .line 569
    .end local v2    # "appContext":Landroid/content/Context;
    .end local v3    # "appState":Lnet/oneplus/h2launcher/LauncherAppState;
    .end local v6    # "bytes":[B
    .end local v11    # "wallpaperManager":Landroid/app/WallpaperManager;
    :catchall_2
    move-exception v15

    goto/16 :goto_4
.end method

.method public static saveWallpaperFiles(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p3, "screen"    # I
    .param p4, "maskColor"    # I
    .param p5, "orientation"    # I
    .param p6, "sourceUri"    # Ljava/lang/String;

    .prologue
    .line 613
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x800

    invoke-direct {v8, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 614
    .local v8, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 616
    .local v2, "imageBytes":[B
    invoke-static {p0, p3, p5}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperManager;->getImageId(Landroid/content/Context;II)I

    move-result v7

    .line 617
    .local v7, "imageId":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    .line 618
    invoke-static {p0, v7}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperManager;->deleteImage(Landroid/content/Context;I)V

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 620
    invoke-static/range {v0 .. v6}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperManager;->saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;[BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    .end local v2    # "imageBytes":[B
    .end local v7    # "imageId":I
    :goto_0
    return-object v0

    .line 623
    :cond_1
    sget-object v0, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v1, "Cannot compress bitmap."

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setOnePlusBlurWallpaper(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 785
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 786
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 788
    .local v3, "wallpaperManager":Landroid/app/WallpaperManager;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setWallpaperComponent"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/ComponentName;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 790
    .local v2, "setWallpaperComponent":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lnet/oneplus/h2launcher/util/WallpaperUtils;->ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 800
    .end local v2    # "setWallpaperComponent":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 791
    :catch_0
    move-exception v1

    .line 792
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v5, "Failed to get method by reflection: "

    invoke-static {v4, v5, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 793
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 794
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v5, "Failed to invoke the method by reflection: "

    invoke-static {v4, v5, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 795
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 796
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lnet/oneplus/h2launcher/util/WallpaperUtils;->TAG:Ljava/lang/String;

    const-string v5, "Illegal access to the target: "

    invoke-static {v4, v5, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 797
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 798
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public static suggestWallpaperDimension(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/view/WindowManager;Landroid/app/WallpaperManager;Z)V
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p2, "windowManager"    # Landroid/view/WindowManager;
    .param p3, "wallpaperManager"    # Landroid/app/WallpaperManager;
    .param p4, "fallBackToDefaults"    # Z

    .prologue
    const/4 v4, -0x1

    .line 110
    invoke-static {p0, p2}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v0

    .line 113
    .local v0, "defaultWallpaperSize":Landroid/graphics/Point;
    const-string v3, "wallpaper.width"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 114
    .local v2, "savedWidth":I
    const-string v3, "wallpaper.height"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 116
    .local v1, "savedHeight":I
    if-eq v2, v4, :cond_0

    if-ne v1, v4, :cond_3

    .line 117
    :cond_0
    if-nez p4, :cond_2

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 121
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 125
    :cond_3
    invoke-virtual {p3}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 126
    invoke-virtual {p3}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 127
    :cond_4
    invoke-virtual {p3, v2, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    goto :goto_0
.end method

.method private static wallpaperTravelToScreenWidthRatio(II)F
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 136
    int-to-float v7, p0

    int-to-float v8, p1

    div-float v4, v7, v8

    .line 143
    .local v4, "aspectRatio":F
    const v0, 0x3fcccccd    # 1.6f

    .line 144
    .local v0, "ASPECT_RATIO_LANDSCAPE":F
    const/high16 v1, 0x3f200000    # 0.625f

    .line 145
    .local v1, "ASPECT_RATIO_PORTRAIT":F
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 146
    .local v2, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_LANDSCAPE":F
    const v3, 0x3f99999a    # 1.2f

    .line 153
    .local v3, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_PORTRAIT":F
    const v5, 0x3e9d89d7

    .line 156
    .local v5, "x":F
    const v6, 0x3f80fc10

    .line 157
    .local v6, "y":F
    const v7, 0x3e9d89d7

    mul-float/2addr v7, v4

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method
