.class public Lnet/oneplus/h2launcher/LauncherRootView;
.super Lnet/oneplus/h2launcher/InsettableFrameLayout;
.source "LauncherRootView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method private notifyBlurWallpaperSettingChanged()V
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherRootView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getBlurWallpaperSettings(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v1

    .line 46
    .local v1, "settings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->notify:Z

    .line 47
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherRootView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setBlurWallpaperSettings(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;)V

    .line 48
    const-string v0, "net.oneplus.h2launcher.action.BLUR_WALLPAPER_SETTINGS_CHANGED"

    .line 49
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherRootView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    .line 21
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v3

    .line 25
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherRootView;->mInsets:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 26
    .local v0, "isFirstInit":Z
    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherRootView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v3

    .line 27
    .local v1, "isInsetChange":Z
    :goto_1
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/LauncherRootView;->setInsets(Landroid/graphics/Rect;)V

    .line 30
    if-eqz v1, :cond_0

    .line 31
    if-nez v0, :cond_2

    .line 32
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherRootView;->notifyBlurWallpaperSettingChanged()V

    .line 35
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v2

    .line 36
    .local v2, "launcher":Lnet/oneplus/h2launcher/Launcher;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v4

    invoke-virtual {v4, p1}, Lnet/oneplus/h2launcher/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    .line 37
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v4

    invoke-virtual {v4, v2}, Lnet/oneplus/h2launcher/DeviceProfile;->layout(Lnet/oneplus/h2launcher/Launcher;)V

    .line 38
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Workspace;->requestLayout()V

    goto :goto_0

    .line 26
    .end local v1    # "isInsetChange":Z
    .end local v2    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
