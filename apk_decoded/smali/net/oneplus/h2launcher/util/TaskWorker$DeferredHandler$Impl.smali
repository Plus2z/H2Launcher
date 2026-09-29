.class Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;
.super Landroid/os/Handler;
.source "TaskWorker.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Impl"
.end annotation


# instance fields
.field mWatchdog:Lnet/oneplus/h2launcher/util/Watchdog;

.field final synthetic this$1:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 221
    iput-object p1, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;->this$1:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    .line 222
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 223
    new-instance v0, Lnet/oneplus/h2launcher/util/Watchdog;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/util/Watchdog;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;->mWatchdog:Lnet/oneplus/h2launcher/util/Watchdog;

    .line 224
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 229
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;->this$1:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    invoke-static {v1}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->access$000(Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 230
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;->this$1:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    invoke-static {v1}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->access$000(Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 231
    monitor-exit v2

    .line 244
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;->this$1:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    invoke-static {v1}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->access$000(Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;

    .line 235
    .local v0, "r":Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;->mWatchdog:Lnet/oneplus/h2launcher/util/Watchdog;

    iget-object v2, v0, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;->mCallStack:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/util/Watchdog;->startTracing(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;->run()V

    .line 239
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;->mWatchdog:Lnet/oneplus/h2launcher/util/Watchdog;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/util/Watchdog;->endTracing()V

    .line 240
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;->this$1:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    invoke-static {v1}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->access$000(Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 242
    :try_start_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;->this$1:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    invoke-static {v1}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->access$100(Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;)V

    .line 243
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 235
    .end local v0    # "r":Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public queueIdle()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;->handleMessage(Landroid/os/Message;)V

    .line 251
    const/4 v0, 0x0

    return v0
.end method
