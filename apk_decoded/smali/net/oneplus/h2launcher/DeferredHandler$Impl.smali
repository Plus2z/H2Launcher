.class Lnet/oneplus/h2launcher/DeferredHandler$Impl;
.super Landroid/os/Handler;
.source "DeferredHandler.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Impl"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/DeferredHandler;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/DeferredHandler;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/DeferredHandler;

    .prologue
    .line 40
    iput-object p1, p0, Lnet/oneplus/h2launcher/DeferredHandler$Impl;->this$0:Lnet/oneplus/h2launcher/DeferredHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    iget-object v1, p0, Lnet/oneplus/h2launcher/DeferredHandler$Impl;->this$0:Lnet/oneplus/h2launcher/DeferredHandler;

    iget-object v2, v1, Lnet/oneplus/h2launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 44
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/DeferredHandler$Impl;->this$0:Lnet/oneplus/h2launcher/DeferredHandler;

    iget-object v1, v1, Lnet/oneplus/h2launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 45
    monitor-exit v2

    .line 53
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/DeferredHandler$Impl;->this$0:Lnet/oneplus/h2launcher/DeferredHandler;

    iget-object v1, v1, Lnet/oneplus/h2launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 48
    .local v0, "r":Ljava/lang/Runnable;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 50
    iget-object v1, p0, Lnet/oneplus/h2launcher/DeferredHandler$Impl;->this$0:Lnet/oneplus/h2launcher/DeferredHandler;

    iget-object v2, v1, Lnet/oneplus/h2launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 51
    :try_start_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/DeferredHandler$Impl;->this$0:Lnet/oneplus/h2launcher/DeferredHandler;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/DeferredHandler;->scheduleNextLocked()V

    .line 52
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 48
    .end local v0    # "r":Ljava/lang/Runnable;
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
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/DeferredHandler$Impl;->handleMessage(Landroid/os/Message;)V

    .line 57
    const/4 v0, 0x0

    return v0
.end method
