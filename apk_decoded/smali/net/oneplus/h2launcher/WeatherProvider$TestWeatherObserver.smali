.class Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;
.super Landroid/database/ContentObserver;
.source "WeatherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/WeatherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestWeatherObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/WeatherProvider;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/WeatherProvider;)V
    .locals 1

    .prologue
    .line 438
    iput-object p1, p0, Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;->this$0:Lnet/oneplus/h2launcher/WeatherProvider;

    .line 439
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 440
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 444
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 445
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver$1;-><init>(Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 451
    return-void
.end method
