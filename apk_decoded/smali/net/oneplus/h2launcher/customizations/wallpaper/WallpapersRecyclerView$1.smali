.class Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1;
.super Ljava/lang/Object;
.source "WallpapersRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->loadWallpaperThumbnails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    .prologue
    .line 74
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->access$000(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;)V

    .line 81
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->access$100(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;

    .line 82
    .local v0, "provider":Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;
    new-instance v2, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1$1;

    invoke-direct {v2, p0, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1$1;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1;Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;)V

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 92
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;->loadTiles()V

    goto :goto_0

    .line 94
    .end local v0    # "provider":Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;
    :cond_0
    return-void
.end method
