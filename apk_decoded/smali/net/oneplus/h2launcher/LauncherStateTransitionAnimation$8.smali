.class Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$8;
.super Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToFolders(Lnet/oneplus/h2launcher/Workspace$State;Z)V
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
    .line 404
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$8;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method getMaterialRevealViewFinalAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "revealView"    # Landroid/view/View;

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method onTransitionComplete()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$8;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 412
    return-void
.end method
