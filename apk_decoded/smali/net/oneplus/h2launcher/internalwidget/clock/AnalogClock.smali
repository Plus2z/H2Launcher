.class public Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;
.super Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;
.source "AnalogClock.java"


# instance fields
.field private mChanged:Z

.field private final mClockHeight:I

.field private final mClockRadius:I

.field private final mDialPaint:Landroid/graphics/Paint;

.field private final mDotOffset:F

.field private mDotPaint:Landroid/graphics/Paint;

.field private final mDotRadius:F

.field protected mHour:F

.field private final mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mMinuteHand:Landroid/graphics/drawable/Drawable;

.field protected mMinutes:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mDialPaint:Landroid/graphics/Paint;

    .line 68
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 70
    .local v2, "r":Landroid/content/res/Resources;
    const v5, 0x7f0200aa

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 71
    const v5, 0x7f0200ac

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 73
    const v5, 0x7f0c0028

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mClockRadius:I

    .line 74
    const v5, 0x7f0c01e0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mClockHeight:I

    .line 76
    sget-object v5, Lnet/oneplus/h2launcher/R$styleable;->AnalogClock:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mDotRadius:F

    .line 78
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mDotOffset:F

    .line 79
    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 80
    .local v1, "dotColor":I
    if-eqz v1, :cond_0

    .line 81
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mDotPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    :cond_0
    const v5, 0x7f0c0027

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 86
    .local v3, "stroke":I
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mDialPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mDialPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mDialPaint:Landroid/graphics/Paint;

    int-to-float v6, v3

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mDialPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e01a7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    .line 92
    .local v4, "vto":Landroid/view/ViewTreeObserver;
    new-instance v5, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;

    invoke-direct {v5, p0, v3}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock$1;-><init>(Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;I)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;

    .prologue
    .line 38
    iget v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mClockRadius:I

    return v0
.end method

.method private drawHand(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFZ)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "hand"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "angle"    # F
    .param p6, "changed"    # Z

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 173
    int-to-float v2, p3

    int-to-float v3, p4

    invoke-virtual {p1, p5, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 174
    if-eqz p6, :cond_0

    .line 175
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 176
    .local v1, "w":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 177
    .local v0, "h":I
    div-int/lit8 v2, v1, 0x2

    sub-int v2, p3, v2

    div-int/lit8 v3, v0, 0x2

    sub-int v3, p4, v3

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p3

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v5, p4

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 179
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_0
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 181
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 125
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 127
    iget-boolean v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mChanged:Z

    .line 128
    .local v6, "changed":Z
    if-eqz v6, :cond_0

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mChanged:Z

    .line 132
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->getWidth()I

    move-result v8

    .line 133
    .local v8, "availableWidth":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->getHeight()I

    move-result v7

    .line 135
    .local v7, "availableHeight":I
    div-int/lit8 v3, v8, 0x2

    .line 136
    .local v3, "x":I
    div-int/lit8 v4, v7, 0x2

    .line 138
    .local v4, "y":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 139
    .local v13, "w":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 141
    .local v10, "h":I
    iget v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mClockRadius:I

    mul-int/lit8 v9, v0, 0x2

    .line 142
    .local v9, "desiredHeight":I
    const/high16 v12, 0x3f800000    # 1.0f

    .line 143
    .local v12, "scaleCircle":F
    if-le v9, v7, :cond_1

    .line 144
    int-to-float v0, v10

    int-to-float v1, v9

    div-float v12, v0, v1

    .line 147
    :cond_1
    iget v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mClockHeight:I

    int-to-float v0, v0

    int-to-float v1, v10

    div-float/2addr v0, v1

    mul-float v11, v0, v12

    .line 148
    .local v11, "scale":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 149
    int-to-float v0, v3

    int-to-float v1, v4

    invoke-virtual {p1, v11, v11, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 151
    iget v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mDotRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mDotPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 152
    int-to-float v0, v3

    div-int/lit8 v1, v10, 0x2

    sub-int v1, v4, v1

    int-to-float v1, v1

    iget v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mDotOffset:F

    add-float/2addr v1, v2

    iget v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mDotRadius:F

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 155
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mHour:F

    const/high16 v1, 0x41400000    # 12.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->drawHand(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFZ)V

    .line 156
    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mMinutes:F

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->drawHand(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFZ)V

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 160
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v12, v0

    if-eqz v0, :cond_3

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 162
    int-to-float v0, v3

    int-to-float v1, v4

    invoke-virtual {p1, v11, v11, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 164
    :cond_3
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mClockRadius:I

    int-to-float v2, v2

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mDialPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 165
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v12, v0

    if-eqz v0, :cond_4

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 168
    :cond_4
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
    .line 186
    return-void
.end method

.method protected onTimeChanged()V
    .locals 6

    .prologue
    .line 111
    invoke-super {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->onTimeChanged()V

    .line 113
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 114
    .local v0, "hour":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 115
    .local v1, "minute":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 118
    .local v2, "second":I
    int-to-float v3, v1

    iput v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mMinutes:F

    .line 119
    int-to-float v3, v0

    iget v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mMinutes:F

    const/high16 v5, 0x42700000    # 60.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mHour:F

    .line 120
    const/4 v3, 0x1

    iput-boolean v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/AnalogClock;->mChanged:Z

    .line 121
    return-void
.end method
