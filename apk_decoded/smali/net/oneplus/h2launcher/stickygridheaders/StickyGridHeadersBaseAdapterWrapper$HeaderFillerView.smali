.class public Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
.super Landroid/widget/FrameLayout;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeaderFillerView"
.end annotation


# instance fields
.field private mHeaderId:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 410
    iput-object p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .line 411
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 412
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 414
    iput-object p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .line 415
    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 416
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    .line 418
    iput-object p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .line 419
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 420
    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 435
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getHeaderId()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->mHeaderId:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 440
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 441
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 442
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 443
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 444
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 448
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 447
    invoke-static {v4, v6, v5}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getChildMeasureSpec(III)I

    move-result v0

    .line 449
    .local v0, "heightSpec":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .line 450
    invoke-static {v4}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->access$100(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 449
    invoke-static {v4, v6, v5}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getChildMeasureSpec(III)I

    move-result v3

    .line 452
    .local v3, "widthSpec":I
    invoke-virtual {v2, v3, v0}, Landroid/view/View;->measure(II)V

    .line 454
    .end local v0    # "heightSpec":I
    .end local v3    # "widthSpec":I
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->setMeasuredDimension(II)V

    .line 455
    return-void
.end method

.method public setHeaderId(I)V
    .locals 0
    .param p1, "headerId"    # I

    .prologue
    .line 430
    iput p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->mHeaderId:I

    .line 431
    return-void
.end method
