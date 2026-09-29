.class Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromFolderOverlay(Lnet/oneplus/h2launcher/Workspace$State;Landroid/view/View;Lnet/oneplus/h2launcher/FoldersContainerView;ZILjava/lang/Runnable;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canceled:Z

.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

.field final synthetic val$animated:Z

.field final synthetic val$fromView:Lnet/oneplus/h2launcher/FoldersContainerView;

.field final synthetic val$layerViews:Ljava/util/HashMap;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field final synthetic val$pCb:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

.field final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Lnet/oneplus/h2launcher/FoldersContainerView;ZLandroid/view/View;Ljava/lang/Runnable;Ljava/util/HashMap;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    .prologue
    .line 1606
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->val$fromView:Lnet/oneplus/h2launcher/FoldersContainerView;

    iput-boolean p3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->val$animated:Z

    iput-object p4, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->val$toView:Landroid/view/View;

    iput-object p5, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput-object p6, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->val$layerViews:Ljava/util/HashMap;

    iput-object p7, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->val$pCb:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->canceled:Z

    .line 1612
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x1

    .line 1616
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->canceled:Z

    if-eqz v1, :cond_0

    .line 1633
    :goto_0
    return-void

    .line 1617
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->val$fromView:Lnet/oneplus/h2launcher/FoldersContainerView;

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->val$animated:Z

    invoke-virtual {v1, v2, v3, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 1618
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->val$toView:Landroid/view/View;

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->val$animated:Z

    invoke-virtual {v1, v2, v3, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 1620
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 1621
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1625
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->val$layerViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1626
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->val$layerViews:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 1627
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    .line 1631
    .end local v0    # "v":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->cleanupAnimation()V

    .line 1632
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;->val$pCb:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    goto :goto_0
.end method
