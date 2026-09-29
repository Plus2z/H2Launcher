.class Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$7$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$7;->getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$7;

.field final synthetic val$revealView:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$7;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$7;

    .prologue
    .line 374
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$7$1;->this$1:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$7;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$7$1;->val$revealView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 377
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$7$1;->val$revealView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    return-void
.end method
