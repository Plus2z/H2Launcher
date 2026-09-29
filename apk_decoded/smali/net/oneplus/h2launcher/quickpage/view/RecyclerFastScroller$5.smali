.class Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$5;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;
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
    .line 345
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$5;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 348
    invoke-super {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 349
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$5;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->requestLayout()V

    .line 350
    return-void
.end method
