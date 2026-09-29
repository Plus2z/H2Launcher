.class Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    .prologue
    .line 275
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder$1;->this$1:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 278
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 279
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder$1;->this$1:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandleDrawable:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 280
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 281
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 283
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 284
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder$1;->this$1:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->isAnimating:Z

    .line 285
    return-void
.end method
