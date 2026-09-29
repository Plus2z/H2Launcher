.class public Lnet/oneplus/h2launcher/WallpaperChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperChangedReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lnet/oneplus/h2launcher/WallpaperChangedReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/WallpaperChangedReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 33
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    .line 35
    .local v1, "appState":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "action":Ljava/lang/String;
    sget-object v4, Lnet/oneplus/h2launcher/WallpaperChangedReceiver;->TAG:Ljava/lang/String;

    const-string v5, "wallpaper changed, action=%s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const-string v4, "net.oneplus.h2launcher.action.BLUR_WALLPAPER_WALLPAPER_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 38
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v2

    .line 39
    .local v2, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-eqz v2, :cond_4

    .line 40
    invoke-virtual {v2, v7}, Lnet/oneplus/h2launcher/Launcher;->showSwitchingLoadingView(Z)V

    .line 55
    .end local v2    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    :cond_0
    :goto_0
    const-string v4, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    invoke-static {p1, v7}, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils;->startColorExtractionServiceIfNecessary(Landroid/content/Context;Z)V

    .line 59
    :cond_1
    const-string v4, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.KEYGUARD_WALLPAPER_CHANGED"

    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 61
    :cond_2
    invoke-static {p1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    move-result-object v4

    invoke-virtual {v4, p1, v8}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->updateWallpaperId(Landroid/content/Context;Z)V

    .line 63
    :cond_3
    return-void

    .line 42
    .restart local v2    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    :cond_4
    sget-object v4, Lnet/oneplus/h2launcher/WallpaperChangedReceiver;->TAG:Ljava/lang/String;

    const-string v5, "[WallpaperChangedReceiver] launcher is null."

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    .end local v2    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    :cond_5
    const-string v4, "net.oneplus.h2launcher.action.FIRST_FRAME_DRAWN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v2

    .line 47
    .restart local v2    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->isWallpapersViewVisible()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 48
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersView()Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    move-result-object v3

    .local v3, "wallpapersView":Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;
    if-eqz v3, :cond_6

    .line 49
    invoke-virtual {v3, v8}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->onWallpaperSaved(I)V

    goto :goto_0

    .line 51
    .end local v3    # "wallpapersView":Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;
    :cond_6
    sget-object v4, Lnet/oneplus/h2launcher/WallpaperChangedReceiver;->TAG:Ljava/lang/String;

    const-string v5, "[WallpaperChangedReceiver] launcher is null."

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
