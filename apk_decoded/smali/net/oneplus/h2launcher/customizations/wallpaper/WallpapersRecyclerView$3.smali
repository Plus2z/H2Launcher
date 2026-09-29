.class Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$3;
.super Ljava/lang/Object;
.source "WallpapersRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->trimWallpaperTileData()V
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
    .line 177
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$3;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$3;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->removeAllWallpaperTiles()V

    .line 181
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$3;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->access$400(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;)V

    .line 182
    return-void
.end method
