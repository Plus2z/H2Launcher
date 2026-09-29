.class Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$1;
.super Ljava/lang/Object;
.source "CalendarShortcutInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->init(Landroid/content/Context;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V
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
    .line 83
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$1;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$1;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->registerDataProvider()V

    .line 86
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$1;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-static {v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->access$000(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)V

    .line 87
    return-void
.end method
