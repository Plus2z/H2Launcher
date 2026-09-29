.class Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;
.super Ljava/lang/Object;
.source "QuickPageBaseActivity.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->inflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field dragPosition:I

.field dragView:Landroid/view/View;

.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

.field final synthetic val$extraPadding:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 706
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    iput p2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->val$extraPadding:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragProgress(I)V
    .locals 2
    .param p1, "translationY"    # I

    .prologue
    .line 754
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$600(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1100(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 759
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->hide()V

    .line 761
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$602(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Z)Z

    .line 763
    :cond_0
    return-void
.end method

.method public onItemDragFinished(IIZ)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "result"    # Z

    .prologue
    .line 772
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$600(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iput p2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->dragPosition:I

    .line 774
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$300(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->dragPosition:I

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->setEditableItem(I)V

    .line 776
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$602(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Z)Z

    .line 778
    :cond_0
    return-void
.end method

.method public onItemDragPositionChanged(II)V
    .locals 0
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 767
    return-void
.end method

.method public onItemLongPress(Landroid/view/View;I)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 713
    if-eqz p2, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$400(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 719
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "skipped the long press event on resizing items"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 723
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$600(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$300(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->isItemEditable(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 724
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$300(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->setLongPressing(ZI)V

    .line 725
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .line 726
    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    move-result-object v2

    invoke-virtual {v2, p2}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->findViewHolderForAdapterPosition(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 727
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v0, :cond_3

    instance-of v2, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    if-eqz v2, :cond_3

    .line 728
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-static {v2, v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$702(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    .line 732
    :cond_3
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/quickpage/view/NpaLinearLayoutManager;

    .line 733
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/NpaLinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    .line 734
    .local v1, "lastPos":I
    if-le p2, v1, :cond_4

    .line 735
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    move-result-object v2

    invoke-virtual {v2, p2}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->scrollToPosition(I)V

    .line 739
    :cond_4
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    move-result-object v2

    invoke-virtual {v2, v4}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->requestDisallowInterceptTouchEvent(Z)V

    .line 740
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$800(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->setEnabled(Z)V

    .line 742
    invoke-virtual {p1, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 743
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$900(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    .line 744
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->collapse()V

    .line 745
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->hideMainButton()V

    .line 747
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->dragView:Landroid/view/View;

    .line 748
    iput p2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->dragPosition:I

    goto/16 :goto_0
.end method

.method public onItemRelease()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 782
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$300(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->isLongPressing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 816
    :cond_0
    :goto_0
    return v0

    .line 784
    :cond_1
    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->dragPosition:I

    if-eqz v2, :cond_0

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->dragPosition:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    .line 788
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1100(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 789
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1300(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->cancelLongPressDetection()V

    .line 790
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$600(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$300(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    move-result-object v2

    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->dragPosition:I

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->isItemEditable(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 791
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->dragView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 792
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->setType(I)V

    .line 793
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->show()V

    .line 794
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->dragView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->dragView:Landroid/view/View;

    .line 795
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->dragView:Landroid/view/View;

    .line 796
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->dragView:Landroid/view/View;

    .line 797
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->val$extraPadding:I

    add-int/2addr v6, v7

    .line 794
    invoke-virtual {v2, v3, v4, v5, v6}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->setInnerPath(IIII)V

    .line 799
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$300(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->setEditing(Z)V

    .line 800
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->invalidateList()V

    .line 801
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$800(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->setEnabled(Z)V

    .line 802
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$800(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->setItemInteractionStarted(Z)V

    .line 803
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$800(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->setMoveEventsEnabled(Z)V

    .line 805
    iput-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->dragView:Landroid/view/View;

    .line 806
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->dragPosition:I

    move v0, v1

    .line 807
    goto/16 :goto_0

    .line 811
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$300(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    move-result-object v1

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->dragPosition:I

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->isItemEditable(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 812
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$800(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->setItemInteractionStarted(Z)V

    .line 813
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->hide()V

    .line 815
    :cond_3
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$602(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Z)Z

    goto/16 :goto_0
.end method
