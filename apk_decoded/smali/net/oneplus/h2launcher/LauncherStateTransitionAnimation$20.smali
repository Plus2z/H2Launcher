.class Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;
.super Ljava/lang/Object;
.source "LauncherStateTransitionAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$fromView:Landroid/view/View;

.field final synthetic val$layerViews:Ljava/util/HashMap;

.field final synthetic val$stateAnimation:Landroid/animation/AnimatorSet;

.field final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;ZLandroid/view/View;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    .prologue
    .line 1277
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;->val$stateAnimation:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;->val$fromView:Landroid/view/View;

    iput-boolean p4, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;->val$animated:Z

    iput-object p5, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;->val$toView:Landroid/view/View;

    iput-object p6, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;->val$layerViews:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1281
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;->val$stateAnimation:Landroid/animation/AnimatorSet;

    if-eq v1, v2, :cond_0

    .line 1297
    :goto_0
    return-void

    .line 1284
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;->val$fromView:Landroid/view/View;

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;->val$animated:Z

    invoke-virtual {v1, v2, v3, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 1285
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;->val$toView:Landroid/view/View;

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;->val$animated:Z

    invoke-virtual {v1, v2, v3, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 1288
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;->val$layerViews:Ljava/util/HashMap;

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

    .line 1289
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;->val$layerViews:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 1290
    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1292
    :cond_2
    sget-boolean v1, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->isViewAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1293
    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    goto :goto_1

    .line 1296
    .end local v0    # "v":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;->val$stateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
