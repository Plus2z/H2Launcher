.class public Lnet/oneplus/h2launcher/test/TestWeatherProvider;
.super Landroid/content/ContentProvider;
.source "TestWeatherProvider.java"


# static fields
.field private static final CONTENT_TYPE_ALL:Ljava/lang/String; = "vnd.android.cursor.item/weatehr"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final RESULT_COLUMNS:[Ljava/lang/String;

.field private static final WEATHER_ALL:I = 0x1

.field public static final WEATHER_AUTHORIY:Ljava/lang/String; = "net.oneplus.h2launcher.test.TestWeatherProvider"

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCity:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mTemp:I

.field private mTempHigh:I

.field private mTempLow:I

.field private mTempUnit:Ljava/lang/String;

.field private mTimeStamp:Ljava/lang/String;

.field private mWeatherCode:I

.field private mWeatherName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 14
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 19
    const-string v0, "content://net.oneplus.h2launcher.test.TestWeatherProvider/data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TimeStamp"

    aput-object v2, v0, v1

    const-string v1, "CityName"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "CurrentWeatherTypeId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CurrentTemp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CurrentTempHigh"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CurrentTempLow"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CurrentWeatherName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CurrentTempUnit"

    aput-object v2, v0, v1

    sput-object v0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->RESULT_COLUMNS:[Ljava/lang/String;

    .line 41
    sget-object v0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "net.oneplus.h2launcher.test.TestWeatherProvider"

    const-string v2, "data"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mLock:Ljava/lang/Object;

    .line 21
    const/16 v0, 0x270f

    iput v0, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mWeatherCode:I

    .line 22
    const-string v0, "unknown"

    iput-object v0, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mWeatherName:Ljava/lang/String;

    .line 23
    const-string v0, "201607261721"

    iput-object v0, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mTimeStamp:Ljava/lang/String;

    .line 24
    const/16 v0, 0x1e

    iput v0, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mTemp:I

    .line 25
    const/16 v0, 0x1d

    iput v0, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mTempLow:I

    .line 26
    const/16 v0, 0x1f

    iput v0, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mTempHigh:I

    .line 27
    const-string v0, "c"

    iput-object v0, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mTempUnit:Ljava/lang/String;

    .line 28
    const-string v0, "Taipei"

    iput-object v0, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mCity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 47
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "getType"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    const-string v0, "vnd.android.cursor.item/weatehr"

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 60
    const-string v0, "TimeStamp"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mTimeStamp:Ljava/lang/String;

    .line 61
    const-string v0, "CityName"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mCity:Ljava/lang/String;

    .line 62
    const-string v0, "CurrentWeatherTypeId"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mWeatherCode:I

    .line 63
    const-string v0, "CurrentTemp"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mTemp:I

    .line 64
    const-string v0, "CurrentTempHigh"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mTempHigh:I

    .line 65
    const-string v0, "CurrentTempLow"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mTempLow:I

    .line 66
    const-string v0, "CurrentWeatherName"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mWeatherName:Ljava/lang/String;

    .line 67
    const-string v0, "CurrentTempUnit"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mTempUnit:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 69
    return-object v2
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "arg1"    # [Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->RESULT_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 90
    .local v0, "matrixCursor":Landroid/database/MatrixCursor;
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mTimeStamp:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mCity:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mWeatherCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mTemp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mTempHigh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mTempLow:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mWeatherName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lnet/oneplus/h2launcher/test/TestWeatherProvider;->mTempUnit:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 91
    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method
