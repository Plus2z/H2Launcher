.class Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$15;
.super Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromWidgets(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

.field final synthetic val$toWorkspaceState:Lnet/oneplus/h2launcher/Workspace$State;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Lnet/oneplus/h2launcher/Workspace$State;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    .prologue
    .line 911
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$15;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$15;->val$toWorkspaceState:Lnet/oneplus/h2launcher/Workspace$State;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1
    .param p1, "revealView"    # Landroid/view/View;
    .param p2, "widgetsButtonView"    # Landroid/view/View;

    .prologue
    .line 920
    new-instance v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$15$1;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$15$1;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$15;Landroid/view/View;)V

    return-object v0
.end method

.method getMaterialRevealViewFinalAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "revealView"    # Landroid/view/View;

    .prologue
    .line 914
    const v0, 0x3e99999a    # 0.3f

    return v0
.end method

.method onTransitionComplete()V
    .locals 2

    .prologue
    .line 930
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$15;->val$toWorkspaceState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->OVERVIEW:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne v0, v1, :cond_0

    .line 931
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$15;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->inflateViewStubs()V

    .line 933
    :cond_0
    return-void
.end method
