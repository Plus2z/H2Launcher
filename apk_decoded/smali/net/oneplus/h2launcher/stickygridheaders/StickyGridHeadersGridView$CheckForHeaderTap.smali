.class final Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;
.super Ljava/lang/Object;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForHeaderTap"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    .prologue
    .line 1148
    iput-object p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1151
    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget v3, v3, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    if-nez v3, :cond_1

    .line 1152
    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iput v5, v3, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 1153
    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget-object v4, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget v4, v4, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    .line 1154
    .local v0, "header":Landroid/view/View;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget-boolean v3, v3, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    if-nez v3, :cond_1

    .line 1155
    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget-boolean v3, v3, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v3, :cond_3

    .line 1156
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 1157
    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v3, v5}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->setPressed(Z)V

    .line 1158
    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->refreshDrawableState()V

    .line 1160
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    .line 1161
    .local v2, "longPressTimeout":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->isLongClickable()Z

    move-result v1

    .line 1163
    .local v1, "longClickable":Z
    if-eqz v1, :cond_2

    .line 1164
    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget-object v3, v3, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    if-nez v3, :cond_0

    .line 1165
    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    new-instance v4, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    iget-object v5, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;-><init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$1;)V

    iput-object v4, v3, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    .line 1167
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget-object v3, v3, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->rememberWindowAttachCount()V

    .line 1168
    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget-object v4, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iget-object v4, v4, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    int-to-long v6, v2

    invoke-virtual {v3, v4, v6, v7}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1177
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "longClickable":Z
    .end local v2    # "longPressTimeout":I
    :cond_1
    :goto_0
    return-void

    .line 1170
    .restart local v0    # "header":Landroid/view/View;
    .restart local v1    # "longClickable":Z
    .restart local v2    # "longPressTimeout":I
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iput v6, v3, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_0

    .line 1173
    .end local v1    # "longClickable":Z
    .end local v2    # "longPressTimeout":I
    :cond_3
    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iput v6, v3, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_0
.end method
