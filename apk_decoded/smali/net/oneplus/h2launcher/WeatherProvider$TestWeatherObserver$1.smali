.class Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver$1;
.super Ljava/lang/Object;
.source "WeatherProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;

    .prologue
    .line 445
    iput-object p1, p0, Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver$1;->this$1:Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver$1;->this$1:Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;

    iget-object v0, v0, Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;->this$0:Lnet/oneplus/h2launcher/WeatherProvider;

    invoke-static {v0}, Lnet/oneplus/h2launcher/WeatherProvider;->access$600(Lnet/oneplus/h2launcher/WeatherProvider;)V

    .line 449
    return-void
.end method
