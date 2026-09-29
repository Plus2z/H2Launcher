.class public Lnet/oneplus/h2launcher/customizations/wallpaper/providers/SavedWallpaperProvider;
.super Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;
.source "SavedWallpaperProvider.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;-><init>()V

    .line 33
    invoke-static {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->moveFromCacheDirectoryIfNecessary(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/SavedWallpaperProvider;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public loadTiles()V
    .locals 4

    .prologue
    .line 39
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/SavedWallpaperProvider;->clearTiles()V

    .line 40
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/SavedWallpaperProvider;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperManager;->loadThumbnailsAndImageIdList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 42
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/SavedWallpaperTile;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/SavedWallpaperTile;

    .line 43
    .local v0, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/SavedWallpaperTile;
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/SavedWallpaperProvider;->addTile(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    goto :goto_0

    .line 45
    .end local v0    # "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/SavedWallpaperTile;
    :cond_0
    return-void
.end method
