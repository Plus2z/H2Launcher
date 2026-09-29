.class public Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;
.super Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;
.source "DigitalClockVerticalRedOne.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DigitalClockVerticalRedOne"


# instance fields
.field private mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mHourTV:Landroid/widget/TextView;

.field private mLineSpacing:I

.field private mMinTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00a8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 61
    .local v0, "redColor":I
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 62
    invoke-direct {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->intiPadding()V

    .line 63
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->initLayout(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 66
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    new-instance v2, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne$1;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne$1;-><init>(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mHourTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mMinTV:Landroid/widget/TextView;

    return-object v0
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0a00ea

    .line 90
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mHourTV:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mHourTV:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 92
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mHourTV:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->addView(Landroid/view/View;)V

    .line 94
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mMinTV:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mMinTV:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 96
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mMinTV:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->addView(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method private intiPadding()V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mLineSpacing:I

    .line 87
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

    .line 155
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->getMeasuredHeight()I

    move-result v4

    iget v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mLineSpacing:I

    sub-int v1, v4, v6

    .line 156
    .local v1, "remainedHeight":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->getMeasuredWidth()I

    move-result v2

    .line 158
    .local v2, "remainedWidth":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mHourTV:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mHourTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    :goto_0
    sub-int/2addr v1, v4

    .line 159
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mMinTV:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mMinTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    :goto_1
    sub-int/2addr v1, v4

    .line 160
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mHourTV:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mHourTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    :cond_0
    sub-int/2addr v2, v5

    .line 162
    div-int/lit8 v3, v1, 0x2

    .line 163
    .local v3, "top":I
    div-int/lit8 v0, v2, 0x2

    .line 165
    .local v0, "left":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mHourTV:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 166
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mHourTV:Landroid/widget/TextView;

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mHourTV:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mHourTV:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v0, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 167
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mHourTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 168
    iget v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mLineSpacing:I

    add-int/2addr v3, v4

    .line 170
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mMinTV:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 171
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mMinTV:Landroid/widget/TextView;

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mMinTV:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mMinTV:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v0, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 172
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mMinTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 174
    :cond_2
    return-void

    .end local v0    # "left":I
    .end local v3    # "top":I
    :cond_3
    move v4, v5

    .line 158
    goto :goto_0

    :cond_4
    move v4, v5

    .line 159
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->onMeasure(II)V

    .line 145
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 146
    .local v1, "textWidthMeasureSpec":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 147
    .local v0, "textHeightMeasureSpec":I
    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mHourTV:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->measure(II)V

    .line 148
    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mMinTV:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->measure(II)V

    .line 150
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v2, p1}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->getDefaultSize(II)I

    move-result v2

    .line 151
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v3, p2}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->getDefaultSize(II)I

    move-result v3

    .line 150
    invoke-virtual {p0, v2, v3}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->setMeasuredDimension(II)V

    .line 152
    return-void
.end method

.method protected onTimeChanged()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 101
    invoke-super {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->onTimeChanged()V

    .line 103
    iget-object v9, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mHourTV:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 105
    iget-object v9, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 106
    sget-object v9, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->DEFAULT_FORMAT_HOUR_24:Ljava/lang/CharSequence;

    iget-object v10, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "str":Ljava/lang/String;
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 112
    .local v1, "h":I
    div-int/lit8 v9, v1, 0xa

    if-ne v9, v7, :cond_5

    move v2, v7

    .line 113
    .local v2, "isRedTens":Z
    :goto_1
    rem-int/lit8 v9, v1, 0xa

    if-ne v9, v7, :cond_6

    move v3, v7

    .line 115
    .local v3, "isRedUnits":Z
    :goto_2
    if-nez v2, :cond_0

    if-eqz v3, :cond_9

    .line 116
    :cond_0
    const/4 v5, 0x0

    .local v5, "start":I
    const/4 v0, 0x0

    .line 117
    .local v0, "end":I
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 118
    const/4 v5, 0x0

    .line 119
    const/4 v0, 0x2

    .line 127
    :cond_1
    :goto_3
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 128
    .local v4, "spannable":Landroid/text/SpannableString;
    iget-object v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

    const/16 v8, 0x21

    invoke-virtual {v4, v7, v5, v0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 129
    iget-object v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mHourTV:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .end local v0    # "end":I
    .end local v1    # "h":I
    .end local v2    # "isRedTens":Z
    .end local v3    # "isRedUnits":Z
    .end local v4    # "spannable":Landroid/text/SpannableString;
    .end local v5    # "start":I
    .end local v6    # "str":Ljava/lang/String;
    :cond_2
    :goto_4
    iget-object v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mMinTV:Landroid/widget/TextView;

    if-eqz v7, :cond_3

    .line 137
    iget-object v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mMinTV:Landroid/widget/TextView;

    sget-object v8, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->DEFAULT_FORMAT_MINUTE:Ljava/lang/CharSequence;

    iget-object v9, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_3
    return-void

    .line 108
    :cond_4
    sget-object v9, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->DEFAULT_FORMAT_HOUR_12:Ljava/lang/CharSequence;

    iget-object v10, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "str":Ljava/lang/String;
    goto :goto_0

    .restart local v1    # "h":I
    :cond_5
    move v2, v8

    .line 112
    goto :goto_1

    .restart local v2    # "isRedTens":Z
    :cond_6
    move v3, v8

    .line 113
    goto :goto_2

    .line 120
    .restart local v0    # "end":I
    .restart local v3    # "isRedUnits":Z
    .restart local v5    # "start":I
    :cond_7
    if-eqz v2, :cond_8

    .line 121
    const/4 v5, 0x0

    .line 122
    const/4 v0, 0x1

    goto :goto_3

    .line 123
    :cond_8
    if-eqz v3, :cond_1

    .line 124
    const/4 v5, 0x1

    .line 125
    const/4 v0, 0x2

    goto :goto_3

    .line 131
    .end local v0    # "end":I
    .end local v5    # "start":I
    :cond_9
    iget-object v7, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockVerticalRedOne;->mHourTV:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method
