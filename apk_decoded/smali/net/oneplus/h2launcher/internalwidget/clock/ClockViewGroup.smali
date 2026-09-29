.class public Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;
.super Landroid/view/ViewGroup;
.source "ClockViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$ClockGestureDetector;
    }
.end annotation


# static fields
.field protected static final DEFAULT_FORMAT_DATE:Ljava/lang/CharSequence;

.field protected static final DEFAULT_FORMAT_HOUR_12:Ljava/lang/CharSequence;

.field protected static final DEFAULT_FORMAT_HOUR_24:Ljava/lang/CharSequence;

.field protected static final DEFAULT_FORMAT_MINUTE:Ljava/lang/CharSequence;

.field protected static final DEFAULT_FORMAT_TIME_12:Ljava/lang/CharSequence;

.field protected static final DEFAULT_FORMAT_TIME_24:Ljava/lang/CharSequence;

.field protected static final FORMAT_MONTH_DAY_zh:Ljava/lang/CharSequence;

.field protected static final FORMAT_WEEK_DAY_zh:Ljava/lang/CharSequence;

.field private static final TAG:Ljava/lang/String; = "ClockViewGroup"


# instance fields
.field protected mAttached:Z

.field protected mCalendar:Ljava/util/Calendar;

.field protected final mContext:Landroid/content/Context;

.field protected mFormatter:Ljava/text/SimpleDateFormat;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field protected final mHandler:Landroid/os/Handler;

.field private mIntentClock:Landroid/content/Intent;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mMotionDownX:I

.field private mMotionDownY:I

.field protected mParentPaddingBottom:I

.field protected mParentPaddingLeft:I

.field protected mParentPaddingRight:I

.field protected mParentPaddingTop:I

.field protected mRect:Landroid/graphics/Rect;

.field private mShadow:Landroid/graphics/Bitmap;

.field private mShadowHelper:Lnet/oneplus/h2launcher/util/ShadowHelper;

.field protected mSlop:F

.field private mTimeChangedTask:Ljava/lang/Runnable;

.field private mTimeChangedTaskPostDelayCount:I

