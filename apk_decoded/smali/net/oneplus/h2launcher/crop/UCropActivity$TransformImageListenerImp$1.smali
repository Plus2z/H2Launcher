.class Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$1;
.super Ljava/lang/Object;
.source "UCropActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->onLoadComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;

    .prologue
    .line 502
    iput-object p1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$1;->this$1:Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 505
    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$1;->this$1:Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;

    invoke-static {v4}, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->access$1300(Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;)Lnet/oneplus/h2launcher/crop/view/UCropView;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/crop/view/UCropView;->getCropImageView()Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 506
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v1, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 507
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->loadWallpaperSwatches(Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v3

    .line 508
    .local v3, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    if-eqz v3, :cond_0

    .line 509
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v4}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v2

    .line 510
    .local v2, "mainColor":I
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->get()Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    move-result-object v4

    new-instance v5, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;

    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$1;->this$1:Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;

    invoke-direct {v5, v6, v2}, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;-><init>(Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;I)V

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 512
    .end local v2    # "mainColor":I
    :cond_0
    return-void
.end method
