.class Lnet/oneplus/h2launcher/crop/view/UCropView$1;
.super Ljava/lang/Object;
.source "UCropView.java"

# interfaces
.implements Lnet/oneplus/h2launcher/crop/view/CropImageView$CropBoundsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/crop/view/UCropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/crop/view/UCropView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/crop/view/UCropView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/crop/view/UCropView;

    .prologue
    .line 28
    iput-object p1, p0, Lnet/oneplus/h2launcher/crop/view/UCropView$1;->this$0:Lnet/oneplus/h2launcher/crop/view/UCropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCropBoundsChangedRotate(F)V
    .locals 1
    .param p1, "cropRatio"    # F

    .prologue
    .line 31
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/UCropView$1;->this$0:Lnet/oneplus/h2launcher/crop/view/UCropView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/crop/view/UCropView;->access$000(Lnet/oneplus/h2launcher/crop/view/UCropView;)Lnet/oneplus/h2launcher/crop/view/OverlayView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/UCropView$1;->this$0:Lnet/oneplus/h2launcher/crop/view/UCropView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/crop/view/UCropView;->access$000(Lnet/oneplus/h2launcher/crop/view/UCropView;)Lnet/oneplus/h2launcher/crop/view/OverlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->setTargetAspectRatio(F)V

    .line 33
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/UCropView$1;->this$0:Lnet/oneplus/h2launcher/crop/view/UCropView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/crop/view/UCropView;->access$000(Lnet/oneplus/h2launcher/crop/view/UCropView;)Lnet/oneplus/h2launcher/crop/view/OverlayView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->postInvalidate()V

    .line 35
    :cond_0
    return-void
.end method
