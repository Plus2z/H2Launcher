.class Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$1;
.super Ljava/lang/Object;
.source "WeatherShortcutInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->init(Landroid/content/Context;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V
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
    .line 105
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$1;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$1;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->registerDataProvider()V

    .line 108
    return-void
.end method
