.class Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$3;
.super Ljava/lang/Object;
.source "CalendarShortcutInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->updateIconCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    .prologue
    .line 192
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$3;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 195
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$3;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->access$200(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;Z)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v4

    .line 196
    .local v4, "drawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    if-nez v4, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-static {v4}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconUtil;->getCompleteBitmap(Lnet/oneplus/h2launcher/FastBitmapDrawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 200
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 203
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$3;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 204
    .local v3, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    .line 207
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 208
    .local v0, "appState":Lnet/oneplus/h2launcher/LauncherAppState;
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v1

    .line 210
    .local v1, "assetCache":Lnet/oneplus/h2launcher/AssetCache;
    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v1, v3, v2}, Lnet/oneplus/h2launcher/AssetCache;->updateDynamicIconCache(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    .line 212
    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$3;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    iget-object v6, v6, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 213
    invoke-virtual {v5, v3, v6}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->notifyUpdateIconCacheCallback(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    goto :goto_0
.end method
