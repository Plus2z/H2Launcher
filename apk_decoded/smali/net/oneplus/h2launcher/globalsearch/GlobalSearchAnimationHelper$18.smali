.class Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$18;
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
    .line 526
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$18;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 537
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$18;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setAlpha(F)V

    .line 538
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$18;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setTranslationY(F)V

    .line 539
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$18;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 540
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 529
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$18;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    .line 530
    .local v0, "layoutManager":Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
    invoke-virtual {v0, v2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 531
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$18;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setTranslationY(F)V

    .line 532
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$18;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$1500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 533
    return-void
.end method
