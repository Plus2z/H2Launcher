.class Lnet/oneplus/h2launcher/Launcher$21;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->setupWallpapersButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 2389
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$21;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2392
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$21;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->isSwitchingState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2393
    const-string v2, "Launcher"

    const-string v3, "workspace is switch state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    :cond_0
    :goto_0
    return-void

    .line 2397
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2398
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    move-result-object v1

    .line 2399
    .local v1, "wallpaperModel":Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$21;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->areWallpapersLoaded(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2400
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$21;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/Launcher;->onClickWallpaperPicker(Landroid/view/View;)V

    goto :goto_0

    .line 2402
    :cond_2
    new-instance v2, Lnet/oneplus/h2launcher/Launcher$21$1;

    invoke-direct {v2, p0, p1}, Lnet/oneplus/h2launcher/Launcher$21$1;-><init>(Lnet/oneplus/h2launcher/Launcher$21;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->setOnWallpaperLoadedCallback(Ljava/lang/Runnable;)V

    .line 2411
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->isPreloadingWallpaper()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2412
    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->preloadWallpapers(Landroid/content/Context;)V

    goto :goto_0
.end method
