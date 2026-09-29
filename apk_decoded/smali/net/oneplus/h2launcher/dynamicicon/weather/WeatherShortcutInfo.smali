.class public Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;
.super Lnet/oneplus/h2launcher/ShortcutInfo;
.source "WeatherShortcutInfo.java"

# interfaces
.implements Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_NEW_TEMP:Ljava/lang/String; = "new_temp"

.field private static final KEY_NEW_TEMP_STRING:Ljava/lang/String; = "new_temp_string"

.field private static final KEY_NEW_WEATHER_ID:Ljava/lang/String; = "new_weather_id"

.field private static final KEY_NEW_WEATHER_IMAGE_ID:Ljava/lang/String; = "new_weather_image_id"

.field private static final KEY_OLD_TEMP:Ljava/lang/String; = "old_temp"

.field private static final KEY_OLD_TEMP_STRING:Ljava/lang/String; = "old_temp_string"

.field private static final KEY_OLD_WEATHER_ID:Ljava/lang/String; = "old_weather_id"

.field private static final KEY_OLD_WEATHER_IMAGE_ID:Ljava/lang/String; = "old_weather_image_id"

.field private static final MAX_ACCEPT_TEMP:I = 0x63

.field private static final MIN_ACCEPT_TEMP:I = -0x63

.field private static final NONE_TEMP_STRING:Ljava/lang/String; = "--\u02da"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

.field private mBaseDrawable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mCheckAnimatingObject:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCurrentDrawable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedAnimateIconCallback:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

.field private mNewDrawable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

.field private mRegisterWeatherCallback:Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;

.field private mRunningAnimation:Z

