.class public final Lnet/oneplus/h2launcher/LauncherSettings$ExternalWidget;
.super Ljava/lang/Object;
.source "LauncherSettings.java"

# interfaces
.implements Lnet/oneplus/h2launcher/LauncherSettings$BaseLauncherColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalWidget"
.end annotation


# static fields
.field public static final ARG_ADD_WIDGET:Ljava/lang/String; = "add"

.field public static final ARG_REMOVE_WIDGET:Ljava/lang/String; = "remove"

.field public static final ARG_SEAT_AVAILABLE:Ljava/lang/String; = "available"

.field public static final COMPONENT:Ljava/lang/String; = "component"

.field public static final CONTENT:Ljava/lang/String; = "CONTENT"

.field public static final CONTENT_EXTERNAL:Ljava/lang/String; = "EXTERNAL"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXTRA_EXTERNAL_ONLY:Ljava/lang/String; = "external_only"

.field public static final EXTRA_REACH_LIMIT:Ljava/lang/String; = "reach_limit"

.field public static final EXTRA_SEAT_AVAILABLE:Ljava/lang/String; = "seat_available"

.field public static final EXTRA_SUCCESS:Ljava/lang/String; = "success"

.field public static final EXTRA_WIDGET_CLASS:Ljava/lang/String; = "class"

.field public static final EXTRA_WIDGET_ID:Ljava/lang/String; = "widget_id"

.field public static final EXTRA_WIDGET_PACKAGE:Ljava/lang/String; = "package"

.field public static final METHOD_MANAGE_WIDGET:Ljava/lang/String; = "manageWidget"

.field public static final TABLE_NAME:Ljava/lang/String; = "widgets"

.field public static final TYPE:Ljava/lang/String; = "operationType"

.field public static final TYPE_ADD:I = 0x0

.field public static final TYPE_REMOVE:I = 0x1

.field public static final WIDGET_ID:Ljava/lang/String; = "widgetId"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/config/ProviderConfig;->NOTE_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "widgets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/LauncherSettings$ExternalWidget;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
