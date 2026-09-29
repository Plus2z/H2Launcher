.class public Lnet/oneplus/h2launcher/DynamicIconConfigCache;
.super Ljava/lang/Object;
.source "DynamicIconConfigCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_DYNAMIC_CONFIG:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

.field private static final INITIAL_ICON_CACHE_CAPACITY:I = 0x32

.field static final PRELOAD_ICON_TOKEN:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

.field private final mAssetPackCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            "Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCustomCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            "Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginalCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            "Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalDynamicIconResourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadTask:Ljava/lang/Runnable;

.field private mPreloadTaskQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

.field final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-class v0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    const-string v1, "none"

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->EMPTY_DYNAMIC_CONFIG:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->PRELOAD_ICON_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/AssetCache;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    const/16 v1, 0x32

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mOriginalCache:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetPackCache:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mCustomCache:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mPreloadTaskQueue:Ljava/util/ArrayList;

    .line 53
    iput-object p2, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 54
    iput-object p1, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lnet/oneplus/h2launcher/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mWorkerHandler:Landroid/os/Handler;

    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    .line 57
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->initOriginalDynamicIconResourceMap()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/DynamicIconConfigCache;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    .prologue
    .line 28
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mPreloadTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lnet/oneplus/h2launcher/DynamicIconConfigCache;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/DynamicIconConfigCache;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 28
    iput-object p1, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mPreloadTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/DynamicIconConfigCache;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    .prologue
    .line 28
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mPreloadTaskQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/DynamicIconConfigCache;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    .prologue
    .line 28
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/DynamicIconConfigCache;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    .prologue
    .line 28
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mOriginalDynamicIconResourceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private declared-synchronized cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "assetPackName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 97
    monitor-enter p0

    :try_start_0
    new-instance v0, Lnet/oneplus/h2launcher/util/ComponentKey;

    invoke-direct {v0, p1, p2}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 98
    .local v0, "cacheKey":Lnet/oneplus/h2launcher/util/ComponentKey;
    const/4 v1, 0x0

    .line 99
    .local v1, "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    const-string v4, "none"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    iget-object v4, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mOriginalCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .line 109
    .restart local v1    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 110
    new-instance v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .end local v1    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    invoke-direct {v1, p3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v1    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    invoke-direct {p0, v0, p3, v1}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->getConfigFromDB(Lnet/oneplus/h2launcher/util/ComponentKey;Ljava/lang/String;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)Z

    move-result v2

    .line 112
    .local v2, "hasConfig":Z
    if-nez v2, :cond_7

    .line 113
    const-string v4, "custom"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 114
    iget-object v4, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mCustomCache:Ljava/util/HashMap;

    sget-object v5, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->EMPTY_DYNAMIC_CONFIG:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .end local v2    # "hasConfig":Z
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v3

    .line 101
    :cond_2
    :try_start_1
    const-string v4, "custom"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 102
    iget-object v4, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mCustomCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .restart local v1    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    goto :goto_0

    .line 103
    :cond_3
    if-eqz p3, :cond_4

    iget-object v4, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 104
    iget-object v4, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetPackCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .restart local v1    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    goto :goto_0

    .line 105
    :cond_4
    if-nez p3, :cond_0

    goto :goto_1

    .line 116
    .restart local v2    # "hasConfig":Z
    :cond_5
    const-string v4, "none"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 117
    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->loadDynamicIconConfigFromOriginal(Lnet/oneplus/h2launcher/util/ComponentKey;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)Z

    move-result v2

    .line 118
    if-nez v2, :cond_6

    .line 119
    iget-object v4, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mOriginalCache:Ljava/util/HashMap;

    sget-object v5, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->EMPTY_DYNAMIC_CONFIG:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 97
    .end local v0    # "cacheKey":Lnet/oneplus/h2launcher/util/ComponentKey;
    .end local v1    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    .end local v2    # "hasConfig":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 122
    .restart local v0    # "cacheKey":Lnet/oneplus/h2launcher/util/ComponentKey;
    .restart local v1    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    .restart local v2    # "hasConfig":Z
    :cond_6
    :try_start_2
    iget-object v4, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mOriginalCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_7
    :goto_2
    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->verifyConfig(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)Z

    .line 139
    .end local v2    # "hasConfig":Z
    :cond_8
    sget-object v4, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->EMPTY_DYNAMIC_CONFIG:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    if-eq v1, v4, :cond_1

    .line 141
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 144
    goto :goto_1

    .line 124
    .restart local v2    # "hasConfig":Z
    :cond_9
    invoke-direct {p0, v0, v1, p3}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->loadDynamicIconConfigFromAssetPack(Lnet/oneplus/h2launcher/util/ComponentKey;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;Ljava/lang/String;)Z

    move-result v2

    .line 125
    if-nez v2, :cond_a

    .line 126
    iget-object v4, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    iget-object v4, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetPackCache:Ljava/util/HashMap;

    sget-object v5, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->EMPTY_DYNAMIC_CONFIG:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 131
    :cond_a
    iget-object v4, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 132
    iget-object v4, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetPackCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private getConfigFromDB(Lnet/oneplus/h2launcher/util/ComponentKey;Ljava/lang/String;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)Z
    .locals 12
    .param p1, "cacheKey"    # Lnet/oneplus/h2launcher/util/ComponentKey;
    .param p2, "assetPackName"    # Ljava/lang/String;
    .param p3, "config"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .prologue
    .line 148
    if-nez p2, :cond_1

    .line 149
    const/4 v8, 0x0

    .line 168
    :cond_0
    :goto_0
    return v8

    .line 151
    :cond_1
    const/4 v8, 0x0

    .line 152
    .local v8, "result":Z
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/IconProvider;->DYNAMIC_ICON_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "config"

    aput-object v4, v2, v3

    const-string v3, "componentName = ? AND profileId = ? AND assetPackName = ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lnet/oneplus/h2launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 155
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    iget-object v9, p1, Lnet/oneplus/h2launcher/util/ComponentKey;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 156
    invoke-virtual {v6, v9}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 152
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 159
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p3, v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->parseConfig([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    const/4 v8, 0x1

    .line 164
    :cond_2
    if-eqz v7, :cond_0

    .line 165
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 165
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private initOriginalDynamicIconResourceMap()V
    .locals 3

    .prologue
    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mOriginalDynamicIconResourceMap:Ljava/util/HashMap;

    .line 199
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mOriginalDynamicIconResourceMap:Ljava/util/HashMap;

    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_CALENDAR:Landroid/content/ComponentName;

    const/high16 v2, 0x7f090000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mOriginalDynamicIconResourceMap:Ljava/util/HashMap;

    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_WEATHER:Landroid/content/ComponentName;

    const v2, 0x7f090001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method private loadDynamicIconConfigFromAssetPack(Lnet/oneplus/h2launcher/util/ComponentKey;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cacheKey"    # Lnet/oneplus/h2launcher/util/ComponentKey;
    .param p2, "config"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    .param p3, "assetPackName"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v1, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v1, p3}, Lnet/oneplus/h2launcher/AssetCache;->loadAssetPack(Ljava/lang/String;)Lnet/oneplus/h2launcher/IconPackHelper;

    move-result-object v0

    .line 190
    .local v0, "helper":Lnet/oneplus/h2launcher/IconPackHelper;
    if-eqz v0, :cond_0

    .line 191
    iget-object v1, p1, Lnet/oneplus/h2launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/IconPackHelper;->getDynamicIconForComponentName(Landroid/content/ComponentName;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-virtual {p2, v1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->parseConfig(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 192
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->isValid()Z

    move-result v1

    .line 194
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadDynamicIconConfigFromOriginal(Lnet/oneplus/h2launcher/util/ComponentKey;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)Z
    .locals 7
    .param p1, "cacheKey"    # Lnet/oneplus/h2launcher/util/ComponentKey;
    .param p2, "config"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .prologue
    const/4 v4, 0x0

    .line 172
    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mOriginalDynamicIconResourceMap:Ljava/util/HashMap;

    iget-object v5, p1, Lnet/oneplus/h2launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    :try_start_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mOriginalDynamicIconResourceMap:Ljava/util/HashMap;

    iget-object v6, p1, Lnet/oneplus/h2launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 175
    .local v2, "stream":Ljava/io/InputStream;
    const v3, 0x64000

    new-array v0, v3, [B

    .line 176
    .local v0, "data":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 177
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 178
    invoke-virtual {p2, v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->parseConfig([B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->isValid()Z

    move-result v3

    .line 185
    .end local v0    # "data":[B
    .end local v2    # "stream":Ljava/io/InputStream;
    :goto_0
    return v3

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v3, v4

    .line 181
    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    move v3, v4

    .line 185
    goto :goto_0
.end method


# virtual methods
.method public addPreloadAssetPackTask(Ljava/lang/String;)V
    .locals 8
    .param p1, "assetPackName"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v7

    .line 229
    .local v7, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    iget-object v2, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    invoke-virtual {v2, v7}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v4

    .line 230
    .local v4, "userSerial":J
    iget-object v2, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 232
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;

    sget-object v6, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->sDefaultNeedRefreshApps:[Landroid/content/ComponentName;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;-><init>(Lnet/oneplus/h2launcher/DynamicIconConfigCache;Ljava/lang/String;J[Landroid/content/ComponentName;)V

    .line 233
    .local v1, "task":Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;
    iget-object v2, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mPreloadTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v2, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mWorkerHandler:Landroid/os/Handler;

    new-instance v3, Lnet/oneplus/h2launcher/DynamicIconConfigCache$1;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/DynamicIconConfigCache$1;-><init>(Lnet/oneplus/h2launcher/DynamicIconConfigCache;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    return-void
.end method

.method public declared-synchronized changeAssetPack()V
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetPackCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkAndPreloadAllTask()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    const-class v1, Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/AssetCache;->isPreloadCache(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/DynamicIconConfigCache$2;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/DynamicIconConfigCache$2;-><init>(Lnet/oneplus/h2launcher/DynamicIconConfigCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    :cond_0
    return-void
.end method

.method public declared-synchronized flush(I)V
    .locals 1
    .param p1, "cacheType"    # I

    .prologue
    .line 219
    monitor-enter p0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 220
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mOriginalCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 222
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetPackCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_1
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized flushAssetPackIcon(Ljava/lang/String;)V
    .locals 4
    .param p1, "assetPackName"    # Ljava/lang/String;

    .prologue
    .line 208
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 209
    :try_start_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetPackCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 212
    :cond_0
    const-string v1, "assetPackName = ?"

    .line 213
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 214
    .local v0, "args":[Ljava/lang/String;
    iget-object v2, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/IconProvider;->DYNAMIC_ICON_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "selection":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getDynamicIconConfig(Landroid/content/ComponentName;I)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "cacheType"    # I

    .prologue
    .line 75
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->getDynamicIconConfig(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicIconConfig(Landroid/content/ComponentName;Ljava/lang/String;)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "assetPackName"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->getDynamicIconConfig(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicIconConfig(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "cacheType"    # I

    .prologue
    .line 79
    const-string v0, "none"

    .line 80
    .local v0, "assetPackName":Ljava/lang/String;
    const/16 v1, 0x8

    if-ne p3, v1, :cond_1

    .line 81
    const-string v0, "custom"

    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->getDynamicIconConfig(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    move-result-object v1

    return-object v1

    .line 82
    :cond_1
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 83
    iget-object v1, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDynamicIconConfig(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "assetPackName"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicIconConfig(Lnet/oneplus/h2launcher/ShortcutInfo;I)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "cacheType"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 65
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 68
    :cond_1
    if-eqz v0, :cond_2

    .line 69
    iget-object v1, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {p0, v0, v1, p2}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->getDynamicIconConfig(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    move-result-object v1

    .line 71
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public preloadAllAssetPackTask()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/DynamicIconConfigCache$3;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/DynamicIconConfigCache$3;-><init>(Lnet/oneplus/h2launcher/DynamicIconConfigCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method
