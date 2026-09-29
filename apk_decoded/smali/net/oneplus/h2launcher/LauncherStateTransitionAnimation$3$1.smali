.class Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3;->getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3;

.field final synthetic val$allAppsButtonView:Landroid/view/View;

.field final synthetic val$revealView:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3;

    .prologue
    .line 237
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3$1;->this$1:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3$1;->val$revealView:Landroid/view/View;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3$1;->val$allAppsButtonView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 247
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3$1;->val$revealView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3$1;->val$revealView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 250
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3$1;->val$allAppsButtonView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 251
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 241
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3$1;->val$revealView:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 242
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3$1;->val$allAppsButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3$1;->val$allAppsButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 244
    return-void
.end method
