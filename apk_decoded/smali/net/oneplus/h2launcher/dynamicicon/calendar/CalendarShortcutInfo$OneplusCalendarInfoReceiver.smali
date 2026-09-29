.class Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$OneplusCalendarInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CalendarShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OneplusCalendarInfoReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    .prologue
    .line 288
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$OneplusCalendarInfoReceiver;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 291
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "actionString":Ljava/lang/String;
    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive Calender intent, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", obj = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$OneplusCalendarInfoReceiver;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$OneplusCalendarInfoReceiver;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->access$400(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;Z)V

    .line 295
    return-void
.end method
