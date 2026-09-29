.class Lnet/oneplus/h2launcher/SwitchLayoutFragment$3;
.super Ljava/lang/Object;
.source "SwitchLayoutFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/SwitchLayoutFragment;->updateWallpaperBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    .prologue
    .line 123
    iput-object p1, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$3;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 126
    iget-object v6, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$3;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 127
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_1

    .line 128
    iget-object v6, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$3;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v6}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$200(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "[updateWallpaperBackground] context is null."

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    .line 133
    .local v5, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 134
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    instance-of v6, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_2

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    invoke-static {v0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->loadWallpaperSwatches(Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v4

    .line 137
    .local v4, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 138
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v6}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    .line 140
    .local v1, "color":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$3;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v6}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$300(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 141
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v6

    new-instance v7, Lnet/oneplus/h2launcher/SwitchLayoutFragment$3$1;

    invoke-direct {v7, p0, v1}, Lnet/oneplus/h2launcher/SwitchLayoutFragment$3$1;-><init>(Lnet/oneplus/h2launcher/SwitchLayoutFragment$3;I)V

    invoke-virtual {v6, v7}, Lnet/oneplus/h2launcher/util/TaskWorker;->postUI(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 134
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "color":I
    .end local v4    # "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    .restart local v3    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 149
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    :cond_3
    iget-object v6, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$3;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v6}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$200(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "cannot load wallpaper background color"

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
