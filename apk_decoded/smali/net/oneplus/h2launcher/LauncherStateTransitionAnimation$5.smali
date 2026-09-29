.class Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$5;
.super Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToShrunkenAllApps(Lnet/oneplus/h2launcher/Workspace$State;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

.field final synthetic val$isFirstInitialized:Z

.field final synthetic val$toView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    .prologue
    .line 301
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$5;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$5;->val$toView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    iput-boolean p3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$5;->val$isFirstInitialized:Z

    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaterialRevealViewFinalAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "revealView"    # Landroid/view/View;

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public getMaterialRevealViewStartFinalRadius()F
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method isContentViewAlphaEnabled()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method onTransitionComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$5;->val$toView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->enableScrollBar(Z)V

    .line 319
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$5;->val$toView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getAdapter()Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    move-result-object v0

    .line 320
    .local v0, "adapter":Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$5;->val$isFirstInitialized:Z

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$5;->val$toView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->setFirstInitialized(Z)V

    .line 322
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->setUpdateIconsInBackground(Z)V

    .line 324
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$5;->val$toView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getAppsRecyclerView()Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 325
    return-void
.end method
