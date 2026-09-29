.class public Lnet/oneplus/h2launcher/migrate/BlurWallpaperMigration;
.super Ljava/lang/Object;
.source "BlurWallpaperMigration.java"


# static fields
.field private static final LATEST_ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lnet/oneplus/h2launcher/migrate/BlurWallpaperMigration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/migrate/BlurWallpaperMigration;->TAG:Ljava/lang/String;

    .line 17
    sget-object v0, Lnet/oneplus/h2launcher/util/WallpaperUtils;->ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    sput-object v0, Lnet/oneplus/h2launcher/migrate/BlurWallpaperMigration;->LATEST_ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isWallpaperMigrated(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getLastMigratedWallpaper(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 47
    .local v0, "blurWallpaper":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    sget-object v1, Lnet/oneplus/h2launcher/migrate/BlurWallpaperMigration;->LATEST_ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static performMigration(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 27
    invoke-static {p0}, Lnet/oneplus/h2launcher/migrate/BlurWallpaperMigration;->isWallpaperMigrated(Landroid/content/Context;)Z

    move-result v0

    .line 28
    .local v0, "isWallpaperMigrated":Z
    sget-object v2, Lnet/oneplus/h2launcher/migrate/BlurWallpaperMigration;->TAG:Ljava/lang/String;

    const-string v3, "[performMigration] isWallpaperMigrated=%b"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    if-nez v0, :cond_1

    .line 32
    invoke-static {p0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->isLegacyOnePlusBlurWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-static {p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getWallpaperTile(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v1

    .line 34
    .local v1, "tileInfo":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    sget-object v3, Lnet/oneplus/h2launcher/migrate/BlurWallpaperMigration;->TAG:Ljava/lang/String;

    const-string v4, "[performMigration] migrate to latest blur wallpaper: tileInfo=%s"

    new-array v5, v6, [Ljava/lang/Object;

    if-nez v1, :cond_2

    const-string v2, "null"

    :goto_0
    aput-object v2, v5, v7

    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->onBeforeSave(I)V

    .line 38
    invoke-virtual {v1, p0, v6}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->onSave(Landroid/content/Context;I)V

    .line 41
    .end local v1    # "tileInfo":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    :cond_0
    invoke-static {p0}, Lnet/oneplus/h2launcher/migrate/BlurWallpaperMigration;->setWallpaperMigrated(Landroid/content/Context;)V

    .line 43
    :cond_1
    return-void

    .restart local v1    # "tileInfo":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    :cond_2
    move-object v2, v1

    .line 34
    goto :goto_0
.end method

.method private static setWallpaperMigrated(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v0, Lnet/oneplus/h2launcher/migrate/BlurWallpaperMigration;->TAG:Ljava/lang/String;

    const-string v1, "[performMigration] setWallpaperMigrated"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lnet/oneplus/h2launcher/migrate/BlurWallpaperMigration;->LATEST_ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setLastMigratedWallpaper(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 53
    return-void
.end method
