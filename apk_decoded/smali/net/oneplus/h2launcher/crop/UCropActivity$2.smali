.class Lnet/oneplus/h2launcher/crop/UCropActivity$2;
.super Ljava/lang/Object;
.source "UCropActivity.java"

# interfaces
.implements Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/crop/UCropActivity;->getCropCallbackSecondary()Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;
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
    .line 410
    iput-object p1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$2;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapCropped()V
    .locals 7

    .prologue
    .line 413
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$2;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$600(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->getTargetAspectRatio()F

    move-result v3

    .line 414
    .local v3, "aspectRatio":F
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$2;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$400(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->getTargetAspectRatio()F

    move-result v4

    .line 415
    .local v4, "aspectRatio2":F
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$2;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$700(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/view/OverlayView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getCropCoverMaskColor()I

    move-result v5

    .line 416
    .local v5, "maskColor":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$2;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$1000(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/view/OverlayView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->getCropCoverMaskColor()I

    move-result v6

    .line 417
    .local v6, "maskColor2":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$2;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$2;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$500(Lnet/oneplus/h2launcher/crop/UCropActivity;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$2;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$300(Lnet/oneplus/h2launcher/crop/UCropActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-static/range {v0 .. v6}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$1100(Lnet/oneplus/h2launcher/crop/UCropActivity;Landroid/net/Uri;Landroid/net/Uri;FFII)V

    .line 418
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$2;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->finish()V

    .line 419
    return-void
.end method

.method public onCropFailure(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "bitmapCropException"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 423
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$2;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$900(Lnet/oneplus/h2launcher/crop/UCropActivity;Ljava/lang/Throwable;)V

    .line 424
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$2;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->finish()V

    .line 425
    return-void
.end method
