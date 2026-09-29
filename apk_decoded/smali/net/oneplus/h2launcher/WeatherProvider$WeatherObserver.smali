.class Lnet/oneplus/h2launcher/WeatherProvider$WeatherObserver;
.super Landroid/database/ContentObserver;
.source "WeatherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/WeatherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/WeatherProvider;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/WeatherProvider;)V
    .locals 1

    .prologue
    .line 426
    iput-object p1, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherObserver;->this$0:Lnet/oneplus/h2launcher/WeatherProvider;

    .line 427
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 428
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 433
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherObserver;->this$0:Lnet/oneplus/h2launcher/WeatherProvider;

    invoke-static {v0}, Lnet/oneplus/h2launcher/WeatherProvider;->access$500(Lnet/oneplus/h2launcher/WeatherProvider;)V

    .line 434
    return-void
.end method
