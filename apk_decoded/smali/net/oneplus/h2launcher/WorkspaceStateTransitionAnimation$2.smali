.class Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$2;
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

.field final synthetic val$accessibilityEnabled:Z

.field final synthetic val$finalUtilsPanelAlpha:F

.field final synthetic val$overviewPanel:Landroid/view/ViewGroup;

.field final synthetic val$utilsPanel:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;Landroid/view/ViewGroup;FZLandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;

    .prologue
    .line 485
    iput-object p1, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$2;->this$0:Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;

    iput-object p2, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$2;->val$utilsPanel:Landroid/view/ViewGroup;

    iput p3, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$2;->val$finalUtilsPanelAlpha:F

    iput-boolean p4, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$2;->val$accessibilityEnabled:Z

    iput-object p5, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$2;->val$overviewPanel:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 494
    iget-object v0, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$2;->this$0:Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;

    iput-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 496
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$2;->val$accessibilityEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$2;->val$overviewPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$2;->val$overviewPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 500
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 488
    iget-object v1, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$2;->val$utilsPanel:Landroid/view/ViewGroup;

    iget v0, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$2;->val$finalUtilsPanelAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 489
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 488
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 490
    return-void

    .line 489
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
