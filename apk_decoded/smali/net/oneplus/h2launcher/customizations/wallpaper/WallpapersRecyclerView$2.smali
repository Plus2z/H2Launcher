.class Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$2;
.super Ljava/lang/Object;
.source "WallpapersRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->addWallpaperTiles(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

.field final synthetic val$index:I

.field final synthetic val$tileInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    .prologue
    .line 115
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$2;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    iput p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$2;->val$index:I

    iput-object p3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$2;->val$tileInfos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$2;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->access$200(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wallpapers grid adapter is null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$2;->val$index:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 123
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$2;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->access$200(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$2;->val$tileInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->addWallpaperTiles(Ljava/util/List;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$2;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->access$200(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$2;->val$index:I

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$2;->val$tileInfos:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->addWallpaperTiles(ILjava/util/List;)V

    goto :goto_0
.end method
