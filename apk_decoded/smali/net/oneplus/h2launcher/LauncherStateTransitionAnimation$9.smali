.class Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

.field final synthetic val$animated:Z

.field final synthetic val$customizationToShrunkenAllApps:Z

.field final synthetic val$fromView:Landroid/view/View;

.field final synthetic val$layerViews:Ljava/util/HashMap;

.field final synthetic val$overlaySearchBarView:Landroid/view/View;

.field final synthetic val$pCb:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

.field final synthetic val$revealView:Landroid/view/View;

.field final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Landroid/view/View;ZLandroid/view/View;Landroid/view/View;Landroid/view/View;ZLjava/util/HashMap;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    .prologue
    .line 615
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$fromView:Landroid/view/View;

    iput-boolean p3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$animated:Z

    iput-object p4, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$toView:Landroid/view/View;

    iput-object p5, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$revealView:Landroid/view/View;

    iput-object p6, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$overlaySearchBarView:Landroid/view/View;

    iput-boolean p7, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$customizationToShrunkenAllApps:Z

    iput-object p8, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$layerViews:Ljava/util/HashMap;

    iput-object p9, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$pCb:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 618
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$fromView:Landroid/view/View;

    iget-boolean v5, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$animated:Z

    invoke-virtual {v3, v4, v5, v2}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 619
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$toView:Landroid/view/View;

    iget-boolean v5, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$animated:Z

    invoke-virtual {v3, v4, v5, v2}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 622
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$revealView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 624
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$overlaySearchBarView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 625
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$overlaySearchBarView:Landroid/view/View;

    iget-boolean v4, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$customizationToShrunkenAllApps:Z

    if-eqz v4, :cond_2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 629
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$layerViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 630
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$layerViews:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 631
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    .end local v0    # "v":Landroid/view/View;
    :cond_2
    move v1, v2

    .line 625
    goto :goto_0

    .line 636
    :cond_3
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->cleanupAnimation()V

    .line 637
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;->val$pCb:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    .line 638
    return-void
.end method
