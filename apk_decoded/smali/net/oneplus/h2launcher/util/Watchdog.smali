.class public Lnet/oneplus/h2launcher/util/Watchdog;
.super Ljava/lang/Object;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;
    }
.end annotation


# static fields
.field public static final CALL_STACK_LEVEL:I = 0xa

.field public static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOLD:I = 0xbb8

.field private static sWatchdog:Landroid/os/Handler;


# instance fields
.field private mCaller:Ljava/lang/String;

.field private mTask:Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;

.field private mThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-class v1, Lnet/oneplus/h2launcher/util/Watchdog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnet/oneplus/h2launcher/util/Watchdog;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "watchdog-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "watchdogThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lnet/oneplus/h2launcher/util/Watchdog;->sWatchdog:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/util/Watchdog;-><init>(I)V

    .line 80
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lnet/oneplus/h2launcher/util/Watchdog;->mThreshold:I

    .line 88
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lnet/oneplus/h2launcher/util/Watchdog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/util/Watchdog;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/util/Watchdog;

    .prologue
    .line 19
    iget v0, p0, Lnet/oneplus/h2launcher/util/Watchdog;->mThreshold:I

    return v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/util/Watchdog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/util/Watchdog;

    .prologue
    .line 19
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/Watchdog;->mCaller:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lnet/oneplus/h2launcher/util/Watchdog;->sWatchdog:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public endTracing()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/Watchdog;->mTask:Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;

    invoke-static {v0}, Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;->access$400(Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;)V

    .line 107
    sget-object v0, Lnet/oneplus/h2launcher/util/Watchdog;->sWatchdog:Landroid/os/Handler;

    iget-object v1, p0, Lnet/oneplus/h2launcher/util/Watchdog;->mTask:Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public startTracing(Ljava/lang/String;)V
    .locals 2
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lnet/oneplus/h2launcher/util/Watchdog;->mCaller:Ljava/lang/String;

    .line 96
    new-instance v0, Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;-><init>(Lnet/oneplus/h2launcher/util/Watchdog;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/util/Watchdog;->mTask:Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;

    .line 97
    sget-object v0, Lnet/oneplus/h2launcher/util/Watchdog;->sWatchdog:Landroid/os/Handler;

    iget-object v1, p0, Lnet/oneplus/h2launcher/util/Watchdog;->mTask:Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method
