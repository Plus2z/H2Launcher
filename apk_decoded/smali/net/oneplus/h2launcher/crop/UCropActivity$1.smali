.class Lnet/oneplus/h2launcher/crop/UCropActivity$1;
.super Ljava/lang/Object;
.source "UCropActivity.java"

# interfaces
.implements Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/crop/UCropActivity;->cropAndSaveImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/crop/UCropActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/crop/UCropActivity;

    .prologue
    .line 383
    iput-object p1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$1;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapCropped()V
    .locals 5

    .prologue
    .line 386
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$1;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$000(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;

    move-result-object v0

    .line 387
    .local v0, "cropCallbackSecondary":Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;
    if-eqz v0, :cond_0

    .line 388
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$1;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$400(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$1;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$100(Lnet/oneplus/h2launcher/crop/UCropActivity;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$1;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    .line 389
    invoke-static {v3}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$200(Lnet/oneplus/h2launcher/crop/UCropActivity;)I

    move-result v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$1;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v4}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$300(Lnet/oneplus/h2launcher/crop/UCropActivity;)Landroid/net/Uri;

    move-result-object v4

    .line 388
    invoke-virtual {v1, v2, v3, v4, v0}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->cropAndSaveImage(Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;)V

    .line 395
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$1;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$1;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$500(Lnet/oneplus/h2launcher/crop/UCropActivity;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$1;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v3}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$600(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->getTargetAspectRatio()F

    move-result v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$1;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    .line 392
    invoke-static {v4}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$700(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/view/OverlayView;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getCropCoverMaskColor()I

    move-result v4

    .line 391
    invoke-static {v1, v2, v3, v4}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$800(Lnet/oneplus/h2launcher/crop/UCropActivity;Landroid/net/Uri;FI)V

    .line 393
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$1;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->finish()V

    goto :goto_0
.end method

.method public onCropFailure(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "bitmapCropException"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 399
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$1;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$900(Lnet/oneplus/h2launcher/crop/UCropActivity;Ljava/lang/Throwable;)V

    .line 400
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$1;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->finish()V

    .line 401
    return-void
.end method
