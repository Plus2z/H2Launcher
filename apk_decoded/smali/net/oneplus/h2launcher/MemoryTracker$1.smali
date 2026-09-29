.class Lnet/oneplus/h2launcher/MemoryTracker$1;
.super Landroid/os/Handler;
.source "MemoryTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/MemoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/MemoryTracker;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/MemoryTracker;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/MemoryTracker;

    .prologue
    .line 69
    iput-object p1, p0, Lnet/oneplus/h2launcher/MemoryTracker$1;->this$0:Lnet/oneplus/h2launcher/MemoryTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x3

    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker$1;->this$0:Lnet/oneplus/h2launcher/MemoryTracker;

    iget-object v0, v0, Lnet/oneplus/h2launcher/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    iget-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker$1;->this$0:Lnet/oneplus/h2launcher/MemoryTracker;

    iget-object v0, v0, Lnet/oneplus/h2launcher/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker$1;->this$0:Lnet/oneplus/h2launcher/MemoryTracker;

    iget-object v0, v0, Lnet/oneplus/h2launcher/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker$1;->this$0:Lnet/oneplus/h2launcher/MemoryTracker;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/MemoryTracker;->update()V

    .line 82
    iget-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker$1;->this$0:Lnet/oneplus/h2launcher/MemoryTracker;

    iget-object v0, v0, Lnet/oneplus/h2launcher/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker$1;->this$0:Lnet/oneplus/h2launcher/MemoryTracker;

    iget-object v0, v0, Lnet/oneplus/h2launcher/MemoryTracker;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
