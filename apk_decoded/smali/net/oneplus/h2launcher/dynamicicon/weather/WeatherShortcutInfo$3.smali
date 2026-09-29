.class Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;
.super Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;
.source "WeatherShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->update(Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

.field final synthetic val$data:Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    .prologue
    .line 157
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    iput-object p2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;->val$data:Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->isRunningAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-static {v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->access$100(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-static {v0, p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->access$102(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-static {v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->access$100(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    move-result-object v0

    iget-wide v0, v0, Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;->createTime:J

    iget-wide v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;->createTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 164
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-static {v0, p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->access$102(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-static {v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->access$100(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-static {v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->access$100(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    move-result-object v0

    iget-wide v0, v0, Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;->createTime:J

    iget-wide v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;->createTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 173
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->access$102(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    .line 177
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;->val$data:Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->access$200(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V

    .line 178
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->needInvalidate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->onDataChanged()V

    goto :goto_0
.end method
