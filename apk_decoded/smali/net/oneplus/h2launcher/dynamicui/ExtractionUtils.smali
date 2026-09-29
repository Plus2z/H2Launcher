.class public Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils;
.super Ljava/lang/Object;
.source "ExtractionUtils.java"


# static fields
.field public static final EXTRACTED_COLORS_PREFERENCE_KEY:Ljava/lang/String; = "pref_extractedColors"

.field private static final FLAG_SET_SYSTEM:I = 0x1

.field private static final MIN_CONTRAST_RATIO:F = 2.0f

.field public static final WALLPAPER_ID_PREFERENCE_KEY:Ljava/lang/String; = "pref_wallpaperId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-static {p0}, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils;->hasWallpaperIdChanged(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getWallpaperId(Landroid/app/WallpaperManager;)I
    .locals 1
    .param p0, "wallpaperManager"    # Landroid/app/WallpaperManager;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 89
    sget-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static hasWallpaperIdChanged(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 77
    sget-boolean v4, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_NOUGAT:Z

    if-nez v4, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v3

    .line 81
    :cond_1
    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 82
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    invoke-static {v4}, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils;->getWallpaperId(Landroid/app/WallpaperManager;)I

    move-result v2

    .line 83
    .local v2, "wallpaperId":I
    const-string v4, "pref_wallpaperId"

    const/4 v5, -0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 84
    .local v0, "savedWallpaperId":I
    if-eq v2, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static isLegible(II)Z
    .locals 4
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    .prologue
    .line 122
    const/16 v0, 0xff

    invoke-static {p1, v0}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 123
    invoke-static {p0, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLegibleOnWallpaper(ILjava/util/List;)Z
    .locals 5
    .param p0, "color"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "wallpaperSwatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    const/4 v1, 0x0

    .line 107
    .local v1, "legiblePopulation":I
    const/4 v0, 0x0

    .line 108
    .local v0, "illegiblePopulation":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/graphics/Palette$Swatch;

    .line 109
    .local v2, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v4

    invoke-static {p0, v4}, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils;->isLegible(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 115
    .end local v2    # "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    :cond_1
    if-le v1, v0, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isSuperDark(Landroid/support/v7/graphics/Palette;)Z
    .locals 2
    .param p0, "p"    # Landroid/support/v7/graphics/Palette;

    .prologue
    .line 98
    const/high16 v0, -0x1000000

    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils;->isLegibleOnWallpaper(ILjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSuperLight(Landroid/support/v7/graphics/Palette;)Z
    .locals 2
    .param p0, "p"    # Landroid/support/v7/graphics/Palette;

    .prologue
    .line 94
    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils;->isLegibleOnWallpaper(ILjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startColorExtractionService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lnet/oneplus/h2launcher/dynamicui/ColorExtractionService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v2}, Lnet/oneplus/h2launcher/JobBuilderWrapper;->create(Landroid/content/ComponentName;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 72
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    const-string v2, "jobscheduler"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 73
    .local v1, "js":Landroid/app/job/JobScheduler;
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 74
    return-void
.end method

.method public static startColorExtractionServiceIfNecessary(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "force"    # Z

    .prologue
    .line 54
    sget-object v0, Lnet/oneplus/h2launcher/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils$1;

    invoke-direct {v1, p0, p1}, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils$1;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method
