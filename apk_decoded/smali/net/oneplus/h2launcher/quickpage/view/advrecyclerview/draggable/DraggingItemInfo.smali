.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;
.super Ljava/lang/Object;
.source "DraggingItemInfo.java"


# instance fields
.field public final grabbedPositionX:I

.field public final grabbedPositionY:I

.field public final height:I

.field public final id:J

.field public final margins:Landroid/graphics/Rect;

.field public final width:I


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;II)V
    .locals 2
    .param p1, "vh"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "touchX"    # I
    .param p3, "touchY"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->width:I

    .line 34
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->height:I

    .line 35
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->id:J

    .line 36
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, p2, v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->grabbedPositionX:I

    .line 37
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p3, v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->grabbedPositionY:I

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->margins:Landroid/graphics/Rect;

    .line 39
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->margins:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getLayoutMargins(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 40
    return-void
.end method
