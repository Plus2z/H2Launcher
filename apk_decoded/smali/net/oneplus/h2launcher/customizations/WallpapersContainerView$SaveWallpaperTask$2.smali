.class Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask$2;
.super Ljava/lang/Object;
.source "WallpapersContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->onWallpaperSaved(I)V
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
    .line 530
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask$2;->this$1:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 533
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask$2;->this$1:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->access$900(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;)V

    .line 534
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask$2;->this$1:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    iget-object v1, v1, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$702(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;Z)Z

    .line 537
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask$2;->this$1:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    iget-object v1, v1, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$1000(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 538
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask$2;->this$1:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    iget-object v1, v1, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$1000(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 539
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask$2;->this$1:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    iget-object v1, v1, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$1000(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask$2;->this$1:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    iget-object v1, v1, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$1000(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 543
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
