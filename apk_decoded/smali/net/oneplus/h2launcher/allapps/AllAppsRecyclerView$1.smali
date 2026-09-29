.class Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView$1;
.super Ljava/lang/Object;
.source "AllAppsRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    .prologue
    .line 365
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 368
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    iget v1, v1, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mFastScrollFrameIndex:I

    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    iget-object v2, v2, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mFastScrollFrames:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 369
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    iget-object v3, v3, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mFastScrollFrames:[I

    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    iget v4, v4, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mFastScrollFrameIndex:I

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->scrollBy(II)V

    .line 370
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    iget v2, v1, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mFastScrollFrameIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mFastScrollFrameIndex:I

    .line 371
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    iget-object v2, v2, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    iget v2, v2, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mPrevFastScrollFocusedPosition:I

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 375
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v1, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    iget-object v1, v1, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mLastFastScrollFocusedView:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eq v1, v2, :cond_0

    .line 378
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    iput-object v1, v2, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mLastFastScrollFocusedView:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    .line 380
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    iget-object v1, v1, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mLastFastScrollFocusedView:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    invoke-interface {v1, v3, v3}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;->setFastScrollFocused(ZZ)V

    goto :goto_0
.end method
