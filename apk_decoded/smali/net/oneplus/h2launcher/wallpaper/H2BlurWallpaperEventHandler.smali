.class public Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;
.super Ljava/lang/Object;
.source "H2BlurWallpaperEventHandler.java"

# interfaces
.implements Lnet/oneplus/h2launcher/wallpaper/WallpaperEventHandler;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mWillResetWallpaper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-class v0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->sWorkerThread:Landroid/os/HandlerThread;

    .line 38
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->mHandler:Landroid/os/Handler;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->mWillResetWallpaper:Z

    .line 47
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;

    .prologue
    .line 32
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->mWillResetWallpaper:Z

    return v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->restoreWallpaperForUser(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->sInstance:Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->sInstance:Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->sInstance:Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->sInstance:Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private resetOrRestoreBlurWallpaper(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    invoke-static {p1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getWallpaperTile(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v3

    .line 189
    .local v3, "tileInfo":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    if-nez v3, :cond_1

    .line 190
    sget-object v4, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "[resetOrRestoreBlurWallpaper] reset to default blur wallpaper"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperSetupCompleted(Landroid/content/Context;Z)V

    .line 192
    new-instance v2, Landroid/content/ComponentName;

    const-class v4, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;

    invoke-direct {v2, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v2, "service":Landroid/content/ComponentName;
    invoke-static {v2}, Lnet/oneplus/h2launcher/JobBuilderWrapper;->create(Landroid/content/ComponentName;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 194
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    const-string v4, "jobscheduler"

    .line 195
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 196
    .local v1, "jobScheduler":Landroid/app/job/JobScheduler;
    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 204
    .end local v0    # "builder":Landroid/app/job/JobInfo$Builder;
    .end local v1    # "jobScheduler":Landroid/app/job/JobScheduler;
    .end local v2    # "service":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    sget-object v4, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "[resetOrRestoreBlurWallpaper] restore to last blur wallpaper"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->onBeforeSave(I)V

    .line 202
    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->onSave(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private restoreWallpaperForUser(Landroid/content/Context;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v8

    .line 132
    .local v8, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    invoke-static/range {p1 .. p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v13

    invoke-virtual {v13, v8}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v10

    .line 133
    .local v10, "userSN":J
    invoke-static/range {p1 .. p1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getBlurWallpaperSettings(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v7

    .line 134
    .local v7, "settings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    invoke-static/range {p1 .. p1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getWallpaperTile(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v12

    .line 135
    .local v12, "wallpaperTile":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    sget-object v13, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    const-string v14, "[restoreWallpaperForUser] user=%d, settings=%s, tile=%s"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v7, v15, v16

    const/16 v16, 0x2

    aput-object v12, v15, v16

    invoke-static {v13, v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    move-object/from16 v0, p1

    instance-of v13, v0, Lnet/oneplus/h2launcher/Launcher;

    if-eqz v13, :cond_1

    move-object/from16 v13, p1

    check-cast v13, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v13}, Lnet/oneplus/h2launcher/Launcher;->isInWorkspaceMode()Z

    move-result v13

    if-nez v13, :cond_1

    .line 139
    sget-object v13, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    const-string v14, "skip restore wallpaper for user since launcher is not in workspace mode"

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    if-eqz v12, :cond_a

    .line 144
    invoke-static/range {p1 .. p1}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->isOnePlusBlurWallpaper(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 145
    sget-object v13, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    const-string v14, "Skip restore wallpaper since wallpaper preferences exist but blur wallpaper not active. The wallpaper component might has been set to another component in the absence of OnePlus H2Launcher"

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v13

    invoke-virtual {v13}, Lnet/oneplus/h2launcher/oos/StyleManager;->drawWallpaperColorMask()Z

    move-result v3

    .line 153
    .local v3, "drawWallpaperColorMask":Z
    if-eqz v3, :cond_6

    .line 154
    invoke-static/range {p1 .. p1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getWallpaperColor(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    move-result-object v9

    .line 156
    .local v9, "wallpaperColor":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
    :goto_1
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->emptySettings()Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v2

    .line 158
    .local v2, "defaultSettings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    iget v13, v7, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    invoke-virtual {v12}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getOrientation()I

    move-result v14

    if-ne v13, v14, :cond_7

    const/4 v5, 0x1

    .line 159
    .local v5, "isOrientationSync":Z
    :goto_2
    iget v13, v7, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->scrollMode:I

    iget v14, v2, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->scrollMode:I

    if-ne v13, v14, :cond_8

    const/4 v6, 0x1

    .line 160
    .local v6, "isScrollModeSync":Z
    :goto_3
    if-eqz v9, :cond_3

    iget v13, v7, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    iget v14, v9, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->rgb:I

    if-ne v13, v14, :cond_9

    iget-boolean v13, v7, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    iget-boolean v14, v9, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->blurEnabled:Z

    if-ne v13, v14, :cond_9

    :cond_3
    const/4 v4, 0x1

    .line 164
    .local v4, "isMaskColorSync":Z
    :goto_4
    sget-object v13, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    const-string v14, "isOrientationSync=%b, isScrollModeSync=%b, isMaskColorSync=%b"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 165
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    .line 164
    invoke-static {v13, v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    if-nez v4, :cond_0

    .line 168
    :cond_4
    sget-object v13, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    const-string v14, "restore wallpaper for user: %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    sget-object v13, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    const-string v14, "user wallpaper tile: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v13, v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    sget-object v13, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    const-string v14, "user wallpaper color: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    invoke-static {v13, v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    sget-object v13, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    const-string v14, "blur wallpaper settings: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    invoke-static {v13, v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    const/4 v13, 0x1

    iput-boolean v13, v7, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->notify:Z

    .line 173
    invoke-virtual {v12}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getOrientation()I

    move-result v13

    iput v13, v7, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    .line 174
    iget v13, v2, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->scrollMode:I

    iput v13, v7, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->scrollMode:I

    .line 175
    if-eqz v9, :cond_5

    .line 176
    iget v13, v9, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->rgb:I

    iput v13, v7, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    .line 177
    iget-boolean v13, v9, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->blurEnabled:Z

    iput-boolean v13, v7, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    .line 179
    :cond_5
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setBlurWallpaperSettings(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;)V

    .line 180
    new-instance v13, Landroid/content/Intent;

    const-string v14, "net.oneplus.h2launcher.action.BLUR_WALLPAPER_SETTINGS_CHANGED"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 154
    .end local v2    # "defaultSettings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    .end local v4    # "isMaskColorSync":Z
    .end local v5    # "isOrientationSync":Z
    .end local v6    # "isScrollModeSync":Z
    .end local v9    # "wallpaperColor":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
    :cond_6
    new-instance v9, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v9, v13, v14}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;-><init>(II)V

    goto/16 :goto_1

    .line 158
    .restart local v2    # "defaultSettings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    .restart local v9    # "wallpaperColor":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 159
    .restart local v5    # "isOrientationSync":Z
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 160
    .restart local v6    # "isScrollModeSync":Z
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 183
    .end local v2    # "defaultSettings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    .end local v3    # "drawWallpaperColorMask":Z
    .end local v5    # "isOrientationSync":Z
    .end local v6    # "isScrollModeSync":Z
    .end local v9    # "wallpaperColor":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
    :cond_a
    sget-object v13, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    const-string v14, "wallpaperTile is null"

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setupWallpaperForUser(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v3

    .line 91
    .local v3, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    invoke-static {p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v8

    invoke-virtual {v8, v3}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v4

    .line 92
    .local v4, "userSN":J
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/WallpaperManager;->peekDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 93
    .local v6, "wallpaper":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->hasWallpaperSetupCompleted(Landroid/content/Context;)Z

    move-result v7

    .line 94
    .local v7, "wallpaperSetupCompleted":Z
    sget-object v8, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "[setupWallpaperForUser] user=%d, wallpaper=%s, wallpaperSetupCompleted=%b"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 95
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const/4 v11, 0x2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    .line 94
    invoke-static {v8, v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    if-nez v6, :cond_1

    if-nez v7, :cond_1

    .line 98
    sget-object v8, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "wallpaper has NOT been setup for user: %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-static {p1}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->isNormalLiveWallpaper(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 100
    invoke-static {p1}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->isOnePlusLiveWallpaper(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 101
    :cond_0
    sget-object v8, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "user is using live wallpaper"

    invoke-static {v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperSetupCompleted(Landroid/content/Context;)V

    .line 103
    invoke-static {p1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->clearBlurWallpaperMaskColor(Landroid/content/Context;)V

    .line 118
    :cond_1
    :goto_0
    iget-object v8, p0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->mHandler:Landroid/os/Handler;

    new-instance v9, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler$1;

    invoke-direct {v9, p0, p1}, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler$1;-><init>(Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void

    .line 105
    :cond_2
    sget-object v8, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "setup default blur wallpaper for user"

    invoke-static {v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v2, Landroid/content/ComponentName;

    const-class v8, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;

    invoke-direct {v2, p1, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v2, "service":Landroid/content/ComponentName;
    invoke-static {v2}, Lnet/oneplus/h2launcher/JobBuilderWrapper;->create(Landroid/content/ComponentName;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 108
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    const-string v8, "jobscheduler"

    .line 109
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 110
    .local v1, "jobScheduler":Landroid/app/job/JobScheduler;
    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 112
    const/4 v8, 0x1

    iput-boolean v8, p0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->mWillResetWallpaper:Z

    goto :goto_0
.end method

.method private showingDefaultImageWallpaper(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 208
    .local v0, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->peekDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onLauncherCreate(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->setupWallpaperForUser(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public onLauncherStart(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 68
    invoke-static {p1}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->isOnePlusBlurWallpaper2(Landroid/content/Context;)Z

    move-result v0

    .line 69
    .local v0, "isOnePlusBlurWallpaper2":Z
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->showingDefaultImageWallpaper(Landroid/content/Context;)Z

    move-result v1

    .line 70
    .local v1, "showingDefaultImageWallpaper":Z
    sget-object v2, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "[onLauncherStart] mWillResetWallpaper=%b, isOnePlusBlurWallpaper2=%b, showingDefaultImageWallpaper=%b"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, p0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->mWillResetWallpaper:Z

    .line 71
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    .line 72
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 70
    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->mWillResetWallpaper:Z

    if-eqz v2, :cond_1

    .line 74
    sget-object v2, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "[onLauncherStart] wallpaper is going to reset to default, skip"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iput-boolean v7, p0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->mWillResetWallpaper:Z

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    .line 80
    :cond_2
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->resetOrRestoreBlurWallpaper(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onUserSwitched(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->restoreWallpaperForUser(Landroid/content/Context;)V

    .line 87
    return-void
.end method
