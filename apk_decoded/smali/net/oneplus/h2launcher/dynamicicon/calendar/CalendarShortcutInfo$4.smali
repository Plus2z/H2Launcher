.class Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$4;
.super Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;
.source "CalendarShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->updateCalendarData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    .prologue
    .line 305
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$4;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 308
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$4;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->isRunningAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$4;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-static {v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->access$100(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 310
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$4;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-static {v0, p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->access$102(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    .line 311
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$4;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-static {v1}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->access$100(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$4;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-static {v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->access$100(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    move-result-object v0

    iget-wide v0, v0, Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;->createTime:J

    iget-wide v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$4;->createTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 313
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$4;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-static {v0, p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->access$102(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    goto :goto_0

    .line 318
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$4;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-static {v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->access$100(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$4;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-static {v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->access$100(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    move-result-object v0

    iget-wide v0, v0, Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;->createTime:J

    iget-wide v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$4;->createTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 322
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$4;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->access$102(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    .line 326
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$4;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-static {v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->access$000(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)V

    .line 327
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$4;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->needInvalidate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$4;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->onDataChanged()V

    goto :goto_0
.end method
