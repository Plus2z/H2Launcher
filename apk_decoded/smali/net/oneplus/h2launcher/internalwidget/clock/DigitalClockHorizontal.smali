.class public Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;
.super Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;
.source "DigitalClockHorizontal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DigitalClockHorizontal"


# instance fields
.field protected mDatePaddingLeft:I

.field protected mDateTV:Landroid/widget/TextView;

.field private mPaddingTop:I

.field protected mTimePaddingLeft:I

.field protected mTimeTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    invoke-direct {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->intiPadding()V

    .line 64
    invoke-direct {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->initLayout()V

    .line 66
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 67
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal$1;-><init>(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 84
    return-void
.end method

.method private initLayout()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mTimeTV:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mTimeTV:Landroid/widget/TextView;

    const v1, 0x7f0a00e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 96
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mTimeTV:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->addView(Landroid/view/View;)V

    .line 98
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mDateTV:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mDateTV:Landroid/widget/TextView;

    const v1, 0x7f0a00e3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 100
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->addView(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method private intiPadding()V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mPaddingTop:I

    .line 88
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mTimePaddingLeft:I

    .line 89
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mDatePaddingLeft:I

    .line 90
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, 0x0

    .line 142
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->getMeasuredHeight()I

    move-result v1

    .line 143
    .local v1, "remainedHeight":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mTimeTV:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mTimeTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    :goto_0
    sub-int/2addr v1, v4

    .line 144
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mDateTV:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    :cond_0
    sub-int/2addr v1, v5

    .line 146
    div-int/lit8 v3, v1, 0x2

    .line 147
    .local v3, "top":I
    iget v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mTimePaddingLeft:I

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mWorkspacePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mParentPaddingLeft:I

    sub-int v2, v4, v5

    .line 148
    .local v2, "timeLeft":I
    iget v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mDatePaddingLeft:I

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mWorkspacePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mParentPaddingLeft:I

    sub-int v0, v4, v5

    .line 150
    .local v0, "dateLeft":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mTimeTV:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 151
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mTimeTV:Landroid/widget/TextView;

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mTimeTV:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mTimeTV:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 152
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mTimeTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 155
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mDateTV:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 156
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mDateTV:Landroid/widget/TextView;

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v0, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 157
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 159
    :cond_2
    return-void

    .end local v0    # "dateLeft":I
    .end local v2    # "timeLeft":I
    .end local v3    # "top":I
    :cond_3
    move v4, v5

    .line 143
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->onMeasure(II)V

    .line 131
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 132
    .local v1, "textWidthMeasureSpec":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 133
    .local v0, "textHeightMeasureSpec":I
    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mTimeTV:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->measure(II)V

    .line 134
    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->measure(II)V

    .line 136
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v2, p1}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->getDefaultSize(II)I

    move-result v2

    .line 137
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v3, p2}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->getDefaultSize(II)I

    move-result v3

    .line 136
    invoke-virtual {p0, v2, v3}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->setMeasuredDimension(II)V

    .line 138
    return-void
.end method

.method protected onTimeChanged()V
    .locals 6

    .prologue
    .line 106
    invoke-super {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->onTimeChanged()V

    .line 108
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mTimeTV:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 109
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mTimeTV:Landroid/widget/TextView;

    sget-object v4, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->DEFAULT_FORMAT_TIME_24:Ljava/lang/CharSequence;

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mDateTV:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 116
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    sget-object v3, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->FORMAT_MONTH_DAY_zh:Ljava/lang/CharSequence;

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "c1":Ljava/lang/String;
    sget-object v3, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->FORMAT_WEEK_DAY_zh:Ljava/lang/CharSequence;

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "c2":Ljava/lang/String;
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00e0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "day":Ljava/lang/String;
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mDateTV:Landroid/widget/TextView;

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

    .line 125
    .end local v0    # "c1":Ljava/lang/String;
    .end local v1    # "c2":Ljava/lang/String;
    .end local v2    # "day":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 112
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mTimeTV:Landroid/widget/TextView;

    sget-object v4, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->DEFAULT_FORMAT_TIME_12:Ljava/lang/CharSequence;

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 122
    :cond_3
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mDateTV:Landroid/widget/TextView;

    sget-object v4, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->DEFAULT_FORMAT_DATE:Ljava/lang/CharSequence;

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockHorizontal;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
