.class public Lnet/oneplus/h2launcher/util/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getThemeAccentColor(Landroid/content/Context;ILjava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultResourceId"    # I
    .param p2, "colorKey"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "color":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 33
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static getThemeBlackAccentColor(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultResourceId"    # I

    .prologue
    .line 25
    const-string v0, "oem_black_mode_accent_color"

    invoke-static {p0, p1, v0}, Lnet/oneplus/h2launcher/util/ThemeUtils;->getThemeAccentColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getThemeColor(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultColorResource"    # I

    .prologue
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_black_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 10
    .local v0, "blackMode":I
    packed-switch v0, :pswitch_data_0

    .line 16
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :goto_0
    return v1

    .line 12
    :pswitch_0
    invoke-static {p0, p1}, Lnet/oneplus/h2launcher/util/ThemeUtils;->getThemeWhiteAccentColor(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    .line 14
    :pswitch_1
    invoke-static {p0, p1}, Lnet/oneplus/h2launcher/util/ThemeUtils;->getThemeBlackAccentColor(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    .line 10
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getThemeWhiteAccentColor(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultResourceId"    # I

    .prologue
    .line 21
    const-string v0, "oem_white_mode_accent_color"

    invoke-static {p0, p1, v0}, Lnet/oneplus/h2launcher/util/ThemeUtils;->getThemeAccentColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method
