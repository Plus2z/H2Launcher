.class Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$2;
.super Ljava/lang/Object;
.source "WeatherShortcutInfo.java"

# interfaces
.implements Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->registerDataProvider()V
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
    .line 126
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$2;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWeatherUpdated(Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V
    .locals 1
    .param p1, "data"    # Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 129
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$2;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->access$000(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V

    .line 130
    return-void
.end method
