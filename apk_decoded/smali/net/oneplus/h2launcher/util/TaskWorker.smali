.class public Lnet/oneplus/h2launcher/util/TaskWorker;
.super Ljava/lang/Object;
.source "TaskWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;,
        Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;,
        Lnet/oneplus/h2launcher/util/TaskWorker$Priority;
    }
.end annotation


# static fields
.field public static final DEFAULT_TASK_TAG:I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lnet/oneplus/h2launcher/util/TaskWorker;

.field private static final sLowPriorityExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final sNormalPriorityExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sThreadFactoryNormal:Ljava/util/concurrent/ThreadFactory;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private final mUIHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

.field private final mWorkerHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-class v0, Lnet/oneplus/h2launcher/util/TaskWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/util/TaskWorker;->LOG_TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Lnet/oneplus/h2launcher/util/TaskWorker$1;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/util/TaskWorker$1;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/util/TaskWorker;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 34
    new-instance v0, Lnet/oneplus/h2launcher/util/TaskWorker$2;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/util/TaskWorker$2;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/util/TaskWorker;->sThreadFactoryNormal:Ljava/util/concurrent/ThreadFactory;

    .line 45
    sget-object v0, Lnet/oneplus/h2launcher/util/TaskWorker;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/util/TaskWorker;->sLowPriorityExecutor:Ljava/util/concurrent/ExecutorService;

    .line 46
    sget-object v0, Lnet/oneplus/h2launcher/util/TaskWorker;->sThreadFactoryNormal:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/util/TaskWorker;->sNormalPriorityExecutor:Ljava/util/concurrent/ExecutorService;

    .line 47
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lnet/oneplus/h2launcher/util/TaskWorker;->LOG_TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/oneplus/h2launcher/util/TaskWorker;->sWorkerThread:Landroid/os/HandlerThread;

    .line 50
    sget-object v0, Lnet/oneplus/h2launcher/util/TaskWorker;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    sget-object v1, Lnet/oneplus/h2launcher/util/TaskWorker;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;-><init>(Lnet/oneplus/h2launcher/util/TaskWorker;Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/util/TaskWorker;->mWorkerHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    .line 80
    new-instance v0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;-><init>(Lnet/oneplus/h2launcher/util/TaskWorker;Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/util/TaskWorker;->mUIHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    .line 81
    return-void
.end method

.method public static get()Lnet/oneplus/h2launcher/util/TaskWorker;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lnet/oneplus/h2launcher/util/TaskWorker;->sInstance:Lnet/oneplus/h2launcher/util/TaskWorker;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lnet/oneplus/h2launcher/util/TaskWorker;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/util/TaskWorker;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/util/TaskWorker;->sInstance:Lnet/oneplus/h2launcher/util/TaskWorker;

    .line 67
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/util/TaskWorker;->sInstance:Lnet/oneplus/h2launcher/util/TaskWorker;

    return-object v0
.end method

.method public static getLowPriorityExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lnet/oneplus/h2launcher/util/TaskWorker;->sLowPriorityExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getNormalPriorityExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lnet/oneplus/h2launcher/util/TaskWorker;->sNormalPriorityExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public cancelTask(Ljava/lang/Object;)V
    .locals 4
    .param p1, "caller"    # Ljava/lang/Object;

    .prologue
    .line 96
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/TaskWorker;->mWorkerHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->cancelRunnable(J)V

    .line 97
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/TaskWorker;->mUIHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->cancelRunnable(J)V

    .line 98
    return-void
.end method

.method public clearPendingTask()V
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lnet/oneplus/h2launcher/util/TaskWorker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "clear pending jobs in TaskWorker"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/TaskWorker;->mWorkerHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    invoke-static {v0}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->access$000(Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 103
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/TaskWorker;->mUIHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    invoke-static {v0}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->access$000(Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 104
    return-void
.end method

.method public getWorkerThreadId()I
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lnet/oneplus/h2launcher/util/TaskWorker;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    return v0
.end method

.method public notifyWorkerThread()V
    .locals 2

    .prologue
    .line 137
    sget-object v1, Lnet/oneplus/h2launcher/util/TaskWorker;->sWorkerThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 138
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/util/TaskWorker;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 139
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pauseWorkerThread()V
    .locals 4

    .prologue
    .line 127
    sget-object v2, Lnet/oneplus/h2launcher/util/TaskWorker;->sWorkerThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 129
    :try_start_0
    sget-object v1, Lnet/oneplus/h2launcher/util/TaskWorker;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 134
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lnet/oneplus/h2launcher/util/TaskWorker;->LOG_TAG:Ljava/lang/String;

    const-string v3, "sWorkerThread is interrupted."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public post(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 92
    iget-object v6, p0, Lnet/oneplus/h2launcher/util/TaskWorker;->mWorkerHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    new-instance v0, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v2, v1

    sget-object v4, Lnet/oneplus/h2launcher/util/TaskWorker$Priority;->NORMAL:Lnet/oneplus/h2launcher/util/TaskWorker$Priority;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;-><init>(Lnet/oneplus/h2launcher/util/TaskWorker;JLnet/oneplus/h2launcher/util/TaskWorker$Priority;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->post(Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;)V

    .line 93
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 88
    iget-object v6, p0, Lnet/oneplus/h2launcher/util/TaskWorker;->mWorkerHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    new-instance v0, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;

    const-wide/16 v2, 0x0

    sget-object v4, Lnet/oneplus/h2launcher/util/TaskWorker$Priority;->NORMAL:Lnet/oneplus/h2launcher/util/TaskWorker$Priority;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;-><init>(Lnet/oneplus/h2launcher/util/TaskWorker;JLnet/oneplus/h2launcher/util/TaskWorker$Priority;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->post(Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;)V

    .line 89
    return-void
.end method

.method public postAtFrontOfQueue(Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 84
    iget-object v6, p0, Lnet/oneplus/h2launcher/util/TaskWorker;->mWorkerHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    new-instance v0, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;

    const-wide/16 v2, 0x0

    sget-object v4, Lnet/oneplus/h2launcher/util/TaskWorker$Priority;->HIGH:Lnet/oneplus/h2launcher/util/TaskWorker$Priority;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;-><init>(Lnet/oneplus/h2launcher/util/TaskWorker;JLnet/oneplus/h2launcher/util/TaskWorker$Priority;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->post(Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;)V

    .line 85
    return-void
.end method

.method public postUI(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 111
    iget-object v6, p0, Lnet/oneplus/h2launcher/util/TaskWorker;->mUIHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    new-instance v0, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v2, v1

    sget-object v4, Lnet/oneplus/h2launcher/util/TaskWorker$Priority;->NORMAL:Lnet/oneplus/h2launcher/util/TaskWorker$Priority;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;-><init>(Lnet/oneplus/h2launcher/util/TaskWorker;JLnet/oneplus/h2launcher/util/TaskWorker$Priority;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->post(Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;)V

    .line 112
    return-void
.end method

.method public postUI(Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 107
    iget-object v6, p0, Lnet/oneplus/h2launcher/util/TaskWorker;->mUIHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    new-instance v0, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;

    const-wide/16 v2, 0x0

    sget-object v4, Lnet/oneplus/h2launcher/util/TaskWorker$Priority;->NORMAL:Lnet/oneplus/h2launcher/util/TaskWorker$Priority;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;-><init>(Lnet/oneplus/h2launcher/util/TaskWorker;JLnet/oneplus/h2launcher/util/TaskWorker$Priority;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->post(Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;)V

    .line 108
    return-void
.end method

.method public postUIIdle(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 119
    iget-object v6, p0, Lnet/oneplus/h2launcher/util/TaskWorker;->mUIHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    new-instance v0, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v2, v1

    sget-object v4, Lnet/oneplus/h2launcher/util/TaskWorker$Priority;->LOW:Lnet/oneplus/h2launcher/util/TaskWorker$Priority;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;-><init>(Lnet/oneplus/h2launcher/util/TaskWorker;JLnet/oneplus/h2launcher/util/TaskWorker$Priority;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->post(Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;)V

    .line 120
    return-void
.end method

.method public postUIIdle(Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 115
    iget-object v6, p0, Lnet/oneplus/h2launcher/util/TaskWorker;->mUIHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    new-instance v0, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;

    const-wide/16 v2, 0x0

    sget-object v4, Lnet/oneplus/h2launcher/util/TaskWorker$Priority;->LOW:Lnet/oneplus/h2launcher/util/TaskWorker$Priority;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;-><init>(Lnet/oneplus/h2launcher/util/TaskWorker;JLnet/oneplus/h2launcher/util/TaskWorker$Priority;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->post(Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;)V

    .line 116
    return-void
.end method
