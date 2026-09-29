.class Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$1;
.super Ljava/lang/Object;
.source "RecyclerFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    .prologue
    .line 114
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 117
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 121
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAnimator:Landroid/animation/AnimatorSet;

    .line 122
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget v4, v4, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHiddenTranslationX:I

    int-to-float v4, v4

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 124
    .local v0, "animator2":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 125
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 126
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 127
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 128
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 130
    .end local v0    # "animator2":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method
