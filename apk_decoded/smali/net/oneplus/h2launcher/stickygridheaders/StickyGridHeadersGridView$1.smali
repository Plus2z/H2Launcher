.class Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$1;
.super Landroid/database/DataSetObserver;
.source "StickyGridHeadersGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    .prologue
    .line 112
    iput-object p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$1;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$1;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->reset()V

    .line 116
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$1;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->reset()V

    .line 121
    return-void
.end method
