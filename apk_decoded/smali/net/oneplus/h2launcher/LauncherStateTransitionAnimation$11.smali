.class Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToFolderOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;Landroid/view/View;Lnet/oneplus/h2launcher/FoldersContainerView;ZILnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

.field final synthetic val$animated:Z

.field final synthetic val$fromView:Landroid/view/View;

.field final synthetic val$layerViews:Ljava/util/HashMap;

.field final synthetic val$pCb:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

.field final synthetic val$toView:Lnet/oneplus/h2launcher/FoldersContainerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Landroid/view/View;ZLnet/oneplus/h2launcher/FoldersContainerView;Ljava/util/HashMap;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    .prologue
    .line 764
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;->val$fromView:Landroid/view/View;

    iput-boolean p3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;->val$animated:Z

    iput-object p4, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;->val$toView:Lnet/oneplus/h2launcher/FoldersContainerView;

    iput-object p5, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;->val$layerViews:Ljava/util/HashMap;

    iput-object p6, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;->val$pCb:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x0

    .line 767
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;->val$fromView:Landroid/view/View;

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;->val$animated:Z

    invoke-virtual {v1, v2, v3, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 768
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;->val$toView:Lnet/oneplus/h2launcher/FoldersContainerView;

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;->val$animated:Z

    invoke-virtual {v1, v2, v3, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 771
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;->val$layerViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 772
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;->val$layerViews:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 773
    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 777
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->cleanupAnimation()V

    .line 778
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;->val$pCb:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    .line 779
    return-void
.end method
