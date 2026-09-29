.class public Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;
.super Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;
.source "DigitalClockVertical.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DigitalClockVertical"


# instance fields
.field private mDateTV:Landroid/widget/TextView;

.field private mDivider:Landroid/view/View;

.field private mDividerHeight:I

.field private mDividerWidth:I

.field private mHourTV:Landroid/widget/TextView;

.field private mMinTV:Landroid/widget/TextView;

.field private mPaddingLeft:I

.field private mPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-direct {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->intiPadding()V

    .line 68
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->initLayout(Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 71
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical$1;-><init>(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mHourTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDateTV:Landroid/widget/TextView;

    return-object v0
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mHourTV:Landroid/widget/TextView;

    .line 98
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mHourTV:Landroid/widget/TextView;

    const v2, 0x7f0a00e6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 99
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mHourTV:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->addView(Landroid/view/View;)V

    .line 101
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mMinTV:Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mMinTV:Landroid/widget/TextView;

    const v2, 0x7f0a00e7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 103
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mMinTV:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->addView(Landroid/view/View;)V

    .line 105
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDateTV:Landroid/widget/TextView;

    .line 106
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDateTV:Landroid/widget/TextView;

    const v2, 0x7f0a00e5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 107
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->addView(Landroid/view/View;)V

    .line 109
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDivider:Landroid/view/View;

    .line 110
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/16 v1, 0xc6

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 111
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDivider:Landroid/view/View;

    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01a7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDivider:Landroid/view/View;

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->addView(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method private intiPadding()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mPaddingTop:I

    .line 91
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mPaddingLeft:I

    .line 92
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDividerWidth:I

    .line 93
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDividerHeight:I

    .line 94
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

    .line 165
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->getMeasuredHeight()I

    move-result v1

    .line 166
    .local v1, "remainedHeight":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mHourTV:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mHourTV:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    :goto_0
    sub-int/2addr v1, v3

    .line 167
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDivider:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDivider:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    :goto_1
    sub-int/2addr v1, v3

    .line 168
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mMinTV:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mMinTV:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    :goto_2
    sub-int/2addr v1, v3

    .line 169
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDateTV:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    :cond_0
    sub-int/2addr v1, v4

    .line 171
    div-int/lit8 v2, v1, 0x2

    .line 172
    .local v2, "top":I
    iget v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mPaddingLeft:I

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mWorkspacePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mParentPaddingLeft:I

    sub-int v0, v3, v4

    .line 174
    .local v0, "left":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mHourTV:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 175
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mHourTV:Landroid/widget/TextView;

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mHourTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mHourTV:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 176
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mHourTV:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 178
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDivider:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 179
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDivider:Landroid/view/View;

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDivider:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDivider:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 180
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDivider:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 182
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mMinTV:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 183
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mMinTV:Landroid/widget/TextView;

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mMinTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mMinTV:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 184
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mMinTV:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 186
    :cond_3
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDateTV:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 187
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDateTV:Landroid/widget/TextView;

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 188
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 190
    :cond_4
    return-void

    .end local v0    # "left":I
    .end local v2    # "top":I
    :cond_5
    move v3, v4

    .line 166
    goto/16 :goto_0

    :cond_6
    move v3, v4

    .line 167
    goto/16 :goto_1

    :cond_7
    move v3, v4

    .line 168
    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 147
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->onMeasure(II)V

    .line 149
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 150
    .local v4, "textWidthMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 151
    .local v3, "textHeightMeasureSpec":I
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mHourTV:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v3}, Landroid/widget/TextView;->measure(II)V

    .line 152
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mMinTV:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v3}, Landroid/widget/TextView;->measure(II)V

    .line 153
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v3}, Landroid/widget/TextView;->measure(II)V

    .line 155
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDivider:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 156
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 157
    .local v1, "dividerWidthMeasureSpec":I
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 158
    .local v0, "dividerHeightMeasureSpec":I
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDivider:Landroid/view/View;

    invoke-virtual {v5, v1, v0}, Landroid/view/View;->measure(II)V

    .line 160
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v5, p1}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->getDefaultSize(II)I

    move-result v5

    .line 161
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v6, p2}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->getDefaultSize(II)I

    move-result v6

    .line 160
    invoke-virtual {p0, v5, v6}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->setMeasuredDimension(II)V

    .line 162
    return-void
.end method

.method protected onTimeChanged()V
    .locals 6

    .prologue
    .line 118
    invoke-super {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->onTimeChanged()V

    .line 120
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mHourTV:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 121
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mHourTV:Landroid/widget/TextView;

    sget-object v4, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->DEFAULT_FORMAT_HOUR_24:Ljava/lang/CharSequence;

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_0
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mMinTV:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 129
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mMinTV:Landroid/widget/TextView;

    sget-object v4, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->DEFAULT_FORMAT_MINUTE:Ljava/lang/CharSequence;

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDateTV:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 133
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 134
    sget-object v3, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->FORMAT_MONTH_DAY_zh:Ljava/lang/CharSequence;

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "c1":Ljava/lang/String;
    sget-object v3, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->FORMAT_WEEK_DAY_zh:Ljava/lang/CharSequence;

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "c2":Ljava/lang/String;
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00e0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "day":Ljava/lang/String;
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDateTV:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .end local v0    # "c1":Ljava/lang/String;
    .end local v1    # "c2":Ljava/lang/String;
    .end local v2    # "day":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 124
    :cond_3
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mHourTV:Landroid/widget/TextView;

    sget-object v4, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->DEFAULT_FORMAT_HOUR_12:Ljava/lang/CharSequence;

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    :cond_4
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mDateTV:Landroid/widget/TextView;

    sget-object v4, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->DEFAULT_FORMAT_DATE:Ljava/lang/CharSequence;

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVertical;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
