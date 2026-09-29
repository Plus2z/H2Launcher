.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$2;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;
.source "RecyclerViewDragDropManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    .prologue
    .line 210
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->onScrollStateChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    .line 214
    return-void
.end method

.method public onScrolled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    invoke-virtual {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->onScrolled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    .line 219
    return-void
.end method
