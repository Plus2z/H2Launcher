.class Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$13;
.super Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromAllApps(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    .prologue
    .line 844
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$13;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1
    .param p1, "revealView"    # Landroid/view/View;
    .param p2, "allAppsButtonView"    # Landroid/view/View;

    .prologue
    .line 858
    new-instance v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$13$1;

    invoke-direct {v0, p0, p2, p1}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$13$1;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$13;Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method getMaterialRevealViewFinalAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "revealView"    # Landroid/view/View;

    .prologue
    .line 848
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method getMaterialRevealViewStartFinalRadius()F
    .locals 2

    .prologue
    .line 852
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$13;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v1

    iget v0, v1, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsButtonVisualSize:I

    .line 853
    .local v0, "allAppsButtonSize":I
    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    return v1
.end method
