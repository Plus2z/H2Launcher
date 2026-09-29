.class final enum Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;
.super Ljava/lang/Enum;
.source "WeatherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/WeatherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WEATHER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum CLOUDY:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum DOWNPOUR:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum DRIZZLE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum FLURRY:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum FOG:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum HAIL:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum HAZE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum HURRICANE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum NONE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum OVERCAST:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum RAIN:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum RAINSTORM:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum SANDSTORM:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum SHOWER:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum SLEET:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum SNOW:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum SNOWSTORM:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum SUNNY:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum SUNNY_INTERVALS:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

.field public static final enum THUNDERSHOWER:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;


# instance fields
.field appIconId:I

.field iconId:I

.field weatherCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const v12, 0x7f030012

    const v11, 0x7f030006

    const v10, 0x7f03000f

    const v9, 0x7f030004

    .line 80
    new-instance v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v1, "SUNNY"

    const/16 v3, 0x3e9

    const v4, 0x7f030007

    const v5, 0x7f030013

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->SUNNY:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 81
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "SUNNY_INTERVALS"

    const/4 v5, 0x1

    const/16 v6, 0x3ea

    const v7, 0x7f030007

    const v8, 0x7f030013

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->SUNNY_INTERVALS:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 82
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "CLOUDY"

    const/4 v5, 0x2

    const/16 v6, 0x3eb

    const v7, 0x7f030001

    const v8, 0x7f03000a

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->CLOUDY:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 83
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "OVERCAST"

    const/4 v5, 0x3

    const/16 v6, 0x3ec

    const v7, 0x7f030003

    const v8, 0x7f03000e

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->OVERCAST:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 84
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "DRIZZLE"

    const/4 v5, 0x4

    const/16 v6, 0x3ed

    move v7, v9

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->DRIZZLE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 85
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "RAIN"

    const/4 v5, 0x5

    const/16 v6, 0x3ee

    move v7, v9

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->RAIN:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 86
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "SHOWER"

    const/4 v5, 0x6

    const/16 v6, 0x3ef

    move v7, v9

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->SHOWER:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 87
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "DOWNPOUR"

    const/4 v5, 0x7

    const/16 v6, 0x3f0

    move v7, v9

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->DOWNPOUR:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 88
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "RAINSTORM"

    const/16 v5, 0x8

    const/16 v6, 0x3f1

    move v7, v9

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->RAINSTORM:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 89
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "SLEET"

    const/16 v5, 0x9

    const/16 v6, 0x3f2

    const v8, 0x7f030011

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->SLEET:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 90
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "FLURRY"

    const/16 v5, 0xa

    const/16 v6, 0x3f3

    move v7, v11

    move v8, v12

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->FLURRY:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 91
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "SNOW"

    const/16 v5, 0xb

    const/16 v6, 0x3f4

    move v7, v11

    move v8, v12

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->SNOW:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 92
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "SNOWSTORM"

    const/16 v5, 0xc

    const/16 v6, 0x3f5

    move v7, v11

    move v8, v12

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->SNOWSTORM:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 93
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "HAIL"

    const/16 v5, 0xd

    const/16 v6, 0x3f6

    const v7, 0x7f030002

    const v8, 0x7f03000c

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->HAIL:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 94
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "THUNDERSHOWER"

    const/16 v5, 0xe

    const/16 v6, 0x3f7

    move v7, v9

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->THUNDERSHOWER:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 95
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "SANDSTORM"

    const/16 v5, 0xf

    const/16 v6, 0x3f8

    const v7, 0x7f030005

    const v8, 0x7f030010

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->SANDSTORM:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 96
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "FOG"

    const/16 v5, 0x10

    const/16 v6, 0x3f9

    const v7, 0x7f030003

    const v8, 0x7f03000b

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->FOG:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 97
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "HURRICANE"

    const/16 v5, 0x11

    const/16 v6, 0x3fa

    const v7, 0x7f030008

    const v8, 0x7f030014

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->HURRICANE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 98
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "HAZE"

    const/16 v5, 0x12

    const/16 v6, 0x3fb

    const v7, 0x7f030005

    const v8, 0x7f03000d

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->HAZE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 99
    new-instance v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    const-string v4, "NONE"

    const/16 v5, 0x13

    const/16 v6, 0x270f

    const v7, 0x7f030009

    const v8, 0x7f030015

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->NONE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    .line 79
    const/16 v0, 0x14

    new-array v0, v0, [Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    sget-object v1, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->SUNNY:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->SUNNY_INTERVALS:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->CLOUDY:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->OVERCAST:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->DRIZZLE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->RAIN:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->SHOWER:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->DOWNPOUR:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->RAINSTORM:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->SLEET:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->FLURRY:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->SNOW:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->SNOWSTORM:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->HAIL:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->THUNDERSHOWER:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->SANDSTORM:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->FOG:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->HURRICANE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->HAZE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->NONE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->$VALUES:[Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x3e8L
            to = 0x270fL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "weatherId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4, "resAppIconId"    # I
    .param p5, "resIconId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput p3, p0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->weatherCode:I

    .line 109
    iput p4, p0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->appIconId:I

    .line 110
    iput p5, p0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->iconId:I

    .line 111
    return-void
.end method

.method public static getWeather(I)Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;
    .locals 5
    .param p0, "weatherCode"    # I

    .prologue
    .line 114
    invoke-static {}, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->values()[Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 115
    .local v0, "code":Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;
    iget v4, v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->weatherCode:I

    if-ne v4, p0, :cond_0

    .line 116
    invoke-static {}, Lnet/oneplus/h2launcher/WeatherProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get weather: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v0    # "code":Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;
    :goto_1
    return-object v0

    .line 114
    .restart local v0    # "code":Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "code":Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/WeatherProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get weather: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->NONE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->NONE:Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    return-object v0
.end method

.method public static values()[Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->$VALUES:[Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    invoke-virtual {v0}, [Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lnet/oneplus/h2launcher/WeatherProvider$WEATHER_TYPE;->weatherCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
