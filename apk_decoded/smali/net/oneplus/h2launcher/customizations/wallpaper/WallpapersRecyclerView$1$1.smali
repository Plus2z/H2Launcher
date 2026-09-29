.class Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1$1;
.super Landroid/database/DataSetObserver;
.source "WallpapersRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1;

.field final synthetic val$provider:Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1;Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1;

    .prologue
    .line 82
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1$1;->this$1:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1;

    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1$1;->val$provider:Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    .line 85
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1$1;->val$provider:Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;->getTileCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 86
    .local v0, "index":I
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1$1;->val$provider:Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;->getTile(I)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v1

    .line 87
    .local v1, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    if-eqz v1, :cond_0

    .line 88
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1$1;->this$1:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1;

    iget-object v2, v2, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1$1;->val$provider:Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;->getTile(I)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->addWallpaperTile(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    .line 90
    :cond_0
    return-void
.end method
