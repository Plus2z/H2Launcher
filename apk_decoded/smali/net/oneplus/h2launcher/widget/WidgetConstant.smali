.class public Lnet/oneplus/h2launcher/widget/WidgetConstant;
.super Ljava/lang/Object;
.source "WidgetConstant.java"


# static fields
.field public static final ADD_SHADOW_WIDGET_LIST:[Landroid/content/ComponentName;

.field public static final ALLOWED_EXTERNAL_WIDGET_OWNER:[Ljava/lang/String;

.field public static final CN_LEDONGLI_LDL:Ljava/lang/String; = "cn.ledongli.ldl"

.field public static final CN_LEDONGLI_LDL_LDLAPPWIDGETPROVIDER:Ljava/lang/String; = "cn.ledongli.ldl.widget.LdlAppWidgetProvider"

.field public static final CN_LEDONGLI_LDL_ONEPLUSWIDGETPROVIDER:Ljava/lang/String; = "cn.ledongli.ldl.widget.OnePlusWidgetProvider"

.field public static final CN_ONEPLUS_PHOTOS:Ljava/lang/String; = "cn.oneplus.photos"

.field public static final CN_ONEPLUS_PHOTOS_WIDGET_PROVIDER:Ljava/lang/String; = "cn.oneplus.photos.appwidget.PhotosAppWidgetProvider"

.field public static final COM_ANDROID_VENDING:Ljava/lang/String; = "com.android.vending"

.field public static final COM_AUTONAVI_MANU_WIDGET:Ljava/lang/String; = "com.autonavi.manu.widget"

.field public static final COM_AUTONAVI_MANU_WIDGET_REMOTEVIEW_MAINAPPWIDGETPROVIDER:Ljava/lang/String; = "com.autonavi.manu.widget.remoteview.MainAppWidgetProvider"

.field public static final COM_GOOGLE_ANDROID_FINSKY_WIDGET_CONSUMPTION_NOW_PLAYING_WIDGET_PROVIDER:Ljava/lang/String; = "com.google.android.finsky.widget.consumption.NowPlayingWidgetProvider"

.field public static final COM_GOOGLE_ANDROID_FINSKY_WIDGET_RECOMMENDATION_RECOMMENDED_WIDGET_PROVIDER:Ljava/lang/String; = "com.google.android.finsky.widget.recommendation.RecommendedWidgetProvider"

.field public static final COM_ONEPLUS_ALARMCLOCK_DIGITAL_APP_WIDGET_PROVIDER:Ljava/lang/String; = "com.oneplus.alarmclock.DigitalAppWidgetProvider"

.field public static final COM_ONEPLUS_CALENDAR:Ljava/lang/String; = "com.oneplus.calendar"

.field public static final COM_ONEPLUS_CALENDAR_OPCALENDARAPPWIDGETPROVIDER:Ljava/lang/String; = "com.android.calendar.oneplus.appwidget.OPCalendarAppWidgetProvider"

.field public static final COM_ONEPLUS_CARD:Ljava/lang/String; = "com.oneplus.card"

.field public static final COM_ONEPLUS_CARD_CARDWIDGETPROVIDER:Ljava/lang/String; = "com.oneplus.card.widget.CardWidgetProvider"

.field public static final COM_ONEPLUS_CARD_VIPCARDWIDGETPROVIDER:Ljava/lang/String; = "com.oneplus.card.widget.VipCardWidgetProvider"

.field public static final COM_ONEPLUS_DESKCLOCK:Ljava/lang/String; = "com.oneplus.deskclock"

.field public static final COM_ONEPLUS_NOTE:Ljava/lang/String; = "com.oneplus.note"

.field public static final COM_ONEPLUS_NOTE_DETAILWIDGET:Ljava/lang/String; = "com.oneplus.note.widget.DetailWidgetProvider"

.field public static final COM_ONEPLUS_NOTE_DETAILWIDGETPROVIDER:Ljava/lang/String; = "com.oneplus.note.ui.DetailWidgetProvider"

.field public static final COM_ONEPLUS_NOTE_LISTWIDGET:Ljava/lang/String; = "com.oneplus.note.widget.ListWidgetProvider"

.field public static final COM_ONEPLUS_NOTE_QUICKNOTEWIDGETPROVIDER:Ljava/lang/String; = "com.oneplus.note.ui.QuickNoteWidgetProvider"

.field public static final COM_ONEPLUS_NOTE_QUICKWIDGET:Ljava/lang/String; = "com.oneplus.note.widget.QuickWidgetProvider"

.field public static final COM_ONEPLUS_NOTE_WIDGETPROVIDER:Ljava/lang/String; = "com.oneplus.note.ui.WidgetProvider"

.field public static final COM_ONEPLUS_SECURITY:Ljava/lang/String; = "com.oneplus.security"

.field public static final COM_ONEPLUS_SECURITY_VIEW_SECURITY_WIDGET_PROVIDER:Ljava/lang/String; = "com.oneplus.security.view.SecurityWidgetProvider"

.field public static final IN_HOUSE_WIDGET_LIST:[Landroid/content/ComponentName;

.field public static final NET_ONEPLUS_WEATHER:Ljava/lang/String; = "net.oneplus.weather"

.field public static final NET_ONEPLUS_WEATHER_WIDGET_WDIGET_WEATHERWIDGETPROVIDER:Ljava/lang/String; = "net.oneplus.weather.widget.widget.WeatherWidgetProvider"

.field public static final NET_ONEPLUS_WIDGET:Ljava/lang/String; = "net.oneplus.widget"

.field public static final NET_ONEPLUS_WIDGET_APPWIDGET_WEATHERWIDGETPROVIDER:Ljava/lang/String; = "net.oneplus.widget.appwidget.WeatherWidgetProvider"

.field public static final PARTNER_WIDGET_LIST:[Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 50
    new-array v0, v5, [Ljava/lang/String;

    sput-object v0, Lnet/oneplus/h2launcher/widget/WidgetConstant;->ALLOWED_EXTERNAL_WIDGET_OWNER:[Ljava/lang/String;

    .line 56
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/content/ComponentName;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.calendar"

    const-string v3, "com.android.calendar.oneplus.appwidget.OPCalendarAppWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.note"

    const-string v3, "com.oneplus.note.ui.WidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.note"

    const-string v3, "com.oneplus.note.ui.DetailWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.note"

    const-string v4, "com.oneplus.note.ui.QuickNoteWidgetProvider"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.note"

    const-string v4, "com.oneplus.note.widget.QuickWidgetProvider"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.note"

    const-string v4, "com.oneplus.note.widget.DetailWidgetProvider"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.note"

    const-string v4, "com.oneplus.note.widget.ListWidgetProvider"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.card"

    const-string v4, "com.oneplus.card.widget.CardWidgetProvider"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.card"

    const-string v4, "com.oneplus.card.widget.VipCardWidgetProvider"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.security"

    const-string v4, "com.oneplus.security.view.SecurityWidgetProvider"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "cn.oneplus.photos"

    const-string v4, "cn.oneplus.photos.appwidget.PhotosAppWidgetProvider"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "net.oneplus.weather"

    const-string v4, "net.oneplus.weather.widget.widget.WeatherWidgetProvider"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lnet/oneplus/h2launcher/widget/WidgetConstant;->IN_HOUSE_WIDGET_LIST:[Landroid/content/ComponentName;

    .line 74
    new-array v0, v7, [Landroid/content/ComponentName;

    const-string v1, "cn.ledongli.ldl/cn.ledongli.ldl.widget.OnePlusWidgetProvider"

    .line 75
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "cn.ledongli.ldl/cn.ledongli.ldl.widget.LdlAppWidgetProvider"

    .line 77
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lnet/oneplus/h2launcher/widget/WidgetConstant;->PARTNER_WIDGET_LIST:[Landroid/content/ComponentName;

    .line 84
    new-array v0, v7, [Landroid/content/ComponentName;

    const-string v1, "com.android.vending/com.google.android.finsky.widget.consumption.NowPlayingWidgetProvider"

    .line 85
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "com.android.vending/com.google.android.finsky.widget.recommendation.RecommendedWidgetProvider"

    .line 87
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lnet/oneplus/h2launcher/widget/WidgetConstant;->ADD_SHADOW_WIDGET_LIST:[Landroid/content/ComponentName;

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
