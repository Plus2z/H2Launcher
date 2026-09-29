.class Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$2;
.super Ljava/lang/Object;
.source "CalendarShortcutInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->onAnimationEnd()V
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
    .line 179
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$2;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$2;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-static {v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->access$100(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$2;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-static {v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->access$100(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;->run()V

    .line 185
    :cond_0
    return-void
.end method
