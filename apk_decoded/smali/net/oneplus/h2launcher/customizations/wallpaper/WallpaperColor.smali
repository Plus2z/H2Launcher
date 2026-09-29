.class public Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
.super Ljava/lang/Object;
.source "WallpaperColor.java"


# static fields
.field private static final DEFAULT_BLUR_ENABLED:Z

.field public static final INVALID_COLOR:I = -0x80000000

.field public static final INVALID_INDEX:I = -0x80000000

.field private static final KEY_BLUR_ENABLED:Ljava/lang/String; = "blur_enabled"

.field private static final KEY_INDEX:Ljava/lang/String; = "index"

.field private static final KEY_RGB:Ljava/lang/String; = "rgb"


# instance fields
.field public blurEnabled:Z

.field public index:I

.field public rgb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->emptySettings()Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    sput-boolean v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->DEFAULT_BLUR_ENABLED:Z

    .line 14
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "rgb"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-boolean v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->DEFAULT_BLUR_ENABLED:Z

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->blurEnabled:Z

    .line 21
    iput p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->rgb:I

    .line 22
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->index:I

    .line 23
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "rgb"    # I
    .param p3, "blurEnabled"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-boolean v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->DEFAULT_BLUR_ENABLED:Z

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->blurEnabled:Z

    .line 26
    iput p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->rgb:I

    .line 27
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->index:I

    .line 28
    iput-boolean p3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->blurEnabled:Z

    .line 29
    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
    .locals 9
    .param p0, "colorValue"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/high16 v8, -0x80000000

    .line 56
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .local v1, "color":Lorg/json/JSONObject;
    const-string v6, "index"

    invoke-virtual {v1, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 62
    .local v3, "index":I
    const-string v6, "rgb"

    invoke-virtual {v1, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 63
    .local v4, "rgb":I
    const-string v6, "blur_enabled"

    sget-boolean v7, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->DEFAULT_BLUR_ENABLED:Z

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    .local v0, "blurEnabled":Z
    if-eq v3, v8, :cond_0

    if-eq v4, v8, :cond_0

    .line 65
    new-instance v5, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    invoke-direct {v5, v3, v4, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;-><init>(IIZ)V

    .line 67
    .end local v0    # "blurEnabled":Z
    .end local v1    # "color":Lorg/json/JSONObject;
    .end local v3    # "index":I
    .end local v4    # "rgb":I
    :cond_0
    :goto_0
    return-object v5

    .line 57
    :catch_0
    move-exception v2

    .line 58
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    instance-of v3, p1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    if-nez v3, :cond_1

    move v1, v2

    .line 50
    :cond_0
    :goto_0
    return v1

    .line 45
    :cond_1
    if-eq p1, p0, :cond_0

    move-object v0, p1

    .line 49
    check-cast v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    .line 50
    .local v0, "rhs":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
    iget v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->rgb:I

    iget v4, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->rgb:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->index:I

    iget v4, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->index:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->blurEnabled:Z

    iget-boolean v4, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->blurEnabled:Z

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public serialize()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "index"

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->index:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    const-string v2, "rgb"

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->rgb:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    const-string v2, "blur_enabled"

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->blurEnabled:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
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
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setBlurEnabled(Z)V
    .locals 0
    .param p1, "blurEnabled"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->blurEnabled:Z

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 37
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "rgb=%s, index=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->rgb:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