.field private mUpdateRunnable:Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "contentDescription"    # Ljava/lang/CharSequence;
    .param p5, "icon"    # Landroid/graphics/Bitmap;
    .param p6, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p7, "needAnimateIconCallback"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    .prologue
    const/4 v6, 0x0

    .line 83
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    .line 63
    iput-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 64
    iput-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mCheckAnimatingObject:Ljava/lang/Object;

    .line 84
    invoke-virtual {p0, p1, p7}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->init(Landroid/content/Context;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/AppInfo;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lnet/oneplus/h2launcher/AppInfo;
    .param p3, "needAnimateIconCallback"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>(Lnet/oneplus/h2launcher/AppInfo;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    .line 63
    iput-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 64
    iput-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mCheckAnimatingObject:Ljava/lang/Object;

    .line 76
    invoke-virtual {p0, p1, p3}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->init(Landroid/content/Context;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needAnimateIconCallback"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    .line 63
    iput-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 64
    iput-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mCheckAnimatingObject:Ljava/lang/Object;

    .line 70
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->init(Landroid/content/Context;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->update(Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V

    return-void
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    .prologue
    .line 38
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mUpdateRunnable:Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    return-object v0
.end method

.method static synthetic access$102(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    .prologue
    .line 38
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mUpdateRunnable:Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    return-object p1
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->putNewData(Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V

    return-void
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;Z)Lnet/oneplus/h2launcher/FastBitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getStaticDrawable(Z)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultImageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    const-string v0, ""

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getImageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImageId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "weatherId"    # Ljava/lang/String;

    .prologue
    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    if-eqz v1, :cond_1

    .line 529
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->getBackgroundDrawableConfig()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;

    move-result-object v0

    .line 533
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 534
    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->getDrawableResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    :goto_1
    return-object v1

    .line 530
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    if-eqz v1, :cond_0

    .line 531
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->getBackgroundDrawableConfig()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;

    move-result-object v0

    goto :goto_0

    .line 536
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getNewTempString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 548
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v2, "new_temp_string"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 549
    .local v0, "tempString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 550
    const-string v0, "--\u02da"

    .line 552
    :cond_0
    return-object v0
.end method

.method private getOldTempString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 540
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v2, "old_temp_string"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 541
    .local v0, "tempString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 542
    const-string v0, "--\u02da"

    .line 544
    :cond_0
    return-object v0
.end method

.method private getStaticDrawable(Z)Lnet/oneplus/h2launcher/FastBitmapDrawable;
    .locals 6
    .param p1, "resize"    # Z

    .prologue
    .line 341
    iget-boolean v4, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mRunningAnimation:Z

    if-eqz v4, :cond_1

    .line 342
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getNewWeatherImageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getOriginalIconDrawable(Ljava/lang/String;)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v1

    .line 347
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 348
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v2, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;

    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 349
    .local v2, "fastBitmapDrawable":Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;->setFilterBitmap(Z)V

    .line 350
    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v2, v4, v5}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;->updateConfig(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)V

    .line 352
    iget-boolean v4, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mRunningAnimation:Z

    if-eqz v4, :cond_2

    .line 353
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getNewTempString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;->setText(Ljava/lang/String;)V

    .line 358
    :goto_1
    if-eqz p1, :cond_0

    .line 359
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v3

    .line 360
    .local v3, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-eqz v3, :cond_0

    .line 361
    invoke-virtual {v3, v2}, Lnet/oneplus/h2launcher/Launcher;->resizeIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    .end local v3    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    :cond_0
    return-object v2

    .line 344
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "fastBitmapDrawable":Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getOldWeatherImageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getOriginalIconDrawable(Ljava/lang/String;)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v1

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 355
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v2    # "fastBitmapDrawable":Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;
    :cond_2
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getOldTempString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initEmptyData()V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v1, "old_temp"

    const/16 v2, -0x63

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v1, "old_weather_id"

    const/16 v2, 0x270f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v1, "old_weather_image_id"

    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getDefaultImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v1, "old_temp_string"

    const-string v2, "--\u02da"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    return-void
.end method

.method private putNewData(Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V
    .locals 6
    .param p1, "data"    # Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;

    .prologue
    const/16 v4, -0x63

    .line 376
    const-string v2, "--\u02da"

    .line 377
    .local v2, "tempString":Ljava/lang/String;
    iget v1, p1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperature:I

    .line 378
    .local v1, "temp":I
    const/16 v3, 0x63

    if-gt v1, v3, :cond_0

    if-ge v1, v4, :cond_1

    .line 379
    :cond_0
    const/16 v1, -0x63

    .line 381
    :cond_1
    if-eq v1, v4, :cond_2

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperature:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u02da"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 384
    :cond_2
    iget v3, p1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->weatherCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getImageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "resId":Ljava/lang/String;
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v4, "new_temp"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v4, "new_weather_id"

    iget v5, p1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->weatherCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v4, "new_weather_image_id"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v4, "new_temp_string"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v3, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DynamicIcon putNewData weatherId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->weatherCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", weatherImageId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tempString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method private putOldData(Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V
    .locals 6
    .param p1, "data"    # Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;

    .prologue
    const/16 v4, -0x63

    .line 395
    const-string v2, "--\u02da"

    .line 396
    .local v2, "tempString":Ljava/lang/String;
    iget v1, p1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperature:I

    .line 397
    .local v1, "temp":I
    const/16 v3, 0x63

    if-gt v1, v3, :cond_0

    if-ge v1, v4, :cond_1

    .line 398
    :cond_0
    const/16 v1, -0x63

    .line 400
    :cond_1
    if-eq v1, v4, :cond_2

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperature:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u02da"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    :cond_2
    iget v3, p1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->weatherCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getImageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "resId":Ljava/lang/String;
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v4, "old_temp"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v4, "old_weather_id"

    iget v5, p1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->weatherCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v4, "old_weather_image_id"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v4, "old_temp_string"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    return-void
.end method

.method private update(Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V
    .locals 2
    .param p1, "data"    # Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;

    .prologue
    .line 157
    new-instance v0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$3;-><init>(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V

    .line 184
    .local v0, "r":Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method public static verifyConfig(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)Z
    .locals 9
    .param p0, "config"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .prologue
    const/4 v5, 0x0

    .line 576
    :try_start_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->getBackgroundDrawableConfig()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;

    move-result-object v2

    .line 577
    .local v2, "drawableConfig":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;
    if-eqz v2, :cond_0

    .line 578
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->getDefaultDrawableResource()Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, "resource":Ljava/lang/String;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 580
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v1

    .line 582
    .local v1, "assetCache":Lnet/oneplus/h2launcher/AssetCache;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->getAssetPackName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Lnet/oneplus/h2launcher/AssetCache;->checkResourceExist(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 588
    .end local v0    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    .end local v1    # "assetCache":Lnet/oneplus/h2launcher/AssetCache;
    .end local v2    # "drawableConfig":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;
    .end local v4    # "resource":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 586
    :catch_0
    move-exception v3

    .line 587
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parse DynamicIconConfig error, message = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createShortcutView(Landroid/content/Context;Landroid/view/ViewGroup;ZI)Lnet/oneplus/h2launcher/BubbleTextView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z
    .param p4, "style"    # I

    .prologue
    .line 313
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mContext:Landroid/content/Context;

    if-eq p1, v1, :cond_0

    .line 314
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->unregisterDataProvider()V

    .line 315
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mContext:Landroid/content/Context;

    .line 318
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->needRegisterDataProvider()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->registerDataProvider()V

    .line 323
    :cond_1
    const v1, 0x7f0a00fe

    if-ne p4, v1, :cond_2

    .line 324
    const v0, 0x7f040029

    .line 329
    .local v0, "layout":I
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/BubbleTextView;

    return-object v1

    .line 326
    .end local v0    # "layout":I
    :cond_2
    const v0, 0x7f040059

    .restart local v0    # "layout":I
    goto :goto_0
.end method

.method public getCurrentData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    return-object v0
.end method

.method getCurrentIconDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;
    .locals 7

    .prologue
    .line 438
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getOldWeatherImageId()Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, "resId":Ljava/lang/String;
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mCurrentDrawable:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 442
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mCurrentDrawable:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;

    .line 451
    .local v2, "fastBitmapDrawable":Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;
    :goto_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getOldTempString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;->setText(Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v3

    .line 453
    .local v3, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-eqz v3, :cond_0

    .line 454
    invoke-virtual {v3, v2}, Lnet/oneplus/h2launcher/Launcher;->resizeIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 456
    :cond_0
    return-object v2

    .line 444
    .end local v2    # "fastBitmapDrawable":Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;
    .end local v3    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    :cond_1
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getOriginalIconDrawable(Ljava/lang/String;)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v1

    .line 445
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 446
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v2, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;

    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 447
    .restart local v2    # "fastBitmapDrawable":Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;->setFilterBitmap(Z)V

    .line 448
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v2, v5, v6}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;->updateConfig(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)V

    .line 449
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mCurrentDrawable:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method getNewIconDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;
    .locals 7

    .prologue
    .line 460
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getNewWeatherImageId()Ljava/lang/String;

    move-result-object v4

    .line 463
    .local v4, "resId":Ljava/lang/String;
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mNewDrawable:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 464
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mNewDrawable:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;

    .line 473
    .local v2, "fastBitmapDrawable":Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;
    :goto_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getNewTempString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;->setText(Ljava/lang/String;)V

    .line 474
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v3

    .line 475
    .local v3, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-eqz v3, :cond_0

    .line 476
    invoke-virtual {v3, v2}, Lnet/oneplus/h2launcher/Launcher;->resizeIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 478
    :cond_0
    return-object v2

    .line 466
    .end local v2    # "fastBitmapDrawable":Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;
    .end local v3    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    :cond_1
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getOriginalIconDrawable(Ljava/lang/String;)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v1

    .line 467
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 468
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v2, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;

    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 469
    .restart local v2    # "fastBitmapDrawable":Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;->setFilterBitmap(Z)V

    .line 470
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v2, v5, v6}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;->updateConfig(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)V

    .line 471
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mNewDrawable:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method getNewWeatherImageId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 420
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getDefaultImageId()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "resId":Ljava/lang/String;
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v3, "new_weather_image_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 422
    .local v1, "weatherImageId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 423
    move-object v0, v1

    .line 425
    :cond_0
    return-object v0
.end method

.method getOldWeatherImageId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 429
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getDefaultImageId()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "resId":Ljava/lang/String;
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v3, "old_weather_image_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 431
    .local v1, "weatherImageId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 432
    move-object v0, v1

    .line 434
    :cond_0
    return-object v0
.end method

.method getOriginalIconDrawable(Ljava/lang/String;)Lnet/oneplus/h2launcher/FastBitmapDrawable;
    .locals 8
    .param p1, "resId"    # Ljava/lang/String;

    .prologue
    .line 484
    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mBaseDrawable:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 485
    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mBaseDrawable:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;

    .line 519
    :goto_0
    return-object v5

    .line 487
    :cond_0
    const/4 v4, 0x0

    .line 488
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 489
    .local v3, "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;
    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    if-eqz v6, :cond_2

    .line 490
    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->getBackgroundDrawableConfig()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;

    move-result-object v3

    .line 494
    :cond_1
    :goto_1
    if-nez v3, :cond_3

    .line 495
    const/4 v5, 0x0

    goto :goto_0

    .line 491
    :cond_2
    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    if-eqz v6, :cond_1

    .line 492
    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->getBackgroundDrawableConfig()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;

    move-result-object v3

    goto :goto_1

    .line 497
    :cond_3
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 498
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    if-eqz v0, :cond_6

    .line 499
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v1

    .line 500
    .local v1, "assetCache":Lnet/oneplus/h2launcher/AssetCache;
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->getAssetPackName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, p1, v6}, Lnet/oneplus/h2launcher/AssetCache;->getDynamicIconDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 501
    if-nez v4, :cond_4

    .line 502
    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->getAssetPackName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, p1, v6}, Lnet/oneplus/h2launcher/AssetCache;->getDynamicIconDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 505
    :cond_4
    if-nez v4, :cond_5

    .line 506
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->getDefaultDrawableResource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->getAssetPackName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lnet/oneplus/h2launcher/AssetCache;->getDynamicIconDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 508
    :cond_5
    if-nez v4, :cond_6

    .line 509
    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->getBackgroundDrawableConfig()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->getDefaultDrawableResource()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->getAssetPackName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lnet/oneplus/h2launcher/AssetCache;->getDynamicIconDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 513
    .end local v1    # "assetCache":Lnet/oneplus/h2launcher/AssetCache;
    :cond_6
    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 514
    .local v2, "b":Landroid/graphics/Bitmap;
    new-instance v5, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;

    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v2}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 515
    .local v5, "fastBitmapDrawable":Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;->setFilterBitmap(Z)V

    .line 516
    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    iget-object v7, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v5, v6, v7}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherFastBitmapDrawable;->updateConfig(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)V

    .line 517
    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mBaseDrawable:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getStaticDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getStaticDrawable(Z)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needAnimateIconCallback"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    .prologue
    .line 89
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mContext:Landroid/content/Context;

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mIsDynamicIcon:Z

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mCurrentDrawable:Ljava/util/HashMap;

    .line 92
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mNewDrawable:Ljava/util/HashMap;

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mBaseDrawable:Ljava/util/HashMap;

    .line 94
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->refreshConfig()V

    .line 95
    iput-object p2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mNeedAnimateIconCallback:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    .line 96
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mContext:Landroid/content/Context;

    check-cast v1, Lnet/oneplus/h2launcher/Launcher;

    .line 97
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWeatherProvider()Lnet/oneplus/h2launcher/WeatherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/WeatherProvider;->getOfflineWeatherInformation()Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;

    move-result-object v0

    .line 99
    .local v0, "data":Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;
    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->putOldData(Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V

    .line 105
    :goto_0
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v1

    new-instance v2, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$1;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$1;-><init>(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/util/TaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 110
    return-void

    .line 102
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->initEmptyData()V

    goto :goto_0
.end method

.method public initFlags()V
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 371
    iget v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->flags:I

    xor-int/lit8 v0, v0, 0x8

    iput v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->flags:I

    .line 373
    :cond_0
    return-void
.end method

.method public isRunningAnimation()Z
    .locals 2

    .prologue
    .line 221
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mCheckAnimatingObject:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mRunningAnimation:Z

    monitor-exit v1

    return v0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public needInvalidate()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 194
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v6, "old_temp"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 195
    .local v2, "oldTemp":Ljava/lang/Integer;
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v6, "new_temp"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 196
    .local v0, "newTemp":Ljava/lang/Integer;
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v6, "old_weather_image_id"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 197
    .local v3, "old_weather_image_id":Ljava/lang/String;
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v6, "new_weather_image_id"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    .local v1, "new_weather_image_id":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 200
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getDefaultImageId()Ljava/lang/String;

    move-result-object v3

    .line 201
    sget-object v5, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->TAG:Ljava/lang/String;

    const-string v6, "DynamicIcon check old_weather_image_id == null, put empty value"

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    if-nez v2, :cond_1

    .line 204
    const/16 v5, -0x63

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 205
    sget-object v5, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->TAG:Ljava/lang/String;

    const-string v6, "DynamicIcon check oldTemp == null, put empty value"

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    sget-object v5, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->TAG:Ljava/lang/String;

    const-string v6, "DynamicIcon check needInvalidate false because weather image and temp no change"

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    return v4

    .line 211
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    if-nez v0, :cond_4

    .line 212
    sget-object v5, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->TAG:Ljava/lang/String;

    const-string v6, "DynamicIcon check needInvalidate false because no new weather image or temp"

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_4
    sget-object v4, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->TAG:Ljava/lang/String;

    const-string v5, "DynamicIcon check needInvalidate true"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public needRegisterDataProvider()Z
    .locals 2

    .prologue
    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mRegisterWeatherCallback:Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 117
    .local v0, "result":Z
    :goto_0
    monitor-exit p0

    .line 119
    return v0

    .line 116
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAnimationEnd()V
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v1, "new_temp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 238
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->TAG:Ljava/lang/String;

    const-string v1, "new value temp = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v1, "new_weather_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 242
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->TAG:Ljava/lang/String;

    const-string v1, "new weather Id = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v1, "new_weather_image_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 246
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->TAG:Ljava/lang/String;

    const-string v1, "new weather image Id = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v1, "old_temp"

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v3, "new_temp"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v1, "old_temp_string"

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v3, "new_temp_string"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v1, "old_weather_id"

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v3, "new_weather_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v1, "old_weather_image_id"

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v3, "new_weather_image_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicIcon WeatherShortcutInfo onAnimationEnd put oldWeatherId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v3, "new_weather_id"

    .line 254
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", imageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v3, "new_weather_image_id"

    .line 255
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", temp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v3, "new_temp_string"

    .line 256
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mRunningAnimation:Z

    .line 259
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->updateIconCache()V

    .line 260
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mUpdateRunnable:Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    if-eqz v0, :cond_3

    .line 261
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$4;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$4;-><init>(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 270
    :cond_3
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 228
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mCheckAnimatingObject:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mRunningAnimation:Z

    .line 230
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->TAG:Ljava/lang/String;

    const-string v1, "DynamicIcon WeatherShortcutInfo onAnimationStart"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void

    .line 230
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDataChanged()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mNeedAnimateIconCallback:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;->onNeedAnimateIcon()V

    .line 190
    return-void
.end method

.method public refreshConfig()V
    .locals 6

    .prologue
    .line 556
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 557
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    if-eqz v0, :cond_1

    .line 558
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v1

    .line 559
    .local v1, "assetCache":Lnet/oneplus/h2launcher/AssetCache;
    sget-object v4, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_WEATHER:Landroid/content/ComponentName;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lnet/oneplus/h2launcher/AssetCache;->getDynamicIconConfig(Landroid/content/ComponentName;I)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    move-result-object v3

    .line 561
    .local v3, "originalConfig":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    sget-object v4, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_WEATHER:Landroid/content/ComponentName;

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Lnet/oneplus/h2launcher/AssetCache;->getDynamicIconConfig(Landroid/content/ComponentName;I)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    move-result-object v2

    .line 564
    .local v2, "assetPackConfig":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    if-eq v2, v4, :cond_1

    .line 565
    :cond_0
    iput-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 566
    iput-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 567
    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mBaseDrawable:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 568
    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mNewDrawable:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 569
    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mCurrentDrawable:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 572
    .end local v1    # "assetCache":Lnet/oneplus/h2launcher/AssetCache;
    .end local v2    # "assetPackConfig":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    .end local v3    # "originalConfig":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    :cond_1
    return-void
.end method

.method public registerDataProvider()V
    .locals 2

    .prologue
    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mRegisterWeatherCallback:Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$2;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$2;-><init>(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mRegisterWeatherCallback:Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;

    .line 133
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mContext:Landroid/content/Context;

    check-cast v0, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWeatherProvider()Lnet/oneplus/h2launcher/WeatherProvider;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mRegisterWeatherCallback:Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;

    .line 134
    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/WeatherProvider;->subscribeCallback(Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;)V

    .line 136
    :cond_0
    monitor-exit p0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestData()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterDataProvider()V
    .locals 2

    .prologue
    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mRegisterWeatherCallback:Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mContext:Landroid/content/Context;

    check-cast v0, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWeatherProvider()Lnet/oneplus/h2launcher/WeatherProvider;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mRegisterWeatherCallback:Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;

    .line 144
    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/WeatherProvider;->unsubscribeCallback(Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;)V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->mRegisterWeatherCallback:Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;

    .line 147
    :cond_0
    monitor-exit p0

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateIconCache()V
    .locals 2

    .prologue
    .line 274
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$5;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$5;-><init>(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 303
    return-void
.end method
