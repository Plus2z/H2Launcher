.class public Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "BlurWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$BlurWallpaperSettingsReceiver;,
        Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;,
        Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;
    }
.end annotation


# static fields
.field public static final ACTION_BLUR_WALLPAPER_SETTINGS_CHANGED:Ljava/lang/String; = "net.oneplus.h2launcher.action.BLUR_WALLPAPER_SETTINGS_CHANGED"

.field public static final ACTION_BLUR_WALLPAPER_WALLPAPER_CHANGED:Ljava/lang/String; = "net.oneplus.h2launcher.action.BLUR_WALLPAPER_WALLPAPER_CHANGED"

.field public static final ACTION_FIRST_FRAME_DRAWN:Ljava/lang/String; = "net.oneplus.h2launcher.action.FIRST_FRAME_DRAWN"

.field public static final ACTION_SHELF_ENABLED_CHANGED:Ljava/lang/String; = "net.oneplus.h2launcher.action.SHELF_ENABLED_CHANGED"

.field private static final BLUR_WALLPAPER_NAME:Ljava/lang/String; = "blur_wallpaper"

.field public static final BUTTONS_SHOW_ON_SCREEN_NAVKEYS:Ljava/lang/String; = "buttons_show_on_screen_navkeys"

.field private static final DEBUG:Z = false

.field private static final DEBUG_CHANGE_WALLPAPER:Z = true

.field public static final EXTRA_SHELF_ENABLED:Ljava/lang/String; = "net.oneplus.h2launcher.extra.SHELF_ENABLED"

.field private static final FIXED_SIZED_SURFACE:Z = true

.field private static final KEY_BLUR_ENABLED:Ljava/lang/String; = "blur_enabled"

.field private static final KEY_MASK_COLOR:Ljava/lang/String; = "mask_color"

.field private static final KEY_NOTIFY:Ljava/lang/String; = "notify"

.field private static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final KEY_SCROLL_MODE:Ljava/lang/String; = "scroll_mode"

.field private static final SCROLL_MODE_CUSTOMIZED:I = 0x1

.field private static final SCROLL_MODE_ORIGINAL:I = 0x0

.field private static final SETTINGS_NAME_ONEPLUS_BLUR_WALLPAPER_SETTINGS:Ljava/lang/String; = "oneplus_blur_wallpaper_settings"

.field private static final TAG:Ljava/lang/String;

.field private static final WALLPAPER_NAME:Ljava/lang/String; = "wallpaper"

.field public static final WALLPAPER_ORIENTATION_LANDSCAPE:I = 0x1

.field public static final WALLPAPER_ORIENTATION_PORTRAIT:I = 0x0

.field public static final WALLPAPER_ORIENTATION_UNKNOWN:I = -0x1


# instance fields
.field private isShelfenable:Z

.field private mContext:Landroid/content/Context;

.field private mEngine:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

.field private mHandler:Landroid/os/Handler;

.field private mHasNavigationBar:Z

.field private mIsHwAccelerated:Z

.field private mReDrawCount:I

.field private mStyleManager:Lnet/oneplus/h2launcher/oos/StyleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 138
    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mReDrawCount:I

    .line 147
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mHasNavigationBar:Z

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->isShelfenable:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-static {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->deleteFilCache(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1700(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)Lnet/oneplus/h2launcher/oos/StyleManager;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    .prologue
    .line 69
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mStyleManager:Lnet/oneplus/h2launcher/oos/StyleManager;

    return-object v0
.end method

.method static synthetic access$1800(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    .prologue
    .line 69
    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->isHasNavigationBar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    .prologue
    .line 69
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mEngine:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    return-object v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    .prologue
    .line 69
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mReDrawCount:I

    return v0
.end method

.method static synthetic access$502(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;I)I
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mReDrawCount:I

    return p1
.end method

.method static synthetic access$510(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)I
    .locals 2
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    .prologue
    .line 69
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mReDrawCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mReDrawCount:I

    return v0
.end method

.method private static deleteFilCache(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1363
    .local v2, "start":J
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 1364
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    const-string v6, "blur_wallpaper"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1365
    .local v1, "fileBlur":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    .line 1366
    .local v4, "success":Z
    sget-object v5, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " success "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    return-void
.end method

.method public static invalidateFileCache(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1370
    invoke-static {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->deleteFilCache(Landroid/content/Context;)V

    .line 1371
    return-void
.end method

.method private isHasNavigationBar()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 194
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mContext:Landroid/content/Context;

    .line 196
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "buttons_show_on_screen_navkeys"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 168
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mEngine:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mHasNavigationBar:Z

    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->isHasNavigationBar()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 169
    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->isHasNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mHasNavigationBar:Z

    .line 170
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mEngine:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->refresh()V

    .line 172
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mEngine:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mEngine:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->updateConfig()V

    .line 176
    :cond_1
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 177
    return-void
.end method

.method public onCreate()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ServiceCast"
        }
    .end annotation

    .prologue
    .line 156
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 157
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate#"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->init(Landroid/content/Context;)V

    .line 159
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mStyleManager:Lnet/oneplus/h2launcher/oos/StyleManager;

    .line 160
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mContext:Landroid/content/Context;

    .line 161
    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->isHasNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mHasNavigationBar:Z

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mHandler:Landroid/os/Handler;

    .line 163
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->deleteFilCache(Landroid/content/Context;)V

    .line 164
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;-><init>(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mEngine:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    .line 189
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mEngine:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 201
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy#"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 203
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mEngine:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->mEngine:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->trimMemory(I)V

    .line 184
    :cond_0
    return-void
.end method
