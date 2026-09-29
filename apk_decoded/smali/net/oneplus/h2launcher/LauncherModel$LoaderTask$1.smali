.class Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->fireWorkspaceCurrentPageStepFinished()V
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
    .line 1798
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$1;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1800
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$1;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    monitor-enter v1

    .line 1802
    :try_start_0
    const-string v0, "Launcher.Model"

    const-string v2, "done with current page binding step"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$1;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1805
    monitor-exit v1

    .line 1806
    return-void

    .line 1805
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
