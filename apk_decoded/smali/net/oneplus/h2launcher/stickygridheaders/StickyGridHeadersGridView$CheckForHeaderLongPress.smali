.class Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;
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
    name = "CheckForHeaderLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;)V
    .locals 1

    .prologue
    .line 1086
    iput-object p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;-><init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$1;

    .prologue
    .line 1086
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;-><init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1089
    iget-object v4, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget-object v5, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget v5, v5, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    .line 1090
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1091
    iget-object v4, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget-object v5, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget v5, v5, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->access$300(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;I)J

    move-result-wide v2

    .line 1093
    .local v2, "longPressId":J
    const/4 v1, 0x0

    .line 1094
    .local v1, "handled":Z
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->sameWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget-boolean v4, v4, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v4, :cond_0

    .line 1095
    iget-object v4, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v4, v0, v2, v3}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->performHeaderLongPress(Landroid/view/View;J)Z

    move-result v1

    .line 1097
    :cond_0
    if-eqz v1, :cond_2

    .line 1098
    iget-object v4, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    const/4 v5, -0x2

    iput v5, v4, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 1099
    iget-object v4, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v4, v6}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->setPressed(Z)V

    .line 1100
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 1105
    .end local v1    # "handled":Z
    .end local v2    # "longPressId":J
    :cond_1
    :goto_0
    return-void

    .line 1102
    .restart local v1    # "handled":Z
    .restart local v2    # "longPressId":J
    :cond_2
    iget-object v4, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    const/4 v5, 0x2

    iput v5, v4, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_0
.end method
