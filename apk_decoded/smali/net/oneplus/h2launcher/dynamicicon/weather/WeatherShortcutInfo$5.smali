.class Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$5;
.super Ljava/lang/Object;
.source "WeatherShortcutInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->updateIconCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    .prologue
    .line 274
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$5;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 277
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$5;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->access$300(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;Z)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v4

    .line 278
    .local v4, "drawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    if-nez v4, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-static {v4}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconUtil;->getCompleteBitmap(Lnet/oneplus/h2launcher/FastBitmapDrawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 283
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 287
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$5;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 288
    .local v3, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    .line 292
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 293
    .local v0, "appState":Lnet/oneplus/h2launcher/LauncherAppState;
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v1

    .line 295
    .local v1, "assetCache":Lnet/oneplus/h2launcher/AssetCache;
    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v1, v3, v2}, Lnet/oneplus/h2launcher/AssetCache;->updateDynamicIconCache(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    .line 297
    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo$5;->this$0:Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    iget-object v6, v6, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 298
    invoke-virtual {v5, v3, v6}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->notifyUpdateIconCacheCallback(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    goto :goto_0
.end method
