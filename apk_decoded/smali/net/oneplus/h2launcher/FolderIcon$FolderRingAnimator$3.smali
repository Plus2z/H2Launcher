.class Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$3;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->animateToNaturalState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

.field final synthetic val$previewSize:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    .prologue
    .line 315
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$3;->this$0:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    iput p2, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$3;->val$previewSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 317
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 318
    .local v0, "percent":F
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$3;->this$0:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    sub-float v2, v4, v0

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    iget v3, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$3;->val$previewSize:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, v1, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mOuterRingSize:F

    .line 319
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$3;->this$0:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    sub-float v2, v4, v0

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    iget v3, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$3;->val$previewSize:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, v1, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mInnerRingSize:F

    .line 320
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$3;->this$0:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    iget-object v1, v1, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$3;->this$0:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    iget-object v1, v1, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->invalidate()V

    .line 323
    :cond_0
    return-void
.end method
