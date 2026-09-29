.class public final Lnet/oneplus/h2launcher/LauncherSettings$Settings;
.super Ljava/lang/Object;
.source "LauncherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXTRA_DEFAULT_VALUE:Ljava/lang/String; = "default_value"

.field public static final EXTRA_EXTRACTED_COLORS:Ljava/lang/String; = "extra_extractedColors"

.field public static final EXTRA_VALUE:Ljava/lang/String; = "value"

.field public static final EXTRA_WALLPAPER_ID:Ljava/lang/String; = "extra_wallpaperId"

.field public static final METHOD_GET_BOOLEAN:Ljava/lang/String; = "get_boolean_setting"

.field public static final METHOD_SET_BOOLEAN:Ljava/lang/String; = "set_boolean_setting"

.field public static final METHOD_SET_EXTRACTED_COLORS_AND_WALLPAPER_ID:Ljava/lang/String; = "set_extracted_colors_and_wallpaper_id_setting"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/config/ProviderConfig;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/LauncherSettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
