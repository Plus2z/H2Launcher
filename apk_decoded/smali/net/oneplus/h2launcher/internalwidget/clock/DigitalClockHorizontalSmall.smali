.class public Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;
.super Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;
.source "DigitalClockHorizontalSmall.java"


# instance fields
.field private mPaddingBottom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->intiPadding()V

    .line 52
    invoke-direct {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->initLayout()V

    .line 54
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 55
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall$1;-><init>(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 71
    return-void
.end method

.method private initLayout()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mTimeTV:Landroid/widget/TextView;

    const v1, 0x7f0a00e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 79
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mDateTV:Landroid/widget/TextView;

    const v1, 0x7f0a00e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 80
    return-void
.end method

.method private intiPadding()V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mPaddingBottom:I

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mPaddingBottom:I

    .line 75
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x0

    .line 84
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->getMeasuredHeight()I

    move-result v2

    .line 85
    .local v2, "remainedHeight":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mTimeTV:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mTimeTV:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    :goto_0
    sub-int/2addr v2, v3

    .line 86
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mDateTV:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    :cond_0
    sub-int/2addr v2, v4

    .line 88
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mParentPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 89
    .local v0, "bottom":I
    iget v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mTimePaddingLeft:I

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mWorkspacePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mParentPaddingLeft:I

    sub-int v1, v3, v4

    .line 91
    .local v1, "left":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mDateTV:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 92
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mDateTV:Landroid/widget/TextView;

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v0, v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v1, v4, v5, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 93
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v0, v3

    .line 95
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mTimeTV:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 96
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mTimeTV:Landroid/widget/TextView;

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mTimeTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v0, v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mTimeTV:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v1, v4, v5, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 97
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontalSmall;->mTimeTV:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v0, v3

    .line 99
    :cond_2
    return-void

    .end local v0    # "bottom":I
    .end local v1    # "left":I
    :cond_3
    move v3, v4

    .line 85
    goto :goto_0
.end method
