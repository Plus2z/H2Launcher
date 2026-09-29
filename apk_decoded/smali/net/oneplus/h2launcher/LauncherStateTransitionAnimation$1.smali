.class Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$1;
.super Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToAllApps(Lnet/oneplus/h2launcher/Workspace$State;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

.field final synthetic val$startSearchAfterTransition:Z

.field final synthetic val$toView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;ZLnet/oneplus/h2launcher/allapps/AllAppsContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    .prologue
    .line 151
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$1;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iput-boolean p2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$1;->val$startSearchAfterTransition:Z

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$1;->val$toView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1
    .param p1, "revealView"    # Landroid/view/View;
    .param p2, "allAppsButtonView"    # Landroid/view/View;

    .prologue
    .line 164
    new-instance v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$1$1;

    invoke-direct {v0, p0, p2}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$1$1;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$1;Landroid/view/View;)V

    return-object v0
.end method

.method public getMaterialRevealViewFinalAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "revealView"    # Landroid/view/View;

    .prologue
    .line 154
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMaterialRevealViewStartFinalRadius()F
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$1;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v1

    iget v0, v1, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsButtonVisualSize:I

    .line 159
    .local v0, "allAppsButtonSize":I
    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    return v1
.end method

.method onTransitionComplete()V
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$1;->val$startSearchAfterTransition:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$1;->val$toView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->startAppsSearch()V

    .line 178
    :cond_0
    return-void
.end method
