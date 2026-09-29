.class Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .prologue
    .line 60
    iput-object p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$1;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$1;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->updateCount()V

    .line 64
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$1;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->access$002(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;Z)Z

    .line 69
    return-void
.end method
