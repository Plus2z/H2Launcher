.class public interface abstract Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;
.super Ljava/lang/Object;
.source "WeatherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/WeatherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IWeatherCallback"
.end annotation


# virtual methods
.method public abstract onWeatherUpdated(Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V
    .param p1    # Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
