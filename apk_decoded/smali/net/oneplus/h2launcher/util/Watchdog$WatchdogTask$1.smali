.class Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask$1;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;-><init>(Lnet/oneplus/h2launcher/util/Watchdog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;

.field final synthetic val$this$0:Lnet/oneplus/h2launcher/util/Watchdog;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;Lnet/oneplus/h2launcher/util/Watchdog;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;

    .prologue
    .line 46
    iput-object p1, p0, Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask$1;->this$1:Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask$1;->val$this$0:Lnet/oneplus/h2launcher/util/Watchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 49
    invoke-static {}, Lnet/oneplus/h2launcher/util/Watchdog;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oh!! the task executes more than %dms, caller:\n%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask$1;->this$1:Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;

    iget-object v4, v4, Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;->this$0:Lnet/oneplus/h2launcher/util/Watchdog;

    invoke-static {v4}, Lnet/oneplus/h2launcher/util/Watchdog;->access$100(Lnet/oneplus/h2launcher/util/Watchdog;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask$1;->this$1:Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;

    iget-object v4, v4, Lnet/oneplus/h2launcher/util/Watchdog$WatchdogTask;->this$0:Lnet/oneplus/h2launcher/util/Watchdog;

    invoke-static {v4}, Lnet/oneplus/h2launcher/util/Watchdog;->access$200(Lnet/oneplus/h2launcher/util/Watchdog;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return-void
.end method
