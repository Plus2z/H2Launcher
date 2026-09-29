.class Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$BlurWallpaperSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BlurWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlurWallpaperSettingsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)V
    .locals 0

    .prologue
    .line 1343
    iput-object p1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$BlurWallpaperSettingsReceiver;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$1;

    .prologue
    .line 1343
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$BlurWallpaperSettingsReceiver;-><init>(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1346
    invoke-static {}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive# action: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1347
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$BlurWallpaperSettingsReceiver;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->access$1900(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1348
    invoke-static {}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive# engine is null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    :cond_0
    :goto_0
    return-void

    .line 1352
    :cond_1
    const-string v0, "net.oneplus.h2launcher.action.BLUR_WALLPAPER_SETTINGS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$BlurWallpaperSettingsReceiver;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->access$1900(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$2000(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$BlurWallpaperSettingsReceiver;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->access$1900(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->refresh()V

    goto :goto_0
.end method
