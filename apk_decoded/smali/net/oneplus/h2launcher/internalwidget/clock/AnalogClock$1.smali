.class Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;
.super Ljava/lang/Object;
.source "AnalogClock.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;

.field final synthetic val$stroke:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;

    .prologue
    .line 92
    iput-object p1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;

    iput p2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->val$stroke:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    .line 96
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 98
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;

    iget-object v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;

    iget-object v7, v7, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    .line 99
    .local v3, "marginTop":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;

    iget-object v6, v6, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mWorkspacePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;

    iget v7, v7, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mParentPaddingLeft:I

    add-int v2, v6, v7

    .line 100
    .local v2, "marginLeft":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    iget-object v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;

    invoke-static {v7}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->access$000(Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;)I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->val$stroke:I

    div-int/lit8 v7, v7, 0x2

    sub-int v1, v6, v7

    .line 101
    .local v1, "left":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    iget-object v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;

    invoke-static {v7}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->access$000(Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;)I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->val$stroke:I

    div-int/lit8 v7, v7, 0x2

    sub-int v5, v6, v7

    .line 102
    .local v5, "top":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    iget-object v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;

    invoke-static {v7}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->access$000(Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;)I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->val$stroke:I

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 103
    .local v4, "right":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    iget-object v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;

    invoke-static {v7}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->access$000(Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;)I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->val$stroke:I

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 104
    .local v0, "bottom":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, v6, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mRect:Landroid/graphics/Rect;

    .line 105
    return-void
.end method
