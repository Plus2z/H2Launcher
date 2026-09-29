.class Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;
.super Ljava/lang/Object;
.source "RecyclerFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

.field final synthetic val$animate:Z


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    .prologue
    .line 362
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iput-boolean p2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 365
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->access$000(Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 370
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->val$animate:Z

    if-eqz v1, :cond_3

    .line 371
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAnimatingIn:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->getTranslationX()F

    move-result v1

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    .line 372
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 375
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAnimator:Landroid/animation/AnimatorSet;

    .line 376
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v6, [F

    const/4 v4, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 377
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 379
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6$1;-><init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 386
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iput-boolean v6, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAnimatingIn:Z

    .line 387
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 388
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 393
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_2
    :goto_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->postAutoHide()V

    goto :goto_0

    .line 391
    :cond_3
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    invoke-virtual {v1, v5}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->setTranslationX(F)V

    goto :goto_1
.end method
