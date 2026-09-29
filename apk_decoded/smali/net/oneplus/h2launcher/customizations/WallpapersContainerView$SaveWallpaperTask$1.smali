.class Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask$1;
.super Ljava/lang/Object;
.source "WallpapersContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    .prologue
    .line 454
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask$1;->this$1:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask$1;->this$1:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$700(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "force stop set wallpaper task"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask$1;->this$1:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask$1;->this$1:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->access$800(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;)I

    move-result v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->access$600(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;I)V

    .line 461
    :cond_0
    return-void
.end method
