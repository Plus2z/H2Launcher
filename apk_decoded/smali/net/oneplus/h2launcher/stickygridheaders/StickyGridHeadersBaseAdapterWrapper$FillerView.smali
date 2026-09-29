.class public Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;
.super Landroid/view/View;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FillerView"
.end annotation


# instance fields
.field private mMeasureTarget:Landroid/view/View;

.field final synthetic this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 377
    iput-object p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .line 378
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 379
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 381
    iput-object p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .line 382
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 383
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    .line 385
    iput-object p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .line 386
    invoke-direct {p0, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 387
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;->mMeasureTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 397
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 398
    return-void
.end method

.method public setMeasureTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "lastViewSeen"    # Landroid/view/View;

    .prologue
    .line 390
    iput-object p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;->mMeasureTarget:Landroid/view/View;

    .line 391
    return-void
.end method
