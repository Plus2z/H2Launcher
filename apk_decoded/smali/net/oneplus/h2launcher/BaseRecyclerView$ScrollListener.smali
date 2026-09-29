.class Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BaseRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/BaseRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/BaseRecyclerView;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/BaseRecyclerView;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollListener;->this$0:Lnet/oneplus/h2launcher/BaseRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 88
    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollListener;->this$0:Lnet/oneplus/h2launcher/BaseRecyclerView;

    iput p3, v0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mDy:I

    .line 98
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollListener;->this$0:Lnet/oneplus/h2launcher/BaseRecyclerView;

    invoke-virtual {v0, p3}, Lnet/oneplus/h2launcher/BaseRecyclerView;->onUpdateScrollbar(I)V

    .line 99
    return-void
.end method
