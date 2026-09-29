.class Lnet/oneplus/h2launcher/InterruptibleInOutAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InterruptibleInOutAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;-><init>(Landroid/view/View;JFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

    .prologue
    .line 56
    iput-object p1, p0, Lnet/oneplus/h2launcher/InterruptibleInOutAnimator$1;->this$0:Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 59
    iget-object v0, p0, Lnet/oneplus/h2launcher/InterruptibleInOutAnimator$1;->this$0:Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

    const/4 v1, 0x0

    iput v1, v0, Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;->mDirection:I

    .line 60
    return-void
.end method
