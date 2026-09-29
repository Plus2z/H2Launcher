.class Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3;
.super Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToCustomizations(Lnet/oneplus/h2launcher/Workspace$State;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

.field final synthetic val$appsView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    .prologue
    .line 219
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3;->val$appsView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1
    .param p1, "revealView"    # Landroid/view/View;
    .param p2, "allAppsButtonView"    # Landroid/view/View;

    .prologue
    .line 237
    new-instance v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3$1;

    invoke-direct {v0, p0, p1, p2}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3$1;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3;Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method getMaterialRevealViewFinalAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "revealView"    # Landroid/view/View;

    .prologue
    .line 222
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method getMaterialRevealViewStartFinalRadius()F
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method isContentViewAlphaEnabled()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method onTransitionComplete()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3;->val$appsView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getAdapter()Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->setUpdateIconsInBackground(Z)V

    .line 258
    return-void
.end method
