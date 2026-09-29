.class Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$3;
.super Ljava/lang/Object;
.source "ClockViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    .prologue
    .line 220
    iput-object p1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$3;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 226
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$3;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-static {v1}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->access$300(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)Lnet/oneplus/h2launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->isPageMoving()Z

    move-result v0

    .line 227
    .local v0, "pageMoving":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$3;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-static {v1}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->access$400(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 228
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$3;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-static {v1}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->access$408(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)I

    .line 229
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$3;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    iget-object v1, v1, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$3;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->access$402(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;I)I

    .line 232
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$3;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->onTimeChanged()V

    .line 233
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$3;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-static {v1}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->access$500(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)V

    .line 234
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$3;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->invalidate()V

    goto :goto_0
.end method
