.class Lnet/oneplus/h2launcher/WeightWatcher$1;
.super Landroid/os/Handler;
.source "WeightWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/WeightWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/WeightWatcher;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/WeightWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/WeightWatcher;

    .prologue
    .line 58
    iput-object p1, p0, Lnet/oneplus/h2launcher/WeightWatcher$1;->this$0:Lnet/oneplus/h2launcher/WeightWatcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x3

    .line 61
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/WeightWatcher$1;->this$0:Lnet/oneplus/h2launcher/WeightWatcher;

    iget-object v4, v4, Lnet/oneplus/h2launcher/WeightWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 66
    :pswitch_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/WeightWatcher$1;->this$0:Lnet/oneplus/h2launcher/WeightWatcher;

    iget-object v4, v4, Lnet/oneplus/h2launcher/WeightWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 69
    :pswitch_2
    iget-object v4, p0, Lnet/oneplus/h2launcher/WeightWatcher$1;->this$0:Lnet/oneplus/h2launcher/WeightWatcher;

    iget-object v4, v4, Lnet/oneplus/h2launcher/WeightWatcher;->mMemoryService:Lnet/oneplus/h2launcher/MemoryTracker;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/MemoryTracker;->getTrackedProcesses()[I

    move-result-object v2

    .line 71
    .local v2, "pids":[I
    iget-object v4, p0, Lnet/oneplus/h2launcher/WeightWatcher$1;->this$0:Lnet/oneplus/h2launcher/WeightWatcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/WeightWatcher;->getChildCount()I

    move-result v0

    .line 72
    .local v0, "N":I
    array-length v4, v2

    if-eq v4, v0, :cond_1

    iget-object v4, p0, Lnet/oneplus/h2launcher/WeightWatcher$1;->this$0:Lnet/oneplus/h2launcher/WeightWatcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/WeightWatcher;->initViews()V

    .line 81
    :cond_0
    :goto_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/WeightWatcher$1;->this$0:Lnet/oneplus/h2launcher/WeightWatcher;

    iget-object v4, v4, Lnet/oneplus/h2launcher/WeightWatcher;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 73
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_0

    .line 74
    iget-object v4, p0, Lnet/oneplus/h2launcher/WeightWatcher$1;->this$0:Lnet/oneplus/h2launcher/WeightWatcher;

    invoke-virtual {v4, v1}, Lnet/oneplus/h2launcher/WeightWatcher;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;

    .line 75
    .local v3, "pw":Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->getPid()I

    move-result v4

    invoke-static {v2, v4}, Lnet/oneplus/h2launcher/WeightWatcher;->indexOf([II)I

    move-result v4

    if-gez v4, :cond_2

    .line 76
    iget-object v4, p0, Lnet/oneplus/h2launcher/WeightWatcher$1;->this$0:Lnet/oneplus/h2launcher/WeightWatcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/WeightWatcher;->initViews()V

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->update()V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
