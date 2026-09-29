.class public abstract Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;
.super Ljava/lang/Object;
.source "AppWidgetManagerCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 63
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sget-object v1, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->sInstance:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    if-nez v0, :cond_0

    .line 47
    sget-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompatVL;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->sInstance:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    .line 53
    :cond_0
    :goto_0
    sget-object v0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->sInstance:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    monitor-exit v1

    return-object v0

    .line 50
    :cond_1
    new-instance v0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompatV16;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompatV16;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->sInstance:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public abstract bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z
.end method

.method public abstract getAllProviders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1
    .param p1, "appWidgetId"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract getBadgeBitmap(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.end method

.method public abstract getUser(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;
.end method

.method public abstract loadIcon(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;Lnet/oneplus/h2launcher/AssetCache;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract loadLabel(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Ljava/lang/String;
.end method

.method public abstract loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Z

    .prologue
    .line 71
    :try_start_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setBindAppWidgetPermission"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 72
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 73
    .local v1, "setBindAppWidgetPermission":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    .end local v1    # "setBindAppWidgetPermission":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->TAG:Ljava/lang/String;

    const-string v3, "failed to get method: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v2, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->TAG:Ljava/lang/String;

    const-string v3, "failed to invoke target: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v2, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->TAG:Ljava/lang/String;

    const-string v3, "illegal access exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V
.end method
