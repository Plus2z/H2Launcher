.class Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLjava/lang/Runnable;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

.field final synthetic val$animated:Z

.field final synthetic val$contentView:Landroid/view/View;

.field final synthetic val$fromView:Landroid/view/View;

.field final synthetic val$layerViews:Ljava/util/HashMap;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field final synthetic val$overlaySearchBarView:Landroid/view/View;

.field final synthetic val$pCb:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

.field final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Landroid/view/View;ZLandroid/view/View;Ljava/lang/Runnable;Ljava/util/HashMap;Landroid/view/View;Landroid/view/View;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    .prologue
    .line 1241
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$fromView:Landroid/view/View;

    iput-boolean p3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$animated:Z

    iput-object p4, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$toView:Landroid/view/View;

    iput-object p5, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput-object p6, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$layerViews:Ljava/util/HashMap;

    iput-object p7, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$contentView:Landroid/view/View;

    iput-object p8, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$overlaySearchBarView:Landroid/view/View;

    iput-object p9, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$pCb:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1244
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$fromView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1245
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$fromView:Landroid/view/View;

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$animated:Z

    invoke-virtual {v1, v2, v3, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 1246
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$toView:Landroid/view/View;

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$animated:Z

    invoke-virtual {v1, v2, v3, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 1249
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1250
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1254
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$layerViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1255
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$layerViews:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1256
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 1261
    .end local v0    # "v":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$contentView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1262
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$contentView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 1263
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$contentView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1264
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$contentView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1266
    :cond_3
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$overlaySearchBarView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 1267
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$overlaySearchBarView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1271
    :cond_4
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->cleanupAnimation()V

    .line 1272
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;->val$pCb:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    .line 1273
    return-void
.end method
