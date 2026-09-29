.class Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;
.super Ljava/lang/Object;
.source "WallpaperTaskWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeferredHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;
    }
.end annotation


# instance fields
.field private final mHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;

.field private final mMessageQueue:Landroid/os/MessageQueue;

.field private mRunnableQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 173
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    .line 174
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 177
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    .line 178
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;

    invoke-direct {v0, p0, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->mHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    .prologue
    .line 165
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    .prologue
    .line 165
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->scheduleNextLocked()V

    return-void
.end method

.method private scheduleNextLocked()V
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 199
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;

    .line 200
    .local v0, "peek":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;
    iget-object v1, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;->mPriority:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;->LOW:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    if-ne v1, v2, :cond_1

    .line 202
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->mHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 208
    .end local v0    # "peek":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;
    :cond_0
    :goto_0
    return-void

    .line 205
    .restart local v0    # "peek":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->mHandler:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;

    const/16 v2, 0x4fb1

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public cancelRunnable(J)V
    .locals 7
    .param p1, "lTag"    # J

    .prologue
    .line 211
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 212
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 213
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;

    iget-wide v4, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;->mTag:J

    cmp-long v1, p1, v4

    if-nez v1, :cond_0

    .line 215
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 218
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;>;"
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    return-void
.end method

.method public post(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;)V
    .locals 3
    .param p1, "runnable"    # Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;

    .prologue
    .line 185
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;->mPriority:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;->HIGH:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    if-ne v0, v2, :cond_1

    .line 187
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 191
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 192
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->scheduleNextLocked()V

    .line 194
    :cond_0
    monitor-exit v1

    .line 195
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->mRunnableQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
