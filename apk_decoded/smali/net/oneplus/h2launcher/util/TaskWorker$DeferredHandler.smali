.class Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;
.super Ljava/lang/Object;
.source "TaskWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/util/TaskWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeferredHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;
    }
.end annotation


# instance fields
.field private final mHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;

.field private final mMessageQueue:Landroid/os/MessageQueue;

.field private mRunnableQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/oneplus/h2launcher/util/TaskWorker;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/util/TaskWorker;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 170
    iput-object p1, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->this$0:Lnet/oneplus/h2launcher/util/TaskWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    .line 171
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 172
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 174
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    .line 175
    new-instance v0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;

    invoke-direct {v0, p0, p2}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;-><init>(Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->mHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    .prologue
    .line 162
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;

    .prologue
    .line 162
    invoke-direct {p0}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->scheduleNextLocked()V

    return-void
.end method

.method private scheduleNextLocked()V
    .locals 3

    .prologue
    .line 195
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 196
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;

    .line 197
    .local v0, "peek":Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;
    iget-object v1, v0, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;->mPriority:Lnet/oneplus/h2launcher/util/TaskWorker$Priority;

    sget-object v2, Lnet/oneplus/h2launcher/util/TaskWorker$Priority;->LOW:Lnet/oneplus/h2launcher/util/TaskWorker$Priority;

    if-ne v1, v2, :cond_1

    .line 199
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    iget-object v2, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->mHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 205
    .end local v0    # "peek":Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;
    :cond_0
    :goto_0
    return-void

    .line 202
    .restart local v0    # "peek":Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->mHandler:Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;

    const/16 v2, 0x4fb1

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler$Impl;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public cancelRunnable(J)V
    .locals 7
    .param p1, "lTag"    # J

    .prologue
    .line 208
    iget-object v2, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 209
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 210
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;

    iget-wide v4, v1, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;->mTag:J

    cmp-long v1, p1, v4

    if-nez v1, :cond_0

    .line 212
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 215
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;>;"
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    return-void
.end method

.method public post(Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;)V
    .locals 3
    .param p1, "runnable"    # Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;

    .prologue
    .line 182
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v0, p1, Lnet/oneplus/h2launcher/util/TaskWorker$TagRunnable;->mPriority:Lnet/oneplus/h2launcher/util/TaskWorker$Priority;

    sget-object v2, Lnet/oneplus/h2launcher/util/TaskWorker$Priority;->HIGH:Lnet/oneplus/h2launcher/util/TaskWorker$Priority;

    if-ne v0, v2, :cond_1

    .line 184
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 188
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 189
    invoke-direct {p0}, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->scheduleNextLocked()V

    .line 191
    :cond_0
    monitor-exit v1

    .line 192
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/TaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
