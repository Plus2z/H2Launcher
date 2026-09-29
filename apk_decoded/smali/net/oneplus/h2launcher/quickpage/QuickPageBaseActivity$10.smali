.class Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$10;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;
.source "QuickPageBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->inflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 895
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$10;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const/4 v1, 0x1

    .line 919
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    .line 920
    if-ne p2, v1, :cond_1

    .line 921
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$10;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->hideMainButton()V

    .line 922
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$10;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$300(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->setQuickPageScrolling(Z)V

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    if-nez p2, :cond_0

    .line 924
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$10;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$300(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->setQuickPageScrolling(Z)V

    goto :goto_0
.end method

.method public onScrolled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 5
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    const/4 v2, 0x0

    .line 898
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$10;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1300(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->cancelLongPressDetection()V

    .line 900
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$10;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1400(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/NpaLinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/quickpage/view/NpaLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 903
    .local v0, "first":I
    if-nez v0, :cond_3

    .line 904
    invoke-virtual {p1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 905
    .local v1, "firstView":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$10;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v4}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1500(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)I

    move-result v4

    if-gt v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 910
    .end local v1    # "firstView":Landroid/view/View;
    .local v2, "showOverlay":Z
    :cond_1
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$10;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1600(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 911
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$10;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1700(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz v2, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 912
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 913
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$10;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v3, v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1602(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Z)Z

    .line 915
    :cond_2
    return-void

    .line 907
    .end local v2    # "showOverlay":Z
    :cond_3
    const/4 v2, 0x1

    .restart local v2    # "showOverlay":Z
    goto :goto_0

    .line 911
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method
