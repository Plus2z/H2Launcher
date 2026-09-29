.class Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$3;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->animateBackgroundGradient(Lnet/oneplus/h2launcher/TransitionStates;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;

.field final synthetic val$dragLayer:Lnet/oneplus/h2launcher/DragLayer;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;Lnet/oneplus/h2launcher/DragLayer;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;

    .prologue
    .line 553
    iput-object p1, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$3;->this$0:Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;

    iput-object p2, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$3;->val$dragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 556
    iget-object v1, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$3;->val$dragLayer:Lnet/oneplus/h2launcher/DragLayer;

    .line 557
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 556
    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/DragLayer;->setBackgroundAlpha(F)V

    .line 558
    return-void
.end method
