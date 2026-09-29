.class public Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
.super Ljava/lang/Object;
.source "BlurWallpaperSettings.java"


# static fields
.field private static final KEY_BLUR_ENABLED:Ljava/lang/String; = "blur_enabled"

.field private static final KEY_MASK_COLOR:Ljava/lang/String; = "mask_color"

.field private static final KEY_NOTIFY:Ljava/lang/String; = "notify"

.field private static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final KEY_SCROLL_MODE:Ljava/lang/String; = "scroll_mode"

.field private static final SCROLL_MODE_CUSTOMIZED:I = 0x1

.field private static final SCROLL_MODE_ORIGINAL:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public blurEnabled:Z

.field public maskColor:I

.field public notify:Z

.field public orientation:I

.field public scrollMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->notify:Z

    .line 40
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    .line 41
    iput v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    .line 42
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isStandardLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    .line 45
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->isWallpaperScrollable()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->scrollMode:I

    .line 47
    return-void

    :cond_0
    move v0, v2

    .line 42
    goto :goto_0

    :cond_1
    move v1, v2

    .line 45
    goto :goto_1
.end method

.method public static deserialize(Ljava/lang/String;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    .locals 5
    .param p0, "settingsValue"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;-><init>()V

    .line 56
    .local v1, "settings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .local v2, "settingsObject":Lorg/json/JSONObject;
    const-string v3, "notify"

    iget-boolean v4, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->notify:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->notify:Z

    .line 58
    const-string v3, "blur_enabled"

    iget-boolean v4, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    .line 59
    const-string v3, "mask_color"

    iget v4, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    .line 60
    const-string v3, "orientation"

    iget v4, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    .line 61
    const-string v3, "scroll_mode"

    iget v4, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->scrollMode:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->scrollMode:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v2    # "settingsObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->TAG:Ljava/lang/String;

    const-string v4, "cannot create blur wallpaper settings from JSON, error=%s"

    invoke-static {v3, v4, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static emptySettings()Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;-><init>()V

    return-object v0
.end method


# virtual methods
.method public serialize()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "mask_color"

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72
    const-string v2, "orientation"

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    const-string v2, "blur_enabled"

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 74
    const-string v2, "notify"

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->notify:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 75
    const-string v2, "scroll_mode"

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->scrollMode:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->TAG:Ljava/lang/String;

    const-string v3, "cannot create blur wallpaper settings JSON, error=%s"

    invoke-static {v2, v3, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public theSameAs(Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;)Z
    .locals 2
    .param p1, "another"    # Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    .prologue
    .line 89
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    iget-boolean v1, p1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    iget v1, p1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    iget v1, p1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 84
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "blurEnabled=%b, maskColor=%s, orientation=%d, scrollMode=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    .line 85
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->scrollMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 84
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
