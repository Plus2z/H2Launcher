.class public abstract Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;
.super Ljava/lang/Object;
.source "WallpaperTileInfoProvider.java"


# instance fields
.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;->mTiles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTile(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V
    .locals 1
    .param p1, "tileInfo"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .prologue
    .line 27
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 31
    :cond_0
    return-void
.end method

.method public clearTiles()V
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;->mTiles:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .line 46
    .local v0, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    const/4 v2, 0x0

    iput-object v2, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mThumb:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 48
    .end local v0    # "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 50
    :cond_1
    return-void
.end method

.method public getTile(I)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 34
    if-ltz p1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTileCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public abstract loadTiles()V
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "dataSetObserver"    # Landroid/database/DataSetObserver;

    .prologue
    .line 18
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 19
    return-void
.end method
