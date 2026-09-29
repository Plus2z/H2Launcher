.class Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalSearchAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->runKeyboardAnimation(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

.field final synthetic val$keyboardContainer:Landroid/view/ViewGroup;

.field final synthetic val$softwareKeyboardHeight:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;Landroid/view/ViewGroup;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 602
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    iput-object p2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->val$keyboardContainer:Landroid/view/ViewGroup;

    iput p3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->val$softwareKeyboardHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 616
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->val$keyboardContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 617
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->val$keyboardContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 618
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->isT9Search()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->val$keyboardContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->val$keyboardContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->val$softwareKeyboardHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 621
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->val$keyboardContainer:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 622
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchHistoryScrollView()Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;->smoothScrollTo(II)V

    .line 623
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->val$keyboardContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 605
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->val$keyboardContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 606
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->isT9Search()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->val$keyboardContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->val$keyboardContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 612
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;->val$keyboardContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
