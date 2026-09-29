.class Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$RotateListener;
.super Lnet/oneplus/h2launcher/crop/util/RotationGestureDetector$SimpleOnRotationGestureListener;
.source "GestureCropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$RotateListener;->this$0:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/util/RotationGestureDetector$SimpleOnRotationGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$1;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$RotateListener;-><init>(Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;)V

    return-void
.end method


# virtual methods
.method public onRotation(Lnet/oneplus/h2launcher/crop/util/RotationGestureDetector;)Z
    .locals 4
    .param p1, "rotationDetector"    # Lnet/oneplus/h2launcher/crop/util/RotationGestureDetector;

    .prologue
    .line 146
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$RotateListener;->this$0:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/crop/util/RotationGestureDetector;->getAngle()F

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$RotateListener;->this$0:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-static {v2}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->access$300(Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;)F

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$RotateListener;->this$0:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-static {v3}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->access$400(Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->postRotate(FFF)V

    .line 147
    const/4 v0, 0x1

    return v0
.end method
