.class Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$4;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;
.source "RecyclerFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->initRecyclerViewOnScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    .prologue
    .line 337
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$4;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 340
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;->onScrolled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    .line 341
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$4;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->show(Z)V

    .line 342
    return-void
.end method
