.class Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$3;
.super Ljava/lang/Object;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

.field final synthetic val$header:Landroid/view/View;

.field final synthetic val$performHeaderClick:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;Landroid/view/View;Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    .prologue
    .line 419
    iput-object p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$3;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iput-object p2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$3;->val$header:Landroid/view/View;

    iput-object p3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$3;->val$performHeaderClick:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 422
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$3;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iput v2, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    .line 423
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$3;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->access$102(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 424
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$3;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iput v2, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 425
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$3;->val$header:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 426
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$3;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->setPressed(Z)V

    .line 427
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$3;->val$header:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 428
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$3;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$3;->val$header:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$3;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$3;->val$header:Landroid/view/View;

    .line 429
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 428
    invoke-virtual {v0, v4, v1, v2, v3}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->invalidate(IIII)V

    .line 430
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$3;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$3;->val$performHeaderClick:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->run()V

    .line 433
    :cond_0
    return-void
.end method
