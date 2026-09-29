.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$1;
.super Ljava/lang/Object;
.source "RecyclerViewSwipeManager.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    .prologue
    .line 116
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 119
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->onInterceptTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallow"    # Z

    .prologue
    .line 130
    return-void
.end method

.method public onTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 124
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->onTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)V

    .line 125
    return-void
.end method
