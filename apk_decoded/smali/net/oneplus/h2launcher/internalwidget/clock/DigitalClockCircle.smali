.class public Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;
.super Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;
.source "DigitalClockCircle.java"


# static fields
.field protected static final DEFAULT_FORMAT_AMPM:Ljava/lang/CharSequence;

.field protected static final DEFAULT_FORMAT_WEEK:Ljava/lang/CharSequence;


# instance fields
.field private final mAMPMPaint:Landroid/graphics/Paint;

.field private final mAMPMRect:Landroid/graphics/Rect;

.field private mAMPMString:Ljava/lang/String;

.field private final mClockMinRadius:I

.field private final mClockRadius:I

.field private final mDialPaint:Landroid/graphics/Paint;

.field private final mHourPaint:Landroid/graphics/Paint;

.field private final mHourRect:Landroid/graphics/Rect;

.field private mHourString:Ljava/lang/String;

.field private final mMinPaint:Landroid/graphics/Paint;

.field private final mMinRect:Landroid/graphics/Rect;

.field private mMinuteString:Ljava/lang/String;

.field protected mMinutes:I

.field private final mShadowHeight:I

.field private final mWeekPaint:Landroid/graphics/Paint;

.field private final mWeekRect:Landroid/graphics/Rect;

.field private mWeekString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "E"

    sput-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->DEFAULT_FORMAT_WEEK:Ljava/lang/CharSequence;

    .line 41
    const-string v0, "a"

    sput-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->DEFAULT_FORMAT_AMPM:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0e01a7

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mDialPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mMinPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mWeekPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mAMPMPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourRect:Landroid/graphics/Rect;

    .line 56
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mMinRect:Landroid/graphics/Rect;

    .line 57
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mWeekRect:Landroid/graphics/Rect;

    .line 58
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mAMPMRect:Landroid/graphics/Rect;

    .line 74
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    .local v0, "r":Landroid/content/res/Resources;
    const v5, 0x7f0c0028

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mClockRadius:I

    .line 77
    const v5, 0x7f0c001f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mClockMinRadius:I

    .line 78
    const v5, 0x7f0c0025

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0c0024

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mShadowHeight:I

    .line 80
    const v5, 0x7f0c0027

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 82
    .local v1, "stroke":I
    const-string v5, "sans-serif"

    invoke-static {v5, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 83
    .local v3, "tf_roboto_regular":Landroid/graphics/Typeface;
    const-string v5, "sans-serif-light"

    invoke-static {v5, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 85
    .local v2, "tf_roboto_light":Landroid/graphics/Typeface;
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mDialPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mDialPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mDialPaint:Landroid/graphics/Paint;

    int-to-float v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mDialPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 92
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourPaint:Landroid/graphics/Paint;

    const v6, 0x7f0c001e

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 94
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 96
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mMinPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mMinPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 98
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mMinPaint:Landroid/graphics/Paint;

    const v6, 0x7f0e019d

    invoke-virtual {v0, v6, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mMinPaint:Landroid/graphics/Paint;

    const v6, 0x7f0c0020

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 100
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mMinPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 102
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mWeekPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mWeekPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 104
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mWeekPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mWeekPaint:Landroid/graphics/Paint;

    const v6, 0x7f0c0021

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mWeekPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 108
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mAMPMPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mAMPMPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 110
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mAMPMPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mAMPMPaint:Landroid/graphics/Paint;

    const v6, 0x7f0c001d

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 112
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mAMPMPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 114
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    .line 115
    .local v4, "vto":Landroid/view/ViewTreeObserver;
    new-instance v5, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle$1;

    invoke-direct {v5, p0, v1}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle$1;-><init>(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;I)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;

    .prologue
    .line 39
    iget v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mClockRadius:I

    return v0
.end method

.method private setupDigits()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 188
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 189
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mCalendar:Ljava/util/Calendar;

    .line 191
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mMinutes:I

    .line 193
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    sget-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->DEFAULT_FORMAT_HOUR_24:Ljava/lang/CharSequence;

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourString:Ljava/lang/String;

    .line 199
    :goto_0
    sget-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->DEFAULT_FORMAT_MINUTE:Ljava/lang/CharSequence;

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mMinuteString:Ljava/lang/String;

    .line 200
    sget-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->DEFAULT_FORMAT_WEEK:Ljava/lang/CharSequence;

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mWeekString:Ljava/lang/String;

    .line 201
    sget-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->DEFAULT_FORMAT_AMPM:Ljava/lang/CharSequence;

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mAMPMString:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourString:Ljava/lang/String;

    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 204
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mMinPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mMinuteString:Ljava/lang/String;

    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mMinuteString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mMinRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 205
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mWeekPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mWeekString:Ljava/lang/String;

    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mWeekString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mWeekRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 206
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mAMPMPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mAMPMString:Ljava/lang/String;

    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mAMPMString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mAMPMRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 207
    return-void

    .line 196
    :cond_1
    sget-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->DEFAULT_FORMAT_HOUR_12:Ljava/lang/CharSequence;

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourString:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 140
    invoke-super/range {p0 .. p1}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mMinuteString:Ljava/lang/String;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourString:Ljava/lang/String;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mWeekString:Ljava/lang/String;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mAMPMString:Ljava/lang/String;

    if-nez v13, :cond_1

    .line 143
    :cond_0
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->setupDigits()V

    .line 146
    :cond_1
    const/4 v10, 0x0

    .line 148
    .local v10, "scaled":Z
    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mClockRadius:I

    move-object/from16 v0, p0

    iget v14, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mClockMinRadius:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mShadowHeight:I

    add-int/2addr v13, v14

    mul-int/lit8 v5, v13, 0x2

    .line 149
    .local v5, "desiredHeight":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->getHeight()I

    move-result v6

    .line 150
    .local v6, "h":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->getHeight()I

    move-result v13

    if-le v5, v13, :cond_2

    .line 151
    const/4 v10, 0x1

    .line 152
    int-to-float v13, v6

    int-to-float v14, v5

    div-float v9, v13, v14

    .line 153
    .local v9, "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 154
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v9, v13, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 157
    .end local v9    # "scale":F
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mClockRadius:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mDialPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 159
    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mMinutes:I

    int-to-float v13, v13

    const/high16 v14, 0x42700000    # 60.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x43b40000    # 360.0f

    mul-float/2addr v13, v14

    const/high16 v14, 0x42b40000    # 90.0f

    sub-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    .line 160
    .local v11, "theta":Ljava/lang/Double;
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-double v14, v13

    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mClockRadius:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-float v3, v14

    .line 161
    .local v3, "coordX":F
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-double v14, v13

    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mClockRadius:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-float v4, v14

    .line 162
    .local v4, "coordY":F
    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mClockMinRadius:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v13, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mMinuteString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mMinRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    add-float/2addr v14, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mMinPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v3, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->getWidth()I

    move-result v13

    div-int/lit8 v7, v13, 0x2

    .line 167
    .local v7, "hourX":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int v8, v13, v14

    .line 168
    .local v8, "hourY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourString:Ljava/lang/String;

    int-to-float v14, v7

    int-to-float v15, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    rsub-int/lit8 v13, v13, 0x0

    sub-int v13, v8, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mWeekPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v12, v13, v14

    .line 171
    .local v12, "weekY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mWeekString:Ljava/lang/String;

    int-to-float v14, v7

    int-to-float v15, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mWeekPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v13, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mAMPMPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    rsub-int/lit8 v14, v14, 0x0

    add-int v2, v13, v14

    .line 174
    .local v2, "ampmY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mAMPMString:Ljava/lang/String;

    int-to-float v14, v7

    int-to-float v15, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->mAMPMPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 177
    if-eqz v10, :cond_3

    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 180
    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 185
    return-void
.end method

.method protected onTimeChanged()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->onTimeChanged()V

    .line 135
    invoke-direct {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/DigitalClockCircle;->setupDigits()V

    .line 136
    return-void
.end method
