.class Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;
.super Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformHeaderClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;)V
    .locals 1

    .prologue
    .line 1108
    iput-object p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;-><init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$1;

    .prologue
    .line 1108
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;-><init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1115
    iget-object v1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mDataChanged:Z

    if-eqz v1, :cond_1

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, v1, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, v1, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    iget-object v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget-object v2, v2, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .line 1120
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->sameWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1121
    iget-object v1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    .line 1125
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1126
    iget-object v1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->access$300(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;I)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->performHeaderClick(Landroid/view/View;J)Z

    goto :goto_0
.end method
