.class Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalSearchAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->enterWithAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 378
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$10;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 389
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$10;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$900(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 390
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$10;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$900(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 391
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 381
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$10;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$900(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 382
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$10;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$900(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$10;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1000(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$10;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1100(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;->setVisibility(I)V

    .line 385
    return-void
.end method
