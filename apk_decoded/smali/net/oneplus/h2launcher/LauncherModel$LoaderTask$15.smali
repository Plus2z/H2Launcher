.class Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$15;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->doneBindingItems(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

.field final synthetic val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;J)V
    .locals 1
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    .prologue
    .line 3704
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$15;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$15;->val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iput-wide p3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$15;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 3706
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$15;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$15;->val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 3707
    .local v0, "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 3708
    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->finishBindingItems()V

    .line 3711
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$15;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    .line 3714
    sget-object v2, Lnet/oneplus/h2launcher/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3715
    sget-object v3, Lnet/oneplus/h2launcher/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3716
    :try_start_0
    sget-object v2, Lnet/oneplus/h2launcher/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 3717
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3720
    .end local v1    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3719
    :cond_1
    :try_start_1
    sget-object v2, Lnet/oneplus/h2launcher/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3720
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3725
    :cond_2
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bound workspace in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3726
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$15;->val$time:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3725
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    return-void
.end method
