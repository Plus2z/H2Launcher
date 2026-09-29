.class Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WorkspaceStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->animateWorkspace(Lnet/oneplus/h2launcher/TransitionStates;IZILjava/util/HashMap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;

.field final synthetic val$cl:Lnet/oneplus/h2launcher/CellLayout;

.field final synthetic val$newAlpha:F


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;Lnet/oneplus/h2launcher/CellLayout;F)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;

    .prologue
    .line 386
    iput-object p1, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$1;->this$0:Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;

    iput-object p2, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$1;->val$cl:Lnet/oneplus/h2launcher/CellLayout;

    iput p3, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$1;->val$newAlpha:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 396
    const-string v0, "WorkspaceStateTransitionAnimation"

    const-string v1, "alpha onAnimationCancel"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 389
    iget-object v1, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$1;->val$cl:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v0

    .line 390
    .local v0, "currentAlpha":F
    const-string v1, "WorkspaceStateTransitionAnimation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alpha onAnimationEnd, currentAlpha = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", finalAlpha = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$1;->val$newAlpha:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$1;->val$cl:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    iget v2, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$1;->val$newAlpha:F

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setAlpha(F)V

    .line 392
    return-void
.end method
