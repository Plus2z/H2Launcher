.class public Lnet/oneplus/h2launcher/DeferredHandler;
.super Ljava/lang/Object;
.source "DeferredHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/DeferredHandler$IdleRunnable;,
        Lnet/oneplus/h2launcher/DeferredHandler$Impl;
    }
.end annotation


# instance fields
.field private mHandler:Lnet/oneplus/h2launcher/DeferredHandler$Impl;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    .line 37
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    .line 38
    new-instance v0, Lnet/oneplus/h2launcher/DeferredHandler$Impl;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/DeferredHandler$Impl;-><init>(Lnet/oneplus/h2launcher/DeferredHandler;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/DeferredHandler;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler$Impl;

    .line 74
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lnet/oneplus/h2launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flush()V
    .locals 4

    .prologue
    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 102
    .local v0, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    iget-object v3, p0, Lnet/oneplus/h2launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 103
    :try_start_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget-object v2, p0, Lnet/oneplus/h2launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 105
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 107
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 105
    .end local v1    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 109
    :cond_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 78
    iget-object v1, p0, Lnet/oneplus/h2launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lnet/oneplus/h2launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DeferredHandler;->scheduleNextLocked()V

    .line 83
    :cond_0
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method scheduleNextLocked()V
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lnet/oneplus/h2launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 113
    iget-object v1, p0, Lnet/oneplus/h2launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 114
    .local v0, "peek":Ljava/lang/Runnable;
    instance-of v1, v0, Lnet/oneplus/h2launcher/DeferredHandler$IdleRunnable;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lnet/oneplus/h2launcher/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    iget-object v2, p0, Lnet/oneplus/h2launcher/DeferredHandler;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler$Impl;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 120
    .end local v0    # "peek":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local v0    # "peek":Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/DeferredHandler;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler$Impl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/DeferredHandler$Impl;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
