.class public Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;
.super Ljava/lang/Object;
.source "WeatherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/WeatherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeatherData"
.end annotation


# instance fields
.field public cityName:Ljava/lang/String;

.field public temperature:I

.field public temperatureHigh:I

.field public temperatureLow:I

.field public temperatureUnit:Ljava/lang/String;

.field final synthetic this$0:Lnet/oneplus/h2launcher/WeatherProvider;

.field public timestamp:J

.field public weatherCode:I

.field public weatherName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/WeatherProvider;)V
    .locals 3
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/WeatherProvider;

    .prologue
    const/16 v2, -0x63

    .line 131
    iput-object p1, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->this$0:Lnet/oneplus/h2launcher/WeatherProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->timestamp:J

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->cityName:Ljava/lang/String;

    .line 134
    const/16 v0, 0x270f

    iput v0, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->weatherCode:I

    .line 135
    const-string v0, "N/A"

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->weatherName:Ljava/lang/String;

    .line 136
    iput v2, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperature:I

    .line 137
    iput v2, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperatureHigh:I

    .line 138
    iput v2, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperatureLow:I

    .line 139
    const-string v0, "\u02daC"

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperatureUnit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[timestamp] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, "[cityName] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->cityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, "[weatherCode] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->weatherCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, "[weatherName] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->weatherName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, "[temperature] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, "[temperatureHigh] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperatureHigh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, "[temperatureLow] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperatureLow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, "[temperatureUnit] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperatureUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
