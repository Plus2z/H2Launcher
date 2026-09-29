.class public Lnet/oneplus/h2launcher/LauncherFiles;
.super Ljava/lang/Object;
.source "LauncherFiles.java"


# static fields
.field public static final ALL_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final APP_ICONS_DB:Ljava/lang/String; = "app_icons.db"

.field public static final DEFAULT_WALLPAPER_THUMBNAIL:Ljava/lang/String; = "default_thumb2.jpg"

.field public static final DEFAULT_WALLPAPER_THUMBNAIL_OLD:Ljava/lang/String; = "default_thumb.jpg"

.field public static final DEVICE_PREFERENCES_KEY:Ljava/lang/String; = "net.oneplus.launcher.device.prefs"

.field public static final LAUNCHER_DB:Ljava/lang/String; = "launcher.db"

.field public static final LAUNCHES_LOG:Ljava/lang/String; = "launches.log"

.field public static final MANAGED_USER_PREFERENCES_KEY:Ljava/lang/String; = "net.oneplus.h2launcher.managedusers.prefs"

.field public static final NOTE_WIDGET_DB:Ljava/lang/String; = "note_widget.db"

.field public static final OBSOLETE_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "net.oneplus.h2launcher.prefs"

.field public static final STATS_LOG:Ljava/lang/String; = "stats.log"

.field public static final STATS_SIMPLIFIED_LOG:Ljava/lang/String; = "stats_simplified.log"

.field public static final STATS_STANDARD_LOG:Ljava/lang/String; = "stats_standard.log"

.field public static final WALLPAPER_CROP_PREFERENCES_KEY:Ljava/lang/String; = "net.oneplus.h2launcher.WallpaperCropActivity"

.field public static final WALLPAPER_IMAGES_DB:Ljava/lang/String; = "saved_wallpaper_images.db"

.field public static final WIDGET_PREVIEWS_DB:Ljava/lang/String; = "widgetpreviews.db"

.field private static final XML:Ljava/lang/String; = ".xml"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "default_thumb2.jpg"

    aput-object v1, v0, v3

    const-string v1, "default_thumb.jpg"

    aput-object v1, v0, v4

    const-string v1, "launcher.db"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "net.oneplus.h2launcher.prefs.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "net.oneplus.h2launcher.WallpaperCropActivity.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "saved_wallpaper_images.db"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "widgetpreviews.db"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "net.oneplus.h2launcher.managedusers.prefs"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "app_icons.db"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "launches.log"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "stats.log"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "stats_simplified.log"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "stats_standard.log"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/LauncherFiles;->ALL_FILES:Ljava/util/List;

    .line 54
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "launcher.preferences"

    aput-object v1, v0, v3

    const-string v1, "PackageInstallerCompatV16.queue"

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/LauncherFiles;->OBSOLETE_FILES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
