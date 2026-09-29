.class public Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;
.super Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;
.source "ImageWallpaperProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->mResources:Landroid/content/res/Resources;

    .line 27
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private addWallpapers(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "wallpapers":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;

    .line 97
    .local v1, "wallpaper":Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;
    iget v3, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->thumbResId:I

    if-eqz v3, :cond_1

    .line 98
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->mResources:Landroid/content/res/Resources;

    iget-object v4, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->name:Ljava/lang/String;

    iget v5, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->resId:I

    iget v6, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->orientation:I

    invoke-direct {v0, v3, v4, v5, v6}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;-><init>(Landroid/content/res/Resources;Ljava/lang/String;II)V

    .line 100
    .local v0, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->mContext:Landroid/content/Context;

    iget v4, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->thumbResId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 101
    iget v3, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->overlayResId:I

    if-lez v3, :cond_0

    .line 102
    iget v3, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->overlayResId:I

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->setOverlayResId(I)V

    .line 104
    :cond_0
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->addTile(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    .line 105
    sget-object v3, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->TAG:Ljava/lang/String;

    const-string v4, "wallpaper added: %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    .end local v0    # "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;
    :cond_1
    sget-object v3, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->TAG:Ljava/lang/String;

    const-string v4, "couldn\'t find wallpaper: %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    .end local v1    # "wallpaper":Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;
    :cond_2
    return-void
.end method

.method private findBundledWallpapers()V
    .locals 21

    .prologue
    .line 31
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v20

    .line 32
    .local v20, "styleManager":Lnet/oneplus/h2launcher/oos/StyleManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v2, "wallpapers":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;>;"
    const-string v1, "wallpaper_names"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->getResourceId(Ljava/lang/String;)I

    move-result v6

    .line 34
    .local v6, "nameArr":I
    invoke-virtual/range {v20 .. v20}, Lnet/oneplus/h2launcher/oos/StyleManager;->isWallpaperScrollable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "portrait_wallpapers"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->getResourceId(Ljava/lang/String;)I

    move-result v3

    .line 37
    .local v3, "wallpaperArr":I
    const-string v1, "wallpaper_thumbnails"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->getResourceId(Ljava/lang/String;)I

    move-result v5

    .line 38
    .local v5, "wallpaperThumbArr":I
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->loadWallpapers(Ljava/util/List;IIIII)V

    .line 60
    .end local v3    # "wallpaperArr":I
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->addWallpapers(Ljava/util/List;)V

    .line 61
    return-void

    .line 42
    .end local v5    # "wallpaperThumbArr":I
    :cond_0
    const-string v1, "portrait_wallpapers"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->getResourceId(Ljava/lang/String;)I

    move-result v19

    .line 43
    .local v19, "portWallpaperArr":I
    const-string v1, "portrait_overlay_wallpapers"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->getResourceId(Ljava/lang/String;)I

    move-result v18

    .line 45
    .local v18, "portOverlayWallpaperArr":I
    const-string v1, "landscape_wallpapers"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->getResourceId(Ljava/lang/String;)I

    move-result v9

    .line 46
    .local v9, "landWallpaperArr":I
    const-string v1, "wallpaper_thumbnails"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->getResourceId(Ljava/lang/String;)I

    move-result v5

    .line 47
    .restart local v5    # "wallpaperThumbArr":I
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->getCurrentOrientation()I

    move-result v17

    .line 48
    .local v17, "currentOrientation":I
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_1

    .line 49
    const/4 v10, 0x0

    const/4 v13, 0x1

    move-object/from16 v7, p0

    move-object v8, v2

    move v11, v5

    move v12, v6

    invoke-direct/range {v7 .. v13}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->loadWallpapers(Ljava/util/List;IIIII)V

    .line 51
    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object v11, v2

    move/from16 v12, v19

    move/from16 v13, v18

    move v14, v5

    move v15, v6

    invoke-direct/range {v10 .. v16}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->loadWallpapers(Ljava/util/List;IIIII)V

    goto :goto_0

    .line 54
    :cond_1
    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object v11, v2

    move/from16 v12, v19

    move/from16 v13, v18

    move v14, v5

    move v15, v6

    invoke-direct/range {v10 .. v16}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->loadWallpapers(Ljava/util/List;IIIII)V

    .line 56
    const/4 v10, 0x0

    const/4 v13, 0x1

    move-object/from16 v7, p0

    move-object v8, v2

    move v11, v5

    move v12, v6

    invoke-direct/range {v7 .. v13}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->loadWallpapers(Ljava/util/List;IIIII)V

    goto :goto_0
.end method

.method private getCurrentOrientation()I
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getWallpaperTile(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v0

    .line 130
    .local v0, "wallpaperTileInfo":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getOrientation()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getWallpaperResourcePackageName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 117
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v4

    const-string v5, "portrait_wallpapers"

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/oos/StyleManager;->getResourceId(Ljava/lang/String;)I

    move-result v3

    .line 118
    .local v3, "resId":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 121
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v4

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->TAG:Ljava/lang/String;

    const-string v5, "failed to get wallpaper resource package name, error: %s"

    invoke-static {v4, v5, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private loadWallpapers(Ljava/util/List;IIIII)V
    .locals 18
    .param p2, "wallpaperResArr"    # I
    .param p3, "wallpaperOverlayResArr"    # I
    .param p4, "wallpaperThumbResArr"    # I
    .param p5, "nameArr"    # I
    .param p6, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;",
            ">;IIIII)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "wallpapers":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;>;"
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->getWallpaperResourcePackageName()Ljava/lang/String;

    move-result-object v9

    .line 67
    .local v9, "packageName":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 68
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->TAG:Ljava/lang/String;

    const-string v6, "packageName is null"

    invoke-static {v2, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void

    .line 72
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->mResources:Landroid/content/res/Resources;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "names":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->mResources:Landroid/content/res/Resources;

    move/from16 v0, p2

    invoke-static {v2, v0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getWallpaperResourceIds(Landroid/content/res/Resources;I)[I

    move-result-object v11

    .line 74
    .local v11, "wallpaperResIds":[I
    if-lez p3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->mResources:Landroid/content/res/Resources;

    .line 75
    move/from16 v0, p3

    invoke-static {v2, v0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getWallpaperResourceIds(Landroid/content/res/Resources;I)[I

    move-result-object v10

    .line 76
    .local v10, "wallpaperOverlayResIds":[I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->mResources:Landroid/content/res/Resources;

    move/from16 v0, p4

    invoke-static {v2, v0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getWallpaperResourceIds(Landroid/content/res/Resources;I)[I

    move-result-object v12

    .line 79
    .local v12, "wallpaperThumbResIds":[I
    const/4 v7, 0x0

    .line 80
    .local v7, "i":I
    array-length v14, v11

    const/4 v2, 0x0

    move v13, v2

    :goto_1
    if-ge v13, v14, :cond_0

    aget v3, v11, v13

    .line 81
    .local v3, "wallpaperResId":I
    aget v4, v12, v7

    .line 82
    .local v4, "wallpaperThumbResId":I
    aget-object v5, v8, v7

    .line 83
    .local v5, "name":Ljava/lang/String;
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->TAG:Ljava/lang/String;

    const-string v6, "wallpaperResId=%d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v2, v6, v15}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    new-instance v1, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;

    move-object/from16 v2, p0

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;IILjava/lang/String;I)V

    .line 87
    .local v1, "wallpaper":Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;
    if-eqz v10, :cond_2

    array-length v2, v10

    if-ge v7, v2, :cond_2

    .line 88
    aget v2, v10, v7

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->setOverlayResId(I)V

    .line 90
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v7, v7, 0x1

    .line 80
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_1

    .line 75
    .end local v1    # "wallpaper":Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;
    .end local v3    # "wallpaperResId":I
    .end local v4    # "wallpaperThumbResId":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v10    # "wallpaperOverlayResIds":[I
    .end local v12    # "wallpaperThumbResIds":[I
    :cond_3
    const/4 v10, 0x0

    goto :goto_0
.end method


# virtual methods
.method public loadTiles()V
    .locals 0

    .prologue
    .line 137
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->clearTiles()V

    .line 138
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;->findBundledWallpapers()V

    .line 139
    return-void
.end method
