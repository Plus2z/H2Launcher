.class public Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;
.super Landroid/os/AsyncTask;
.source "BitmapCropTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask$OnBitmapCroppedHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field private static final LOGTAG:Ljava/lang/String; = "BitmapCropTask"


# instance fields
.field mContext:Landroid/content/Context;

.field mCropBounds:Landroid/graphics/RectF;

.field mCroppedBitmap:Landroid/graphics/Bitmap;

.field mInFilePath:Ljava/lang/String;

.field mInImageBytes:[B

.field mInResId:I

.field mInUri:Landroid/net/Uri;

.field mNoCrop:Z

.field mOnBitmapCroppedHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask$OnBitmapCroppedHandler;

.field mOnEndRunnable:Ljava/lang/Runnable;

.field mOutHeight:I

.field mOutWidth:I

.field mResources:Landroid/content/res/Resources;

.field mRotation:I

.field mSaveCroppedBitmap:Z

.field mSetKeyguardWallpaper:Z

.field mSetWallpaper:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;ILandroid/graphics/RectF;IIIZZZLjava/lang/Runnable;)V
    .locals 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "inResId"    # I
    .param p4, "cropBounds"    # Landroid/graphics/RectF;
    .param p5, "rotation"    # I
    .param p6, "outWidth"    # I
    .param p7, "outHeight"    # I
    .param p8, "setWallpaper"    # Z
    .param p9, "setKeyguardWallpaper"    # Z
    .param p10, "saveCroppedBitmap"    # Z
    .param p11, "onEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInUri:Landroid/net/Uri;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInResId:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 109
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mContext:Landroid/content/Context;

    .line 110
    iput p3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInResId:I

    .line 111
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mResources:Landroid/content/res/Resources;

    move-object v0, p0

    move-object v1, p4

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move-object/from16 v8, p11

    .line 112
    invoke-direct/range {v0 .. v8}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->init(Landroid/graphics/RectF;IIIZZZLjava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZZLjava/lang/Runnable;)V
    .locals 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "inUri"    # Landroid/net/Uri;
    .param p3, "cropBounds"    # Landroid/graphics/RectF;
    .param p4, "rotation"    # I
    .param p5, "outWidth"    # I
    .param p6, "outHeight"    # I
    .param p7, "setWallpaper"    # Z
    .param p8, "setKeyguardWallpaper"    # Z
    .param p9, "saveCroppedBitmap"    # Z
    .param p10, "onEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInUri:Landroid/net/Uri;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInResId:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 98
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInUri:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    .line 100
    invoke-direct/range {v0 .. v8}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->init(Landroid/graphics/RectF;IIIZZZLjava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/RectF;IIIZZZLjava/lang/Runnable;)V
    .locals 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "cropBounds"    # Landroid/graphics/RectF;
    .param p4, "rotation"    # I
    .param p5, "outWidth"    # I
    .param p6, "outHeight"    # I
    .param p7, "setWallpaper"    # Z
    .param p8, "setKeyguardWallpaper"    # Z
    .param p9, "saveCroppedBitmap"    # Z
    .param p10, "onEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInUri:Landroid/net/Uri;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInResId:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 77
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInFilePath:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    .line 79
    invoke-direct/range {v0 .. v8}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->init(Landroid/graphics/RectF;IIIZZZLjava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public constructor <init>([BLandroid/graphics/RectF;IIIZZZLjava/lang/Runnable;)V
    .locals 9
    .param p1, "imageBytes"    # [B
    .param p2, "cropBounds"    # Landroid/graphics/RectF;
    .param p3, "rotation"    # I
    .param p4, "outWidth"    # I
    .param p5, "outHeight"    # I
    .param p6, "setWallpaper"    # Z
    .param p7, "setKeyguardWallpaper"    # Z
    .param p8, "saveCroppedBitmap"    # Z
    .param p9, "onEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInUri:Landroid/net/Uri;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInResId:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 88
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInImageBytes:[B

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    .line 89
    invoke-direct/range {v0 .. v8}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->init(Landroid/graphics/RectF;IIIZZZLjava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .param p1, "c"    # Ljava/io/Closeable;

    .prologue
    .line 431
    if-nez p1, :cond_0

    .line 437
    :goto_0
    return-void

    .line 433
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "t":Ljava/io/IOException;
    const-string v1, "BitmapCropTask"

    const-string v2, "close fail "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private init(Landroid/graphics/RectF;IIIZZZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "cropBounds"    # Landroid/graphics/RectF;
    .param p2, "rotation"    # I
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .param p5, "setWallpaper"    # Z
    .param p6, "setKeyguardWallpaper"    # Z
    .param p7, "saveCroppedBitmap"    # Z
    .param p8, "onEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 119
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 120
    iput p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mRotation:I

    .line 121
    iput p3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOutWidth:I

    .line 122
    iput p4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOutHeight:I

    .line 123
    iput-boolean p5, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mSetWallpaper:Z

    .line 124
    iput-boolean p6, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mSetKeyguardWallpaper:Z

    .line 125
    iput-boolean p7, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mSaveCroppedBitmap:Z

    .line 126
    iput-object p8, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOnEndRunnable:Ljava/lang/Runnable;

    .line 127
    return-void
.end method

.method private regenerateInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 143
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    iget v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInResId:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInFilePath:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInImageBytes:[B

    if-nez v1, :cond_0

    .line 144
    const-string v1, "BitmapCropTask"

    const-string v2, "cannot read original file, no input URI, resource ID, or image byte array given"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 148
    :cond_0
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 149
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mContext:Landroid/content/Context;

    .line 150
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "BitmapCropTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot read file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 151
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInFilePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    goto :goto_1

    .line 153
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInImageBytes:[B

    if-eqz v1, :cond_3

    .line 154
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInImageBytes:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    .line 156
    :cond_3
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mResources:Landroid/content/res/Resources;

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public cropBitmap()Z
    .locals 39

    .prologue
    .line 187
    const/4 v15, 0x0

    .line 190
    .local v15, "failure":Z
    const/16 v34, 0x0

    .line 191
    .local v34, "wallpaperManager":Landroid/app/WallpaperManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mSetWallpaper:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mSetKeyguardWallpaper:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1

    .line 192
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v34

    .line 196
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mSetWallpaper:Z

    move/from16 v35, v0

    if-nez v35, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mSetKeyguardWallpaper:Z

    move/from16 v35, v0

    if-eqz v35, :cond_6

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mNoCrop:Z

    move/from16 v35, v0

    if-eqz v35, :cond_6

    .line 198
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v18

    .line 199
    .local v18, "is":Ljava/io/InputStream;
    if-eqz v18, :cond_3

    .line 200
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mSetWallpaper:Z

    move/from16 v35, v0

    if-eqz v35, :cond_4

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const-string v36, "wallpaper"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->saveImageBytesAsFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 205
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->closeSilently(Ljava/io/Closeable;)V

    .line 211
    .end local v18    # "is":Ljava/io/InputStream;
    :cond_3
    :goto_1
    if-nez v15, :cond_5

    const/16 v35, 0x1

    .line 415
    :goto_2
    return v35

    .line 203
    .restart local v18    # "is":Ljava/io/InputStream;
    :cond_4
    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/oneplus/sdk/wrapper/android/app/OpWallpaperManager;->setKeyguardStream(Landroid/app/WallpaperManager;Ljava/io/InputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v18    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v14

    .line 208
    .local v14, "e":Ljava/io/IOException;
    const-string v35, "BitmapCropTask"

    const-string v36, "cannot write stream to wallpaper"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    const/4 v15, 0x1

    goto :goto_1

    .line 211
    .end local v14    # "e":Ljava/io/IOException;
    :cond_5
    const/16 v35, 0x0

    goto :goto_2

    .line 214
    :cond_6
    new-instance v30, Landroid/graphics/Rect;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Rect;-><init>()V

    .line 215
    .local v30, "roundedTrueCrop":Landroid/graphics/Rect;
    new-instance v28, Landroid/graphics/Matrix;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Matrix;-><init>()V

    .line 216
    .local v28, "rotateMatrix":Landroid/graphics/Matrix;
    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    .line 218
    .local v17, "inverseRotateMatrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->getImageBounds()Landroid/graphics/Point;

    move-result-object v6

    .line 219
    .local v6, "bounds":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mRotation:I

    move/from16 v35, v0

    if-lez v35, :cond_8

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mRotation:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 221
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mRotation:I

    move/from16 v35, v0

    move/from16 v0, v35

    neg-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 224
    new-instance v35, Landroid/graphics/RectF;

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 226
    if-nez v6, :cond_7

    .line 227
    const-string v35, "BitmapCropTask"

    const-string v36, "cannot get bounds for image"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v15, 0x1

    .line 229
    const/16 v35, 0x0

    goto/16 :goto_2

    .line 232
    :cond_7
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v29, v0

    const/16 v35, 0x0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    aput v36, v29, v35

    const/16 v35, 0x1

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    aput v36, v29, v35

    .line 233
    .local v29, "rotatedBounds":[F
    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 234
    const/16 v35, 0x0

    const/16 v36, 0x0

    aget v36, v29, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->abs(F)F

    move-result v36

    aput v36, v29, v35

    .line 235
    const/16 v35, 0x1

    const/16 v36, 0x1

    aget v36, v29, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->abs(F)F

    move-result v36

    aput v36, v29, v35

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget v36, v29, v36

    move/from16 v0, v36

    neg-float v0, v0

    move/from16 v36, v0

    const/high16 v37, 0x40000000    # 2.0f

    div-float v36, v36, v37

    const/16 v37, 0x1

    aget v37, v29, v37

    move/from16 v0, v37

    neg-float v0, v0

    move/from16 v37, v0

    const/high16 v38, 0x40000000    # 2.0f

    div-float v37, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroid/graphics/RectF;->offset(FF)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v37, v0

    div-int/lit8 v37, v37, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroid/graphics/RectF;->offset(FF)V

    .line 243
    .end local v29    # "rotatedBounds":[F
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 245
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v35

    if-lez v35, :cond_9

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v35

    if-gtz v35, :cond_a

    .line 246
    :cond_9
    const-string v35, "BitmapCropTask"

    const-string v36, "crop has bad values for full size image"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v15, 0x1

    .line 248
    const/16 v35, 0x0

    goto/16 :goto_2

    .line 252
    :cond_a
    const/16 v35, 0x1

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v36

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOutWidth:I

    move/from16 v37, v0

    div-int v36, v36, v37

    .line 253
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v37

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOutHeight:I

    move/from16 v38, v0

    div-int v37, v37, v38

    .line 252
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->min(II)I

    move-result v36

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v31

    .line 255
    .local v31, "scaleDownSampleSize":I
    const/4 v12, 0x0

    .line 256
    .local v12, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/16 v18, 0x0

    .line 258
    .restart local v18    # "is":Ljava/io/InputStream;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v18

    .line 259
    if-nez v18, :cond_b

    .line 260
    const-string v35, "BitmapCropTask"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "cannot get input stream for uri="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInUri:Landroid/net/Uri;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    const/4 v15, 0x1

    .line 262
    const/16 v35, 0x0

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->closeSilently(Ljava/io/Closeable;)V

    .line 270
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 264
    :cond_b
    const/16 v35, 0x0

    :try_start_2
    move-object/from16 v0, v18

    move/from16 v1, v35

    invoke-static {v0, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v12

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->closeSilently(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->closeSilently(Ljava/io/Closeable;)V

    .line 270
    const/16 v18, 0x0

    .line 273
    :goto_3
    const/4 v10, 0x0

    .line 274
    .local v10, "crop":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_d

    .line 276
    new-instance v24, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 277
    .local v24, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v35, 0x1

    move/from16 v0, v31

    move/from16 v1, v35

    if-le v0, v1, :cond_c

    .line 278
    move/from16 v0, v31

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 280
    :cond_c
    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 281
    invoke-virtual {v12}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 284
    .end local v24    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_d
    if-nez v10, :cond_14

    .line 286
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v18

    .line 287
    const/16 v16, 0x0

    .line 288
    .local v16, "fullSize":Landroid/graphics/Bitmap;
    if-eqz v18, :cond_f

    .line 289
    new-instance v24, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 290
    .restart local v24    # "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v35, 0x1

    move/from16 v0, v31

    move/from16 v1, v35

    if-le v0, v1, :cond_e

    .line 291
    move/from16 v0, v31

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 293
    :cond_e
    const/16 v35, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->closeSilently(Ljava/io/Closeable;)V

    .line 296
    .end local v24    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_f
    if-eqz v16, :cond_14

    .line 298
    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v35, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    div-int v31, v35, v36

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v36, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v36, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v36, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 306
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v35

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_10

    .line 308
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    add-int v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 310
    :cond_10
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_11

    .line 312
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    .line 313
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v38

    sub-int v37, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    sub-int v5, v35, v36

    .line 314
    .local v5, "adjustment":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    sub-int v35, v35, v5

    move/from16 v0, v35

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 315
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    sub-int v35, v35, v5

    move/from16 v0, v35

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 317
    .end local v5    # "adjustment":I
    :cond_11
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v35

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_12

    .line 319
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    add-int v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 321
    :cond_12
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_13

    .line 323
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    .line 324
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v38

    sub-int v37, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    sub-int v5, v35, v36

    .line 325
    .restart local v5    # "adjustment":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    sub-int v35, v35, v5

    move/from16 v0, v35

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 326
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    sub-int v35, v35, v5

    move/from16 v0, v35

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 329
    .end local v5    # "adjustment":I
    :cond_13
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    .line 330
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v37

    .line 331
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v38

    .line 329
    move-object/from16 v0, v16

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 335
    .end local v16    # "fullSize":Landroid/graphics/Bitmap;
    :cond_14
    if-nez v10, :cond_15

    .line 336
    const-string v35, "BitmapCropTask"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "cannot decode file: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInUri:Landroid/net/Uri;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v15, 0x1

    .line 338
    const/16 v35, 0x0

    goto/16 :goto_2

    .line 266
    .end local v10    # "crop":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v14

    .line 267
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v35, "BitmapCropTask"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "cannot open region decoder for file: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mInUri:Landroid/net/Uri;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->closeSilently(Ljava/io/Closeable;)V

    .line 270
    const/16 v18, 0x0

    .line 271
    goto/16 :goto_3

    .line 269
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v35

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->closeSilently(Ljava/io/Closeable;)V

    .line 270
    const/16 v18, 0x0

    throw v35

    .line 340
    .restart local v10    # "crop":Landroid/graphics/Bitmap;
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOutWidth:I

    move/from16 v35, v0

    if-lez v35, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOutHeight:I

    move/from16 v35, v0

    if-gtz v35, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mRotation:I

    move/from16 v35, v0

    if-lez v35, :cond_1a

    .line 341
    :cond_17
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v13, v0, [F

    const/16 v35, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    aput v36, v13, v35

    const/16 v35, 0x1

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    aput v36, v13, v35

    .line 342
    .local v13, "dimsAfter":[F
    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 343
    const/16 v35, 0x0

    const/16 v36, 0x0

    aget v36, v13, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->abs(F)F

    move-result v36

    aput v36, v13, v35

    .line 344
    const/16 v35, 0x1

    const/16 v36, 0x1

    aget v36, v13, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->abs(F)F

    move-result v36

    aput v36, v13, v35

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOutWidth:I

    move/from16 v35, v0

    if-lez v35, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOutHeight:I

    move/from16 v35, v0

    if-gtz v35, :cond_19

    .line 347
    :cond_18
    const/16 v35, 0x0

    aget v35, v13, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOutWidth:I

    .line 348
    const/16 v35, 0x1

    aget v35, v13, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOutHeight:I

    .line 351
    :cond_19
    new-instance v11, Landroid/graphics/RectF;

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    aget v37, v13, v37

    const/16 v38, 0x1

    aget v38, v13, v38

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 352
    .local v11, "cropRect":Landroid/graphics/RectF;
    new-instance v27, Landroid/graphics/RectF;

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOutWidth:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOutHeight:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, v27

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 354
    .local v27, "returnRect":Landroid/graphics/RectF;
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    .line 355
    .local v19, "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mRotation:I

    move/from16 v35, v0

    if-nez v35, :cond_1e

    .line 356
    sget-object v35, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v35

    invoke-virtual {v0, v11, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 374
    :goto_4
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    .line 375
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v36

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    sget-object v37, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 374
    invoke-static/range {v35 .. v37}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 376
    .local v32, "tmp":Landroid/graphics/Bitmap;
    if-eqz v32, :cond_1a

    .line 377
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v32

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 378
    .local v7, "c":Landroid/graphics/Canvas;
    new-instance v26, Landroid/graphics/Paint;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Paint;-><init>()V

    .line 379
    .local v26, "p":Landroid/graphics/Paint;
    const/16 v35, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 380
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v7, v10, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 381
    move-object/from16 v10, v32

    .line 385
    .end local v7    # "c":Landroid/graphics/Canvas;
    .end local v11    # "cropRect":Landroid/graphics/RectF;
    .end local v13    # "dimsAfter":[F
    .end local v19    # "m":Landroid/graphics/Matrix;
    .end local v26    # "p":Landroid/graphics/Paint;
    .end local v27    # "returnRect":Landroid/graphics/RectF;
    .end local v32    # "tmp":Landroid/graphics/Bitmap;
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mSaveCroppedBitmap:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1b

    .line 386
    move-object/from16 v0, p0

    iput-object v10, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCroppedBitmap:Landroid/graphics/Bitmap;

    .line 390
    :cond_1b
    new-instance v33, Ljava/io/ByteArrayOutputStream;

    const/16 v35, 0x800

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 391
    .local v33, "tmpOut":Ljava/io/ByteArrayOutputStream;
    sget-object v35, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v36, 0x5a

    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v33

    invoke-virtual {v10, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v35

    if-eqz v35, :cond_20

    .line 393
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mSetWallpaper:Z

    move/from16 v35, v0

    if-nez v35, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mSetKeyguardWallpaper:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1d

    :cond_1c
    if-eqz v34, :cond_1d

    .line 395
    :try_start_4
    invoke-virtual/range {v33 .. v33}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v25

    .line 396
    .local v25, "outByteArray":[B
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mSetWallpaper:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1f

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const-string v36, "wallpaper"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->saveImageBytesAsFile(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 402
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOnBitmapCroppedHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask$OnBitmapCroppedHandler;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1d

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOnBitmapCroppedHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask$OnBitmapCroppedHandler;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask$OnBitmapCroppedHandler;->onBitmapCropped([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 415
    .end local v25    # "outByteArray":[B
    :cond_1d
    :goto_6
    if-nez v15, :cond_21

    const/16 v35, 0x1

    goto/16 :goto_2

    .line 358
    .end local v33    # "tmpOut":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "cropRect":Landroid/graphics/RectF;
    .restart local v13    # "dimsAfter":[F
    .restart local v19    # "m":Landroid/graphics/Matrix;
    .restart local v27    # "returnRect":Landroid/graphics/RectF;
    :cond_1e
    new-instance v20, Landroid/graphics/Matrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    .line 359
    .local v20, "m1":Landroid/graphics/Matrix;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    move/from16 v0, v35

    neg-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x40000000    # 2.0f

    div-float v35, v35, v36

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    const/high16 v37, 0x40000000    # 2.0f

    div-float v36, v36, v37

    move-object/from16 v0, v20

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 360
    new-instance v21, Landroid/graphics/Matrix;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Matrix;-><init>()V

    .line 361
    .local v21, "m2":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mRotation:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 362
    new-instance v22, Landroid/graphics/Matrix;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Matrix;-><init>()V

    .line 363
    .local v22, "m3":Landroid/graphics/Matrix;
    const/16 v35, 0x0

    aget v35, v13, v35

    const/high16 v36, 0x40000000    # 2.0f

    div-float v35, v35, v36

    const/16 v36, 0x1

    aget v36, v13, v36

    const/high16 v37, 0x40000000    # 2.0f

    div-float v36, v36, v37

    move-object/from16 v0, v22

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 364
    new-instance v23, Landroid/graphics/Matrix;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Matrix;-><init>()V

    .line 365
    .local v23, "m4":Landroid/graphics/Matrix;
    sget-object v35, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v35

    invoke-virtual {v0, v11, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 367
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 368
    .local v8, "c1":Landroid/graphics/Matrix;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 369
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 370
    .local v9, "c2":Landroid/graphics/Matrix;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 371
    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v8}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    goto/16 :goto_4

    .line 399
    .end local v8    # "c1":Landroid/graphics/Matrix;
    .end local v9    # "c2":Landroid/graphics/Matrix;
    .end local v11    # "cropRect":Landroid/graphics/RectF;
    .end local v13    # "dimsAfter":[F
    .end local v19    # "m":Landroid/graphics/Matrix;
    .end local v20    # "m1":Landroid/graphics/Matrix;
    .end local v21    # "m2":Landroid/graphics/Matrix;
    .end local v22    # "m3":Landroid/graphics/Matrix;
    .end local v23    # "m4":Landroid/graphics/Matrix;
    .end local v27    # "returnRect":Landroid/graphics/RectF;
    .restart local v25    # "outByteArray":[B
    .restart local v33    # "tmpOut":Ljava/io/ByteArrayOutputStream;
    :cond_1f
    :try_start_5
    new-instance v35, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static/range {v34 .. v35}, Lcom/oneplus/sdk/wrapper/android/app/OpWallpaperManager;->setKeyguardStream(Landroid/app/WallpaperManager;Ljava/io/InputStream;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_5

    .line 405
    .end local v25    # "outByteArray":[B
    :catch_2
    move-exception v14

    .line 406
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v35, "BitmapCropTask"

    const-string v36, "cannot write stream to wallpaper"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    const/4 v15, 0x1

    .line 408
    goto/16 :goto_6

    .line 411
    .end local v14    # "e":Ljava/io/IOException;
    :cond_20
    const-string v35, "BitmapCropTask"

    const-string v36, "cannot compress bitmap"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v15, 0x1

    goto/16 :goto_6

    .line 415
    :cond_21
    const/16 v35, 0x0

    goto/16 :goto_2
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 420
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->cropBitmap()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getCroppedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCroppedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageBounds()Landroid/graphics/Point;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 167
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 168
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 169
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 170
    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 171
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->closeSilently(Ljava/io/Closeable;)V

    .line 172
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v3, :cond_0

    .line 173
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 176
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return-object v2
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 425
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOnEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOnEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 428
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCropBounds(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "cropBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 180
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 181
    return-void
.end method

.method public setNoCrop(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mNoCrop:Z

    .line 135
    return-void
.end method

.method public setOnBitmapCropped(Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask$OnBitmapCroppedHandler;)V
    .locals 0
    .param p1, "handler"    # Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask$OnBitmapCroppedHandler;

    .prologue
    .line 130
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOnBitmapCroppedHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask$OnBitmapCroppedHandler;

    .line 131
    return-void
.end method

.method public setOnEndRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 138
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapCropTask;->mOnEndRunnable:Ljava/lang/Runnable;

    .line 139
    return-void
.end method
