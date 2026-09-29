.class Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical$1;
.super Ljava/lang/Object;
.source "DigitalClockVertical.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;

    .prologue
    .line 71
    iput-object p1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    .line 75
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 77
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;

    iget-object v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;

    iget-object v7, v7, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    .line 78
    .local v3, "marginTop":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;

    iget-object v6, v6, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mWorkspacePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;

    iget v7, v7, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mParentPaddingLeft:I

    add-int v2, v6, v7

    .line 80
    .local v2, "marginLeft":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;

    invoke-static {v6}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->access$000(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getLeft()I

    move-result v6

    add-int v1, v2, v6

    .line 81
    .local v1, "left":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;

    invoke-static {v6}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->access$000(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getTop()I

    move-result v6

    add-int v5, v3, v6

    .line 82
    .local v5, "top":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;

    invoke-static {v6}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->access$000(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getRight()I

    move-result v6

    iget-object v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;

    invoke-static {v7}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->access$100(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getRight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int v4, v2, v6

    .line 83
    .local v4, "right":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;

    invoke-static {v6}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->access$100(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getBottom()I

    move-result v6

    add-int v0, v3, v6

    .line 84
    .local v0, "bottom":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, v6, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mRect:Landroid/graphics/Rect;

    .line 85
    return-void
.end method
