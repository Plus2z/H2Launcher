.class public Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;
.super Lnet/oneplus/h2launcher/ShortcutInfo;
.source "CalendarShortcutInfo.java"

# interfaces
.implements Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$OneplusCalendarInfoReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_NEW_DAY:Ljava/lang/String; = "new_day"

.field private static final KEY_OLD_DAY:Ljava/lang/String; = "old_day"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

.field private mBaseDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

.field private final mCheckAnimatingObject:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCurrentDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

.field private mDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoIntentFilter:Landroid/content/IntentFilter;

.field private mInfoReceiver:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$OneplusCalendarInfoReceiver;

.field private mNeedAnimateIconCallback:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

.field private mNewDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

.field private mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

.field private mRunningAnimation:Z

.field private mUpdateRunnable:Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "contentDescription"    # Ljava/lang/CharSequence;
    .param p5, "icon"    # Landroid/graphics/Bitmap;
    .param p6, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p7, "needAnimateIconCallback"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    .prologue
    const/4 v6, 0x0

    .line 70
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mDataMap:Ljava/util/HashMap;

    .line 54
    iput-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 55
    iput-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mCheckAnimatingObject:Ljava/lang/Object;

    .line 71
    invoke-virtual {p0, p1, p7}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->init(Landroid/content/Context;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/AppInfo;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lnet/oneplus/h2launcher/AppInfo;
    .param p3, "needAnimateIconCallback"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>(Lnet/oneplus/h2launcher/AppInfo;)V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mDataMap:Ljava/util/HashMap;

    .line 54
    iput-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 55
    iput-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mCheckAnimatingObject:Ljava/lang/Object;

    .line 65
    invoke-virtual {p0, p1, p3}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->init(Landroid/content/Context;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needAnimateIconCallback"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mDataMap:Ljava/util/HashMap;

    .line 54
    iput-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 55
    iput-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mCheckAnimatingObject:Ljava/lang/Object;

    .line 60
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->init(Landroid/content/Context;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    .prologue
    .line 39
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->updateCalendarData()V

    return-void
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    .prologue
    .line 39
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mUpdateRunnable:Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    return-object v0
.end method

.method static synthetic access$102(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;)Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    .prologue
    .line 39
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mUpdateRunnable:Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    return-object p1
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;Z)Lnet/oneplus/h2launcher/FastBitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->getStaticDrawable(Z)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->updateCalendarData(Z)V

    return-void
.end method

.method private getStaticDrawable(Z)Lnet/oneplus/h2launcher/FastBitmapDrawable;
    .locals 6
    .param p1, "resize"    # Z

    .prologue
    .line 255
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->getOriginalIconDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v1

    .line 256
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 257
    const/4 v2, 0x0

    .line 278
    :cond_0
    :goto_0
    return-object v2

    .line 260
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v2, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 262
    .local v2, "drawable":Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;
    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v2, v4, v5}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->updateConfig(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)V

    .line 263
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->setFilterBitmap(Z)V

    .line 265
    iget-boolean v4, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mRunningAnimation:Z

    if-eqz v4, :cond_2

    .line 266
    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v5, "new_day"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->setText(Ljava/lang/String;)V

    .line 271
    :goto_1
    if-eqz p1, :cond_0

    .line 272
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v3

    .line 273
    .local v3, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-eqz v3, :cond_0

    .line 274
    invoke-virtual {v3, v2}, Lnet/oneplus/h2launcher/Launcher;->resizeIconDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 268
    .end local v3    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    :cond_2
    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v5, "old_day"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateCalendarData()V
    .locals 6

    .prologue
    .line 336
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 337
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "day":Ljava/lang/String;
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v3, "new_day"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v3, "old_day"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v3, "old_day"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_0
    sget-object v2, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCalendarData day = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newDay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v5, "new_day"

    .line 345
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldDay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v5, "old_day"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", obj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method private updateCalendarData(Z)V
    .locals 2
    .param p1, "background"    # Z

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->updateCalendarData()V

    .line 333
    :goto_0
    return-void

    .line 305
    :cond_0
    new-instance v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$4;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$4;-><init>(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)V

    .line 332
    .local v0, "r":Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static verifyConfig(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)Z
    .locals 9
    .param p0, "config"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .prologue
    const/4 v5, 0x0

    .line 449
    :try_start_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->getBackgroundDrawableConfig()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;

    move-result-object v2

    .line 450
    .local v2, "drawableConfig":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;
    if-eqz v2, :cond_0

    .line 451
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->getDefaultDrawableResource()Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, "resource":Ljava/lang/String;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 453
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v1

    .line 455
    .local v1, "assetCache":Lnet/oneplus/h2launcher/AssetCache;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->getAssetPackName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Lnet/oneplus/h2launcher/AssetCache;->checkResourceExist(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 462
    .end local v0    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    .end local v1    # "assetCache":Lnet/oneplus/h2launcher/AssetCache;
    .end local v2    # "drawableConfig":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;
    .end local v4    # "resource":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 460
    :catch_0
    move-exception v3

    .line 461
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parse DynamicIconConfig error, message = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createShortcutView(Landroid/content/Context;Landroid/view/ViewGroup;ZI)Lnet/oneplus/h2launcher/BubbleTextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z
    .param p4, "style"    # I

    .prologue
    .line 228
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mContext:Landroid/content/Context;

    if-eq p1, v1, :cond_0

    .line 229
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->unregisterDataProvider()V

    .line 230
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mContext:Landroid/content/Context;

    .line 233
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->needRegisterDataProvider()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->TAG:Ljava/lang/String;

    const-string v2, "needRegisterDataProvider"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->registerDataProvider()V

    .line 236
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->updateCalendarData()V

    .line 240
    :cond_1
    const v1, 0x7f0a00fe

    if-ne p4, v1, :cond_2

    .line 241
    const v0, 0x7f040028

    .line 246
    .local v0, "layout":I
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/BubbleTextView;

    return-object v1

    .line 243
    .end local v0    # "layout":I
    :cond_2
    const v0, 0x7f040058

    .restart local v0    # "layout":I
    goto :goto_0
.end method

.method public getCurrentData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mDataMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCurrentIconDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;
    .locals 6

    .prologue
    .line 350
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mCurrentDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    if-nez v3, :cond_1

    .line 351
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->getOriginalIconDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v1

    .line 352
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 353
    const/4 v3, 0x0

    .line 368
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v3

    .line 356
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v3, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mCurrentDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    .line 358
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mCurrentDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->setFilterBitmap(Z)V

    .line 359
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mCurrentDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->updateConfig(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)V

    .line 362
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mCurrentDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v5, "old_day"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->setText(Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v2

    .line 364
    .local v2, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-eqz v2, :cond_2

    .line 365
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mCurrentDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Launcher;->resizeIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mCurrentDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    goto :goto_0
.end method

.method getNewIconDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;
    .locals 6

    .prologue
    .line 372
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mNewDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    if-nez v3, :cond_1

    .line 373
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->getOriginalIconDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v1

    .line 374
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 375
    const/4 v3, 0x0

    .line 389
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v3

    .line 377
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 378
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v3, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mNewDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    .line 379
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mNewDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->setFilterBitmap(Z)V

    .line 380
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mNewDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->updateConfig(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)V

    .line 383
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mNewDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v5, "new_day"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->setText(Ljava/lang/String;)V

    .line 384
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v2

    .line 385
    .local v2, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-eqz v2, :cond_2

    .line 386
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mNewDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Launcher;->resizeIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mNewDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    goto :goto_0
.end method

.method getOriginalIconDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 393
    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mBaseDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    if-nez v6, :cond_5

    .line 394
    const/4 v4, 0x0

    .line 395
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 396
    .local v3, "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;
    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    if-eqz v6, :cond_2

    .line 397
    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->getBackgroundDrawableConfig()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;

    move-result-object v3

    .line 402
    :cond_0
    :goto_0
    if-nez v3, :cond_3

    .line 425
    .end local v3    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    return-object v5

    .line 398
    .restart local v3    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    if-eqz v6, :cond_0

    .line 399
    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->getBackgroundDrawableConfig()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;

    move-result-object v3

    goto :goto_0

    .line 405
    :cond_3
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 406
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    if-eqz v0, :cond_4

    .line 407
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v1

    .line 408
    .local v1, "assetCache":Lnet/oneplus/h2launcher/AssetCache;
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->getDefaultDrawableResource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->getAssetPackName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lnet/oneplus/h2launcher/AssetCache;->getDynamicIconDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 409
    if-nez v4, :cond_4

    .line 410
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->getDefaultDrawableResource()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->getAssetPackName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lnet/oneplus/h2launcher/AssetCache;->getDynamicIconDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 415
    .end local v1    # "assetCache":Lnet/oneplus/h2launcher/AssetCache;
    :cond_4
    if-eqz v4, :cond_1

    .line 419
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 420
    .local v2, "b":Landroid/graphics/Bitmap;
    new-instance v5, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mBaseDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    .line 421
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mBaseDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    iget-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    iget-object v7, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v5, v6, v7}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->updateConfig(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)V

    .line 422
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mBaseDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;->setFilterBitmap(Z)V

    .line 425
    .end local v0    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v3    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mBaseDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    goto :goto_1
.end method

.method public getStaticDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->getStaticDrawable(Z)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needAnimateIconCallback"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    .prologue
    .line 75
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mContext:Landroid/content/Context;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mIsDynamicIcon:Z

    .line 77
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->refreshConfig()V

    .line 78
    iput-object p2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mNeedAnimateIconCallback:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mInfoIntentFilter:Landroid/content/IntentFilter;

    .line 80
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mInfoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mInfoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->updateCalendarData()V

    .line 83
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$1;-><init>(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method public initFlags()V
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 284
    iget v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->flags:I

    xor-int/lit8 v0, v0, 0x8

    iput v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->flags:I

    .line 286
    :cond_0
    return-void
.end method

.method public isRunningAnimation()Z
    .locals 2

    .prologue
    .line 155
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mCheckAnimatingObject:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mRunningAnimation:Z

    monitor-exit v1

    return v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public needInvalidate()Z
    .locals 5

    .prologue
    .line 140
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v3, "old_day"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    .local v1, "oldDay":Ljava/lang/String;
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v3, "new_day"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    .local v0, "newDay":Ljava/lang/String;
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    :cond_1
    sget-object v2, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CalendarShortcInfo needInvalidate false, oldDay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newDay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", obj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v2, 0x0

    .line 150
    :goto_0
    return v2

    .line 148
    :cond_2
    sget-object v2, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DynamicIcon check needInvalidate true, oldDay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newDay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", obj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public needRegisterDataProvider()Z
    .locals 2

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mInfoReceiver:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$OneplusCalendarInfoReceiver;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 96
    .local v0, "result":Z
    :goto_0
    monitor-exit p0

    .line 97
    return v0

    .line 95
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAnimationEnd()V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v1, "old_day"

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v3, "new_day"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicIcon CalendarShortcutInfo onAnimationEnd put oldDay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mDataMap:Ljava/util/HashMap;

    const-string v3, "new_day"

    .line 174
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mRunningAnimation:Z

    .line 177
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->updateIconCache()V

    .line 178
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mUpdateRunnable:Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;

    if-eqz v0, :cond_0

    .line 179
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$2;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$2;-><init>(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 188
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mCheckAnimatingObject:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mRunningAnimation:Z

    .line 164
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicIcon CalendarShortcutInfo onAnimationStart obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void

    .line 164
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDataChanged()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mNeedAnimateIconCallback:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;->onNeedAnimateIcon()V

    .line 136
    return-void
.end method

.method public refreshConfig()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 429
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 430
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v1

    .line 432
    .local v1, "assetCache":Lnet/oneplus/h2launcher/AssetCache;
    sget-object v4, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_CALENDAR:Landroid/content/ComponentName;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lnet/oneplus/h2launcher/AssetCache;->getDynamicIconConfig(Landroid/content/ComponentName;I)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    move-result-object v3

    .line 434
    .local v3, "originalConfig":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    sget-object v4, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_CALENDAR:Landroid/content/ComponentName;

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Lnet/oneplus/h2launcher/AssetCache;->getDynamicIconConfig(Landroid/content/ComponentName;I)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    move-result-object v2

    .line 437
    .local v2, "assetPackConfig":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    if-eq v2, v4, :cond_1

    .line 438
    :cond_0
    iput-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mOriginalConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 439
    iput-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mAssetPackConfig:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 440
    iput-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mBaseDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    .line 441
    iput-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mNewDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    .line 442
    iput-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mCurrentDrawable:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarFastBitmapDrawable;

    .line 445
    .end local v1    # "assetCache":Lnet/oneplus/h2launcher/AssetCache;
    .end local v2    # "assetPackConfig":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    .end local v3    # "originalConfig":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    :cond_1
    return-void
.end method

.method public registerDataProvider()V
    .locals 3

    .prologue
    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mInfoReceiver:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$OneplusCalendarInfoReceiver;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$OneplusCalendarInfoReceiver;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$OneplusCalendarInfoReceiver;-><init>(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mInfoReceiver:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$OneplusCalendarInfoReceiver;

    .line 105
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->TAG:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->showCallStack(Ljava/lang/String;I)Ljava/lang/String;

    .line 106
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CalendarShortcutInfo registerDataProvider receiver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mInfoReceiver:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$OneplusCalendarInfoReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CalendarShortcutInfo registerDataProvider mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CalendarShortcutInfo registerDataProvider obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mInfoReceiver:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$OneplusCalendarInfoReceiver;

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mInfoIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    :cond_0
    monitor-exit p0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestData()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterDataProvider()V
    .locals 3

    .prologue
    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mInfoReceiver:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$OneplusCalendarInfoReceiver;

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->TAG:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->showCallStack(Ljava/lang/String;I)Ljava/lang/String;

    .line 119
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CalendarShortcutInfo unregisterDataProvider receiver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mInfoReceiver:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$OneplusCalendarInfoReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CalendarShortcutInfo unregisterDataProvider mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CalendarShortcutInfo unregisterDataProvider obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mInfoReceiver:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$OneplusCalendarInfoReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->mInfoReceiver:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$OneplusCalendarInfoReceiver;

    .line 125
    :cond_0
    monitor-exit p0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateIconCache()V
    .locals 2

    .prologue
    .line 192
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$3;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo$3;-><init>(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method
