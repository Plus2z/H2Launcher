.class Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$9;
.super Ljava/lang/Object;
.source "QuickPageBaseActivity.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;


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
    .line 833
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$9;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemPinned(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 842
    return-void
.end method

.method public onItemRemoved(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 836
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$9;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->leaveQuickPageEditMode()V

    .line 837
    return-void
.end method

.method public onItemResizeFinished(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 868
    return-void
.end method

.method public onItemResized(ILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x0

    .line 846
    if-eqz p2, :cond_0

    .line 847
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$9;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getBottom()I

    move-result v2

    .line 848
    .local v2, "listBottom":I
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 850
    .local v0, "itemBottom":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$9;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ne p1, v3, :cond_1

    if-lt v2, v0, :cond_1

    .line 852
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$9;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->scrollBy(II)V

    .line 864
    .end local v0    # "itemBottom":I
    .end local v2    # "listBottom":I
    :cond_0
    :goto_0
    return-void

    .line 854
    .restart local v0    # "itemBottom":I
    .restart local v2    # "listBottom":I
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$9;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/quickpage/view/NpaLinearLayoutManager;

    .line 855
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/quickpage/view/NpaLinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    .line 856
    .local v1, "lastPos":I
    if-le p1, v1, :cond_2

    .line 857
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$9;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 858
    :cond_2
    add-int/lit8 v3, v2, -0x64

    if-ge v3, v0, :cond_0

    .line 860
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$9;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->scrollBy(II)V

    goto :goto_0
.end method

.method public onItemViewClicked(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "pinned"    # Z

    .prologue
    .line 872
    return-void
.end method

.method public onItemViewTouched(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 876
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$9;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .line 877
    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$300(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->isLongPressing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$9;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->leaveQuickPageEditMode()V

    .line 879
    const/4 v0, 0x1

    .line 882
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
