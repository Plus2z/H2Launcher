.class Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$16;
.super Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromCustomizations(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

.field final synthetic val$customizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    .prologue
    .line 954
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$16;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$16;->val$customizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1
    .param p1, "revealView"    # Landroid/view/View;
    .param p2, "widgetsButtonView"    # Landroid/view/View;

    .prologue
    .line 962
    new-instance v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$16$1;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$16$1;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$16;Landroid/view/View;)V

    return-object v0
.end method

.method getMaterialRevealViewFinalAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "revealView"    # Landroid/view/View;

    .prologue
    .line 957
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method isContentViewAlphaEnabled()Z
    .locals 1

    .prologue
    .line 980
    const/4 v0, 0x0

    return v0
.end method

.method onTransitionComplete()V
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$16;->val$customizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$16;->val$customizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->saveCustomizations()V

    .line 976
    :cond_0
    return-void
.end method
