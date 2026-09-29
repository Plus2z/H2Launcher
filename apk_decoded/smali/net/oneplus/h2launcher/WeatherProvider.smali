.class public Lnet/oneplus/h2launcher/WeatherProvider;
.super Ljava/lang/Object;
.source "WeatherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;,
        Lnet/oneplus/h2launcher/WeatherProvider$WeatherObserver;,
        Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;,
        Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;,
        Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;,
        Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TEMPERATURE_NONE:I = -0x63

.field public static final TEMP_UNIT_CELSIUS:Ljava/lang/String; = "\u02daC"

.field public static final TEMP_UNIT_DEGREE:Ljava/lang/String; = "\u02da"

.field public static final TEMP_UNIT_FAHRENHEIT:Ljava/lang/String; = "\u02daF"

.field public static final WEATHER_CODE_NONE:I = 0x270f

.field public static final WEATHER_LAUNCH_ACTIVITY:Ljava/lang/String; = "net.oneplus.weather.app.MainActivity"

.field public static final WEATHER_NAME_NONE:Ljava/lang/String; = "N/A"

.field public static final WEATHER_PACKAGE_NAME:Ljava/lang/String; = "net.oneplus.weather"

.field private static sWorkerHandler:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private final KEY_CITY_NAME:Ljava/lang/String;

.field private final KEY_TEMPERATURE:Ljava/lang/String;

.field private final KEY_TEMPERATURE_HIGH:Ljava/lang/String;

.field private final KEY_TEMPERATURE_LOW:Ljava/lang/String;

.field private final KEY_TEMPERATURE_UNIT:Ljava/lang/String;

.field private final KEY_TIMESTAMP:Ljava/lang/String;

.field private final KEY_WEATHER_CODE:Ljava/lang/String;

.field private final KEY_WEATHER_NAME:Ljava/lang/String;

.field private final WEATHER_CONTENT_URI:Landroid/net/Uri;

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mObserver:Lnet/oneplus/h2launcher/WeatherProvider$WeatherObserver;