.field protected final mWorkspacePadding:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "hh"

    sput-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->DEFAULT_FORMAT_HOUR_12:Ljava/lang/CharSequence;

    .line 58
    const-string v0, "HH"

    sput-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->DEFAULT_FORMAT_HOUR_24:Ljava/lang/CharSequence;

    .line 59
    const-string v0, "mm"

    sput-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->DEFAULT_FORMAT_MINUTE:Ljava/lang/CharSequence;

    .line 60
    const-string v0, "hh:mm"

    sput-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->DEFAULT_FORMAT_TIME_12:Ljava/lang/CharSequence;

    .line 61
    const-string v0, "HH:mm"

    sput-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->DEFAULT_FORMAT_TIME_24:Ljava/lang/CharSequence;

    .line 62
    const-string v0, "E, MMMM d"

    sput-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->DEFAULT_FORMAT_DATE:Ljava/lang/CharSequence;

    .line 63
    const-string v0, "MMMd"

    sput-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->FORMAT_MONTH_DAY_zh:Ljava/lang/CharSequence;

    .line 64
    const-string v0, ", EEEE"

    sput-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->FORMAT_WEEK_DAY_zh:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object v6, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mShadow:Landroid/graphics/Bitmap;

    .line 78
    iput v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mParentPaddingTop:I

    .line 79
    iput v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mParentPaddingBottom:I

    .line 80
    iput v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mParentPaddingLeft:I

    .line 81
    iput v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mParentPaddingRight:I

    .line 211
    new-instance v3, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$2;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$2;-><init>(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 218
    iput v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mTimeChangedTaskPostDelayCount:I

    .line 220
    new-instance v3, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$3;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$3;-><init>(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mTimeChangedTask:Ljava/lang/Runnable;

    .line 104
    iput-object p1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mContext:Landroid/content/Context;

    .line 106
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mFormatter:Ljava/text/SimpleDateFormat;

    .line 108
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 109
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    .local v1, "isRtl":Z
    move-object v3, p1

    .line 110
    check-cast v3, Lnet/oneplus/h2launcher/Launcher;

    iput-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 111
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnet/oneplus/h2launcher/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mWorkspacePadding:Landroid/graphics/Rect;

    .line 113
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnet/oneplus/h2launcher/util/ShadowHelper;->obtain(Landroid/content/Context;)Lnet/oneplus/h2launcher/util/ShadowHelper;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mShadowHelper:Lnet/oneplus/h2launcher/util/ShadowHelper;

    .line 115
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$ClockGestureDetector;

    iget-object v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {v4, p0, v5}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$ClockGestureDetector;-><init>(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;Lnet/oneplus/h2launcher/Launcher;)V

    invoke-direct {v3, p1, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mGestureDetector:Landroid/view/GestureDetector;

    .line 117
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mIntentClock:Landroid/content/Intent;

    .line 118
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.deskclock"

    const-string v4, "com.oneplus.deskclock.DeskClock"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mIntentClock:Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 120
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mIntentClock:Landroid/content/Intent;

    const/high16 v4, 0x10200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 121
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mIntentClock:Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mIntentClock:Landroid/content/Intent;

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mIntentClock:Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    .prologue
    .line 55
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mShadow:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 55
    iput-object p1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mShadow:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)Lnet/oneplus/h2launcher/util/ShadowHelper;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    .prologue
    .line 55
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mShadowHelper:Lnet/oneplus/h2launcher/util/ShadowHelper;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    .prologue
    .line 55
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mTimeChangedTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)Lnet/oneplus/h2launcher/Launcher;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    .prologue
    .line 55
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    .prologue
    .line 55
    iget v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mTimeChangedTaskPostDelayCount:I

    return v0
.end method

.method static synthetic access$402(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;I)I
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mTimeChangedTaskPostDelayCount:I

    return p1
.end method

.method static synthetic access$408(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)I
    .locals 2
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    .prologue
    .line 55
    iget v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mTimeChangedTaskPostDelayCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mTimeChangedTaskPostDelayCount:I

    return v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    .prologue
    .line 55
    invoke-direct {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->updateShadow()V

    return-void
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    .prologue
    .line 55
    iget v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mMotionDownX:I

    return v0
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    .prologue
    .line 55
    iget v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mMotionDownY:I

    return v0
.end method

.method public static pointInRect(Landroid/graphics/Rect;FFF)Z
    .locals 4
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    const/4 v0, 0x0

    .line 303
    if-eqz p0, :cond_1

    .line 304
    const-string v1, "ClockViewGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pointInRect left:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", top:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", right:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bottom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v1, p3

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v1, p3

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v1, p3

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v1, p3

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 309
    :cond_0
    :goto_0
    return v0

    .line 308
    :cond_1
    const-string v1, "ClockViewGroup"

    const-string v2, "pointInRect is null"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateContentDescription(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 244
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->DEFAULT_FORMAT_TIME_24:Ljava/lang/CharSequence;

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 251
    :goto_0
    return-void

    .line 247
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->DEFAULT_FORMAT_TIME_12:Ljava/lang/CharSequence;

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateShadow()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$1;-><init>(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method


# virtual methods
.method protected getStatusBarHeight(Landroid/content/Context;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 320
    .local v4, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 321
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .line 323
    .local v3, "height":I
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 325
    const-string v6, "status_bar_height"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 326
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 327
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 331
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "x":I
    :goto_0
    return v3

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 187
    invoke-static {}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getInstance()Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    invoke-static {}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getInstance()Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    move-result-object v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->setClockWidgetRoot(Landroid/view/ViewGroup;)V

    .line 193
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mParentPaddingTop:I

    .line 195
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mParentPaddingBottom:I

    .line 196
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mParentPaddingLeft:I

    .line 197
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mParentPaddingRight:I

    .line 200
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mSlop:F

    .line 201
    return-void

    .line 190
    :cond_1
    const-string v0, "ClockViewGroup"

    const-string v1, "ClockWidget instance is null in onAttachedToWindow."

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 208
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mTimeChangedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
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
    .line 256
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 260
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 261
    invoke-direct {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->updateShadow()V

    .line 262
    return-void
.end method

.method protected onTimeChanged()V
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mCalendar:Ljava/util/Calendar;

    .line 128
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->updateContentDescription(Ljava/util/Calendar;)V

    .line 129
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 266
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 273
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 274
    const/4 v0, 0x1

    return v0

    .line 269
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mMotionDownX:I

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mMotionDownY:I

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 153
    const-string v1, "ClockViewGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowVisibilityChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    if-nez p1, :cond_2

    .line 157
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mAttached:Z

    if-nez v1, :cond_0

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mAttached:Z

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 172
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->onTimeChanged()V

    .line 173
    invoke-direct {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->updateShadow()V

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 175
    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 176
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mAttached:Z

    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mAttached:Z

    goto :goto_0
.end method

.method protected startClockActivity()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mIntentClock:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lnet/oneplus/h2launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 315
    return-void
.end method

.method protected updateShadowImmediately()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mShadowHelper:Lnet/oneplus/h2launcher/util/ShadowHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lnet/oneplus/h2launcher/util/ShadowHelper;->createShadow(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mShadow:Landroid/graphics/Bitmap;

    .line 145
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mShadow:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mShadow:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_0
    return-void
.end method
