.class Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;
.super Landroid/os/Handler;
.source "WallpaperTaskWorker.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Impl"
.end annotation


# instance fields
.field mWatchdog:Lnet/oneplus/h2launcher/util/Watchdog;

.field final synthetic this$1:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 224
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;->this$1:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    .line 225
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 226
    new-instance v0, Lnet/oneplus/h2launcher/util/Watchdog;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/util/Watchdog;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;->mWatchdog:Lnet/oneplus/h2launcher/util/Watchdog;

    .line 227
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 232
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;->this$1:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->access$000(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 233
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;->this$1:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->access$000(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 234
    monitor-exit v2

    .line 247
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;->this$1:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->access$000(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;

    .line 238
    .local v0, "r":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 240
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;->mWatchdog:Lnet/oneplus/h2launcher/util/Watchdog;

    iget-object v2, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;->mCallStack:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/util/Watchdog;->startTracing(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;->run()V

    .line 242
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;->mWatchdog:Lnet/oneplus/h2launcher/util/Watchdog;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/util/Watchdog;->endTracing()V

    .line 243
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;->this$1:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->access$000(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 245
    :try_start_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;->this$1:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;->access$100(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler;)V

    .line 246
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 238
    .end local v0    # "r":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;
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
    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$DeferredHandler$Impl;->handleMessage(Landroid/os/Message;)V

    .line 254
    const/4 v0, 0x0

    return v0
.end method
