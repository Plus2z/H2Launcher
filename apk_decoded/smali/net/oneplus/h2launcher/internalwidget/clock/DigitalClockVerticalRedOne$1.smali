.class Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne$1;
.super Ljava/lang/Object;
.source "DigitalClockVerticalRedOne.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;

    .prologue
    .line 66
    iput-object p1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    .line 70
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 72
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;

    iget-object v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;

    iget-object v7, v7, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    .line 73
    .local v3, "marginTop":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;

    iget-object v6, v6, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mWorkspacePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;

    iget v7, v7, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mParentPaddingLeft:I

    add-int v2, v6, v7

    .line 75
    .local v2, "marginLeft":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;

    invoke-static {v6}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->access$000(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getLeft()I

    move-result v6

    add-int v1, v2, v6

    .line 76
    .local v1, "left":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;

    invoke-static {v6}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->access$000(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getTop()I

    move-result v6

    add-int v5, v3, v6

    .line 77
    .local v5, "top":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;

    invoke-static {v6}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->access$000(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getRight()I

    move-result v6

    add-int v4, v2, v6

    .line 78
    .local v4, "right":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;

    invoke-static {v6}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->access$100(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getBottom()I

    move-result v6

    add-int v0, v3, v6

    .line 79
    .local v0, "bottom":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, v6, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mRect:Landroid/graphics/Rect;

    .line 80
    return-void
.end method
