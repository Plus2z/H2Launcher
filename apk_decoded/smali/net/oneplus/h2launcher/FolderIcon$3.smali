.class Lnet/oneplus/h2launcher/FolderIcon$3;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/FolderIcon;

.field final synthetic val$finalParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

.field final synthetic val$reverse:Z

.field final synthetic val$scale0:F

.field final synthetic val$transX0:F

.field final synthetic val$transY0:F


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/FolderIcon;ZFLnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;FF)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/FolderIcon;

    .prologue
    .line 774
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    iput-boolean p2, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->val$reverse:Z

    iput p3, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->val$transX0:F

    iput-object p4, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->val$finalParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    iput p5, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->val$transY0:F

    iput p6, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->val$scale0:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 776
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 777
    .local v0, "progress":F
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->val$reverse:Z

    if-eqz v1, :cond_0

    .line 778
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 779
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    iget-object v1, v1, Lnet/oneplus/h2launcher/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 782
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    iget-object v1, v1, Lnet/oneplus/h2launcher/FolderIcon;->mAnimParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    iget v2, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->val$transX0:F

    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->val$finalParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v4, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->val$transX0:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 783
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    iget-object v1, v1, Lnet/oneplus/h2launcher/FolderIcon;->mAnimParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    iget v2, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->val$transY0:F

    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->val$finalParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v4, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->val$transY0:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 784
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    iget-object v1, v1, Lnet/oneplus/h2launcher/FolderIcon;->mAnimParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    iget v2, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->val$scale0:F

    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->val$finalParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v4, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->val$scale0:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 785
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$3;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/FolderIcon;->invalidate()V

    .line 786
    return-void
.end method
