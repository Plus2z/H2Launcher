.class public Lnet/oneplus/h2launcher/config/PreferencesHelper;
.super Ljava/lang/Object;
.source "PreferencesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/config/PreferencesHelper$PreferenceChangedCallback;,
        Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;,
        Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;
    }
.end annotation


# static fields
.field public static final APP_DRAWER_KEY:Ljava/lang/String; = "app_drawer_key"

.field private static final APP_DRAWER_LARGE:Ljava/lang/String; = "large"

.field private static final APP_DRAWER_LARGE_SIZE:I = 0x5

.field private static final APP_DRAWER_SMALL:Ljava/lang/String; = "small"

.field private static final APP_DRAWER_SMALL_SIZE:I = 0x3

.field private static final APP_DRAWER_STANDARD:Ljava/lang/String; = "standard"

.field private static final APP_DRAWER_STANDARD_SIZE:I = 0x4

.field public static final BUTTONS_SHOW_ON_SCREEN_NAVKEYS:Ljava/lang/String; = "buttons_show_on_screen_navkeys"

.field private static final DEFAULT_WALLPAPER_PREFERENCE_VERSION:I = 0x0

.field public static final DEV_FORCE_SHOW_NAVBAR:Ljava/lang/String; = "dev_force_show_navbar"

.field private static final KEYGUARD_CLOCK_STYLE:Ljava/lang/String; = "pref_lockscreen_clock_style"

.field private static final LAST_MIGRATED_BLUR_WALLPAPER:Ljava/lang/String; = "pref_migrated_blur_wallpaper"

.field public static final LOCK_WALLPAPER_TILE:Ljava/lang/String; = "pref_lock_wallpaper_tile"

.field public static final PERMISSIONS_DIALOG:Ljava/lang/String; = "pref_has_shown_permissions_dialog"

.field public static final QUICK_PAGE:Ljava/lang/String; = "pref_quick_page"

.field public static final SEARCH_BAR_STYLE:Ljava/lang/String; = "pref_search_bar_style"

.field private static final SEARCH_BAR_STYLE_DEFAULT:Ljava/lang/String; = "default"

.field private static final SEARCH_BAR_STYLE_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final SEARCH_BAR_STYLE_TRANSPARENT:Ljava/lang/String; = "transparent"

.field public static final SEARCH_BAR_VISIBILITY:Ljava/lang/String; = "pref_search_bar"

.field private static final SETTINGS_NAME_KEYGUARD_CLOCK_STYLE:Ljava/lang/String; = "keyguard_clock_widget"

.field private static final SETTINGS_NAME_KEYGUARD_CLOCK_STYLE_COPIED:Ljava/lang/String; = "keyguard_clock_style_copied"

.field private static final SETTINGS_NAME_ONEPLUS_BLUR_WALLPAPER_SETTINGS:Ljava/lang/String; = "oneplus_blur_wallpaper_settings"

.field private static final TAG:Ljava/lang/String;

.field public static final WALLPAPER_COLOR:Ljava/lang/String; = "pref_wallpaper_color"

.field private static final WALLPAPER_ID_HOME:Ljava/lang/String; = "pref_home_wallpaper_id"

.field private static final WALLPAPER_ID_LOCK:Ljava/lang/String; = "pref_lock_wallpaper_id"

.field private static final WALLPAPER_ID_NONE:I = -0x3e7

.field private static final WALLPAPER_PREFERENCE_VERSION:Ljava/lang/String; = "pref_wallpaper_preference_version"

.field public static final WALLPAPER_SETUP_COMPLETED:Ljava/lang/String; = "pref_wallpaper_setup_completed"

.field private static final WALLPAPER_TILE:Ljava/lang/String; = "pref_wallpaper_tile"

.field public static final WEATHER:Ljava/lang/String; = "pref_weather"

.field public static final WELCOME_TITLE:Ljava/lang/String; = "pref_welcome_title"


# instance fields
.field private mCallback:Lnet/oneplus/h2launcher/config/PreferencesHelper$PreferenceChangedCallback;

.field private mContext:Landroid/content/Context;

.field private mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lnet/oneplus/h2launcher/config/PreferencesHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 136
    iget-object v0, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper;->mPreferences:Landroid/content/SharedPreferences;

    .line 137
    new-instance v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper$1;-><init>(Lnet/oneplus/h2launcher/config/PreferencesHelper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/config/PreferencesHelper;)Lnet/oneplus/h2launcher/config/PreferencesHelper$PreferenceChangedCallback;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/config/PreferencesHelper;

    .prologue
    .line 42
    iget-object v0, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper;->mCallback:Lnet/oneplus/h2launcher/config/PreferencesHelper$PreferenceChangedCallback;

    return-object v0
