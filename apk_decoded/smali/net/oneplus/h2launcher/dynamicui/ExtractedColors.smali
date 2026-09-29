.class public Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;
.super Ljava/lang/Object;
.source "ExtractedColors.java"


# static fields
.field private static final COLOR_SEPARATOR:Ljava/lang/String; = ","

.field public static final DEFAULT_COLOR:I = -0x1

.field public static final DEFAULT_DARK:I = -0x1000000

.field public static final DEFAULT_LIGHT:I = -0x1

.field public static final HOTSEAT_INDEX:I = 0x1

.field public static final NAVI_BG_INDEX:I = 0x3

.field public static final NAVI_COLOR_NORMAL:I = 0x0

.field public static final NAVI_COLOR_SUPER_DARK:I = 0x2

.field public static final NUM_COLOR_PROFILES:I = 0x3

.field private static final SETTINGS_KEY_NAVI_BG_COLOR:Ljava/lang/String; = "navi_bg_color"

.field public static final STATUS_BAR_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ExtractedColors"

.field private static final VERSION:I = 0x1

.field public static final VERSION_INDEX:I


# instance fields
.field private mColors:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->mColors:[I

    .line 68
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->mColors:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 69
    return-void
.end method


# virtual methods
.method decodeFromString(Ljava/lang/String;)V
    .locals 4
    .param p1, "colorsString"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "splitColorsString":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->mColors:[I

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->mColors:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 97
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->mColors:[I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method encodeAsString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v1, "colorsStringBuilder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->mColors:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 85
    .local v0, "color":I
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "color":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getColor(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultColor"    # I

    .prologue
    .line 120
    if-lez p1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->mColors:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->mColors:[I

    aget p2, v0, p1

    .line 123
    .end local p2    # "defaultColor":I
    :cond_0
    return p2
.end method

.method public load(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-static {p1}, Lnet/oneplus/h2launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_extractedColors"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "encodedString":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->decodeFromString(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->mColors:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 112
    invoke-static {p1}, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils;->startColorExtractionService(Landroid/content/Context;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setColorAtIndex(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "color"    # I

    .prologue
    .line 72
    if-lez p1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->mColors:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->mColors:[I

    aput p2, v0, p1

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string v0, "ExtractedColors"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to set a color at an invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateHotseatPalette(Landroid/content/Context;Landroid/support/v7/graphics/Palette;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hotseatPalette"    # Landroid/support/v7/graphics/Palette;

    .prologue
    const/4 v2, -0x1

    .line 135
    if-eqz p2, :cond_0

    invoke-static {p2}, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils;->isSuperLight(Landroid/support/v7/graphics/Palette;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const v1, 0x7f0e0300

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 145
    .local v0, "hotseatColor":I
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->setColorAtIndex(II)V

    .line 147
    return-void

    .line 139
    .end local v0    # "hotseatColor":I
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils;->isSuperDark(Landroid/support/v7/graphics/Palette;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    const/16 v1, 0x2d

    invoke-static {v2, v1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .restart local v0    # "hotseatColor":I
    goto :goto_0

    .line 142
    .end local v0    # "hotseatColor":I
    :cond_1
    const/16 v1, 0x3f

    invoke-static {v2, v1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .restart local v0    # "hotseatColor":I
    goto :goto_0
.end method

.method public updateNavBarColorToSettings(Landroid/content/ContentResolver;)V
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 150
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->getColor(II)I

    move-result v0

    .line 151
    .local v0, "color":I
    const-string v1, "ExtractedColors"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "H2Launcher updateNavBarColorToSettings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateStatusBarPalette(Landroid/support/v7/graphics/Palette;)V
    .locals 2
    .param p1, "statusBarPalette"    # Landroid/support/v7/graphics/Palette;

    .prologue
    .line 156
    const/4 v1, 0x2

    invoke-static {p1}, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils;->isSuperLight(Landroid/support/v7/graphics/Palette;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->setColorAtIndex(II)V

    .line 158
    return-void

    .line 156
    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0
.end method
