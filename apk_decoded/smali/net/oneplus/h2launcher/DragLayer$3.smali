.class Lnet/oneplus/h2launcher/DragLayer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/DragLayer;->animateView(Lnet/oneplus/h2launcher/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/DragLayer;

.field final synthetic val$animationEndStyle:I

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/DragLayer;Ljava/lang/Runnable;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/DragLayer;

    .prologue
    .line 980
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragLayer$3;->this$0:Lnet/oneplus/h2launcher/DragLayer;

    iput-object p2, p0, Lnet/oneplus/h2launcher/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lnet/oneplus/h2launcher/DragLayer$3;->val$animationEndStyle:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 982
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 985
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/DragLayer$3;->val$animationEndStyle:I

    packed-switch v0, :pswitch_data_0

    .line 992
    :goto_0
    return-void

    .line 987
    :pswitch_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer$3;->this$0:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragLayer;->clearAnimatedView()V

    goto :goto_0

    .line 985
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
