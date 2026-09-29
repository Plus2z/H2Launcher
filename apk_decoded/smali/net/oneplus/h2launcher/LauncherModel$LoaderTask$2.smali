.class Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->waitForIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    .prologue
    .line 1841
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$2;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1843
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$2;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    monitor-enter v1

    .line 1844
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$2;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    .line 1846
    const-string v0, "Launcher.Model"

    const-string v2, "done with previous binding step"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$2;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1849
    monitor-exit v1

    .line 1850
    return-void

    .line 1849
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
