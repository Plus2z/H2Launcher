.class Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$2;
.super Landroid/content/BroadcastReceiver;
.source "ClockViewGroup.java"


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
    .line 211
    iput-object p1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$2;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 214
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$2;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-static {v0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->access$200(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 215
    return-void
.end method
