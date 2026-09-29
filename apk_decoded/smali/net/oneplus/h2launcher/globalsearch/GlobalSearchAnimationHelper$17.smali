.class Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalSearchAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->runSearchResultAnimation(Z)V
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
    .line 501
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$17;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 510
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$17;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getAppsSearchHistoryTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$17;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getAppsSearchHistoryGridView()Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$17;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getContactsSearchHistoryTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$17;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getContactsSearchHistoryGridView()Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$17;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchHistoryScrollView()Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;->smoothScrollTo(II)V

    .line 515
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$17;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchHistoryScrollView()Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$17;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$17;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 518
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 504
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$17;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$17;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 506
    :cond_0
    return-void
.end method