.field private mTestObserver:Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-class v0, Lnet/oneplus/h2launcher/WeatherProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/oneplus/h2launcher/WeatherProvider;->sWorkerThread:Landroid/os/HandlerThread;

    .line 48
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lnet/oneplus/h2launcher/WeatherProvider;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lnet/oneplus/h2launcher/WeatherProvider;->sWorkerHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "content://com.oneplus.weather.ContentProvider/data"

    .line 53
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->WEATHER_CONTENT_URI:Landroid/net/Uri;

    .line 54
    const-string v0, "weather_timestamp"

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->KEY_TIMESTAMP:Ljava/lang/String;

    .line 55
    const-string v0, "weather_city"

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->KEY_CITY_NAME:Ljava/lang/String;

    .line 56
    const-string v0, "weather_code"

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->KEY_WEATHER_CODE:Ljava/lang/String;

    .line 57
    const-string v0, "weather_temp"

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->KEY_TEMPERATURE:Ljava/lang/String;

    .line 58
    const-string v0, "weather_temp_high"

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->KEY_TEMPERATURE_HIGH:Ljava/lang/String;

    .line 59
    const-string v0, "weather_temp_low"

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->KEY_TEMPERATURE_LOW:Ljava/lang/String;

    .line 60
    const-string v0, "weather_temp_unit"

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->KEY_TEMPERATURE_UNIT:Ljava/lang/String;

    .line 61
    const-string v0, "weather_description"

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->KEY_WEATHER_NAME:Ljava/lang/String;

    .line 158
    iput-object p1, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mContext:Landroid/content/Context;

    .line 159
    new-instance v0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherObserver;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/WeatherProvider$WeatherObserver;-><init>(Lnet/oneplus/h2launcher/WeatherProvider;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mObserver:Lnet/oneplus/h2launcher/WeatherProvider$WeatherObserver;

    .line 160
    new-instance v0, Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;-><init>(Lnet/oneplus/h2launcher/WeatherProvider;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mTestObserver:Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mCallbacks:Ljava/util/ArrayList;

    .line 162
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/WeatherProvider;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/WeatherProvider;

    .prologue
    .line 32
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->WEATHER_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/WeatherProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/WeatherProvider;

    .prologue
    .line 32
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/WeatherProvider;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/WeatherProvider;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/WeatherProvider;->processWeatherInformation(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/WeatherProvider;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/WeatherProvider;

    .prologue
    .line 32
    invoke-direct {p0}, Lnet/oneplus/h2launcher/WeatherProvider;->queryWeatherInformation()V

    return-void
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/WeatherProvider;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/WeatherProvider;

    .prologue
    .line 32
    invoke-direct {p0}, Lnet/oneplus/h2launcher/WeatherProvider;->queryTestWeatherInformation()V

    return-void
.end method

.method public static getDefaultWeatherAppIconResourceId()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 260
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->NONE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    iget v0, v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->appIconId:I

    return v0
.end method

.method public static getDefaultWeatherIconResourceId()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 256
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->NONE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    iget v0, v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->iconId:I

    return v0
.end method

.method public static getWeatherAppIconResourceId(I)I
    .locals 1
    .param p0, "weatherCode"    # I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 252
    invoke-static {p0}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->getWeather(I)Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    move-result-object v0

    iget v0, v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->appIconId:I

    return v0
.end method

.method public static getWeatherIconResourceId(I)I
    .locals 1
    .param p0, "weatherCode"    # I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 248
    invoke-static {p0}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->getWeather(I)Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    move-result-object v0

    iget v0, v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->iconId:I

    return v0
.end method

.method private processWeatherInformation(Landroid/database/Cursor;)V
    .locals 18
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 342
    sget-object v13, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    const-string v14, "cannot get weather information by querying content resolver"

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-nez v13, :cond_1

    .line 347
    sget-object v13, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    const-string v14, "cannot move the cursor point to the first row, is the cursor empty?"

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 352
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v13

    invoke-static {}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->values()[Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    move-result-object v14

    array-length v14, v14

    if-ge v13, v14, :cond_2

    .line 353
    sget-object v13, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    const-string v14, "the column count is not met the spec, contact OPWeather owner."

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget-object v13, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "expected columns: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->values()[Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    move-result-object v15

    array-length v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", actual columns: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 355
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 354
    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_2
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;-><init>(Lnet/oneplus/h2launcher/WeatherProvider;)V

    .line 361
    .local v3, "data":Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;
    :try_start_0
    sget-object v13, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->TIMESTAMP:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    invoke-static {v13}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->access$400(Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 362
    .local v10, "timestamp":Ljava/lang/String;
    sget-object v13, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->CITY_NAME:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    invoke-static {v13}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->access$400(Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "city":Ljava/lang/String;
    sget-object v13, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->WEATHER_CODE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    invoke-static {v13}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->access$400(Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 364
    .local v11, "weatherCode":Ljava/lang/String;
    sget-object v13, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->WEATHER_NAME:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    invoke-static {v13}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->access$400(Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 365
    .local v12, "weatherName":Ljava/lang/String;
    sget-object v13, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->TEMP:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    invoke-static {v13}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->access$400(Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, "temp":Ljava/lang/String;
    sget-object v13, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->TEMP_HIGH:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    invoke-static {v13}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->access$400(Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 367
    .local v7, "tempHigh":Ljava/lang/String;
    sget-object v13, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->TEMP_LOW:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    invoke-static {v13}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->access$400(Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 368
    .local v8, "tempLow":Ljava/lang/String;
    sget-object v13, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->TEMP_UNIT:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    invoke-static {v13}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->access$400(Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 369
    .local v9, "tempUnit":Ljava/lang/String;
    sget-object v13, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Raw Weather Data] timestamp: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", city: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", name: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", temp: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", high: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", low: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", unit: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v13, "yyyyMMddkkmm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-direct {v4, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 374
    .local v4, "df":Ljava/text/DateFormat;
    invoke-virtual {v4, v10}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    iput-wide v14, v3, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->timestamp:J

    .line 375
    iput-object v2, v3, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->cityName:Ljava/lang/String;

    .line 376
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->getWeather(I)Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    move-result-object v13

    iget v13, v13, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->weatherCode:I

    iput v13, v3, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->weatherCode:I

    .line 377
    iput-object v12, v3, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->weatherName:Ljava/lang/String;

    .line 378
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v3, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperature:I

    .line 379
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v3, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperatureHigh:I

    .line 380
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v3, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperatureLow:I

    .line 381
    iput-object v9, v3, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperatureUnit:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 388
    sget-object v13, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .end local v2    # "city":Ljava/lang/String;
    .end local v4    # "df":Ljava/text/DateFormat;
    .end local v6    # "temp":Ljava/lang/String;
    .end local v7    # "tempHigh":Ljava/lang/String;
    .end local v8    # "tempLow":Ljava/lang/String;
    .end local v9    # "tempUnit":Ljava/lang/String;
    .end local v10    # "timestamp":Ljava/lang/String;
    .end local v11    # "weatherCode":Ljava/lang/String;
    .end local v12    # "weatherName":Ljava/lang/String;
    :goto_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lnet/oneplus/h2launcher/WeatherProvider;->updateWeatherCallbacks(Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;)V

    .line 392
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lnet/oneplus/h2launcher/WeatherProvider;->writePreferences(Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V

    goto/16 :goto_0

    .line 382
    :catch_0
    move-exception v5

    .line 383
    .local v5, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    sget-object v13, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invalid Cursor data: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 388
    sget-object v13, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 384
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v13

    move-object v5, v13

    .line 385
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    sget-object v13, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "got unexpected weather data: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 387
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 388
    sget-object v13, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 387
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 388
    sget-object v14, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v13

    .line 384
    :catch_2
    move-exception v13

    move-object v5, v13

    goto :goto_2

    :catch_3
    move-exception v13

    move-object v5, v13

    goto :goto_2
.end method

.method private queryTestWeatherInformation()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mContext:Landroid/content/Context;

    const-string v1, "net.oneplus.weather"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/Utilities;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    const-string v1, "the weather application is not installed, stop querying..."

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :goto_0
    return-void

    .line 329
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider;->sWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/WeatherProvider$2;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/WeatherProvider$2;-><init>(Lnet/oneplus/h2launcher/WeatherProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private queryWeatherInformation()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mContext:Landroid/content/Context;

    const-string v1, "net.oneplus.weather"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/Utilities;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    const-string v1, "the weather application is not installed, stop querying..."

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 312
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider;->sWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/WeatherProvider$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/WeatherProvider$1;-><init>(Lnet/oneplus/h2launcher/WeatherProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateWeatherCallbacks(Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;)V
    .locals 4
    .param p1, "data"    # Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;
    .param p2, "cb"    # Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;

    .prologue
    .line 396
    if-nez p2, :cond_0

    .line 397
    sget-object v1, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    const-string v2, "push the weather information to the callbacks"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;

    .line 399
    .local v0, "callback":Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;
    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;->onWeatherUpdated(Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V

    goto :goto_0

    .line 402
    .end local v0    # "callback":Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;
    :cond_0
    sget-object v1, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push the weather information to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-interface {p2, p1}, Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;->onWeatherUpdated(Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V

    .line 405
    :cond_1
    return-void
.end method

.method private writePreferences(Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V
    .locals 6
    .param p1, "data"    # Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;

    .prologue
    .line 408
    iget-object v1, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 409
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "weather_timestamp"

    iget-wide v4, p1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->timestamp:J

    .line 410
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "weather_city"

    iget-object v3, p1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->cityName:Ljava/lang/String;

    .line 411
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "weather_code"

    iget v3, p1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->weatherCode:I

    .line 412
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "weather_description"

    iget-object v3, p1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->weatherName:Ljava/lang/String;

    .line 413
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "weather_temp"

    iget v3, p1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperature:I

    .line 414
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "weather_temp_high"

    iget v3, p1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperatureHigh:I

    .line 415
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "weather_temp_low"

    iget v3, p1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperatureLow:I

    .line 416
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "weather_temp_unit"

    iget-object v3, p1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperatureUnit:Ljava/lang/String;

    .line 417
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 418
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 419
    return-void
.end method


# virtual methods
.method public getCurrentWeatherInformation()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/WeatherProvider;->getCurrentWeatherInformation(Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;)V

    .line 197
    return-void
.end method

.method public getCurrentWeatherInformation(Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;)V
    .locals 1
    .param p1, "cb"    # Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;

    .prologue
    .line 206
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/WeatherProvider;->getOfflineWeatherInformation()Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;

    move-result-object v0

    .line 208
    .local v0, "data":Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;
    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0, v0, p1}, Lnet/oneplus/h2launcher/WeatherProvider;->updateWeatherCallbacks(Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;)V

    .line 211
    :cond_0
    return-void
.end method

.method public getOfflineWeatherInformation()Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;
    .locals 7

    .prologue
    const/16 v6, -0x63

    .line 171
    iget-object v2, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 172
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "weather_timestamp"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    invoke-direct {p0}, Lnet/oneplus/h2launcher/WeatherProvider;->queryWeatherInformation()V

    .line 174
    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    const-string v3, "never get the weather information, querying... "

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    .line 178
    :cond_0
    new-instance v0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;-><init>(Lnet/oneplus/h2launcher/WeatherProvider;)V

    .line 179
    .local v0, "data":Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;
    const-string v2, "weather_timestamp"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->timestamp:J

    .line 180
    const-string v2, "weather_city"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->cityName:Ljava/lang/String;

    .line 181
    const-string v2, "weather_code"

    const/16 v3, 0x270f

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->weatherCode:I

    .line 182
    const-string v2, "weather_description"

    const-string v3, "N/A"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->weatherName:Ljava/lang/String;

    .line 183
    const-string v2, "weather_temp"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperature:I

    .line 184
    const-string v2, "weather_temp_high"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperatureHigh:I

    .line 185
    const-string v2, "weather_temp_low"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperatureLow:I

    .line 186
    const-string v2, "weather_temp_unit"

    const-string v3, "\u02daC"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperatureUnit:Ljava/lang/String;

    goto :goto_0
.end method

.method public registerContentObserver(Landroid/content/ContentResolver;)V
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 264
    iget-object v1, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mContext:Landroid/content/Context;

    const-string v2, "net.oneplus.weather"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/Utilities;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    sget-object v1, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    const-string v2, "the weather application is not installed"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mObserver:Lnet/oneplus/h2launcher/WeatherProvider$WeatherObserver;

    if-nez v1, :cond_1

    .line 270
    new-instance v1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherObserver;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/WeatherProvider$WeatherObserver;-><init>(Lnet/oneplus/h2launcher/WeatherProvider;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mObserver:Lnet/oneplus/h2launcher/WeatherProvider$WeatherObserver;

    .line 272
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mTestObserver:Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;

    if-nez v1, :cond_2

    .line 273
    new-instance v1, Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;-><init>(Lnet/oneplus/h2launcher/WeatherProvider;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mTestObserver:Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;

    .line 276
    :cond_2
    sget-object v1, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->showCallStack(Ljava/lang/String;I)Ljava/lang/String;

    .line 277
    sget-object v1, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerContentObserver receiver = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mObserver:Lnet/oneplus/h2launcher/WeatherProvider$WeatherObserver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v1, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerContentObserver mContext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-object v1, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerContentObserver obj = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/WeatherProvider;->WEATHER_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mObserver:Lnet/oneplus/h2launcher/WeatherProvider$WeatherObserver;

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 283
    sget-object v1, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mTestObserver:Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 284
    invoke-direct {p0}, Lnet/oneplus/h2launcher/WeatherProvider;->queryWeatherInformation()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    const-string v2, "register with weather provider failed: %s"

    invoke-static {v1, v2, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public subscribeCallback(Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;)V
    .locals 3
    .param p1, "cb"    # Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribe new weather callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mContext:Landroid/content/Context;

    const-string v1, "net.oneplus.weather"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/Utilities;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    const-string v1, "the weather application is not installed, may not receive the updates"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    const-string v1, "the callback is existed, remove the old one"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 232
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/WeatherProvider;->getCurrentWeatherInformation(Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;)V

    .line 236
    return-void
.end method

.method public unregisterContentObserver(Landroid/content/ContentResolver;)V
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v3, 0x0

    .line 291
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 293
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mObserver:Lnet/oneplus/h2launcher/WeatherProvider$WeatherObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mTestObserver:Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;

    if-eqz v0, :cond_0

    .line 294
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->showCallStack(Ljava/lang/String;I)Ljava/lang/String;

    .line 295
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterContentObserver mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterContentObserver receiver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mObserver:Lnet/oneplus/h2launcher/WeatherProvider$WeatherObserver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterContentObserver obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mObserver:Lnet/oneplus/h2launcher/WeatherProvider$WeatherObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 300
    iput-object v3, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mObserver:Lnet/oneplus/h2launcher/WeatherProvider$WeatherObserver;

    .line 301
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mTestObserver:Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 302
    iput-object v3, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mTestObserver:Lnet/oneplus/h2launcher/WeatherProvider$TestWeatherObserver;

    .line 304
    :cond_0
    return-void
.end method

.method public unsubscribeCallback(Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;)V
    .locals 3
    .param p1, "cb"    # Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 239
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "un-subscribe the weather callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider;->TAG:Ljava/lang/String;

    const-string v1, "the target callback is not found in the callback list"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
