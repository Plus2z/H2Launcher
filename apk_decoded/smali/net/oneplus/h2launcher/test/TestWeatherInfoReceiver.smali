.class public Lnet/oneplus/h2launcher/test/TestWeatherInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TestWeatherInfoReceiver.java"


# static fields
.field public static final ACTION_RECEIVE_WEATHER:Ljava/lang/String; = "net.oneplus.weather.RECEIVE_LOCATION_WEATHER"

.field public static final ACTION_REQUEST_WEATHER:Ljava/lang/String; = "net.oneplus.weather.GET_LOCATION_WEATHER"

.field private static final CURRENT_TEMP_NONE:I = -0x270f

.field public static final DEBUG:Z = true

.field public static final KEY_CITY_NAME:Ljava/lang/String; = "CityName"

.field public static final KEY_CURRENT_TEMP:Ljava/lang/String; = "CurrentTemp"

.field public static final KEY_CURRENT_TEMP_HIGH:Ljava/lang/String; = "CurrentTempHigh"

.field public static final KEY_CURRENT_TEMP_LOW:Ljava/lang/String; = "CurrentTempLow"

.field public static final KEY_CURRENT_TEMP_UNIT:Ljava/lang/String; = "CurrentTempUnit"

.field public static final KEY_CURRENT_TEMP_WITH_C:Ljava/lang/String; = "CurrentTempWithC"

.field public static final KEY_CURRENT_WEATHER_NAME:Ljava/lang/String; = "CurrentWeatherName"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "TimeStamp"

.field private static final KEY_WEATHER_BUNDLE:Ljava/lang/String; = "OpWeatherInfo"

.field public static final KEY_WEATHER_ID:Ljava/lang/String; = "CurrentWeatherTypeId"

.field public static final TAG:Ljava/lang/String;

.field public static final WEATHER_CODE_NONE:I = -0x1

.field public static final WEATHER_PKG_NAME:Ljava/lang/String; = "net.oneplus.weather"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lnet/oneplus/h2launcher/test/TestWeatherInfoReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/test/TestWeatherInfoReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v12, -0x270f

    .line 36
    const-string v10, "OpWeatherInfo"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v9, -0x1

    .line 38
    .local v9, "weatherCode":I
    const/16 v2, -0x270f

    .line 43
    .local v2, "temp":I
    const/4 v1, 0x0

    .line 44
    .local v1, "city":Ljava/lang/String;
    const/4 v8, 0x0

    .line 45
    .local v8, "weather":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 46
    const-string v10, "CurrentWeatherTypeId"

    const/4 v11, -0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 47
    const-string v10, "CurrentTemp"

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 48
    const-string v10, "CityName"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v10, "CurrentWeatherName"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 50
    const-string v10, "CurrentTempLow"

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 51
    .local v4, "tempLow":I
    const-string v10, "CurrentTempHigh"

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 52
    .local v3, "tempHigh":I
    const-string v10, "CurrentTempUnit"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, "tempUnit":Ljava/lang/String;
    const-string v10, "TimeStamp"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "timeStamp":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 55
    .local v7, "values":Landroid/content/ContentValues;
    const-string v10, "TimeStamp"

    invoke-virtual {v7, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v10, "CurrentWeatherTypeId"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    const-string v10, "CurrentWeatherName"

    invoke-virtual {v7, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v10, "CurrentTemp"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    const-string v10, "CurrentTempLow"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    const-string v10, "CurrentTempHigh"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    const-string v10, "CurrentTempUnit"

    invoke-virtual {v7, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v10, "CityName"

    invoke-virtual {v7, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v10, Lnet/oneplus/h2launcher/test/TestWeatherInfoReceiver;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TestWeatherInfoReceiver receive timeStamp = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", weatherId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", weatherName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", tempLow = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", temp = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", tempHigh = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", tempUnit = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", city = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 69
    .end local v3    # "tempHigh":I
    .end local v4    # "tempLow":I
    .end local v5    # "tempUnit":Ljava/lang/String;
    .end local v6    # "timeStamp":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
