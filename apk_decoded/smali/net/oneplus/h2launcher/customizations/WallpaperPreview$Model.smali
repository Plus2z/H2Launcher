.class public Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;
.super Ljava/lang/Object;
.source "WallpaperPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Model"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;
    }
.end annotation


# static fields
.field private static final WALLPAPER_ID_NONE:I = -0x3e7

.field private static volatile sInstance:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;


# instance fields
.field private mLoadSystemWallpaperFailed:[Z

.field private mLockWallpaperId:I

.field mMaskColor:I

.field private mOnWallpaperPreloadFinishRunnable:Ljava/lang/Runnable;

.field private mPreloadWallpaperCallback:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;

.field private mPreloadingWallpapers:Z

.field private mUserForeground:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mMaskColor:I

    .line 330
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mLoadSystemWallpaperFailed:[Z

    .line 331
    const/16 v0, -0x3e7

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mLockWallpaperId:I

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mUserForeground:Z

    .line 333
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mPreloadingWallpapers:Z

    .line 336
    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$1;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$1;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mPreloadWallpaperCallback:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;

    .line 354
    return-void

    .line 330
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$1000(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    .prologue
    .line 324
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mPreloadWallpaperCallback:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;

    return-object v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;Landroid/content/Context;ILnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;

    .prologue
    .line 324
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->loadSystemWallpaper(Landroid/content/Context;ILnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;)V

    return-void
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    .prologue
    .line 324
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mOnWallpaperPreloadFinishRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 324
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mOnWallpaperPreloadFinishRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;)[Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    .prologue
    .line 324
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mLoadSystemWallpaperFailed:[Z

    return-object v0
.end method

.method static synthetic access$902(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;
    .param p1, "x1"    # Z

    .prologue
    .line 324
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mPreloadingWallpapers:Z

    return p1
.end method

.method private getCacheKey(ILandroid/app/WallpaperInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I
    .param p2, "info"    # Landroid/app/WallpaperInfo;

    .prologue
    .line 507
    if-nez p1, :cond_1

    const-string v0, "lock_screen_wallpaper"

    .line 508
    .local v0, "cacheKey":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    :cond_0
    return-object v0

    .line 507
    .end local v0    # "cacheKey":Ljava/lang/String;
    :cond_1
    const-string v0, "home_screen_wallpaper"

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 357
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->sInstance:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    if-nez v0, :cond_1

    .line 358
    const-class v1, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    monitor-enter v1

    .line 359
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->sInstance:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 360
    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->sInstance:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    .line 362
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :cond_1
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->sInstance:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    return-object v0

    .line 362
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private loadSystemWallpaper(Landroid/content/Context;ILnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I
    .param p3, "callback"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;

    .prologue
    .line 518
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 519
    .local v4, "appContext":Landroid/content/Context;
    invoke-static {v4}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v14

    .line 520
    .local v14, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v14}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v13

    .line 521
    .local v13, "wallpaperInfo":Landroid/app/WallpaperInfo;
    if-nez p2, :cond_2

    const/4 v15, 0x2

    .line 522
    .local v15, "which":I
    :goto_0
    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 523
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->loadHomeWallpaper(Landroid/content/Context;Landroid/app/WallpaperInfo;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 535
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    if-eqz v7, :cond_4

    .line 536
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v7, v1}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->resolveWallpaperOrientation(Landroid/content/Context;Landroid/graphics/Bitmap;Z)I

    move-result v9

    .line 537
    .local v9, "orientation":I
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 538
    .local v11, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v17, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 539
    new-instance v10, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-direct {v10, v0, v1, v2, v9}, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;-><init>([BIZI)V

    .line 540
    .local v10, "params":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->createBackground(Landroid/content/Context;Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 541
    .local v6, "background":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->getCacheKey(ILandroid/app/WallpaperInfo;)Ljava/lang/String;

    move-result-object v8

    .line 542
    .local v8, "cacheKey":Ljava/lang/String;
    invoke-static {v8, v6}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->cacheImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v12

    .line 543
    .local v12, "success":Z
    invoke-virtual {v14, v15}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperId(Landroid/content/Context;II)V

    .line 544
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v16

    const-string v17, "[SNDMS-1030] loadSystemWallpaper: index=%d, success=%b"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    .end local v6    # "background":Landroid/graphics/Bitmap;
    .end local v8    # "cacheKey":Ljava/lang/String;
    .end local v9    # "orientation":I
    .end local v10    # "params":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    .end local v11    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "success":Z
    :goto_2
    if-eqz p3, :cond_1

    .line 551
    move-object v5, v7

    .line 552
    .local v5, "b":Landroid/graphics/Bitmap;
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->get()Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    move-result-object v16

    new-instance v17, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p2

    invoke-direct {v0, v1, v5, v2, v3}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$3;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;I)V

    invoke-virtual/range {v16 .. v17}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 563
    .end local v5    # "b":Landroid/graphics/Bitmap;
    :cond_1
    return-void

    .line 521
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v15    # "which":I
    :cond_2
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 525
    .restart local v15    # "which":I
    :cond_3
    invoke-static {v14}, Lcom/oneplus/sdk/wrapper/android/app/OpWallpaperManager;->getKeyguardBitmap(Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 526
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    if-nez v7, :cond_0

    .line 530
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v16

    const-string v17, "fallback lock screen preview to home screen preview"

    invoke-static/range {v16 .. v17}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->loadHomeWallpaper(Landroid/content/Context;Landroid/app/WallpaperInfo;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_1

    .line 546
    :cond_4
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v16

    const-string v17, "failed to load system wallpaper, index:%d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private notifyWallpaperSaved(I)V
    .locals 5
    .param p1, "screen"    # I

    .prologue
    .line 659
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstanceNoCreate()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 660
    .local v0, "appState":Lnet/oneplus/h2launcher/LauncherAppState;
    if-nez v0, :cond_1

    .line 661
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appState is empty"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v1

    .line 666
    .local v1, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-nez v1, :cond_2

    .line 667
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "launcher is null."

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 672
    :cond_2
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->isWallpapersViewVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 673
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersView()Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    move-result-object v2

    .local v2, "wallpapersView":Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;
    if-eqz v2, :cond_0

    .line 674
    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->onWallpaperSaved(I)V

    goto :goto_0
.end method


# virtual methods
.method addWallpaperToCache(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "index"    # I

    .prologue
    .line 496
    if-eqz p2, :cond_0

    .line 497
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 498
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    .line 499
    .local v4, "info":Landroid/app/WallpaperInfo;
    invoke-direct {p0, p3, v4}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->getCacheKey(ILandroid/app/WallpaperInfo;)Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "cacheKey":Ljava/lang/String;
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 501
    .local v1, "background":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 502
    .local v3, "copy":Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->cacheImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 504
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "background":Landroid/graphics/Bitmap;
    .end local v2    # "cacheKey":Ljava/lang/String;
    .end local v3    # "copy":Landroid/graphics/Bitmap;
    .end local v4    # "info":Landroid/app/WallpaperInfo;
    :cond_0
    return-void
.end method

.method public areWallpapersLoaded(Landroid/content/Context;)Z
    .locals 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 456
    const/4 v6, 0x1

    .line 457
    .local v6, "loaded":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 458
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    .line 459
    .local v4, "info":Landroid/app/WallpaperInfo;
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$800()[I

    move-result-object v9

    array-length v10, v9

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v10, :cond_2

    aget v3, v9, v8

    .line 460
    .local v3, "index":I
    invoke-direct {p0, v3, v4}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->getCacheKey(ILandroid/app/WallpaperInfo;)Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "cacheKey":Ljava/lang/String;
    invoke-static {v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 462
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mLoadSystemWallpaperFailed:[Z

    aget-boolean v5, v7, v3

    .line 463
    .local v5, "loadFailed":Z
    if-nez v1, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    const/4 v7, 0x1

    :goto_1
    and-int/2addr v6, v7

    .line 464
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v11, "[SNDMS-1030] areWallpapersLoaded: index=%d, cacheKey=%s, bitmap=%s, loadFailed=%b"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 465
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    const/4 v13, 0x2

    aput-object v1, v12, v13

    const/4 v13, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    .line 464
    invoke-static {v7, v11, v12}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 463
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 467
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "cacheKey":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v5    # "loadFailed":Z
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[SNDMS-1030] areWallpapersLoaded=%b"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    return v6
.end method

.method public getMaskColor()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mMaskColor:I

    return v0
.end method

.method public invalidateWallpaper(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .prologue
    .line 478
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 479
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 480
    .local v1, "info":Landroid/app/WallpaperInfo;
    invoke-direct {p0, p2, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->getCacheKey(ILandroid/app/WallpaperInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->clearImage(Ljava/lang/String;)Z

    .line 481
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 482
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!!! invalidate wallpaper preferences !!!"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {p1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->clearBlurWallpaperMaskColor(Landroid/content/Context;)V

    .line 484
    invoke-static {p1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->clearWallpaperTileAndColor(Landroid/content/Context;)V

    .line 485
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->getCacheKey(ILandroid/app/WallpaperInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->clearImage(Ljava/lang/String;)Z

    .line 486
    invoke-static {p1}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->invalidateFileCache(Landroid/content/Context;)V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    if-nez p2, :cond_0

    .line 488
    invoke-static {p1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->clearLockWallpaperTile(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public isPreloadingWallpaper()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mPreloadingWallpapers:Z

    return v0
.end method

.method loadHomeWallpaper(Landroid/content/Context;Landroid/app/WallpaperInfo;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallpaperInfo"    # Landroid/app/WallpaperInfo;

    .prologue
    .line 566
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 567
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    .line 568
    .local v6, "wallpaperManager":Landroid/app/WallpaperManager;
    const/4 v1, 0x0

    .line 570
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p1}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->isLatestOnePlusBlurWallpaper(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 571
    invoke-static {p1}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getOnePlusBlurWallpaperFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 572
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 574
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 601
    .end local v4    # "f":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v1

    .line 575
    .restart local v4    # "f":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 576
    .local v3, "error":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v8, "failed loading oneplus blur wallpaper file"

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 579
    .end local v3    # "error":Ljava/lang/OutOfMemoryError;
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v8, "wallpaper for latest blur wallpaper is empty"

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 581
    .end local v4    # "f":Ljava/io/File;
    :cond_2
    invoke-static {p1}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->isOnePlusLiveWallpaper(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 582
    invoke-static {p1}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getOnePlusLiveWallpaperBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 583
    :cond_3
    invoke-static {p1}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->isOnePlusBlurWallpaper(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 584
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 585
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v7, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_0

    .line 586
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 589
    :cond_4
    invoke-static {p1}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->isNormalLiveWallpaper(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 590
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 591
    .local v5, "pm":Landroid/content/pm/PackageManager;
    if-eqz p2, :cond_0

    invoke-virtual {p2, v5}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    instance-of v7, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_0

    .line 592
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 595
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 596
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v7, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_0

    .line 597
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method loadWallpaperFromCache(Landroid/content/Context;ILandroid/app/WallpaperInfo;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I
    .param p3, "info"    # Landroid/app/WallpaperInfo;

    .prologue
    .line 606
    invoke-direct {p0, p2, p3}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->getCacheKey(ILandroid/app/WallpaperInfo;)Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "cacheKey":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-static {p1}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->isNormalLiveWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 609
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->invalidateWallpaper(Landroid/content/Context;I)V

    .line 611
    :cond_0
    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public preloadWallpapers(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 405
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->validateWallpaperPreferences(Landroid/content/Context;)V

    .line 407
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v7, "[SNDMS-1030] preloadWallpapers"

    invoke-static {v5, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 409
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    .line 410
    .local v3, "info":Landroid/app/WallpaperInfo;
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$800()[I

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_2

    aget v2, v7, v5

    .line 411
    .local v2, "index":I
    iget-object v9, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mLoadSystemWallpaperFailed:[Z

    aput-boolean v6, v9, v2

    .line 412
    invoke-virtual {p0, p1, v2, v3}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->loadWallpaperFromCache(Landroid/content/Context;ILandroid/app/WallpaperInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 413
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 414
    const/4 v9, 0x1

    if-ne v2, v9, :cond_0

    .line 415
    invoke-static {v1, v6}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->updateWallpaperBackground(Landroid/graphics/Bitmap;Z)V

    .line 417
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "preloadWallpapers# index="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", bitmap="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 421
    :cond_1
    new-instance v4, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$2;

    invoke-direct {v4, p0, p1, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$2;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;Landroid/content/Context;I)V

    .line 431
    .local v4, "r":Ljava/lang/Runnable;
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->get()Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    move-result-object v9

    invoke-virtual {v9, v4}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 433
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "index":I
    .end local v4    # "r":Ljava/lang/Runnable;
    :cond_2
    return-void
.end method

.method public setMaskColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 372
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mMaskColor:I

    .line 373
    return-void
.end method

.method public setOnWallpaperLoadedCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onWallpaperPreloadFinishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 447
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mOnWallpaperPreloadFinishRunnable:Ljava/lang/Runnable;

    .line 448
    return-void
.end method

.method public setUserForeground(Z)V
    .locals 0
    .param p1, "userForeground"    # Z

    .prologue
    .line 615
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mUserForeground:Z

    .line 616
    return-void
.end method

.method public updateWallpaperId(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 624
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->updateWallpaperId(Landroid/content/Context;Z)V

    .line 625
    return-void
.end method

.method public updateWallpaperId(Landroid/content/Context;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallpaperIsChanged"    # Z

    .prologue
    const/4 v6, 0x0

    .line 634
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mUserForeground:Z

    if-nez v2, :cond_1

    .line 635
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "updateWallpaperId# user is not foreground, skip."

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "updateWallpaperId# wallpaper is changed: %b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 641
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 642
    .local v1, "wallpaperManager":Landroid/app/WallpaperManager;
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mLockWallpaperId:I

    .line 643
    .local v0, "oldLockWallpaperId":I
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mLockWallpaperId:I

    .line 644
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWallpaperId# lock wallpaper id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mLockWallpaperId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    if-nez p2, :cond_2

    .line 647
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "updateWallpaperId# only update wallpaper hashes and wallpaper component"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 652
    :cond_2
    const/16 v2, -0x3e7

    if-eq v0, v2, :cond_0

    iget v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->mLockWallpaperId:I

    if-eq v0, v2, :cond_0

    .line 653
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "updateWallpaperId# lock screen wallpaper changed"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->notifyWallpaperSaved(I)V

    goto :goto_0
.end method

.method validateWallpaperPreferences(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 380
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .line 381
    .local v4, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-static {p1, v9}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getWallpaperId(Landroid/content/Context;I)I

    move-result v3

    .line 382
    .local v3, "prefLockWallpaperId":I
    if-lez v3, :cond_0

    .line 383
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v1

    .line 384
    .local v1, "lockWallpaperId":I
    if-eq v1, v3, :cond_0

    .line 385
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "validateWallpaperPreferences# lock wallpaper id changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0, p1, v9}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->invalidateWallpaper(Landroid/content/Context;I)V

    .line 390
    .end local v1    # "lockWallpaperId":I
    :cond_0
    invoke-static {p1, v8}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getWallpaperId(Landroid/content/Context;I)I

    move-result v2

    .line 391
    .local v2, "prefHomeWallpaperId":I
    if-lez v2, :cond_1

    .line 392
    invoke-virtual {v4, v8}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v0

    .line 393
    .local v0, "homeWallpaperId":I
    if-eq v0, v2, :cond_1

    .line 394
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "validateWallpaperPreferences# home wallpaper id changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0, p1, v8}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->invalidateWallpaper(Landroid/content/Context;I)V

    .line 399
    .end local v0    # "homeWallpaperId":I
    :cond_1
    return-void
.end method
