.class public Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;
.super Ljava/lang/Object;
.source "WallpaperTaskWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;,
        Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;,
        Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;
    }
.end annotation


# static fields
.field public static final DEFAULT_TASK_TAG:I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

.field private static final sLowPriorityExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final sNormalPriorityExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sThreadFactoryNormal:Ljava/util/concurrent/ThreadFactory;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private final mUIHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

.field private final mWorkerHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->LOG_TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$1;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$1;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 37
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$2;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$2;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sThreadFactoryNormal:Ljava/util/concurrent/ThreadFactory;

    .line 48
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sLowPriorityExecutor:Ljava/util/concurrent/ExecutorService;

    .line 49
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sThreadFactoryNormal:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sNormalPriorityExecutor:Ljava/util/concurrent/ExecutorService;

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->LOG_TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sWorkerThread:Landroid/os/HandlerThread;

    .line 53
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->mWorkerHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    .line 83
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->mUIHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    .line 84
    return-void
.end method

.method public static get()Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sInstance:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sInstance:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    .line 70
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sInstance:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    return-object v0
.end method

.method public static getLowPriorityExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sLowPriorityExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getNormalPriorityExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sNormalPriorityExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public cancelTask(Ljava/lang/Object;)V
    .locals 4
    .param p1, "caller"    # Ljava/lang/Object;

    .prologue
    .line 99
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->mWorkerHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->cancelRunnable(J)V

    .line 100
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->mUIHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->cancelRunnable(J)V

    .line 101
    return-void
.end method

.method public clearPendingTask()V
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "clear pending jobs in TaskWorker"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->mWorkerHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->access$000(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 106
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->mUIHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->access$000(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 107
    return-void
.end method

.method public getWorkerThreadId()I
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    return v0
.end method

.method public notifyWorkerThread()V
    .locals 2

    .prologue
    .line 140
    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sWorkerThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 141
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 142
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
    .line 130
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sWorkerThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 132
    :try_start_0
    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 137
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->LOG_TAG:Ljava/lang/String;

    const-string v3, "sWorkerThread is interrupted."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
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
    .line 95
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->mWorkerHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v2, v1

    sget-object v4, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;->NORMAL:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;JLnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->post(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;)V

    .line 96
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 91
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->mWorkerHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;

    const-wide/16 v2, 0x0

    sget-object v4, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;->NORMAL:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;JLnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->post(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;)V

    .line 92
    return-void
.end method

.method public postAtFrontOfQueue(Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 87
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->mWorkerHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;

    const-wide/16 v2, 0x0

    sget-object v4, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;->HIGH:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;JLnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->post(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;)V

    .line 88
    return-void
.end method

.method public postUI(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 114
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->mUIHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v2, v1

    sget-object v4, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;->NORMAL:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;JLnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->post(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;)V

    .line 115
    return-void
.end method

.method public postUI(Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 110
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->mUIHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;

    const-wide/16 v2, 0x0

    sget-object v4, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;->NORMAL:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;JLnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->post(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;)V

    .line 111
    return-void
.end method

.method public postUIIdle(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 122
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->mUIHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v2, v1

    sget-object v4, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;->LOW:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;JLnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->post(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;)V

    .line 123
    return-void
.end method

.method public postUIIdle(Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 118
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->mUIHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;

    const-wide/16 v2, 0x0

    sget-object v4, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;->LOW:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;JLnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->post(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;)V

    .line 119
    return-void
.end method
