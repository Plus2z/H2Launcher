.class public Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;
.super Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;
.source "SetupWallpaperService.java"


# static fields
.field public static final EXTRA_SWITCHING_LAYOUT:Ljava/lang/String; = "switching_layout"

.field private static final INVALID_COLOR:I = -0x80000000

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultWallpaperColor:I

.field private mDefaultWallpaperTile:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;

.field private mStyleManager:Lnet/oneplus/h2launcher/oos/StyleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;-><init>(Ljava/lang/String;)V

    .line 39
    const/high16 v0, -0x80000000

    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mDefaultWallpaperColor:I

    .line 43
    return-void
.end method

.method private createDefaultWallpaperTile(I)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;
    .locals 17
    .param p1, "screen"    # I

    .prologue
    .line 112
    if-nez p1, :cond_0

    const/4 v2, 0x1

    .line 115
    .local v2, "isLockScreen":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 116
    .local v5, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mStyleManager:Lnet/oneplus/h2launcher/oos/StyleManager;

    move-object/from16 v16, v0

    if-eqz v2, :cond_1

    const-string v15, "default_lock_wallpaper_index"

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lnet/oneplus/h2launcher/oos/StyleManager;->getResourceId(Ljava/lang/String;)I

    move-result v8

    .line 118
    .local v8, "wallpaperIndexResId":I
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 119
    .local v7, "wallpaperIndex":I
    if-gez v7, :cond_2

    .line 120
    sget-object v15, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->TAG:Ljava/lang/String;

    const-string v16, "invalid wallpaper index"

    invoke-static/range {v15 .. v16}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v15, 0x0

    .line 158
    :goto_2
    return-object v15

    .line 112
    .end local v2    # "isLockScreen":Z
    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v7    # "wallpaperIndex":I
    .end local v8    # "wallpaperIndexResId":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 116
    .restart local v2    # "isLockScreen":Z
    .restart local v5    # "resources":Landroid/content/res/Resources;
    :cond_1
    const-string v15, "default_wallpaper_index"

    goto :goto_1

    .line 125
    .restart local v7    # "wallpaperIndex":I
    .restart local v8    # "wallpaperIndexResId":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mStyleManager:Lnet/oneplus/h2launcher/oos/StyleManager;

    const-string v16, "wallpaper_names"

    invoke-virtual/range {v15 .. v16}, Lnet/oneplus/h2launcher/oos/StyleManager;->getResourceId(Ljava/lang/String;)I

    move-result v9

    .line 126
    .local v9, "wallpaperNamesArray":I
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "names":[Ljava/lang/String;
    array-length v15, v3

    if-le v15, v7, :cond_3

    aget-object v1, v3, v7

    .line 128
    .local v1, "defaultWallpaperName":Ljava/lang/String;
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 129
    sget-object v15, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->TAG:Ljava/lang/String;

    const-string v16, "invalid wallpaper names"

    invoke-static/range {v15 .. v16}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v15, 0x0

    goto :goto_2

    .line 127
    .end local v1    # "defaultWallpaperName":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 134
    .restart local v1    # "defaultWallpaperName":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mStyleManager:Lnet/oneplus/h2launcher/oos/StyleManager;

    move-object/from16 v16, v0

    if-eqz v2, :cond_5

    const-string v15, "default_lock_wallpapers"

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lnet/oneplus/h2launcher/oos/StyleManager;->getResourceId(Ljava/lang/String;)I

    move-result v6

    .line 136
    .local v6, "wallpaperArray":I
    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getWallpaperResourceIds(Landroid/content/res/Resources;I)[I

    move-result-object v11

    .line 137
    .local v11, "wallpaperResIds":[I
    array-length v15, v11

    if-le v15, v7, :cond_6

    aget v10, v11, v7

    .line 139
    .local v10, "wallpaperResId":I
    :goto_5
    if-nez v10, :cond_7

    .line 140
    sget-object v15, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->TAG:Ljava/lang/String;

    const-string v16, "cannot find resource id for default wallpaper"

    invoke-static/range {v15 .. v16}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v15, 0x0

    goto :goto_2

    .line 134
    .end local v6    # "wallpaperArray":I
    .end local v10    # "wallpaperResId":I
    .end local v11    # "wallpaperResIds":[I
    :cond_5
    const-string v15, "default_wallpapers"

    goto :goto_4

    .line 137
    .restart local v6    # "wallpaperArray":I
    .restart local v11    # "wallpaperResIds":[I
    :cond_6
    const/4 v10, 0x0

    goto :goto_5

    .line 144
    .restart local v10    # "wallpaperResId":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mStyleManager:Lnet/oneplus/h2launcher/oos/StyleManager;

    const-string v16, "wallpaper_thumbnails"

    invoke-virtual/range {v15 .. v16}, Lnet/oneplus/h2launcher/oos/StyleManager;->getResourceId(Ljava/lang/String;)I

    move-result v12

    .line 145
    .local v12, "wallpaperThumbArray":I
    invoke-static {v5, v12}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getWallpaperResourceIds(Landroid/content/res/Resources;I)[I

    move-result-object v14

    .line 147
    .local v14, "wallpaperThumbResIds":[I
    array-length v15, v14

    if-le v15, v7, :cond_8

    aget v13, v14, v7

    .line 149
    .local v13, "wallpaperThumbResId":I
    :goto_6
    if-nez v13, :cond_9

    .line 150
    sget-object v15, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->TAG:Ljava/lang/String;

    const-string v16, "cannot find resource id for default wallpaper thumbnail"

    invoke-static/range {v15 .. v16}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v15, 0x0

    goto :goto_2

    .line 147
    .end local v13    # "wallpaperThumbResId":I
    :cond_8
    const/4 v13, 0x0

    goto :goto_6

    .line 155
    .restart local v13    # "wallpaperThumbResId":I
    :cond_9
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isStandardLayout()Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v4, 0x0

    .line 158
    .local v4, "orientation":I
    :goto_7
    new-instance v15, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;

    invoke-direct {v15, v5, v1, v10, v4}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;-><init>(Landroid/content/res/Resources;Ljava/lang/String;II)V

    goto :goto_2

    .line 155
    .end local v4    # "orientation":I
    :cond_a
    const/4 v4, 0x1

    goto :goto_7
.end method

.method private getBlurWallpaperSettings()Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->emptySettings()Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v0

    .line 164
    .local v0, "settings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->getDefaultWallpaperColor()I

    move-result v1

    iput v1, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    .line 167
    :cond_0
    return-object v0
.end method

.method private getDefaultWallpaperColor()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 171
    iget v2, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mDefaultWallpaperColor:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    .line 172
    iget v2, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mDefaultWallpaperColor:I

    .line 181
    :goto_0
    return v2

    .line 175
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mDefaultWallpaperTile:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "wallpaperName":Ljava/lang/String;
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->loadWallpaperPredefinedColors(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, "colors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mDefaultWallpaperColor:I

    .line 179
    sget-object v2, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->TAG:Ljava/lang/String;

    const-string v3, "mDefaultWallpaperColor=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mDefaultWallpaperColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_1
    iget v2, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mDefaultWallpaperColor:I

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;->onCreate()V

    .line 49
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->init(Landroid/content/Context;)V

    .line 53
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mStyleManager:Lnet/oneplus/h2launcher/oos/StyleManager;

    .line 54
    return-void
.end method

.method protected onSetWallpaper()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 58
    iget-object v9, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->hasWallpaperSetupCompleted(Landroid/content/Context;)Z

    move-result v8

    .line 59
    .local v8, "wallpaperSetupCompleted":Z
    if-eqz v8, :cond_0

    .line 60
    sget-object v9, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->TAG:Ljava/lang/String;

    const-string v10, "wallpaper has been setup, skip setup wallpaper"

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-direct {p0, v13}, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->createDefaultWallpaperTile(I)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;

    move-result-object v9

    iput-object v9, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mDefaultWallpaperTile:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;

    .line 65
    iget-object v9, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mDefaultWallpaperTile:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;

    if-nez v9, :cond_1

    .line 66
    sget-object v9, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->TAG:Ljava/lang/String;

    const-string v10, "failed to create default wallpaper tile"

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    const/4 v5, 0x0

    .line 73
    .local v5, "switchingLayout":Z
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->getJobParameters()Landroid/app/job/JobParameters;

    move-result-object v2

    .line 74
    .local v2, "jobParameters":Landroid/app/job/JobParameters;
    if-eqz v2, :cond_2

    .line 75
    invoke-virtual {v2}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 77
    const-string v9, "switching_layout"

    invoke-virtual {v0, v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 81
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    iget-object v9, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    .line 82
    .local v7, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-static {v7}, Lcom/oneplus/sdk/wrapper/android/app/OpWallpaperManager;->getKeyguardBitmap(Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 83
    .local v3, "lockWallpaper":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    .line 84
    sget-object v9, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->TAG:Ljava/lang/String;

    const-string v10, "lock wallpaper bitmap is null, set default lock wallpaper"

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, v12}, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->createDefaultWallpaperTile(I)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;

    move-result-object v1

    .line 87
    .local v1, "defaultLockWallpaperTile":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;
    if-eqz v1, :cond_3

    .line 88
    iget-object v9, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9, v12}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->onSave(Landroid/content/Context;I)V

    .line 93
    .end local v1    # "defaultLockWallpaperTile":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;
    :cond_3
    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->getBlurWallpaperSettings()Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v4

    .line 94
    .local v4, "settings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    sget-object v9, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->TAG:Ljava/lang/String;

    const-string v10, "write blur wallpaper settings: %s"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v4, v11, v12

    invoke-static {v9, v10, v11}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v9, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v9, v4}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setBlurWallpaperSettings(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;)V

    .line 98
    iget-object v9, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mDefaultWallpaperTile:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;

    iget-object v10, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v13}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->onSave(Landroid/content/Context;I)V

    .line 99
    new-instance v6, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->getDefaultWallpaperColor()I

    move-result v9

    iget-boolean v10, v4, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    invoke-direct {v6, v12, v9, v10}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;-><init>(IIZ)V

    .line 101
    .local v6, "wallpaperColor":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
    iget-object v9, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperColor(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;)V

    .line 105
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->clear()V

    .line 108
    iget-object v9, p0, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperSetupCompleted(Landroid/content/Context;)V

    goto :goto_0
.end method
