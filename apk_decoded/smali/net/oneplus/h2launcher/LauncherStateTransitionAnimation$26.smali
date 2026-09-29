.class Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$26;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startWorkspaceSearchBarAnimation(Landroid/animation/AnimatorSet;Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

.field final synthetic val$duration:I

.field final synthetic val$toSearchBarState:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Lnet/oneplus/h2launcher/SearchDropTargetBar$State;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    .prologue
    .line 1718
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$26;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$26;->val$toSearchBarState:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    iput p3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$26;->val$duration:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1735
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$26;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->isDarkModeTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1736
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$26;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getSearchDropTargetBar()Lnet/oneplus/h2launcher/SearchDropTargetBar;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$26;->val$toSearchBarState:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->animateToState(Lnet/oneplus/h2launcher/SearchDropTargetBar$State;I)V

    .line 1738
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1725
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$26;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->isDarkModeTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1726
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$26;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getSearchDropTargetBar()Lnet/oneplus/h2launcher/SearchDropTargetBar;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$26;->val$toSearchBarState:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    iget v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$26;->val$duration:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->animateToState(Lnet/oneplus/h2launcher/SearchDropTargetBar$State;I)V

    .line 1729
    :cond_0
    return-void
.end method
