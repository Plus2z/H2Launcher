.class Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$18;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->loadAllApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    .prologue
    .line 3862
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$18;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$18;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3868
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$18;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    if-eqz v0, :cond_0

    .line 3869
    sget-object v1, Lnet/oneplus/h2launcher/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3870
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$18;->val$r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3871
    monitor-exit v1

    .line 3875
    :goto_0
    return-void

    .line 3871
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3873
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$18;->val$r:Ljava/lang/Runnable;

    invoke-static {v0}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
