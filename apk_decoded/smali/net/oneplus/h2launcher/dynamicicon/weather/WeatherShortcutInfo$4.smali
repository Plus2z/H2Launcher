.class Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$4;
.super Ljava/lang/Object;
.source "WeatherShortcutInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->onAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    .prologue
    .line 261
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$4;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$4;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-static {v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->access$100(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$4;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-static {v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->access$100(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;->run()V

    .line 267
    :cond_0
    return-void
.end method
