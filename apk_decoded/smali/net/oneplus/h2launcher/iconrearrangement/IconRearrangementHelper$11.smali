.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$11;
.super Ljava/lang/Object;
.source "IconRearrangementHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->dropIconToFolder(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

.field final synthetic val$alphaAnim:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$folder:Lnet/oneplus/h2launcher/Folder;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Landroid/view/View;Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;Lnet/oneplus/h2launcher/Folder;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 381
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$11;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iput-object p2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$11;->val$child:Landroid/view/View;

    iput-object p3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$11;->val$alphaAnim:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iput-object p4, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$11;->val$folder:Lnet/oneplus/h2launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 384
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 388
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$11;->val$child:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 389
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$11;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$700(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$11;->val$alphaAnim:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 390
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$11;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$800(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$11;->val$alphaAnim:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 391
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$11;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 392
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$11;->val$folder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->moveToLastPage()V

    .line 394
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 398
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 402
    return-void
.end method
