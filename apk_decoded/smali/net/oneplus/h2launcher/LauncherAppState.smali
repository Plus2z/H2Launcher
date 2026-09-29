.class public Lnet/oneplus/h2launcher/LauncherAppState;
.super Ljava/lang/Object;
.source "LauncherAppState.java"


# static fields
.field private static INSTANCE:Lnet/oneplus/h2launcher/LauncherAppState;

.field private static sContext:Landroid/content/Context;

.field private static sLauncherProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/oneplus/h2launcher/LauncherProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessibilityDelegate:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

.field private final mAppFilter:Lnet/oneplus/h2launcher/AppFilter;

.field private mAppWidgetHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

.field private final mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

.field private final mBuildInfo:Lnet/oneplus/h2launcher/BuildInfo;

.field private mInvariantDeviceProfile:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

.field private mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field final mModel:Lnet/oneplus/h2launcher/LauncherModel;

.field private mOneplusPermissionChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperChangedSinceLastCheck:Z

.field private final mWidgetCache:Lnet/oneplus/h2launcher/WidgetPreviewLoader;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v1, Lnet/oneplus/h2launcher/LauncherAppState$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/LauncherAppState$1;-><init>(Lnet/oneplus/h2launcher/LauncherAppState;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mOneplusPermissionChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    sget-object v1, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 101
    const-string v1, "Launcher"

    const-string v2, "LauncherAppState inited before app context set!"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    .line 105
    :cond_0
    const-string v1, "Launcher"

    const-string v2, "LauncherAppState inited"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v1, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    sget-object v1, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    const-string v2, "L"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/MemoryTracker;->startTrackingMe(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    :cond_1
    sget-object v1, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->init(Landroid/content/Context;)V

    .line 112
    sget-object v1, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->init(Landroid/content/Context;)V

    .line 113
    new-instance v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    sget-object v2, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mInvariantDeviceProfile:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .line 114
    new-instance v1, Lnet/oneplus/h2launcher/AssetCache;

    sget-object v2, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mInvariantDeviceProfile:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    invoke-direct {v1, v2, v3}, Lnet/oneplus/h2launcher/AssetCache;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 115
    new-instance v1, Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    sget-object v2, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mInvariantDeviceProfile:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    invoke-direct {v1, v2, v3, v4}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/AssetCache;Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mWidgetCache:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    .line 116
    new-instance v1, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    sget-object v2, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mAppWidgetHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    .line 118
    sget-object v1, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    const v2, 0x7f0b00fb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/AppFilter;->loadByName(Ljava/lang/String;)Lnet/oneplus/h2launcher/AppFilter;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mAppFilter:Lnet/oneplus/h2launcher/AppFilter;

    .line 119
    sget-object v1, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    const v2, 0x7f0b0102

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/BuildInfo;->loadByName(Ljava/lang/String;)Lnet/oneplus/h2launcher/BuildInfo;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mBuildInfo:Lnet/oneplus/h2launcher/BuildInfo;

    .line 120
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mAppFilter:Lnet/oneplus/h2launcher/AppFilter;

    invoke-direct {v1, p0, v2, v3}, Lnet/oneplus/h2launcher/LauncherModel;-><init>(Lnet/oneplus/h2launcher/LauncherAppState;Lnet/oneplus/h2launcher/AssetCache;Lnet/oneplus/h2launcher/AppFilter;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    .line 122
    sget-object v1, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    sget-object v1, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    sget-object v1, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->enableAndResetCache()V

    .line 136
    new-instance v1, Lnet/oneplus/h2launcher/util/ConfigMonitor;

    sget-object v2, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/util/ConfigMonitor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/util/ConfigMonitor;->register()V

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "oneplus.intent.action.PERMISSION_AGREE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    sget-object v1, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mOneplusPermissionChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    return-void
.end method

.method public static getInstance()Lnet/oneplus/h2launcher/LauncherAppState;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lnet/oneplus/h2launcher/LauncherAppState;->INSTANCE:Lnet/oneplus/h2launcher/LauncherAppState;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lnet/oneplus/h2launcher/LauncherAppState;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/LauncherAppState;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/LauncherAppState;->INSTANCE:Lnet/oneplus/h2launcher/LauncherAppState;

    .line 69
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/LauncherAppState;->INSTANCE:Lnet/oneplus/h2launcher/LauncherAppState;

    return-object v0
.end method

.method public static getInstanceNoCreate()Lnet/oneplus/h2launcher/LauncherAppState;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lnet/oneplus/h2launcher/LauncherAppState;->INSTANCE:Lnet/oneplus/h2launcher/LauncherAppState;

    return-object v0
.end method

.method public static getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 195
    sget-object v4, Lnet/oneplus/h2launcher/LauncherAppState;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_0

    .line 196
    const-string v4, "Launcher"

    const-string v5, "sLauncherProvider is null, let launcher provider re-assign its instance to launcher app state"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sget-object v4, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    if-eqz v4, :cond_2

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lnet/oneplus/h2launcher/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 200
    .local v1, "uri":Landroid/net/Uri;
    const-string v0, "set_launcher_provider"

    .line 201
    .local v0, "method":Ljava/lang/String;
    sget-object v4, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "set_launcher_provider"

    invoke-virtual {v4, v1, v5, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 202
    const-string v4, "Launcher"

    const-string v5, "sLauncherProvider is null? %b"

    new-array v6, v2, [Ljava/lang/Object;

    sget-object v7, Lnet/oneplus/h2launcher/LauncherAppState;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    if-nez v7, :cond_1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    .end local v0    # "method":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    sget-object v2, Lnet/oneplus/h2launcher/LauncherAppState;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/LauncherProvider;

    return-object v2

    .restart local v0    # "method":Ljava/lang/String;
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_1
    move v2, v3

    .line 202
    goto :goto_0

    .line 204
    .end local v0    # "method":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v2, "Launcher"

    const-string v3, "sContext is empty....orz"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getSharedPreferencesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const-string v0, "net.oneplus.h2launcher.prefs"

    return-object v0
.end method

.method public static isDogfoodBuild()Z
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherAppState;->mBuildInfo:Lnet/oneplus/h2launcher/BuildInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/BuildInfo;->isDogfoodBuild()Z

    move-result v0

    return v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-object v0, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setApplicationContext called twice! old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method static setLauncherProvider(Lnet/oneplus/h2launcher/LauncherProvider;)V
    .locals 2
    .param p0, "provider"    # Lnet/oneplus/h2launcher/LauncherProvider;

    .prologue
    .line 188
    const-string v0, "Launcher"

    const-string v1, "setLauncherProvider"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lnet/oneplus/h2launcher/LauncherAppState;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    .line 190
    return-void
.end method


# virtual methods
.method public getAccessibilityDelegate()Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mAccessibilityDelegate:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    return-object v0
.end method

.method public getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mAppWidgetHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getAssetCache()Lnet/oneplus/h2launcher/AssetCache;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mInvariantDeviceProfile:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    return-object v0
.end method

.method public getLauncher()Lnet/oneplus/h2launcher/Launcher;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    return-object v0
.end method

.method public getModel()Lnet/oneplus/h2launcher/LauncherModel;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    return-object v0
.end method

.method public getWidgetCache()Lnet/oneplus/h2launcher/WidgetPreviewLoader;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mWidgetCache:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    return-object v0
.end method

.method public hasWallpaperChangedSinceLastCheck()Z
    .locals 2

    .prologue
    .line 223
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mWallpaperChangedSinceLastCheck:Z

    .line 224
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mWallpaperChangedSinceLastCheck:Z

    .line 225
    return v0
.end method

.method public onTerminate()V
    .locals 3

    .prologue
    .line 147
    sget-object v1, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    sget-object v1, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v0

    .line 149
    .local v0, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->removeOnAppsChangedCallback(Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 150
    sget-object v1, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/PackageInstallerCompat;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat;->onStop()V

    .line 151
    sget-object v1, Lnet/oneplus/h2launcher/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mOneplusPermissionChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    return-void
.end method

.method public reloadWorkspace()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherModel;->resetLoadedState(ZZ)V

    .line 160
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherModel;->startLoaderFromBackground()V

    .line 161
    return-void
.end method

.method public setInvariantDeviceProfile(Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V
    .locals 0
    .param p1, "profile"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .prologue
    .line 237
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mInvariantDeviceProfile:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .line 238
    return-void
.end method

.method setLauncher(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/LauncherModel;
    .locals 2
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 164
    const-string v0, "Launcher"

    const-string v1, "setLauncher"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 166
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/LauncherProvider;->setLauncherProviderChangeListener(Lnet/oneplus/h2launcher/LauncherProviderChangeListener;)V

    .line 168
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AssetCache;->updateCurrentLocale()V

    .line 169
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/LauncherModel;->initialize(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)V

    .line 170
    if-eqz p1, :cond_0

    sget-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    :goto_0
    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mAccessibilityDelegate:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    .line 172
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppState;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    return-object v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
