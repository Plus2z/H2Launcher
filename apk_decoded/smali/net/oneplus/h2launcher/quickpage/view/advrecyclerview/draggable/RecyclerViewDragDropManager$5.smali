.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$5;
.super Ljava/lang/Object;
.source "RecyclerViewDragDropManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;
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
    .line 1199
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$5;->this$0:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1202
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$5;->this$0:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->access$300(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$5;->this$0:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$5;->this$0:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->access$400(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->access$500(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 1205
    :cond_0
    return-void
.end method
