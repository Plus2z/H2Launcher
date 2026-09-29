.class final Lnet/oneplus/h2launcher/MemoryDumpActivity$2;
.super Ljava/lang/Object;
.source "MemoryDumpActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/MemoryDumpActivity;->startDump(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$andThen:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lnet/oneplus/h2launcher/MemoryDumpActivity$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lnet/oneplus/h2launcher/MemoryDumpActivity$2;->val$andThen:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 171
    const-string v0, "MemoryDumpActivity"

    const-string v1, "service connected, dumping..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lnet/oneplus/h2launcher/MemoryDumpActivity$2;->val$context:Landroid/content/Context;

    check-cast p2, Lnet/oneplus/h2launcher/MemoryTracker$MemoryTrackerInterface;

    .line 173
    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/MemoryTracker$MemoryTrackerInterface;->getService()Lnet/oneplus/h2launcher/MemoryTracker;

    move-result-object v1

    .line 172
    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/MemoryDumpActivity;->dumpHprofAndShare(Landroid/content/Context;Lnet/oneplus/h2launcher/MemoryTracker;)V

    .line 174
    iget-object v0, p0, Lnet/oneplus/h2launcher/MemoryDumpActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 175
    iget-object v0, p0, Lnet/oneplus/h2launcher/MemoryDumpActivity$2;->val$andThen:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/MemoryDumpActivity$2;->val$andThen:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 176
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 179
    return-void
.end method
