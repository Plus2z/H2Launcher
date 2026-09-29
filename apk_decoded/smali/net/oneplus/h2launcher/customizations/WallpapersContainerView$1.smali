.class final Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1;
.super Ljava/lang/Object;
.source "WallpapersContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->updateWallpaperBackground(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$animated:Z

.field final synthetic val$preview:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1;->val$preview:Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1;->val$animated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 95
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1;->val$preview:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->loadWallpaperSwatches(Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v2

    .line 96
    .local v2, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v3}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v0

    .line 98
    .local v0, "color":I
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v1

    .line 99
    .local v1, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersView()Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 100
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->get()Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    move-result-object v3

    new-instance v4, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1$1;

    invoke-direct {v4, p0, v1, v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1$1;-><init>(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1;Lnet/oneplus/h2launcher/Launcher;I)V

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 114
    .end local v0    # "color":I
    .end local v1    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    :goto_0
    return-void

    .line 109
    .restart local v0    # "color":I
    .restart local v1    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    :cond_0
    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$002(I)I

    goto :goto_0

    .line 112
    .end local v0    # "color":I
    .end local v1    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cannot load wallpaper background color"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
