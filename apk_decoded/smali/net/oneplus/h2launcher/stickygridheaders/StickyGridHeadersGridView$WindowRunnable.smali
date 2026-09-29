.class Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;
.super Ljava/lang/Object;
.source "StickyGridHeadersGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;)V
    .locals 0

    .prologue
    .line 1136
    iput-object p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$1;

    .prologue
    .line 1136
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;-><init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->access$400(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;->mOriginalAttachCount:I

    .line 1141
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 1144
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->access$500(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;)I

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
