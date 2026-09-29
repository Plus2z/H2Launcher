.class final enum Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;
.super Ljava/lang/Enum;
.source "WeatherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/WeatherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WEATHER_COLUMNS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

.field public static final enum CITY_NAME:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

.field public static final enum TEMP:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

.field public static final enum TEMP_HIGH:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

.field public static final enum TEMP_LOW:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

.field public static final enum TEMP_UNIT:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

.field public static final enum TIMESTAMP:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

.field public static final enum WEATHER_CODE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

.field public static final enum WEATHER_NAME:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 70
    new-instance v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    const-string v1, "TIMESTAMP"

    invoke-direct {v0, v1, v4, v4}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->TIMESTAMP:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    new-instance v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    const-string v1, "CITY_NAME"

    invoke-direct {v0, v1, v5, v5}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->CITY_NAME:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    new-instance v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    const-string v1, "WEATHER_CODE"

    invoke-direct {v0, v1, v6, v6}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->WEATHER_CODE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    new-instance v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    const-string v1, "WEATHER_NAME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->WEATHER_NAME:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    .line 71
    new-instance v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    const-string v1, "TEMP"

    invoke-direct {v0, v1, v8, v7}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->TEMP:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    new-instance v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    const-string v1, "TEMP_HIGH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->TEMP_HIGH:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    new-instance v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    const-string v1, "TEMP_LOW"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->TEMP_LOW:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    new-instance v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    const-string v1, "TEMP_UNIT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->TEMP_UNIT:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    .line 69
    const/16 v0, 0x8

    new-array v0, v0, [Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    sget-object v1, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->TIMESTAMP:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    aput-object v1, v0, v4

    sget-object v1, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->CITY_NAME:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    aput-object v1, v0, v5

    sget-object v1, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->WEATHER_CODE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    aput-object v1, v0, v6

    sget-object v1, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->WEATHER_NAME:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    aput-object v1, v0, v7

    sget-object v1, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->TEMP:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->TEMP_HIGH:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->TEMP_LOW:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->TEMP_UNIT:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    aput-object v2, v0, v1

    sput-object v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->$VALUES:[Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "column_index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->index:I

    .line 76
    return-void
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    .prologue
    .line 69
    iget v0, p0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->index:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    return-object v0
.end method

.method public static values()[Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->$VALUES:[Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    invoke-virtual {v0}, [Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_COLUMNS;

    return-object v0
.end method
