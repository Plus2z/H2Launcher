.class Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;
.super Ljava/lang/Object;
.source "UCropActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainColorLoadedRunnable"
.end annotation


# instance fields
.field private final mMainColor:I

.field final synthetic this$1:Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;I)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;
    .param p2, "mainColor"    # I

    .prologue
    .line 529
    iput-object p1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;->this$1:Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput p2, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;->mMainColor:I

    .line 531
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 535
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;->this$1:Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;

    invoke-static {v1}, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->access$1300(Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;)Lnet/oneplus/h2launcher/crop/view/UCropView;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;->this$1:Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;

    iget-object v2, v2, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$1400(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/view/UCropView;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 536
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;->this$1:Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;

    iget-object v1, v1, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    const v2, 0x7f1101cc

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/crop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 537
    .local v0, "toolbar":Landroid/view/View;
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;->this$1:Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;

    invoke-static {v1}, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->access$1300(Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;)Lnet/oneplus/h2launcher/crop/view/UCropView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/crop/view/UCropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 539
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;->this$1:Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;

    iget-object v1, v1, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$1500(Lnet/oneplus/h2launcher/crop/UCropActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 540
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;->this$1:Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;

    iget-object v1, v1, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->supportInvalidateOptionsMenu()V

    .line 541
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;->this$1:Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;

    iget-object v1, v1, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    iget v2, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;->mMainColor:I

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$1600(Lnet/oneplus/h2launcher/crop/UCropActivity;I)V

    .line 542
    iget v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;->mMainColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 544
    .end local v0    # "toolbar":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;->this$1:Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;

    invoke-static {v1}, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->access$1300(Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;)Lnet/oneplus/h2launcher/crop/view/UCropView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/crop/view/UCropView;->getCropImageView()Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    move-result-object v1

    iget v2, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;->mMainColor:I

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setBackgroundColor(I)V

    .line 545
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;->this$1:Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;

    invoke-static {v1}, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;->access$1300(Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;)Lnet/oneplus/h2launcher/crop/view/UCropView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/crop/view/UCropView;->getOverlayView()Lnet/oneplus/h2launcher/crop/view/OverlayView;

    move-result-object v1

    iget v2, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp$MainColorLoadedRunnable;->mMainColor:I

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->setCropCoverMaskColor(I)V

    .line 546
    return-void
.end method
