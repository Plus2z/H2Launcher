.class Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;
.super Ljava/util/TimerTask;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/util/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatchdogTask"
.end annotation


# instance fields
.field event:Ljava/lang/Runnable;

.field final synthetic this$0:Lnet/oneplus/h2launcher/util/Watchdog;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/util/Watchdog;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;->this$0:Lnet/oneplus/h2launcher/util/Watchdog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 46
    new-instance v0, Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask$1;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask$1;-><init>(Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;Lnet/oneplus/h2launcher/util/Watchdog;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;->event:Ljava/lang/Runnable;

    .line 52
    return-void
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;

    .prologue
    .line 41
    invoke-direct {p0}, Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;->remove()V

    return-void
.end method

.method private remove()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;->event:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lnet/oneplus/h2launcher/util/Watchdog;->access$300()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;->event:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Lnet/oneplus/h2launcher/util/Watchdog;->access$300()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;->event:Ljava/lang/Runnable;

    iget-object v2, p0, Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;->this$0:Lnet/oneplus/h2launcher/util/Watchdog;

    invoke-static {v2}, Lnet/oneplus/h2launcher/util/Watchdog;->access$100(Lnet/oneplus/h2launcher/util/Watchdog;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    return-void
.end method
