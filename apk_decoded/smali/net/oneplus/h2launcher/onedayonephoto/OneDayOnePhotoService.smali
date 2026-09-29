.class public Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoService;
.super Landroid/app/IntentService;
.source "OneDayOnePhotoService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "OneDayOnePhotoService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private isValidOrientation(I)Z
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 139
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidScreen(I)Z
    .locals 1
    .param p1, "screen"    # I

    .prologue
    const/4 v0, 0x1

    .line 135
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 33
    sget-object v0, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    .line 37
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 43
    .local v5, "data":Landroid/net/Uri;
    if-nez v5, :cond_1

    .line 44
    sget-object v19, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoService;->TAG:Ljava/lang/String;

    const-string v20, "invalid data"

    invoke-static/range {v19 .. v20}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .end local v5    # "data":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 48
    .restart local v5    # "data":Landroid/net/Uri;
    :cond_1
    const-string v19, "screen"

    const/16 v20, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 49
    .local v14, "screen":I
    if-ltz v14, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoService;->isValidScreen(I)Z

    move-result v19

    if-nez v19, :cond_3

    .line 50
    :cond_2
    sget-object v19, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoService;->TAG:Ljava/lang/String;

    const-string v20, "invalid screen: %s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v19 .. v21}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_3
    if-nez v14, :cond_5

    .line 56
    const/4 v11, 0x0

    .line 65
    .local v11, "orientation":I
    :cond_4
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstanceNoCreate()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v4

    .line 67
    .local v4, "appState":Lnet/oneplus/h2launcher/LauncherAppState;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v9

    .local v9, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-eqz v9, :cond_7

    .line 68
    invoke-virtual {v9}, Lnet/oneplus/h2launcher/Launcher;->isWallpapersViewVisible()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 69
    sget-object v19, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoService;->TAG:Ljava/lang/String;

    const-string v20, "block setting one day one photo wallpaper since user is in wallpapers view"

    invoke-static/range {v19 .. v20}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v4    # "appState":Lnet/oneplus/h2launcher/LauncherAppState;
    .end local v9    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    .end local v11    # "orientation":I
    :cond_5
    const-string v19, "orientation"

    const/16 v20, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 59
    .restart local v11    # "orientation":I
    if-ltz v11, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoService;->isValidOrientation(I)Z

    move-result v19

    if-nez v19, :cond_4

    .line 60
    :cond_6
    sget-object v19, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoService;->TAG:Ljava/lang/String;

    const-string v20, "invalid orientation"

    invoke-static/range {v19 .. v20}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .restart local v4    # "appState":Lnet/oneplus/h2launcher/LauncherAppState;
    :cond_7
    sget-object v19, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoService;->TAG:Ljava/lang/String;

    const-string v20, "data=%s, screen=%s, orientation=%s"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    const/16 v22, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v19 .. v21}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-static/range {p0 .. p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getBlurWallpaperSettings(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v16

    .line 77
    .local v16, "settings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_8

    move-object/from16 v0, v16

    iget v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v11, v0, :cond_8

    .line 78
    sget-object v19, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoService;->TAG:Ljava/lang/String;

    const-string v20, "Setting home screen wallpaper with a different orientation is not allowed, current=%d"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    move/from16 v23, v0

    .line 79
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    .line 78
    invoke-static/range {v19 .. v21}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 84
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->notify:Z

    .line 85
    move-object/from16 v0, v16

    iput v11, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    .line 87
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v8, "infoList":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;>;"
    new-instance v19, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    const/high16 v20, -0x80000000

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v5, v5, v1, v11}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_b

    .line 91
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lnet/oneplus/h2launcher/oos/StyleManager;->drawWallpaperColorMask()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 92
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    .line 93
    .local v13, "primary":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->loadSwatches(Landroid/content/Context;)Ljava/util/List;

    move-result-object v17

    .line 94
    .local v17, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 95
    sget-object v19, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoService;->TAG:Ljava/lang/String;

    const-string v20, "Failed to load color swatches from one day one photo wallpaper"

    invoke-static/range {v19 .. v20}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_9
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    .line 102
    move-object/from16 v0, v16

    iget v10, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    .line 103
    .local v10, "maskColor":I
    if-nez v11, :cond_c

    const/4 v12, 0x1

    .line 106
    .local v12, "orientation2":I
    :goto_1
    new-instance v19, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v5, v10, v12}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v10    # "maskColor":I
    .end local v12    # "orientation2":I
    .end local v13    # "primary":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;
    .end local v17    # "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setBlurWallpaperSettings(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;)V

    .line 115
    :cond_b
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->clear()V

    .line 117
    move-object/from16 v0, v16

    iget v6, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    .line 118
    .local v6, "homeScreenOrientation":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 119
    .local v15, "serialNumber":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    .line 120
    .local v7, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;
    invoke-virtual {v7, v15}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->updateMetaData(Ljava/lang/String;)V

    .line 121
    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v14}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->loadImage(Landroid/content/Context;I)V

    .line 122
    invoke-virtual {v7, v6}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->onBeforeSave(I)V

    .line 123
    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v14}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->onSave(Landroid/content/Context;I)V

    goto :goto_2

    .line 103
    .end local v6    # "homeScreenOrientation":I
    .end local v7    # "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;
    .end local v15    # "serialNumber":Ljava/lang/String;
    .restart local v10    # "maskColor":I
    .restart local v13    # "primary":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;
    .restart local v17    # "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    :cond_c
    const/4 v12, 0x0

    goto :goto_1

    .line 126
    .end local v10    # "maskColor":I
    .end local v13    # "primary":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;
    .end local v17    # "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    .restart local v6    # "homeScreenOrientation":I
    .restart local v15    # "serialNumber":Ljava/lang/String;
    :cond_d
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_0

    .line 127
    new-instance v18, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    move/from16 v21, v0

    invoke-direct/range {v18 .. v21}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;-><init>(IIZ)V

    .line 129
    .local v18, "wallpaperColor":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperColor(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;)V

    goto/16 :goto_0
.end method