.end method

.method public static areSoftwareKeysEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 155
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "dev_force_show_navbar"

    .line 156
    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_0

    const-string v3, "buttons_show_on_screen_navkeys"

    .line 157
    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    :cond_0
    move v0, v2

    .line 158
    .local v0, "forceNavbar":Z
    :cond_1
    return v0
.end method

.method public static clearBlurWallpaperMaskColor(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 508
    invoke-static {p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getBlurWallpaperSettings(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v0

    .line 509
    .local v0, "settings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    const/4 v1, 0x0

    iput v1, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    .line 510
    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setBlurWallpaperSettings(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;)V

    .line 511
    return-void
.end method

.method public static clearBlurWallpaperSettings(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v1, Lnet/oneplus/h2launcher/config/PreferencesHelper;->TAG:Ljava/lang/String;

    const-string v2, "[clearBlurWallpaperSettings]"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "oneplus_blur_wallpaper_settings"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static clearLockWallpaperTile(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 380
    sget-object v1, Lnet/oneplus/h2launcher/config/PreferencesHelper;->TAG:Ljava/lang/String;

    const-string v2, "[clearLockWallpaperTile]"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 382
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_lock_wallpaper_tile"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 383
    return-void
.end method

.method public static clearWallpaperTileAndColor(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 470
    sget-object v1, Lnet/oneplus/h2launcher/config/PreferencesHelper;->TAG:Ljava/lang/String;

    const-string v2, "[clearWallpaperTileAndColor]"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 472
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_wallpaper_tile"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_wallpaper_color"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 473
    return-void
.end method

.method public static getAppDrawerSizeCatalog(Landroid/content/Context;)Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 292
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "app_drawer_key"

    const-string v3, "standard"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "size":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 301
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 293
    :sswitch_0
    const-string v3, "small"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "standard"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "large"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 295
    :pswitch_0
    sget-object v2, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->SMALL:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    goto :goto_1

    .line 297
    :pswitch_1
    sget-object v2, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->STANDARD:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    goto :goto_1

    .line 299
    :pswitch_2
    sget-object v2, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->LARGE:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    goto :goto_1

    .line 293
    :sswitch_data_0
    .sparse-switch
        0x61fbb3b -> :sswitch_2
        0x6879507 -> :sswitch_0
        0x4e3d1ebd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getBlurWallpaperSettings(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 486
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 487
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "oneplus_blur_wallpaper_settings"

    .line 488
    .local v2, "settingsName":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, "settingsValue":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 491
    sget-object v4, Lnet/oneplus/h2launcher/config/PreferencesHelper;->TAG:Ljava/lang/String;

    const-string v5, "empty global settings value, name=%s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->emptySettings()Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v1

    .line 497
    .local v1, "settings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    :goto_0
    sget-object v4, Lnet/oneplus/h2launcher/config/PreferencesHelper;->TAG:Ljava/lang/String;

    const-string v5, "[getBlurWallpaperSettings] %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    return-object v1

    .line 494
    .end local v1    # "settings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    :cond_0
    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->deserialize(Ljava/lang/String;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v1

    .restart local v1    # "settings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    goto :goto_0
.end method

.method public static getGridEntries(Landroid/content/Context;)[Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "entries":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0065

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "format":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v0, v7

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .local v3, "strBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 274
    .local v2, "size":[I
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v9, [Ljava/lang/Object;

    aget v6, v2, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aget v6, v2, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "strBuilder":Ljava/lang/StringBuilder;
    aget-object v4, v0, v9

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .restart local v3    # "strBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0054

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 283
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v9, [Ljava/lang/Object;

    aget v6, v2, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aget v6, v2, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v9

    .line 287
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "size":[I
    .end local v3    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-object v0
.end method

.method public static getGridSize(Landroid/content/Context;)[I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 252
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "app_drawer_key"

    const-string v3, "standard"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "size":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 261
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 253
    :sswitch_0
    const-string v3, "small"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "standard"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "large"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 255
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    goto :goto_1

    .line 257
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    goto :goto_1

    .line 259
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    goto :goto_1

    .line 253
    nop

    :sswitch_data_0
    .sparse-switch
        0x61fbb3b -> :sswitch_2
        0x6879507 -> :sswitch_0
        0x4e3d1ebd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getKeyguardClockStyle(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_lockscreen_clock_style"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getKeyguardClockStyleInSettings(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 554
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 555
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "keyguard_clock_widget"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLastMigratedWallpaper(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 349
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 350
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_migrated_blur_wallpaper"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "blurWallpaperString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 352
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_0
.end method

.method public static getLockWallpaperTile(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 367
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 368
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "pref_lock_wallpaper_tile"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "tileValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    sget-object v3, Lnet/oneplus/h2launcher/config/PreferencesHelper;->TAG:Ljava/lang/String;

    const-string v4, "[getLockWallpaperTile] null"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v0, 0x0

    .line 376
    :goto_0
    return-object v0

    .line 374
    :cond_0
    invoke-static {p0, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->deserialize(Landroid/content/Context;Ljava/lang/String;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v0

    .line 375
    .local v0, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    sget-object v3, Lnet/oneplus/h2launcher/config/PreferencesHelper;->TAG:Ljava/lang/String;

    const-string v4, "[getLockWallpaperTile] %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getRawWallpaperTile(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 397
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 398
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "pref_wallpaper_tile"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSearchBarStyle(Landroid/content/Context;)Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 214
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_search_bar_style"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "style":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 223
    invoke-static {p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->isSearchBarHidden(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "hidden"

    .line 225
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref_search_bar_style"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 226
    const-string v2, "hidden"

    if-ne v1, v2, :cond_2

    sget-object v2, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->HIDDEN:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    :goto_2
    return-object v2

    .line 215
    :sswitch_0
    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "transparent"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "hidden"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 217
    :pswitch_0
    sget-object v2, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->DEFAULT:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    goto :goto_2

    .line 219
    :pswitch_1
    sget-object v2, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->TRANSPARENT:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    goto :goto_2

    .line 221
    :pswitch_2
    sget-object v2, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->HIDDEN:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    goto :goto_2

    .line 223
    :cond_1
    const-string v1, "default"

    goto :goto_1

    .line 226
    :cond_2
    sget-object v2, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->DEFAULT:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    goto :goto_2

    .line 215
    :sswitch_data_0
    .sparse-switch
        -0x66e3a2ae -> :sswitch_1
        -0x48916256 -> :sswitch_2
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getWallpaperColor(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 458
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 459
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "pref_wallpaper_color"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "colorValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 461
    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->deserialize(Ljava/lang/String;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    move-result-object v0

    .line 462
    .local v0, "color":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
    sget-object v3, Lnet/oneplus/h2launcher/config/PreferencesHelper;->TAG:Ljava/lang/String;

    const-string v4, "[getWallpaperColor] %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    .end local v0    # "color":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
    :goto_0
    return-object v0

    .line 465
    :cond_0
    sget-object v3, Lnet/oneplus/h2launcher/config/PreferencesHelper;->TAG:Ljava/lang/String;

    const-string v4, "[getWallpaperColor] null"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getWallpaperId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screen"    # I

    .prologue
    .line 522
    if-nez p1, :cond_0

    const-string v0, "pref_lock_wallpaper_id"

    .line 523
    .local v0, "key":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 524
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const/16 v2, -0x3e7

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 522
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    const-string v0, "pref_home_wallpaper_id"

    goto :goto_0
.end method

.method public static getWallpaperPreferenceVersion(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 564
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 565
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "pref_wallpaper_preference_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getWallpaperTile(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 402
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 403
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "pref_wallpaper_tile"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, "tileValue":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 405
    sget-object v4, Lnet/oneplus/h2launcher/config/PreferencesHelper;->TAG:Ljava/lang/String;

    const-string v5, "[getWallpaperTile] null"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v0, 0x0

    .line 417
    :goto_0
    return-object v0

    .line 409
    :cond_0
    invoke-static {p0, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->deserialize(Landroid/content/Context;Ljava/lang/String;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v0

    .line 410
    .local v0, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->migrateWallpaperTileIfNecessary(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v1

    .line 411
    .local v1, "migrated":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    if-eqz v1, :cond_1

    .line 412
    sget-object v4, Lnet/oneplus/h2launcher/config/PreferencesHelper;->TAG:Ljava/lang/String;

    const-string v5, "migrated: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    invoke-static {p0, v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperTile(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    .line 414
    move-object v0, v1

    .line 416
    :cond_1
    sget-object v4, Lnet/oneplus/h2launcher/config/PreferencesHelper;->TAG:Ljava/lang/String;

    const-string v5, "[getWallpaperTile] %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getWelcomeTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 185
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0127

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "defaultTitle":Ljava/lang/String;
    const-string v2, "pref_welcome_title"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static hasShownPreferenceDialog(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 171
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_has_shown_permissions_dialog"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 172
    .local v0, "hasShown":Z
    if-nez v0, :cond_0

    .line 173
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref_has_shown_permissions_dialog"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    :cond_0
    return v0
.end method

.method public static hasWallpaperSetupCompleted(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 335
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 336
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "pref_wallpaper_setup_completed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isQuickPageEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 163
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const/4 v0, 0x1

    .line 166
    .local v0, "defaultValue":Z
    const-string v2, "pref_quick_page"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method private static isSearchBarHidden(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "pref_search_bar"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isSearchBarStyleHidden(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    invoke-static {p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getSearchBarStyle(Landroid/content/Context;)Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->HIDDEN:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSearchBarStyleTransparent(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    invoke-static {p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getSearchBarStyle(Landroid/content/Context;)Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->TRANSPARENT:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWeatherEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 191
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "pref_weather"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static migrateWallpaperTileIfNecessary(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .prologue
    const/4 v2, 0x0

    .line 422
    if-eqz p1, :cond_0

    sget-object v8, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->RESOURCE:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getType()Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 423
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getWallpaper()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getWallpaper()Ljava/lang/String;

    move-result-object v8

    const-string v9, "_port"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 424
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getWallpaper()Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, "overlayWallpaper":Ljava/lang/String;
    const-string v8, "_port"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 428
    .local v7, "wallpaper":Ljava/lang/String;
    invoke-static {p0, v4}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->correctLauncherPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "correctedOverlayWallpaper":Ljava/lang/String;
    invoke-static {p0, v7}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->correctLauncherPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "correctedWallpaper":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 434
    .local v6, "resources":Landroid/content/res/Resources;
    invoke-virtual {v6, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 435
    .local v5, "resId":I
    invoke-virtual {v6, v0, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 436
    .local v3, "overlayResId":I
    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 437
    new-instance v2, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 438
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getOrientation()I

    move-result v10

    invoke-direct {v2, v8, v9, v5, v10}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;-><init>(Landroid/content/res/Resources;Ljava/lang/String;II)V

    .line 439
    .local v2, "migrated":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;
    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->setOverlayResId(I)V

    .line 443
    .end local v0    # "correctedOverlayWallpaper":Ljava/lang/String;
    .end local v1    # "correctedWallpaper":Ljava/lang/String;
    .end local v2    # "migrated":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;
    .end local v3    # "overlayResId":I
    .end local v4    # "overlayWallpaper":Ljava/lang/String;
    .end local v5    # "resId":I
    .end local v6    # "resources":Landroid/content/res/Resources;
    .end local v7    # "wallpaper":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public static setAppDrawerSizeCatalog(Landroid/content/Context;Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appDrawerSizeCatalog"    # Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    .prologue
    .line 306
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 307
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 308
    .local v1, "size":Ljava/lang/String;
    sget-object v2, Lnet/oneplus/h2launcher/config/PreferencesHelper$2;->$SwitchMap$net$oneplus$h2launcher$config$PreferencesHelper$AppDrawerSizeCatalog:[I

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 320
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "app_drawer_key"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 323
    :cond_0
    return-void

    .line 310
    :pswitch_0
    const-string v1, "small"

    .line 311
    goto :goto_0

    .line 313
    :pswitch_1
    const-string v1, "standard"

    .line 314
    goto :goto_0

    .line 316
    :pswitch_2
    const-string v1, "large"

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setBlurWallpaperSettings(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    .prologue
    if-nez p1, :cond_null_check

    return-void

    :cond_null_check
    .line 476
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->serialize()Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "settingsValue":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 478
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 479
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "oneplus_blur_wallpaper_settings"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 481
    sget-object v3, Lnet/oneplus/h2launcher/config/PreferencesHelper;->TAG:Ljava/lang/String;

    const-string v4, "[setBlurWallpaperSettings] %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, Lnet/oneplus/h2launcher/util/WallpaperComposer;->onBlurSettingsChanged(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;)V

    return-void
.end method

.method public static setKeyguardClockStyle(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .prologue
    .line 549
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 550
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_lockscreen_clock_style"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 551
    return-void
.end method

.method public static setKeyguardClockStyleInSettings(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .prologue
    return-void
.end method

.method public static setLastMigratedWallpaper(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "blurWallpaper"    # Landroid/content/ComponentName;

    .prologue
    .line 340
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 341
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_0

    .line 342
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "blurWallpaperString":Ljava/lang/String;
    sget-object v2, Lnet/oneplus/h2launcher/config/PreferencesHelper;->TAG:Ljava/lang/String;

    const-string v3, "[setLastMigratedWallpaper] %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref_migrated_blur_wallpaper"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 346
    .end local v0    # "blurWallpaperString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static setLockWallpaperTile(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tile"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .prologue
    .line 356
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 357
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->serialize()Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "tileValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 359
    sget-object v3, Lnet/oneplus/h2launcher/config/PreferencesHelper;->TAG:Ljava/lang/String;

    const-string v4, "[setLockWallpaperTile] %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 361
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_lock_wallpaper_tile"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 362
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 364
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static setSearchBarStyle(Landroid/content/Context;Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "searchBarStyle"    # Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    .prologue
    .line 231
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 232
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 233
    .local v1, "style":Ljava/lang/String;
    sget-object v2, Lnet/oneplus/h2launcher/config/PreferencesHelper$2;->$SwitchMap$net$oneplus$h2launcher$config$PreferencesHelper$SearchBarStyle:[I

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 245
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref_search_bar_style"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 248
    :cond_0
    return-void

    .line 235
    :pswitch_0
    const-string v1, "default"

    .line 236
    goto :goto_0

    .line 238
    :pswitch_1
    const-string v1, "transparent"

    .line 239
    goto :goto_0

    .line 241
    :pswitch_2
    const-string v1, "hidden"

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setWallpaperColor(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    .prologue
    .line 447
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 448
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->serialize()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "colorValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 450
    sget-object v3, Lnet/oneplus/h2launcher/config/PreferencesHelper;->TAG:Ljava/lang/String;

    const-string v4, "[setWallpaperColor] %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 452
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_wallpaper_color"

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->serialize()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 453
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 455
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static setWallpaperId(Landroid/content/Context;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screen"    # I
    .param p2, "wallpaperId"    # I

    .prologue
    .line 514
    if-nez p1, :cond_0

    const-string v1, "pref_lock_wallpaper_id"

    .line 515
    .local v1, "key":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 516
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 517
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 518
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 519
    return-void

    .line 514
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    const-string v1, "pref_home_wallpaper_id"

    goto :goto_0
.end method

.method public static setWallpaperPreferenceVersion(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # I

    .prologue
    .line 569
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 570
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_wallpaper_preference_version"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 571
    return-void
.end method

.method public static setWallpaperSetupCompleted(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 326
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperSetupCompleted(Landroid/content/Context;Z)V

    .line 327
    return-void
.end method

.method public static setWallpaperSetupCompleted(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "completed"    # Z

    .prologue
    .line 330
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 331
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_wallpaper_setup_completed"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 332
    return-void
.end method

.method public static setWallpaperTile(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tile"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .prologue
    .line 386
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 387
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->serialize()Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "tileValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 389
    sget-object v3, Lnet/oneplus/h2launcher/config/PreferencesHelper;->TAG:Ljava/lang/String;

    const-string v4, "[setWallpaperTile] %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 391
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_wallpaper_tile"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 392
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 394
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static setWeatherEnabled(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 195
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 196
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_weather"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 197
    return-void
.end method

.method public static setWelcomeTitle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 180
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_welcome_title"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    return-void
.end method


# virtual methods
.method public setPreferenceChangedCallback(Lnet/oneplus/h2launcher/config/PreferencesHelper$PreferenceChangedCallback;)V
    .locals 0
    .param p1, "callback"    # Lnet/oneplus/h2launcher/config/PreferencesHelper$PreferenceChangedCallback;

    .prologue
    .line 150
    iput-object p1, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper;->mCallback:Lnet/oneplus/h2launcher/config/PreferencesHelper$PreferenceChangedCallback;

    .line 151
    return-void
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper;->mCallback:Lnet/oneplus/h2launcher/config/PreferencesHelper$PreferenceChangedCallback;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Callback can\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class has not been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_1
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper;->mRegistered:Z

    if-nez v0, :cond_2

    .line 577
    iget-object v0, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper;->mRegistered:Z

    .line 580
    :cond_2
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 583
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper;->mRegistered:Z

    .line 587
    :cond_0
    return-void
.end method
