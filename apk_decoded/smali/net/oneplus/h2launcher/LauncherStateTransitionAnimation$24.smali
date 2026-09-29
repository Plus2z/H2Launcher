.class Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;
.super Ljava/lang/Object;
.source "LauncherStateTransitionAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromFolderOverlay(Lnet/oneplus/h2launcher/Workspace$State;Landroid/view/View;Lnet/oneplus/h2launcher/FoldersContainerView;ZILjava/lang/Runnable;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

.field final synthetic val$animated:Z

.field final synthetic val$fromView:Lnet/oneplus/h2launcher/FoldersContainerView;

.field final synthetic val$layerViews:Ljava/util/HashMap;

.field final synthetic val$stateAnimation:Landroid/animation/AnimatorSet;

.field final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Lnet/oneplus/h2launcher/FoldersContainerView;ZLandroid/view/View;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    .prologue
    .line 1651
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;->val$stateAnimation:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;->val$fromView:Lnet/oneplus/h2launcher/FoldersContainerView;

    iput-boolean p4, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;->val$animated:Z

    iput-object p5, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;->val$toView:Landroid/view/View;

    iput-object p6, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;->val$layerViews:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1655
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;->val$stateAnimation:Landroid/animation/AnimatorSet;

    if-eq v1, v2, :cond_0

    .line 1674
    :goto_0
    return-void

    .line 1658
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;->val$fromView:Lnet/oneplus/h2launcher/FoldersContainerView;

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;->val$animated:Z

    invoke-virtual {v1, v2, v3, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 1659
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;->val$toView:Landroid/view/View;

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;->val$animated:Z

    invoke-virtual {v1, v2, v3, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 1662
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;->val$layerViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1663
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;->val$layerViews:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_2

    .line 1664
    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1666
    :cond_2
    sget-boolean v1, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 1667
    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    goto :goto_1

    .line 1672
    .end local v0    # "v":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;->val$toView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1673
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;->val$stateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
