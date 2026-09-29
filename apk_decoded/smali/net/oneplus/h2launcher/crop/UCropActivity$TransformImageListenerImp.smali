.class Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;
.super Ljava/lang/Object;
.source "UCropActivity.java"

# interfaces
.implements Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/crop/UCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransformImageListenerImp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;
    }
.end annotation


# instance fields
.field private mImageLoaded:Z

.field private mTargetUCropView:Lnet/oneplus/h2launcher/crop/view/UCropView;

.field final synthetic this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/crop/UCropActivity;Lnet/oneplus/h2launcher/crop/view/UCropView;)V
    .locals 1
    .param p2, "target"    # Lnet/oneplus/h2launcher/crop/view/UCropView;

    .prologue
    .line 476
    iput-object p1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->mImageLoaded:Z

    .line 477
    iput-object p2, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->mTargetUCropView:Lnet/oneplus/h2launcher/crop/view/UCropView;

    .line 478
    return-void
.end method

.method static synthetic access$1300(Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;)Lnet/oneplus/h2launcher/crop/view/UCropView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;

    .prologue
    .line 472
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->mTargetUCropView:Lnet/oneplus/h2launcher/crop/view/UCropView;

    return-object v0
.end method


# virtual methods
.method public onBitmapLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 492
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$1200(Lnet/oneplus/h2launcher/crop/UCropActivity;)V

    .line 493
    return-void
.end method

.method public onLoadComplete()V
    .locals 2

    .prologue
    .line 497
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->mImageLoaded:Z

    if-eqz v1, :cond_0

    .line 515
    :goto_0
    return-void

    .line 501
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->mImageLoaded:Z

    .line 502
    new-instance v0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$1;-><init>(Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;)V

    .line 514
    .local v0, "loadImageColor":Ljava/lang/Runnable;
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->get()Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onLoadFailure(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 519
    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 520
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    const v3, 0x7f0b003c

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "message":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 522
    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v2, p1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$900(Lnet/oneplus/h2launcher/crop/UCropActivity;Ljava/lang/Throwable;)V

    .line 523
    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/crop/UCropActivity;->finish()V

    .line 524
    return-void
.end method

.method public onRotate(F)V
    .locals 0
    .param p1, "currentAngle"    # F

    .prologue
    .line 483
    return-void
.end method

.method public onScale(F)V
    .locals 0
    .param p1, "currentScale"    # F

    .prologue
    .line 488
    return-void
.end method
