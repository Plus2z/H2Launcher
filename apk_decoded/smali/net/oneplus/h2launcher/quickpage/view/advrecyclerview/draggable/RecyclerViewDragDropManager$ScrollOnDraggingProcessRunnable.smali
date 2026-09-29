.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;
.super Ljava/lang/Object;
.source "RecyclerViewDragDropManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollOnDraggingProcessRunnable"
.end annotation


# instance fields
.field private final mHolderRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;)V
    .locals 1
    .param p1, "holder"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    .prologue
    .line 1657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1658
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;->mHolderRef:Ljava/lang/ref/WeakReference;

    .line 1659
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 1692
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;->mHolderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;->mStarted:Z

    .line 1694
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1698
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;->mHolderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    .line 1700
    .local v0, "holder":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;
    if-nez v0, :cond_1

    .line 1719
    :cond_0
    :goto_0
    return-void

    .line 1704
    :cond_1
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;->mStarted:Z

    if-eqz v2, :cond_0

    .line 1709
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->handleScrollOnDragging()V

    .line 1712
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->getRecyclerView()Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    .line 1714
    .local v1, "rv":Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;->mStarted:Z

    if-eqz v2, :cond_2

    .line 1715
    invoke-static {v1, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1717
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;->mStarted:Z

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 1662
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;->mStarted:Z

    if-eqz v2, :cond_1

    .line 1681
    :cond_0
    :goto_0
    return-void

    .line 1666
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;->mHolderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    .line 1668
    .local v0, "holder":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;
    if-eqz v0, :cond_0

    .line 1672
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->getRecyclerView()Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    .line 1674
    .local v1, "rv":Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    if-eqz v1, :cond_0

    .line 1678
    invoke-static {v1, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1680
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;->mStarted:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1684
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;->mStarted:Z

    if-nez v0, :cond_0

    .line 1689
    :goto_0
    return-void

    .line 1688
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$ScrollOnDraggingProcessRunnable;->mStarted:Z

    goto :goto_0
.end method
