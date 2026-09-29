.class Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$16;
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
    .line 463
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$16;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 471
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$16;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 472
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$16;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 473
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$16;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1100(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$16;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1100(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;->setTranslationY(F)V

    .line 475
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$16;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1100(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;->setAlpha(F)V

    .line 476
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$16;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$16;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 479
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 467
    return-void
.end method
