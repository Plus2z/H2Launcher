.class Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$7;
.super Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToIconRearrangement(Lnet/oneplus/h2launcher/Workspace$State;Z)V
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
    .line 366
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$7;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1
    .param p1, "revealView"    # Landroid/view/View;
    .param p2, "widgetsButtonView"    # Landroid/view/View;

    .prologue
    .line 374
    new-instance v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$7$1;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$7$1;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$7;Landroid/view/View;)V

    return-object v0
.end method

.method getMaterialRevealViewFinalAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "revealView"    # Landroid/view/View;

    .prologue
    .line 369
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method isContentViewAlphaEnabled()Z
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method onTransitionComplete()V
    .locals 0

    .prologue
    .line 384
    return-void
.end method
