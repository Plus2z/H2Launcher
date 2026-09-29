.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$5;
.super Ljava/lang/Object;
.source "IconRearrangementHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->getViewAlphaAnimator(Landroid/view/View;Ljava/lang/Runnable;)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 224
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$5;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iput-object p2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$5;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 227
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 231
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$5;->val$endRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 232
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$5;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$700(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$5;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$800(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 238
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 242
    return-void
.end method
