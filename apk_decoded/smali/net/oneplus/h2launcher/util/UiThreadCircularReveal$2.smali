.class final Lnet/oneplus/h2launcher/util/UiThreadCircularReveal$2;
.super Ljava/lang/Object;
.source "UiThreadCircularReveal.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/util/UiThreadCircularReveal;->createCircularReveal(Landroid/view/View;IIFFLandroid/view/ViewOutlineProvider;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$outlineProvider:Lnet/oneplus/h2launcher/util/RevealOutlineProvider;

.field final synthetic val$revealView:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/util/RevealOutlineProvider;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lnet/oneplus/h2launcher/util/UiThreadCircularReveal$2;->val$outlineProvider:Lnet/oneplus/h2launcher/util/RevealOutlineProvider;

    iput-object p2, p0, Lnet/oneplus/h2launcher/util/UiThreadCircularReveal$2;->val$revealView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 48
    .local v0, "progress":F
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/UiThreadCircularReveal$2;->val$outlineProvider:Lnet/oneplus/h2launcher/util/RevealOutlineProvider;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/util/RevealOutlineProvider;->setProgress(F)V

    .line 49
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/UiThreadCircularReveal$2;->val$revealView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidateOutline()V

    .line 50
    sget-boolean v1, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP_MR1:Z

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/UiThreadCircularReveal$2;->val$revealView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 53
    :cond_0
    return-void
.end method
