.class public Lnet/oneplus/h2launcher/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;,
        Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;,
        Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;,
        Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_ENTRY:Lnet/oneplus/h2launcher/IconCache$CacheEntry;

.field static final ICON_UPDATE_TOKEN:Ljava/lang/Object;

.field private static final INITIAL_ICON_CACHE_CAPACITY:I = 0x32

.field private static final LOW_RES_SCALE_FACTOR:I = 0x5

.field static final PRELOAD_ICON_TOKEN:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "Launcher.IconCache"


# instance fields
.field private final mActivityBgColor:I

.field private final mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

.field private final mAssetPackCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            "Lnet/oneplus/h2launcher/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentLocale:Ljava/lang/String;

.field private final mCustomIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            "Lnet/oneplus/h2launcher/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mDynamicIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            "Lnet/oneplus/h2launcher/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconDpi:I

.field private mIconUpdateTask:Ljava/lang/Runnable;

.field private final mLauncherApps:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

.field private mLowResBitmap:Landroid/graphics/Bitmap;

.field private mLowResCanvas:Landroid/graphics/Canvas;

.field private final mLowResOptions:Landroid/graphics/BitmapFactory$Options;

.field private mLowResPaint:Landroid/graphics/Paint;

.field final mMainThreadExecutor:Lnet/oneplus/h2launcher/MainThreadExecutor;

.field private final mOriginalCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            "Lnet/oneplus/h2launcher/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageBgColor:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

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
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/IconCache;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/IconCache;->PRELOAD_ICON_TOKEN:Ljava/lang/Object;

    .line 131
    new-instance v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/IconCache$CacheEntry;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/IconCache;->EMPTY_ENTRY:Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/InvariantDeviceProfile;Lnet/oneplus/h2launcher/AssetCache;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inv"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .param p3, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    const/16 v1, 0x32

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mPreloadTaskQueue:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    .line 101
    new-instance v0, Lnet/oneplus/h2launcher/MainThreadExecutor;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mMainThreadExecutor:Lnet/oneplus/h2launcher/MainThreadExecutor;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mOriginalCache:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetPackCache:Ljava/util/HashMap;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mCustomIconCache:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mDynamicIconCache:Ljava/util/HashMap;

    .line 136
    iput-object p3, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 137
    iput-object p1, p0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 139
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    .line 140
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mLauncherApps:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    .line 141
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/IconCache;->updateCurrentLocale()V

    .line 143
    iget v0, p2, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->fillResIconDpi:I

    iput v0, p0, Lnet/oneplus/h2launcher/IconCache;->mIconDpi:I

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lnet/oneplus/h2launcher/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mWorkerHandler:Landroid/os/Handler;

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e029d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/IconCache;->mActivityBgColor:I

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e029e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/IconCache;->mPackageBgColor:I

    .line 149
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mLowResOptions:Landroid/graphics/BitmapFactory$Options;

    .line 152
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mLowResOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/IconCache;)Lnet/oneplus/h2launcher/AssetCache;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/IconCache;

    .prologue
    .line 75
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/IconCache;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/IconCache;

    .prologue
    .line 75
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mPreloadTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lnet/oneplus/h2launcher/IconCache;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/IconCache;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 75
    iput-object p1, p0, Lnet/oneplus/h2launcher/IconCache;->mPreloadTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/IconCache;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/IconCache;

    .prologue
    .line 75
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mPreloadTaskQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/IconCache;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/IconCache;

    .prologue
    .line 75
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/IconCache;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/IconCache;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/IconCache;->needReloadAssetPack(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/IconCache;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/IconCache;

    .prologue
    .line 75
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mIconUpdateTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lnet/oneplus/h2launcher/IconCache;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/IconCache;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 75
    iput-object p1, p0, Lnet/oneplus/h2launcher/IconCache;->mIconUpdateTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method private addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/pm/PackageInfo;J)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "key"    # Landroid/content/ComponentName;
    .param p3, "assetPackName"    # Ljava/lang/String;
    .param p4, "info"    # Landroid/content/pm/PackageInfo;
    .param p5, "userSerial"    # J

    .prologue
    .line 642
    const-string v1, "componentName"

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v1, "profileId"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 644
    const-string v1, "lastUpdated"

    iget-wide v2, p4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 645
    const-string v1, "version"

    iget v2, p4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    const-string v1, "assetPackName"

    invoke-virtual {p1, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/4 v0, 0x2

    .line 648
    .local v0, "iconType":I
    const-string v1, "custom"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    const/4 v0, 0x3

    .line 655
    :cond_0
    :goto_0
    const-string v1, "iconType"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 656
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 657
    return-void

    .line 650
    :cond_1
    const-string v1, "none"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 651
    const/4 v0, 0x0

    goto :goto_0

    .line 652
    :cond_2
    const-string v1, "dynamic"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "info"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p4, "assetPackName"    # Ljava/lang/String;
    .param p5, "usePackageIcon"    # Z
    .param p6, "useLowResIcon"    # Z

    .prologue
    .line 1031
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v0

    return-object v0
.end method

.method private cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    .locals 33
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "info"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p4, "assetPackName"    # Ljava/lang/String;
    .param p5, "usePackageIcon"    # Z
    .param p6, "useLowResIcon"    # Z
    .param p7, "ignoreCache"    # Z

    .prologue
    .line 1037
    const-string v5, "AssetPack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cacheLocked componentName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", assetPack = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ignoreCache = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    new-instance v25, Lnet/oneplus/h2launcher/util/ComponentKey;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 1039
    .local v25, "cacheKey":Lnet/oneplus/h2launcher/util/ComponentKey;
    const/16 v27, 0x0

    .line 1041
    .local v27, "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    const-string v5, "custom"

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1042
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mCustomIconCache:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    check-cast v27, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .line 1059
    .restart local v27    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    :cond_0
    :goto_0
    if-nez p7, :cond_1

    if-eqz v27, :cond_1

    move-object/from16 v0, v27

    iget-boolean v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->isLowResIcon:Z

    if-eqz v5, :cond_1e

    if-nez p6, :cond_1e

    .line 1060
    :cond_1
    new-instance v27, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .end local v27    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    invoke-direct/range {v27 .. v27}, Lnet/oneplus/h2launcher/IconCache$CacheEntry;-><init>()V

    .line 1063
    .restart local v27    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    const/16 v29, 0x0

    .line 1064
    .local v29, "hasCache":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p4

    move-object/from16 v3, v27

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/oneplus/h2launcher/IconCache;->getEntryFromDB(Lnet/oneplus/h2launcher/util/ComponentKey;Ljava/lang/String;Lnet/oneplus/h2launcher/IconCache$CacheEntry;Z)Z

    move-result v29

    .line 1065
    const-string v5, "AssetPack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cacheLocked componentName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", assetPackName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getEntryFromDB = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    if-nez v29, :cond_13

    .line 1068
    const-string v5, "custom"

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1069
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mCustomIconCache:Ljava/util/HashMap;

    sget-object v6, Lnet/oneplus/h2launcher/IconCache;->EMPTY_ENTRY:Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    const-string v5, "AssetPack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cacheLocked componentName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " no custom icon "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const/4 v5, 0x0

    .line 1228
    .end local v29    # "hasCache":Z
    :goto_1
    return-object v5

    .line 1043
    :cond_2
    const-string v5, "none"

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1044
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mOriginalCache:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    check-cast v27, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .restart local v27    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    goto/16 :goto_0

    .line 1045
    :cond_3
    const-string v5, "dynamic"

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1046
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/oos/StyleManager;->showDynamicIcon()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->isDynamicIcon(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1047
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mDynamicIconCache:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    check-cast v27, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .restart local v27    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    goto/16 :goto_0

    .line 1049
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 1051
    :cond_5
    const-string v5, "SYSTEM_DEFAULT_ICONS"

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1052
    const/4 v5, 0x0

    goto :goto_1

    .line 1053
    :cond_6
    if-eqz p4, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1054
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mAssetPackCache:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    check-cast v27, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .restart local v27    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    goto/16 :goto_0

    .line 1055
    :cond_7
    if-nez p4, :cond_0

    .line 1056
    const/4 v5, 0x0

    goto :goto_1

    .line 1072
    .restart local v29    # "hasCache":Z
    :cond_8
    const-string v5, "dynamic"

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1073
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1074
    :cond_9
    if-eqz p2, :cond_12

    .line 1075
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    .line 1076
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1075
    move-object/from16 v0, p3

    invoke-static {v5, v0, v6, v7}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getCustomLabelForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 1077
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mCurrentLocale:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->locale:Ljava/lang/String;

    .line 1080
    const/16 v30, 0x0

    .line 1081
    .local v30, "iconPackHelper":Lnet/oneplus/h2launcher/IconPackHelper;
    const-string v5, "none"

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1082
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/AssetCache;->loadAssetPack(Ljava/lang/String;)Lnet/oneplus/h2launcher/IconPackHelper;

    move-result-object v30

    .line 1083
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/IconCache;->mIconDpi:I

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v5, v6}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getIconFromIconPack(Lnet/oneplus/h2launcher/IconPackHelper;Landroid/content/Context;I)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;

    move-result-object v8

    .line 1084
    .local v8, "icon":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
    const-string v5, "AssetPack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cacheLocked componentName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " icon from iconPack "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :goto_2
    if-eqz v8, :cond_f

    .line 1091
    if-eqz v30, :cond_e

    invoke-virtual/range {v30 .. v30}, Lnet/oneplus/h2launcher/IconPackHelper;->isIconPackLoaded()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1092
    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/IconCache;->mIconDpi:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/IconPackHelper;->getIconBackLayerDrawable(I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v10

    .line 1093
    .local v10, "iconBackLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/IconCache;->mIconDpi:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/IconPackHelper;->getIconUponLayerDrawable(I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v12

    .line 1094
    .local v12, "iconUponLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/IconCache;->mIconDpi:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/IconPackHelper;->getIconMaskLayerDrawable(I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v11

    .line 1096
    .local v11, "iconMaskLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual/range {v30 .. v30}, Lnet/oneplus/h2launcher/IconPackHelper;->getIconScale()F

    move-result v13

    .line 1097
    .local v13, "iconScale":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    .line 1098
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v14, p4

    .line 1097
    invoke-direct/range {v5 .. v14}, Lnet/oneplus/h2launcher/IconCache;->createIconBitmap(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;Landroid/content/res/Resources;Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/drawable/LayerDrawable;FLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 1135
    .end local v8    # "icon":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
    .end local v10    # "iconBackLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v11    # "iconMaskLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v12    # "iconUponLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v13    # "iconScale":F
    .end local v30    # "iconPackHelper":Lnet/oneplus/h2launcher/IconPackHelper;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/IconCache;->checkAndResizeIcon(Lnet/oneplus/h2launcher/IconCache$CacheEntry;)V

    .line 1151
    :goto_4
    move-object/from16 v0, v27

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v5, :cond_b

    const-string v5, "none"

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1154
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/IconCache;->getDefaultIcon(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 1155
    const-string v5, "AssetPack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cacheLock "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getDefaultIcon  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    iget-object v7, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    :cond_b
    move-object/from16 v0, v27

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v5, :cond_16

    .line 1159
    const-string v5, "none"

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 1160
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1161
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mAssetPackCache:Ljava/util/HashMap;

    sget-object v6, Lnet/oneplus/h2launcher/IconCache;->EMPTY_ENTRY:Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1086
    .restart local v30    # "iconPackHelper":Lnet/oneplus/h2launcher/IconPackHelper;
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/IconCache;->mIconDpi:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getIconFromPackage(Landroid/content/Context;I)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;

    move-result-object v8

    .line 1087
    .restart local v8    # "icon":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
    const-string v5, "AssetPack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cacheLocked componentName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " icon from packageManager"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1102
    :cond_e
    const-string v5, "none"

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1103
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    .line 1104
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p3

    move-object/from16 v17, v8

    move-object/from16 v23, p4

    .line 1103
    invoke-direct/range {v14 .. v23}, Lnet/oneplus/h2launcher/IconCache;->createIconBitmap(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;Landroid/content/res/Resources;Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/drawable/LayerDrawable;FLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 1108
    :cond_f
    const-string v5, "none"

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1109
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/IconCache;->mIconDpi:I

    .line 1110
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v5, v6, v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    .line 1109
    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 1113
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1114
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mAssetPackCache:Ljava/util/HashMap;

    sget-object v6, Lnet/oneplus/h2launcher/IconCache;->EMPTY_ENTRY:Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1120
    .end local v8    # "icon":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
    .end local v30    # "iconPackHelper":Lnet/oneplus/h2launcher/IconPackHelper;
    :cond_12
    if-eqz p5, :cond_a

    const-string v5, "none"

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1122
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "none"

    const/4 v7, 0x0

    .line 1121
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1, v6, v7}, Lnet/oneplus/h2launcher/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Z)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v31

    .line 1123
    .local v31, "packageEntry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    if-eqz v31, :cond_a

    .line 1126
    move-object/from16 v0, v31

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 1127
    move-object/from16 v0, v31

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 1128
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mCurrentLocale:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->locale:Ljava/lang/String;

    .line 1129
    move-object/from16 v0, v31

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 1137
    .end local v31    # "packageEntry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    :cond_13
    if-eqz p2, :cond_14

    .line 1138
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    .line 1139
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1138
    move-object/from16 v0, p3

    invoke-static {v5, v0, v6, v7}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getCustomLabelForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 1141
    :cond_14
    move-object/from16 v0, v27

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    if-nez v5, :cond_15

    .line 1142
    const-string v5, ""

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 1143
    const-string v5, ""

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 1148
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mCurrentLocale:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->locale:Ljava/lang/String;

    goto/16 :goto_4

    .line 1145
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-object/from16 v0, v27

    iget-object v6, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, v25

    iget-object v7, v0, Lnet/oneplus/h2launcher/util/ComponentKey;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v5, v6, v7}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_5

    .line 1167
    :cond_16
    move-object/from16 v0, v27

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v5, :cond_18

    .line 1168
    const-string v5, "none"

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 1169
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1170
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mAssetPackCache:Ljava/util/HashMap;

    sget-object v6, Lnet/oneplus/h2launcher/IconCache;->EMPTY_ENTRY:Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1176
    :cond_18
    if-eqz p2, :cond_19

    .line 1178
    move-object/from16 v0, v27

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    if-nez v5, :cond_19

    .line 1179
    invoke-virtual/range {p2 .. p2}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 1180
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-object/from16 v0, v27

    iget-object v6, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p3

    invoke-virtual {v5, v6, v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 1181
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mCurrentLocale:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->locale:Ljava/lang/String;

    .line 1184
    :cond_19
    const-string v5, "custom"

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1185
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mCustomIconCache:Ljava/util/HashMap;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    .end local v29    # "hasCache":Z
    :cond_1a
    :goto_6
    sget-object v5, Lnet/oneplus/h2launcher/IconCache;->EMPTY_ENTRY:Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1225
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1186
    .restart local v29    # "hasCache":Z
    :cond_1b
    const-string v5, "none"

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1187
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mOriginalCache:Ljava/util/HashMap;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1188
    :cond_1c
    const-string v5, "dynamic"

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1189
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mDynamicIconCache:Ljava/util/HashMap;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1190
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1191
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mAssetPackCache:Ljava/util/HashMap;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1193
    .end local v29    # "hasCache":Z
    :cond_1e
    sget-object v5, Lnet/oneplus/h2launcher/IconCache;->EMPTY_ENTRY:Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mCurrentLocale:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v6, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->locale:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 1194
    if-eqz p2, :cond_1f

    .line 1195
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    .line 1196
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1195
    move-object/from16 v0, p3

    invoke-static {v5, v0, v6, v7}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getCustomLabelForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 1197
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mCurrentLocale:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->locale:Ljava/lang/String;

    .line 1198
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    .line 1199
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-object/from16 v0, v27

    iget-object v9, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 1200
    move-object/from16 v0, p3

    invoke-virtual {v7, v9, v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1198
    move-object/from16 v0, p3

    invoke-static {v5, v0, v6, v7}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getCustomLabelForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 1202
    :cond_1f
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    const/16 v28, 0x0

    .line 1205
    .local v28, "flags":I
    :goto_7
    const/16 v32, 0x0

    .line 1207
    .local v32, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v5, v6, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v32

    .line 1208
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    .line 1209
    .local v24, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v24, :cond_1a

    .line 1210
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    .line 1211
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1212
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1210
    move-object/from16 v0, p3

    invoke-static {v5, v0, v6, v7}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getCustomLabelForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 1213
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    .line 1214
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-object/from16 v0, v27

    iget-object v9, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 1215
    move-object/from16 v0, p3

    invoke-virtual {v7, v9, v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1213
    move-object/from16 v0, p3

    invoke-static {v5, v0, v6, v7}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getCustomLabelForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 1216
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mCurrentLocale:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v5, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->locale:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 1218
    .end local v24    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v26

    .line 1219
    .local v26, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_6

    .line 1202
    .end local v26    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v28    # "flags":I
    .end local v32    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_20
    const/16 v28, 0x2000

    goto :goto_7

    :cond_21
    move-object/from16 v5, v27

    .line 1228
    goto/16 :goto_1
.end method

.method public static checkAndResizeIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1323
    if-nez p0, :cond_1

    .line 1324
    const-string v14, "Launcher.IconCache"

    const-string v15, "[checkAndResizeIcon] entry corrupt."

    invoke-static {v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    const/16 p0, 0x0

    .line 1357
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    .local v3, "height":I
    .local v13, "width":I
    :cond_0
    :goto_0
    return-object p0

    .line 1328
    .end local v3    # "height":I
    .end local v13    # "width":I
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1329
    .restart local v3    # "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 1330
    .restart local v13    # "width":I
    if-ltz v13, :cond_2

    if-gez v3, :cond_3

    .line 1331
    :cond_2
    const-string v14, "Launcher.IconCache"

    const-string v15, "[checkAndResizeIcon] icon size < 0."

    invoke-static {v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    const/16 p0, 0x0

    goto :goto_0

    .line 1335
    :cond_3
    const-wide v10, 0x3fb5555555555555L    # 0.08333333333333333

    .line 1336
    .local v10, "standardRatio":D
    int-to-double v14, v13

    const-wide v16, 0x3fb5555555555555L    # 0.08333333333333333

    mul-double v14, v14, v16

    double-to-int v12, v14

    .line 1337
    .local v12, "targetPaddingPx":I
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lnet/oneplus/h2launcher/Utilities;->getIconPaddingPx(Landroid/graphics/Bitmap;I)I

    move-result v4

    .line 1338
    .local v4, "paddingPx":I
    if-ltz v4, :cond_0

    .line 1342
    int-to-double v14, v4

    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v6, v14, v16

    .line 1343
    .local v6, "ratio":D
    const-wide v14, 0x3fb5555555555555L    # 0.08333333333333333

    cmpl-double v14, v6, v14

    if-gez v14, :cond_0

    if-ge v4, v12, :cond_0

    .line 1348
    sub-int v14, v12, v4

    mul-int/lit8 v14, v14, 0x2

    sub-int v9, v13, v14

    .line 1349
    .local v9, "targetIconSize":I
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v9, v9, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1352
    .local v5, "resizedBitmap":Landroid/graphics/Bitmap;
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v3, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1353
    .local v8, "result":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1354
    .local v2, "can":Landroid/graphics/Canvas;
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1355
    sub-int v14, v12, v4

    int-to-float v14, v14

    sub-int v15, v12, v4

    int-to-float v15, v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v5, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1356
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 p0, v8

    .line 1357
    goto :goto_0
.end method

.method private checkAndResizeIcon(Lnet/oneplus/h2launcher/IconCache$CacheEntry;)V
    .locals 3
    .param p1, "entry"    # Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .prologue
    .line 1307
    if-eqz p1, :cond_0

    iget-object v1, p1, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 1308
    :cond_0
    const-string v1, "Launcher.IconCache"

    const-string v2, "[checkAndResizeIcon] entry corrupt."

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    :cond_1
    :goto_0
    return-void

    .line 1312
    :cond_2
    iget-object v1, p1, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lnet/oneplus/h2launcher/IconCache;->checkAndResizeIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1313
    .local v0, "result":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 1314
    iput-object v0, p1, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private createIconBitmap(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;Landroid/content/res/Resources;Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/drawable/LayerDrawable;FLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 22
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "drawableSource"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "iconBack"    # Landroid/graphics/drawable/LayerDrawable;
    .param p6, "iconMask"    # Landroid/graphics/drawable/LayerDrawable;
    .param p7, "iconUpon"    # Landroid/graphics/drawable/LayerDrawable;
    .param p8, "scale"    # F
    .param p9, "assetPackName"    # Ljava/lang/String;

    .prologue
    .line 1749
    invoke-virtual/range {p3 .. p3}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1750
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 1752
    .local v12, "iconSize":I
    if-gtz v12, :cond_0

    const/16 v19, 0x0

    .line 1848
    :goto_0
    return-object v19

    .line 1754
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    .line 1756
    .local v8, "component":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;->isSystemDefault()Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "none"

    move-object/from16 v0, v19

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "custom"

    .line 1757
    move-object/from16 v0, v19

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "dynamic"

    .line 1758
    move-object/from16 v0, v19

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1760
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-object/from16 v19, v0

    .line 1761
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 1760
    invoke-static/range {v19 .. v20}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v19

    goto :goto_0

    .line 1764
    :cond_2
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7}, Landroid/graphics/Canvas;-><init>()V

    .line 1765
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v19, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v20, 0x1

    const/16 v21, 0x2

    invoke-direct/range {v19 .. v21}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1768
    const/16 v18, 0x0

    .local v18, "width":I
    const/4 v10, 0x0

    .line 1769
    .local v10, "height":I
    instance-of v0, v11, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object v15, v11

    .line 1770
    check-cast v15, Landroid/graphics/drawable/PaintDrawable;

    .line 1771
    .local v15, "painter":Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v15, v12}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 1772
    invoke-virtual {v15, v12}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 1775
    move/from16 v18, v12

    .line 1776
    move v10, v12

    .line 1800
    .end local v15    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_3
    :goto_1
    if-lez v18, :cond_4

    if-gtz v10, :cond_9

    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    .line 1777
    :cond_5
    instance-of v0, v11, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object v6, v11

    .line 1779
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 1780
    .local v6, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1781
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v19

    if-nez v19, :cond_6

    .line 1782
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 1784
    :cond_6
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 1789
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    mul-int/lit8 v20, v12, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    mul-int/lit8 v20, v12, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 1790
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 1791
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    goto :goto_1

    .line 1793
    :cond_7
    move/from16 v18, v12

    .line 1794
    move v10, v12

    goto :goto_1

    .line 1796
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_8
    instance-of v0, v11, Landroid/graphics/drawable/VectorDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 1797
    move v10, v12

    move/from16 v18, v12

    goto :goto_1

    .line 1802
    :cond_9
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1803
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1805
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 1806
    .local v14, "oldBounds":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1807
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v11, v0, v1, v2, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1808
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 1811
    invoke-virtual/range {p3 .. p3}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;->isSystemDefault()Z

    move-result v16

    .line 1812
    .local v16, "systemDefaultIcon":Z
    if-eqz v16, :cond_a

    .line 1813
    div-int/lit8 v19, v18, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-int/lit8 v20, v10, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, p8

    move/from16 v1, p8

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1816
    :cond_a
    invoke-virtual {v11, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1817
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 1820
    if-eqz p6, :cond_b

    .line 1821
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/IconCache;->layerDrawableToBitmap(Landroid/graphics/drawable/LayerDrawable;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-direct {v13, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1822
    .local v13, "mask":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v19, v13

    .line 1823
    check-cast v19, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v19

    new-instance v20, Landroid/graphics/PorterDuffXfermode;

    sget-object v21, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v20 .. v21}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1825
    invoke-virtual {v13, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1830
    .end local v13    # "mask":Landroid/graphics/drawable/Drawable;
    :cond_b
    if-eqz p5, :cond_c

    .line 1831
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/IconCache;->layerDrawableToBitmap(Landroid/graphics/drawable/LayerDrawable;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1832
    .local v4, "back":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v19, v4

    .line 1833
    check-cast v19, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v19

    new-instance v20, Landroid/graphics/PorterDuffXfermode;

    sget-object v21, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v20 .. v21}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1835
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1838
    .end local v4    # "back":Landroid/graphics/drawable/Drawable;
    :cond_c
    if-eqz p7, :cond_d

    .line 1839
    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/IconCache;->layerDrawableToBitmap(Landroid/graphics/drawable/LayerDrawable;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1840
    .local v17, "upon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1841
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1844
    .end local v17    # "upon":Landroid/graphics/drawable/Drawable;
    :cond_d
    invoke-virtual {v11, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1845
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getDensity()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1846
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1848
    .local v9, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-object/from16 v19, v0

    .line 1849
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v9, v1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 1848
    invoke-static/range {v19 .. v20}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v19

    goto/16 :goto_0
.end method

.method private getEntryForPackageLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Z)Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "assetPackName"    # Ljava/lang/String;
    .param p4, "useLowResIcon"    # Z

    .prologue
    .line 1396
    invoke-static/range {p1 .. p2}, Lnet/oneplus/h2launcher/IconCache;->getPackageKey(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/util/ComponentKey;

    move-result-object v12

    .line 1398
    .local v12, "cacheKey":Lnet/oneplus/h2launcher/util/ComponentKey;
    const/4 v15, 0x0

    .line 1399
    .local v15, "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    const-string v5, "custom"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1400
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mCustomIconCache:Ljava/util/HashMap;

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    check-cast v15, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .line 1413
    .restart local v15    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    :cond_0
    :goto_0
    if-eqz v15, :cond_1

    iget-boolean v5, v15, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->isLowResIcon:Z

    if-eqz v5, :cond_c

    if-nez p4, :cond_c

    .line 1414
    :cond_1
    new-instance v15, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .end local v15    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    invoke-direct {v15}, Lnet/oneplus/h2launcher/IconCache$CacheEntry;-><init>()V

    .line 1415
    .restart local v15    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    const/16 v16, 0x1

    .line 1419
    .local v16, "entryUpdated":Z
    :try_start_0
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v17, 0x0

    .line 1422
    .local v17, "flags":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 1423
    .local v9, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1424
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_9

    .line 1425
    new-instance v5, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v7, "ApplicationInfo is null"

    invoke-direct {v5, v7}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1447
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "info":Landroid/content/pm/PackageInfo;
    .end local v17    # "flags":I
    :catch_0
    move-exception v14

    .line 1449
    .local v14, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v16, 0x0

    .line 1453
    .end local v14    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    if-eqz v16, :cond_2

    const-string v5, "none"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1454
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mOriginalCache:Ljava/util/HashMap;

    invoke-virtual {v5, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v16    # "entryUpdated":Z
    :cond_2
    :goto_3
    move-object v5, v15

    .line 1473
    :goto_4
    return-object v5

    .line 1401
    :cond_3
    const-string v5, "none"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1402
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mOriginalCache:Ljava/util/HashMap;

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    check-cast v15, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .restart local v15    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    goto :goto_0

    .line 1403
    :cond_4
    const-string v5, "dynamic"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1404
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mDynamicIconCache:Ljava/util/HashMap;

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    check-cast v15, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .restart local v15    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    goto :goto_0

    .line 1405
    :cond_5
    const-string v5, "SYSTEM_DEFAULT_ICONS"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1406
    const/4 v5, 0x0

    goto :goto_4

    .line 1407
    :cond_6
    if-eqz p3, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1408
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mAssetPackCache:Ljava/util/HashMap;

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    check-cast v15, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .restart local v15    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    goto/16 :goto_0

    .line 1409
    :cond_7
    if-nez p3, :cond_0

    .line 1410
    const/4 v5, 0x0

    goto :goto_4

    .line 1419
    .restart local v16    # "entryUpdated":Z
    :cond_8
    const/16 v17, 0x2000

    goto/16 :goto_1

    .line 1427
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "info":Landroid/content/pm/PackageInfo;
    .restart local v17    # "flags":I
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v12, v1, v15, v2}, Lnet/oneplus/h2launcher/IconCache;->getEntryFromDB(Lnet/oneplus/h2launcher/util/ComponentKey;Ljava/lang/String;Lnet/oneplus/h2launcher/IconCache$CacheEntry;Z)Z

    move-result v5

    if-nez v5, :cond_b

    .line 1428
    const-string v5, "none"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1429
    const/4 v5, 0x0

    goto :goto_4

    .line 1431
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1432
    invoke-virtual {v4, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1431
    move-object/from16 v0, p2

    invoke-virtual {v5, v7, v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 1433
    .local v13, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v15, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 1434
    const/4 v5, 0x0

    iput-boolean v5, v15, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->isLowResIcon:Z

    .line 1435
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lnet/oneplus/h2launcher/IconCache;->checkAndResizeIcon(Lnet/oneplus/h2launcher/IconCache$CacheEntry;)V

    .line 1439
    iget-object v5, v15, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v7, v0, Lnet/oneplus/h2launcher/IconCache;->mPackageBgColor:I

    .line 1440
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7}, Lnet/oneplus/h2launcher/IconCache;->newContentValues(Landroid/graphics/Bitmap;I)Landroid/content/ContentValues;

    move-result-object v6

    .line 1441
    .local v6, "values":Landroid/content/ContentValues;
    iget-object v7, v12, Lnet/oneplus/h2launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    .line 1442
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v10

    move-object/from16 v5, p0

    move-object/from16 v8, p3

    .line 1441
    invoke-direct/range {v5 .. v11}, Lnet/oneplus/h2launcher/IconCache;->addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/pm/PackageInfo;J)V

    .line 1444
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v13    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v15, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 1445
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    iget-object v7, v15, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    invoke-virtual {v5, v7, v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v15, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 1446
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mCurrentLocale:Ljava/lang/String;

    iput-object v5, v15, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->locale:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1456
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "info":Landroid/content/pm/PackageInfo;
    .end local v16    # "entryUpdated":Z
    .end local v17    # "flags":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mCurrentLocale:Ljava/lang/String;

    iget-object v7, v15, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->locale:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1458
    :try_start_2
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v17, 0x0

    .line 1461
    .restart local v17    # "flags":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 1462
    .restart local v9    # "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1463
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_e

    .line 1464
    new-instance v5, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v7, "ApplicationInfo is null"

    invoke-direct {v5, v7}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1469
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "info":Landroid/content/pm/PackageInfo;
    .end local v17    # "flags":I
    :catch_1
    move-exception v5

    goto/16 :goto_3

    .line 1458
    :cond_d
    const/16 v17, 0x2000

    goto :goto_5

    .line 1466
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "info":Landroid/content/pm/PackageInfo;
    .restart local v17    # "flags":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v15, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 1467
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mCurrentLocale:Ljava/lang/String;

    iput-object v5, v15, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->locale:Ljava/lang/String;

    .line 1468
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    iget-object v7, v15, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    invoke-virtual {v5, v7, v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v15, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3
.end method

.method private getEntryFromDB(Lnet/oneplus/h2launcher/util/ComponentKey;Ljava/lang/String;Lnet/oneplus/h2launcher/IconCache$CacheEntry;Z)Z
    .locals 14
    .param p1, "cacheKey"    # Lnet/oneplus/h2launcher/util/ComponentKey;
    .param p2, "assetPackName"    # Ljava/lang/String;
    .param p3, "entry"    # Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    .param p4, "lowRes"    # Z

    .prologue
    .line 1508
    if-eqz p2, :cond_0

    const-string v2, "SYSTEM_DEFAULT_ICONS"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1509
    :cond_0
    const/4 v10, 0x0

    .line 1531
    :cond_1
    :goto_0
    return v10

    .line 1511
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz p4, :cond_4

    const-string v5, "icon_low_res"

    :goto_1
    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string v6, "assetPackName"

    aput-object v6, v4, v5

    const-string v5, "componentName = ? AND profileId = ? AND assetPackName = ? "

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p1, Lnet/oneplus/h2launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 1515
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    iget-object v11, p1, Lnet/oneplus/h2launcher/util/ComponentKey;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 1516
    invoke-virtual {v8, v11}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1511
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 1518
    .local v9, "c":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 1520
    .local v10, "result":Z
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1521
    const/4 v3, 0x0

    if-eqz p4, :cond_5

    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mLowResOptions:Landroid/graphics/BitmapFactory$Options;

    :goto_2
    invoke-static {v9, v3, v2}, Lnet/oneplus/h2launcher/IconCache;->loadIconNoResize(Landroid/database/Cursor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 1522
    move/from16 v0, p4

    move-object/from16 v1, p3

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->isLowResIcon:Z

    .line 1523
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    iput-object v0, v1, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->assetPackName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1524
    const/4 v10, 0x1

    .line 1527
    :cond_3
    if-eqz v9, :cond_1

    .line 1528
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1511
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "result":Z
    :cond_4
    const-string v5, "icon"

    goto :goto_1

    .line 1521
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v10    # "result":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 1527
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_6

    .line 1528
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method private getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 194
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 200
    :try_start_0
    iget v2, p0, Lnet/oneplus/h2launcher/IconCache;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 205
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 205
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method private getNonNullIcon(Lnet/oneplus/h2launcher/IconCache$CacheEntry;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "entry"    # Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 774
    iget-object v0, p1, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/IconCache;->getDefaultIcon(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private static getPackageKey(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/util/ComponentKey;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 1386
    new-instance v0, Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Lnet/oneplus/h2launcher/util/ComponentKey;

    invoke-direct {v1, v0, p1}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    return-object v1
.end method

.method private static loadIconNoResize(Landroid/database/Cursor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "iconIndex"    # I
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 1736
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1738
    .local v0, "data":[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1742
    :goto_0
    return-object v2

    .line 1739
    :catch_0
    move-exception v1

    .line 1740
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AssetPack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadIconNoResize error message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1742
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeDefaultIcon(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 242
    invoke-direct {p0}, Lnet/oneplus/h2launcher/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 243
    .local v3, "unbadged":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    invoke-virtual {v4, v3, p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 244
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 245
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 244
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 247
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 248
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 249
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 250
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 251
    return-object v0
.end method

.method private needReloadAssetPack(Ljava/lang/String;)Z
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 468
    const-string v0, "SYSTEM_DEFAULT_ICONS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v12

    .line 490
    :goto_0
    return v0

    .line 471
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/IconProvider;->ASSET_PACK_URI:Landroid/net/Uri;

    const-string v3, "assetPackName = ?"

    new-array v4, v13, [Ljava/lang/String;

    aput-object p1, v4, v12

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 473
    .local v6, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 475
    .local v8, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 480
    :goto_1
    if-nez v8, :cond_1

    move v0, v12

    .line 481
    goto :goto_0

    .line 477
    :catch_0
    move-exception v7

    .line 478
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 482
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 483
    const-string v0, "version"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 484
    .local v9, "version":I
    const-string v0, "lastUpdated"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 485
    .local v10, "lastUpdateTime":J
    iget v0, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    if-gt v0, v9, :cond_2

    iget-wide v0, v8, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_3

    :cond_2
    move v0, v13

    .line 486
    goto :goto_0

    :cond_3
    move v0, v12

    .line 488
    goto :goto_0

    .end local v9    # "version":I
    .end local v10    # "lastUpdateTime":J
    :cond_4
    move v0, v13

    .line 490
    goto :goto_0
.end method

.method private newContentValues(Landroid/graphics/Bitmap;I)Landroid/content/ContentValues;
    .locals 8
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "lowResBackgroundColor"    # I

    .prologue
    .line 1709
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1710
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "icon"

    invoke-static {p1}, Lnet/oneplus/h2launcher/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1712
    if-nez p2, :cond_0

    .line 1713
    const-string v1, "icon_low_res"

    .line 1715
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    .line 1716
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x5

    const/4 v4, 0x1

    .line 1714
    invoke-static {p1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1713
    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1732
    :goto_0
    return-object v0

    .line 1718
    :cond_0
    monitor-enter p0

    .line 1719
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconCache;->mLowResBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 1720
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    .line 1721
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 1720
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/IconCache;->mLowResBitmap:Landroid/graphics/Bitmap;

    .line 1722
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mLowResBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/IconCache;->mLowResCanvas:Landroid/graphics/Canvas;

    .line 1723
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/IconCache;->mLowResPaint:Landroid/graphics/Paint;

    .line 1725
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconCache;->mLowResCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1726
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconCache;->mLowResCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lnet/oneplus/h2launcher/IconCache;->mLowResBitmap:Landroid/graphics/Bitmap;

    .line 1727
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lnet/oneplus/h2launcher/IconCache;->mLowResBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lnet/oneplus/h2launcher/IconCache;->mLowResPaint:Landroid/graphics/Paint;

    .line 1726
    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1729
    const-string v1, "icon_low_res"

    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mLowResBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1730
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeFromMemCacheLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/HashMap;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            "Lnet/oneplus/h2launcher/IconCache$CacheEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p3, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Lnet/oneplus/h2launcher/util/ComponentKey;Lnet/oneplus/h2launcher/IconCache$CacheEntry;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 296
    .local v1, "forDeletion":Ljava/util/HashSet;, "Ljava/util/HashSet<Lnet/oneplus/h2launcher/util/ComponentKey;>;"
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/util/ComponentKey;

    .line 297
    .local v2, "key":Lnet/oneplus/h2launcher/util/ComponentKey;
    iget-object v4, v2, Lnet/oneplus/h2launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lnet/oneplus/h2launcher/util/ComponentKey;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 298
    invoke-virtual {v4, p2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    .end local v2    # "key":Lnet/oneplus/h2launcher/util/ComponentKey;
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/util/ComponentKey;

    .line 303
    .local v0, "condemned":Lnet/oneplus/h2launcher/util/ComponentKey;
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 305
    .end local v0    # "condemned":Lnet/oneplus/h2launcher/util/ComponentKey;
    :cond_2
    return-void
.end method

.method private updateDBIcons(Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/List;Ljava/util/Set;)V
    .locals 29
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p2, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    .local p3, "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v24

    .line 551
    .local v24, "userSerial":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 552
    .local v20, "pm":Landroid/content/pm/PackageManager;
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 553
    .local v19, "pkgInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    const/16 v3, 0x2000

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageInfo;

    .line 554
    .local v17, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 557
    .end local v17    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 558
    .local v13, "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 559
    .local v9, "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    invoke-virtual {v9}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v13, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 562
    .end local v9    # "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "rowid"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "componentName"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "lastUpdated"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "version"

    aput-object v6, v4, v5

    const-string v5, "profileId = ? AND assetPackName = ? AND iconType = ? "

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/16 v27, 0x0

    .line 567
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v6, v27

    const/16 v27, 0x1

    const-string v28, "none"

    aput-object v28, v6, v27

    const/16 v27, 0x2

    const/16 v28, 0x0

    .line 568
    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v6, v27

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 562
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 571
    .local v10, "c":Landroid/database/Cursor;
    const-string v3, "componentName"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 572
    .local v14, "indexComponent":I
    const-string v3, "lastUpdated"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 573
    .local v15, "indexLastUpdate":I
    const-string v3, "version"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 574
    .local v16, "indexVersion":I
    const-string v3, "rowid"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 576
    .local v21, "rowIndex":I
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 577
    .local v18, "itemsToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/Stack;

    invoke-direct {v8}, Ljava/util/Stack;-><init>()V

    .line 579
    .local v8, "appsToUpdate":Ljava/util/Stack;, "Ljava/util/Stack<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    :cond_2
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 580
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 581
    .local v11, "cn":Ljava/lang/String;
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 582
    .local v12, "component":Landroid/content/ComponentName;
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageInfo;

    .line 583
    .restart local v17    # "info":Landroid/content/pm/PackageInfo;
    if-nez v17, :cond_3

    .line 584
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 585
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v1, v3}, Lnet/oneplus/h2launcher/IconCache;->remove(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V

    goto :goto_2

    .line 589
    :cond_3
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 594
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 595
    .local v22, "updateTime":J
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 596
    .local v26, "version":I
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 597
    .restart local v9    # "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    move-object/from16 v0, v17

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v0, v26

    if-ne v0, v3, :cond_4

    move-object/from16 v0, v17

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v3, v22, v4

    if-eqz v3, :cond_2

    .line 600
    :cond_4
    if-nez v9, :cond_5

    .line 601
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v1, v3}, Lnet/oneplus/h2launcher/IconCache;->remove(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V

    .line 602
    move/from16 v0, v21

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 604
    :cond_5
    invoke-virtual {v8, v9}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 607
    .end local v9    # "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .end local v11    # "cn":Ljava/lang/String;
    .end local v12    # "component":Landroid/content/ComponentName;
    .end local v17    # "info":Landroid/content/pm/PackageInfo;
    .end local v22    # "updateTime":J
    .end local v26    # "version":I
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 609
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    const-string v5, "rowid"

    .line 611
    move-object/from16 v0, v18

    invoke-static {v5, v0}, Lnet/oneplus/h2launcher/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 610
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 616
    :cond_7
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v8}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 617
    :cond_8
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 618
    .local v7, "appsToAdd":Ljava/util/Stack;, "Ljava/util/Stack<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 619
    new-instance v2, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;

    move-object/from16 v3, p0

    move-wide/from16 v4, v24

    move-object/from16 v6, v19

    invoke-direct/range {v2 .. v8}, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;-><init>(Lnet/oneplus/h2launcher/IconCache;JLjava/util/HashMap;Ljava/util/Stack;Ljava/util/Stack;)V

    .line 621
    .local v2, "task":Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;
    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/oneplus/h2launcher/IconCache;->mIconUpdateTask:Ljava/lang/Runnable;

    .line 622
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;->scheduleNext()V

    .line 624
    .end local v2    # "task":Lnet/oneplus/h2launcher/IconCache$SerializedIconUpdateTask;
    .end local v7    # "appsToAdd":Ljava/util/Stack;, "Ljava/util/Stack<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    :cond_9
    return-void
.end method


# virtual methods
.method addIconToDBAndMemCache(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/content/pm/PackageInfo;Ljava/lang/String;J)V
    .locals 8
    .param p1, "app"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p2, "info"    # Landroid/content/pm/PackageInfo;
    .param p3, "assetPackName"    # Ljava/lang/String;
    .param p4, "userSerial"    # J

    .prologue
    .line 630
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Lnet/oneplus/h2launcher/IconCache;->updateCacheAndGetContentValues(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object v2

    .line 631
    .local v2, "values":Landroid/content/ContentValues;
    if-eqz v2, :cond_0

    .line 632
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p0

    move-object v4, p3

    move-object v5, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lnet/oneplus/h2launcher/IconCache;->addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/pm/PackageInfo;J)V

    .line 634
    :cond_0
    return-void
.end method

.method public addPreloadAssetPackTask(Ljava/lang/String;)V
    .locals 13
    .param p1, "assetPackName"    # Ljava/lang/String;

    .prologue
    .line 433
    const-string v2, "SYSTEM_DEFAULT_ICONS"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v12

    .line 437
    .local v12, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    invoke-virtual {v2, v12}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v4

    .line 438
    .local v4, "userSerial":J
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 439
    .local v11, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 440
    .local v6, "pkgInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    const/16 v2, 0x2000

    invoke-virtual {v11, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    .line 441
    .local v10, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 443
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mLauncherApps:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v8

    .line 445
    .local v8, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 446
    .local v9, "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 447
    .local v0, "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v9, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 450
    .end local v0    # "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    :cond_3
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 451
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 452
    .local v7, "appsToAdd":Ljava/util/Stack;, "Ljava/util/Stack<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 453
    new-instance v1, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;-><init>(Lnet/oneplus/h2launcher/IconCache;Ljava/lang/String;JLjava/util/HashMap;Ljava/util/Stack;)V

    .line 455
    .local v1, "task":Lnet/oneplus/h2launcher/IconCache$PreloadIconTask;
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mPreloadTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mWorkerHandler:Landroid/os/Handler;

    new-instance v3, Lnet/oneplus/h2launcher/IconCache$2;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/IconCache$2;-><init>(Lnet/oneplus/h2launcher/IconCache;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public declared-synchronized cachePackageInstallInfo(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "icon"    # Landroid/graphics/Bitmap;
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1365
    monitor-enter p0

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, p1, p2, v2}, Lnet/oneplus/h2launcher/IconCache;->removeFromMemCacheLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V

    .line 1367
    invoke-static {p1, p2}, Lnet/oneplus/h2launcher/IconCache;->getPackageKey(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/util/ComponentKey;

    move-result-object v0

    .line 1368
    .local v0, "cacheKey":Lnet/oneplus/h2launcher/util/ComponentKey;
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mOriginalCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .line 1371
    .local v1, "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    if-nez v1, :cond_0

    .line 1372
    new-instance v1, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .end local v1    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    invoke-direct {v1}, Lnet/oneplus/h2launcher/IconCache$CacheEntry;-><init>()V

    .line 1373
    .restart local v1    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mOriginalCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1376
    iput-object p4, v1, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 1378
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mCurrentLocale:Ljava/lang/String;

    iput-object v2, v1, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->locale:Ljava/lang/String;

    .line 1379
    if-eqz p3, :cond_2

    .line 1380
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-static {p3, v2}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 1381
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/IconCache;->checkAndResizeIcon(Lnet/oneplus/h2launcher/IconCache$CacheEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    :cond_2
    monitor-exit p0

    return-void

    .line 1365
    .end local v0    # "cacheKey":Lnet/oneplus/h2launcher/util/ComponentKey;
    .end local v1    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized changeAssetPack()V
    .locals 1

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetPackCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    monitor-exit p0

    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkAndPreloadAllTask()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    const-class v1, Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/AssetCache;->isPreloadCache(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/IconCache$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/IconCache$1;-><init>(Lnet/oneplus/h2launcher/IconCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    :cond_0
    return-void
.end method

.method public containsDynamicIconCache(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 1287
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/oos/StyleManager;->showDynamicIcon()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->isDynamicIcon(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1288
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v1

    .line 1289
    .local v1, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    new-instance v0, Lnet/oneplus/h2launcher/util/ComponentKey;

    invoke-direct {v0, p1, v1}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 1290
    .local v0, "cacheKey":Lnet/oneplus/h2launcher/util/ComponentKey;
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mDynamicIconCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 1292
    .end local v0    # "cacheKey":Lnet/oneplus/h2launcher/util/ComponentKey;
    .end local v1    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized flush(I)V
    .locals 1
    .param p1, "cacheType"    # I

    .prologue
    .line 381
    monitor-enter p0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 382
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mOriginalCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 384
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetPackCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 387
    :cond_1
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mDynamicIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :cond_2
    monitor-exit p0

    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized flushAssetPackIcon(Ljava/lang/String;)V
    .locals 4
    .param p1, "assetPackName"    # Ljava/lang/String;

    .prologue
    .line 422
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 423
    :try_start_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetPackCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 426
    :cond_0
    const-string v1, "assetPackName = ?"

    .line 427
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 428
    .local v0, "args":[Ljava/lang/String;
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "selection":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getDefaultIcon(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 1014
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1015
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/IconCache;->makeDefaultIcon(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1014
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 226
    :try_start_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 231
    .local v2, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 233
    .local v1, "iconId":I
    if-eqz v1, :cond_0

    .line 234
    invoke-direct {p0, v2, v1}, Lnet/oneplus/h2launcher/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 238
    .end local v1    # "iconId":I
    :goto_1
    return-object v3

    .line 228
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 238
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .prologue
    .line 211
    :try_start_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 215
    .local v1, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v1, :cond_0

    .line 216
    if-eqz p2, :cond_0

    .line 217
    invoke-direct {p0, v1, p2}, Lnet/oneplus/h2launcher/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 220
    :goto_1
    return-object v2

    .line 212
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 220
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method public getIcon(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 877
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/IconCache;->getIcon(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getIcon(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "ignoreCustomIcon"    # Z

    .prologue
    .line 885
    monitor-enter p0

    const/4 v8, 0x0

    .line 887
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_3

    .line 888
    :try_start_0
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 889
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {v10, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 890
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mLauncherApps:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    invoke-virtual {v0, v10, p2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    move-result-object v2

    .line 892
    .local v2, "launcherActInfo":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    if-eqz v2, :cond_3

    .line 893
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v7

    .line 894
    .local v7, "assetPackName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 895
    .local v9, "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    const-string v4, "dynamic"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v9

    .line 896
    if-nez v9, :cond_0

    if-nez p3, :cond_0

    .line 897
    const-string v4, "custom"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v9

    .line 899
    :cond_0
    if-nez v9, :cond_1

    const-string v0, "none"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 900
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v9

    .line 902
    :cond_1
    if-nez v9, :cond_2

    .line 903
    const-string v4, "none"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v9

    .line 905
    :cond_2
    iget-object v8, v9, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    .end local v2    # "launcherActInfo":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .end local v7    # "assetPackName":Ljava/lang/String;
    .end local v9    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_3
    monitor-exit p0

    return-object v8

    .line 885
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIcon(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 844
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/IconCache;->getIcon(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getIcon(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "ignoreCustomIcons"    # Z

    .prologue
    .line 850
    monitor-enter p0

    const/4 v1, 0x0

    .line 851
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz p1, :cond_0

    .line 852
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 856
    :cond_0
    if-nez v1, :cond_1

    .line 857
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/IconCache;->getDefaultIcon(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 873
    :goto_0
    monitor-exit p0

    return-object v0

    .line 860
    :cond_1
    :try_start_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mLauncherApps:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    move-result-object v2

    .line 861
    .local v2, "launcherActInfo":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v7

    .line 862
    .local v7, "assetPackName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 863
    .local v8, "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    const-string v4, "dynamic"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v8

    .line 864
    if-nez v8, :cond_2

    if-nez p3, :cond_2

    .line 865
    const-string v4, "custom"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v8

    .line 867
    :cond_2
    if-nez v8, :cond_3

    const-string v0, "none"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 868
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v8

    .line 870
    :cond_3
    if-nez v8, :cond_4

    .line 871
    const-string v4, "none"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v8

    .line 873
    :cond_4
    iget-object v0, v8, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 850
    .end local v2    # "launcherActInfo":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .end local v7    # "assetPackName":Ljava/lang/String;
    .end local v8    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIconDpi()I
    .locals 1

    .prologue
    .line 1863
    iget v0, p0, Lnet/oneplus/h2launcher/IconCache;->mIconDpi:I

    return v0
.end method

.method public declared-synchronized getTitle(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/String;
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    const/4 v0, 0x0

    .line 914
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 915
    .local v8, "component":Landroid/content/ComponentName;
    if-nez v8, :cond_0

    .line 926
    :goto_0
    monitor-exit p0

    return-object v0

    .line 919
    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mLauncherApps:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    move-result-object v10

    .line 920
    .local v10, "launcherActInfo":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/IconProvider;->CUSTOM_LABEL_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "componentName = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 921
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    .line 920
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 922
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 923
    const-string v0, "label"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 925
    :cond_1
    const-string v4, "none"

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, v8

    move-object v2, v10

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v9

    .line 926
    .local v9, "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    iget-object v0, v9, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 914
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v9    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    .end local v10    # "launcherActInfo":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIcon(Lnet/oneplus/h2launcher/AppInfo;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Z)V
    .locals 9
    .param p1, "application"    # Lnet/oneplus/h2launcher/AppInfo;
    .param p2, "info"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p3, "useLowResIcon"    # Z

    .prologue
    .line 782
    monitor-enter p0

    if-nez p2, :cond_3

    :try_start_0
    iget-object v3, p1, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 783
    .local v3, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v7

    .line 784
    .local v7, "assetPackName":Ljava/lang/String;
    iget-object v1, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    const-string v4, "dynamic"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v8

    .line 785
    .local v8, "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    if-nez v8, :cond_0

    .line 786
    iget-object v1, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    const-string v4, "custom"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v8

    .line 788
    :cond_0
    if-nez v8, :cond_1

    const-string v0, "none"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 789
    iget-object v1, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, v7

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v8

    .line 791
    :cond_1
    if-nez v8, :cond_2

    .line 792
    iget-object v1, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    const-string v4, "none"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v8

    .line 794
    :cond_2
    iget-object v0, v8, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->title:Ljava/lang/CharSequence;

    .line 795
    invoke-direct {p0, v8, v3}, Lnet/oneplus/h2launcher/IconCache;->getNonNullIcon(Lnet/oneplus/h2launcher/IconCache$CacheEntry;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 796
    const-string v0, "AssetPack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " iconBitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lnet/oneplus/h2launcher/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v0, v8, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 798
    iget-boolean v0, v8, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->isLowResIcon:Z

    iput-boolean v0, p1, Lnet/oneplus/h2launcher/AppInfo;->usingLowResIcon:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    monitor-exit p0

    return-void

    .line 782
    .end local v3    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v7    # "assetPackName":Ljava/lang/String;
    .end local v8    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZZ)V
    .locals 8
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "info"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p4, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p5, "usePkgIcon"    # Z
    .param p6, "useLowResIcon"    # Z

    .prologue
    .line 966
    monitor-enter p0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lnet/oneplus/h2launcher/IconCache;->getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    monitor-exit p0

    return-void

    .line 966
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZZZ)V
    .locals 10
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "info"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p4, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p5, "usePkgIcon"    # Z
    .param p6, "useLowResIcon"    # Z
    .param p7, "ignoreCache"    # Z

    .prologue
    .line 972
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v8

    .line 973
    .local v8, "assetPackName":Ljava/lang/String;
    const-string v4, "dynamic"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v9

    .line 974
    .local v9, "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    if-nez v9, :cond_0

    .line 975
    const-string v4, "custom"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v9

    .line 977
    :cond_0
    if-nez v9, :cond_1

    const-string v0, "none"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, v8

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 978
    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v9

    .line 980
    :cond_1
    if-nez v9, :cond_2

    .line 981
    const-string v4, "none"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v9

    .line 983
    :cond_2
    const-string v0, "AssetPack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " get icon entry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", assetPack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    invoke-direct {p0, v9, p4}, Lnet/oneplus/h2launcher/IconCache;->getNonNullIcon(Lnet/oneplus/h2launcher/IconCache$CacheEntry;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 985
    iget-object v0, v9, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 986
    iget-object v0, v9, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p4}, Lnet/oneplus/h2launcher/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v0

    iput-boolean v0, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->usingFallbackIcon:Z

    .line 987
    iget-boolean v0, v9, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->isLowResIcon:Z

    iput-boolean v0, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->usingLowResIcon:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    monitor-exit p0

    return-void

    .line 972
    .end local v8    # "assetPackName":Ljava/lang/String;
    .end local v9    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    .locals 6
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p4, "useLowResIcon"    # Z

    .prologue
    .line 935
    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/IconCache;->getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    monitor-exit p0

    return-void

    .line 935
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZZ)V
    .locals 8
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p4, "useLowResIcon"    # Z
    .param p5, "ignoreCache"    # Z

    .prologue
    .line 940
    monitor-enter p0

    const/4 v2, 0x0

    .line 942
    .local v2, "component":Landroid/content/ComponentName;
    if-eqz p2, :cond_0

    .line 943
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 949
    :goto_0
    if-nez v2, :cond_1

    .line 950
    invoke-virtual {p0, p3}, Lnet/oneplus/h2launcher/IconCache;->getDefaultIcon(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 951
    const-string v0, ""

    iput-object v0, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 952
    const/4 v0, 0x1

    iput-boolean v0, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->usingFallbackIcon:Z

    .line 953
    const/4 v0, 0x0

    iput-boolean v0, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->usingLowResIcon:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    :goto_1
    monitor-exit p0

    return-void

    .line 945
    :cond_0
    :try_start_1
    const-string v0, "Launcher.IconCache"

    const-string v1, "invalid shortcut: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/ShortcutInfo;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 940
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 955
    :cond_1
    :try_start_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mLauncherApps:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    invoke-virtual {v0, p2, p3}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    move-result-object v3

    .line 956
    .local v3, "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lnet/oneplus/h2launcher/IconCache;->getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized getTitleAndIconForApp(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZLnet/oneplus/h2launcher/model/PackageItemInfo;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "useLowResIcon"    # Z
    .param p4, "infoOut"    # Lnet/oneplus/h2launcher/model/PackageItemInfo;

    .prologue
    .line 996
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v0

    .line 997
    .local v0, "assetPackName":Ljava/lang/String;
    const-string v2, "dynamic"

    invoke-direct {p0, p1, p2, v2, p3}, Lnet/oneplus/h2launcher/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Z)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v1

    .line 998
    .local v1, "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    if-nez v1, :cond_0

    .line 999
    const-string v2, "custom"

    invoke-direct {p0, p1, p2, v2, p3}, Lnet/oneplus/h2launcher/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Z)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v1

    .line 1001
    :cond_0
    if-nez v1, :cond_1

    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1002
    invoke-direct {p0, p1, p2, v0, p3}, Lnet/oneplus/h2launcher/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Z)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v1

    .line 1004
    :cond_1
    if-nez v1, :cond_2

    .line 1005
    const-string v2, "none"

    invoke-direct {p0, p1, p2, v2, p3}, Lnet/oneplus/h2launcher/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Z)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v1

    .line 1007
    :cond_2
    invoke-direct {p0, v1, p2}, Lnet/oneplus/h2launcher/IconCache;->getNonNullIcon(Lnet/oneplus/h2launcher/IconCache$CacheEntry;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p4, Lnet/oneplus/h2launcher/model/PackageItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 1008
    iget-object v2, v1, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p4, Lnet/oneplus/h2launcher/model/PackageItemInfo;->title:Ljava/lang/CharSequence;

    .line 1009
    iget-boolean v2, v1, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->isLowResIcon:Z

    iput-boolean v2, p4, Lnet/oneplus/h2launcher/model/PackageItemInfo;->usingLowResIcon:Z

    .line 1010
    iget-object v2, v1, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v2, p4, Lnet/oneplus/h2launcher/model/PackageItemInfo;->contentDescription:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    monitor-exit p0

    return-void

    .line 996
    .end local v0    # "assetPackName":Ljava/lang/String;
    .end local v1    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isDefaultIcon(Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 1021
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layerDrawableToBitmap(Landroid/graphics/drawable/LayerDrawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "layerDrawable"    # Landroid/graphics/drawable/LayerDrawable;

    .prologue
    const/4 v6, 0x0

    .line 1853
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicWidth()I

    move-result v3

    .line 1854
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicHeight()I

    move-result v2

    .line 1855
    .local v2, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1856
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1857
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    .line 1858
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1859
    return-object v0
.end method

.method public preloadAllAssetPackTask()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/IconCache$3;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/IconCache$3;-><init>(Lnet/oneplus/h2launcher/IconCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 508
    return-void
.end method

.method public preloadIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;ILjava/lang/String;JLnet/oneplus/h2launcher/InvariantDeviceProfile;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "dpi"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "userSerial"    # J
    .param p7, "idp"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .prologue
    .line 1505
    return-void
.end method

.method public remove(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 255
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/IconCache;->remove(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V

    .line 256
    return-void
.end method

.method public declared-synchronized remove(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "cacheType"    # I

    .prologue
    .line 261
    monitor-enter p0

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 262
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mOriginalCache:Ljava/util/HashMap;

    new-instance v1, Lnet/oneplus/h2launcher/util/ComponentKey;

    invoke-direct {v1, p1, p2}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetPackCache:Ljava/util/HashMap;

    new-instance v1, Lnet/oneplus/h2launcher/util/ComponentKey;

    invoke-direct {v1, p1, p2}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_1
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mCustomIconCache:Ljava/util/HashMap;

    new-instance v1, Lnet/oneplus/h2launcher/util/ComponentKey;

    invoke-direct {v1, p1, p2}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_2
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_3

    .line 271
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mDynamicIconCache:Ljava/util/HashMap;

    new-instance v1, Lnet/oneplus/h2launcher/util/ComponentKey;

    invoke-direct {v1, p1, p2}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_3
    monitor-exit p0

    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeCustomIconCache(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 1296
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mCustomIconCache:Ljava/util/HashMap;

    new-instance v1, Lnet/oneplus/h2launcher/util/ComponentKey;

    invoke-direct {v1, p1, p2}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1297
    monitor-exit p0

    return-void

    .line 1296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeFromMemCacheLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "cacheType"    # I

    .prologue
    .line 279
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mOriginalCache:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/IconCache;->removeFromMemCacheLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/HashMap;)V

    .line 282
    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetPackCache:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/IconCache;->removeFromMemCacheLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/HashMap;)V

    .line 285
    :cond_1
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mCustomIconCache:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/IconCache;->removeFromMemCacheLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/HashMap;)V

    .line 288
    :cond_2
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_3

    .line 289
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mDynamicIconCache:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/IconCache;->removeFromMemCacheLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/HashMap;)V

    .line 291
    :cond_3
    return-void
.end method

.method public declared-synchronized removeIconForPackageUpdate(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 514
    monitor-enter p0

    const/16 v2, 0xb

    :try_start_0
    invoke-virtual {p0, p1, p2, v2}, Lnet/oneplus/h2launcher/IconCache;->removeFromMemCacheLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V

    .line 515
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    invoke-virtual {v2, p2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 516
    .local v0, "userSerial":J
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    const-string v4, "componentName LIKE ? AND profileId = ? AND iconType = ? "

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 519
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 516
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    monitor-exit p0

    return-void

    .line 514
    .end local v0    # "userSerial":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removeOriginalCache(Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 3
    .param p1, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 1300
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1301
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1302
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconCache;->mOriginalCache:Ljava/util/HashMap;

    new-instance v2, Lnet/oneplus/h2launcher/util/ComponentKey;

    invoke-direct {v2, v0, p2}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1304
    :cond_0
    monitor-exit p0

    return-void

    .line 1300
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method updateCacheAndGetContentValues(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Ljava/lang/String;Z)Landroid/content/ContentValues;
    .locals 12
    .param p1, "app"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p2, "assetPackName"    # Ljava/lang/String;
    .param p3, "replaceExisting"    # Z

    .prologue
    const/4 v5, 0x0

    .line 661
    const-string v6, "SYSTEM_DEFAULT_ICONS"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-object v5

    .line 664
    :cond_1
    new-instance v3, Lnet/oneplus/h2launcher/util/ComponentKey;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 665
    .local v3, "key":Lnet/oneplus/h2launcher/util/ComponentKey;
    const/4 v0, 0x0

    .line 666
    .local v0, "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    if-nez p3, :cond_4

    .line 667
    const-string v6, "custom"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 668
    iget-object v6, p0, Lnet/oneplus/h2launcher/IconCache;->mCustomIconCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    check-cast v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .line 677
    .restart local v0    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-boolean v6, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->isLowResIcon:Z

    if-nez v6, :cond_3

    iget-object v6, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v6, :cond_4

    .line 678
    :cond_3
    const/4 v0, 0x0

    .line 681
    :cond_4
    if-nez v0, :cond_5

    .line 682
    new-instance v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .end local v0    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    invoke-direct {v0}, Lnet/oneplus/h2launcher/IconCache$CacheEntry;-><init>()V

    .line 684
    .restart local v0    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    const/4 v4, 0x0

    .line 685
    .local v4, "source":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
    const-string v6, "custom"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 686
    const-string v6, "custom"

    const/4 v7, 0x0

    invoke-direct {p0, v3, v6, v0, v7}, Lnet/oneplus/h2launcher/IconCache;->getEntryFromDB(Lnet/oneplus/h2launcher/util/ComponentKey;Ljava/lang/String;Lnet/oneplus/h2launcher/IconCache$CacheEntry;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 709
    .end local v4    # "source":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
    :cond_5
    :goto_2
    iget-object v6, p0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v7

    .line 710
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 709
    invoke-static {v6, v7, v8, v9}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getCustomLabelForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 711
    iget-object v6, p0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    .line 712
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v7

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    iget-object v10, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 713
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 711
    invoke-static {v6, v7, v8, v9}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getCustomLabelForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 714
    iget-object v6, p0, Lnet/oneplus/h2launcher/IconCache;->mCurrentLocale:Ljava/lang/String;

    iput-object v6, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->locale:Ljava/lang/String;

    .line 715
    const-string v6, "custom"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 716
    iget-object v6, p0, Lnet/oneplus/h2launcher/IconCache;->mCustomIconCache:Ljava/util/HashMap;

    new-instance v7, Lnet/oneplus/h2launcher/util/ComponentKey;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    :cond_6
    :goto_3
    iget-object v6, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iget v7, p0, Lnet/oneplus/h2launcher/IconCache;->mActivityBgColor:I

    invoke-direct {p0, v6, v7}, Lnet/oneplus/h2launcher/IconCache;->newContentValues(Landroid/graphics/Bitmap;I)Landroid/content/ContentValues;

    move-result-object v5

    .line 726
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "custom"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 727
    const/4 v2, 0x3

    .line 735
    .local v2, "iconType":I
    :goto_4
    const-string v6, "assetPackName"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v6, "iconType"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 669
    .end local v2    # "iconType":I
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_7
    const-string v6, "none"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 670
    iget-object v6, p0, Lnet/oneplus/h2launcher/IconCache;->mOriginalCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    check-cast v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .restart local v0    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    goto/16 :goto_1

    .line 671
    :cond_8
    const-string v6, "dynamic"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 672
    iget-object v6, p0, Lnet/oneplus/h2launcher/IconCache;->mDynamicIconCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    check-cast v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .restart local v0    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    goto/16 :goto_1

    .line 673
    :cond_9
    iget-object v6, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 674
    iget-object v6, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetPackCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    check-cast v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .restart local v0    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    goto/16 :goto_1

    .line 690
    .restart local v4    # "source":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
    :cond_a
    const-string v6, "none"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 691
    iget-object v6, p0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    iget v7, p0, Lnet/oneplus/h2launcher/IconCache;->mIconDpi:I

    invoke-virtual {p1, v6, v7}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getIconFromPackage(Landroid/content/Context;I)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;

    move-result-object v4

    .line 692
    const-string v6, "none"

    iput-object v6, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->assetPackName:Ljava/lang/String;

    .line 700
    :goto_5
    if-eqz v4, :cond_0

    .line 703
    iget-object v6, p0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    .line 704
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, p0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    .line 703
    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 705
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/IconCache;->checkAndResizeIcon(Lnet/oneplus/h2launcher/IconCache$CacheEntry;)V

    goto/16 :goto_2

    .line 693
    :cond_b
    const-string v6, "dynamic"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 696
    iget-object v6, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v6, p2}, Lnet/oneplus/h2launcher/AssetCache;->loadAssetPack(Ljava/lang/String;)Lnet/oneplus/h2launcher/IconPackHelper;

    move-result-object v1

    .line 697
    .local v1, "iconPackHelper":Lnet/oneplus/h2launcher/IconPackHelper;
    iget-object v6, p0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    iget v7, p0, Lnet/oneplus/h2launcher/IconCache;->mIconDpi:I

    invoke-virtual {p1, v1, v6, v7}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getIconFromIconPack(Lnet/oneplus/h2launcher/IconPackHelper;Landroid/content/Context;I)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;

    move-result-object v4

    .line 698
    iput-object p2, v0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->assetPackName:Ljava/lang/String;

    goto :goto_5

    .line 717
    .end local v1    # "iconPackHelper":Lnet/oneplus/h2launcher/IconPackHelper;
    .end local v4    # "source":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
    :cond_c
    const-string v6, "none"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 718
    iget-object v6, p0, Lnet/oneplus/h2launcher/IconCache;->mOriginalCache:Ljava/util/HashMap;

    new-instance v7, Lnet/oneplus/h2launcher/util/ComponentKey;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 719
    :cond_d
    const-string v6, "dynamic"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 720
    iget-object v6, p0, Lnet/oneplus/h2launcher/IconCache;->mDynamicIconCache:Ljava/util/HashMap;

    new-instance v7, Lnet/oneplus/h2launcher/util/ComponentKey;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 721
    :cond_e
    iget-object v6, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 722
    iget-object v6, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetPackCache:Ljava/util/HashMap;

    new-instance v7, Lnet/oneplus/h2launcher/util/ComponentKey;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 728
    .restart local v5    # "values":Landroid/content/ContentValues;
    :cond_f
    const-string v6, "none"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 729
    const/4 v2, 0x0

    .restart local v2    # "iconType":I
    goto/16 :goto_4

    .line 730
    .end local v2    # "iconType":I
    :cond_10
    const-string v6, "dynamic"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 731
    const/4 v2, 0x4

    .restart local v2    # "iconType":I
    goto/16 :goto_4

    .line 733
    .end local v2    # "iconType":I
    :cond_11
    const/4 v2, 0x2

    .restart local v2    # "iconType":I
    goto/16 :goto_4
.end method

.method public updateCurrentLocale()V
    .locals 10

    .prologue
    .line 157
    sget-boolean v7, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_ANDROID_N:Z

    if-eqz v7, :cond_2

    .line 160
    :try_start_0
    const-string v7, "android.os.LocaleList"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 161
    .local v3, "localeListClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    new-array v1, v7, [Ljava/lang/Class;

    .line 162
    .local v1, "emptyParameter":[Ljava/lang/Class;
    const-string v7, "getDefault"

    invoke-virtual {v3, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 163
    .local v2, "getDefaultMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 164
    .local v4, "localeListObject":Ljava/lang/Object;
    const-string v7, "toString"

    invoke-virtual {v3, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 165
    .local v6, "toStringMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v1    # "emptyParameter":[Ljava/lang/Class;
    .end local v2    # "getDefaultMethod":Ljava/lang/reflect/Method;
    .end local v3    # "localeListClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "localeListObject":Ljava/lang/Object;
    .end local v6    # "toStringMethod":Ljava/lang/reflect/Method;
    .local v5, "newLocalString":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lnet/oneplus/h2launcher/IconCache;->mCurrentLocale:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lnet/oneplus/h2launcher/IconCache;->mCurrentLocale:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 175
    :cond_0
    const-string v7, "Launcher.IconCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateNowLocaleString from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnet/oneplus/h2launcher/IconCache;->mCurrentLocale:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iput-object v5, p0, Lnet/oneplus/h2launcher/IconCache;->mCurrentLocale:Ljava/lang/String;

    .line 179
    :cond_1
    return-void

    .line 166
    .end local v5    # "newLocalString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "Launcher.IconCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLocalList fail, using locale, message = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    .line 169
    .restart local v5    # "newLocalString":Ljava/lang/String;
    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "newLocalString":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "newLocalString":Ljava/lang/String;
    goto :goto_0
.end method

.method public updateDbIcons(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "ignorePackagesForMainUser":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 524
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v3, Lnet/oneplus/h2launcher/IconCache;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 525
    iput-object v4, p0, Lnet/oneplus/h2launcher/IconCache;->mIconUpdateTask:Ljava/lang/Runnable;

    .line 527
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 529
    .local v1, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mLauncherApps:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    invoke-virtual {v2, v4, v1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 532
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    .end local v1    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_0
    return-void

    .line 538
    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    .restart local v1    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p1

    :goto_1
    invoke-direct {p0, v1, v0, v2}, Lnet/oneplus/h2launcher/IconCache;->updateDBIcons(Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_0

    .line 539
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_1
.end method

.method public declared-synchronized updateDbIconsForIconPackChanged()V
    .locals 7

    .prologue
    .line 397
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 398
    .local v3, "packagesToIgnore":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v5, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ItemInfo;

    .line 399
    .local v1, "info":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v6, v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v6, :cond_1

    .line 400
    move-object v0, v1

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    move-object v4, v0

    .line 401
    .local v4, "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->isPromise()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 402
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 397
    .end local v1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v3    # "packagesToIgnore":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 404
    .restart local v1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .restart local v3    # "packagesToIgnore":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    instance-of v6, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    if-eqz v6, :cond_0

    .line 405
    move-object v0, v1

    check-cast v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    move-object v2, v0

    .line 406
    .local v2, "lawi":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 407
    iget-object v6, v2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 411
    .end local v1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v2    # "lawi":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    :cond_2
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/IconCache;->updateDbIcons(Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized updateDynamicIconCache(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    .locals 18
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1232
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v13

    .line 1233
    .local v13, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    new-instance v4, Lnet/oneplus/h2launcher/util/ComponentKey;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v13}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 1235
    .local v4, "cacheKey":Lnet/oneplus/h2launcher/util/ComponentKey;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/IconCache;->mDynamicIconCache:Ljava/util/HashMap;

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .line 1236
    .local v6, "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v15}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v3

    .line 1237
    .local v3, "assetPackName":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 1238
    new-instance v6, Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    .end local v6    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    invoke-direct {v6}, Lnet/oneplus/h2launcher/IconCache$CacheEntry;-><init>()V

    .line 1239
    .restart local v6    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    const-string v15, "none"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v4, v15, v6, v1}, Lnet/oneplus/h2launcher/IconCache;->getEntryFromDB(Lnet/oneplus/h2launcher/util/ComponentKey;Ljava/lang/String;Lnet/oneplus/h2launcher/IconCache$CacheEntry;Z)Z

    move-result v8

    .line 1240
    .local v8, "hasCache":Z
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1241
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1242
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/IconCache;->mLauncherApps:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    invoke-virtual {v15, v10, v13}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    move-result-object v11

    .line 1243
    .local v11, "launcherActInfo":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    const/4 v12, 0x0

    .line 1244
    .local v12, "queryTitleSuccess":Z
    if-eqz v11, :cond_2

    .line 1245
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    .line 1246
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v11}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1245
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v13, v0, v1}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getCustomLabelForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v6, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 1247
    const/4 v12, 0x1

    .line 1264
    :cond_0
    :goto_0
    if-eqz v12, :cond_4

    .line 1265
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    iget-object v0, v6, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v15

    iput-object v15, v6, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 1266
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/IconCache;->mCurrentLocale:Ljava/lang/String;

    iput-object v15, v6, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->locale:Ljava/lang/String;

    .line 1273
    :goto_1
    const-string v15, "dynamic"

    iput-object v15, v6, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->assetPackName:Ljava/lang/String;

    .line 1274
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/IconCache;->mDynamicIconCache:Ljava/util/HashMap;

    invoke-virtual {v15, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    .end local v8    # "hasCache":Z
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "launcherActInfo":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .end local v12    # "queryTitleSuccess":Z
    :cond_1
    move-object/from16 v0, p2

    iput-object v0, v6, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 1278
    iget-object v15, v6, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/IconCache;->mActivityBgColor:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lnet/oneplus/h2launcher/IconCache;->newContentValues(Landroid/graphics/Bitmap;I)Landroid/content/ContentValues;

    move-result-object v14

    .line 1279
    .local v14, "values":Landroid/content/ContentValues;
    const-string v15, "assetPackName"

    const-string v16, "dynamic"

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    const-string v15, "iconType"

    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1281
    const-string v15, "componentName"

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    const-string v15, "profileId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1283
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    monitor-exit p0

    return-void

    .line 1249
    .end local v14    # "values":Landroid/content/ContentValues;
    .restart local v8    # "hasCache":Z
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v11    # "launcherActInfo":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .restart local v12    # "queryTitleSuccess":Z
    :cond_2
    :try_start_1
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v15

    invoke-virtual {v15, v13}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v15

    if-eqz v15, :cond_3

    const/4 v7, 0x0

    .line 1252
    .local v7, "flags":I
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 1253
    .local v9, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1254
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 1255
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/IconCache;->mContext:Landroid/content/Context;

    .line 1256
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1255
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v13, v0, v1}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getCustomLabelForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v6, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1257
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1249
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "flags":I
    .end local v9    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    const/16 v7, 0x2000

    goto :goto_2

    .line 1259
    .restart local v7    # "flags":I
    :catch_0
    move-exception v5

    .line 1260
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1261
    const-string v15, "Launcher.IconCache"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "query component applicationInfo fail, component = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", error = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1232
    .end local v3    # "assetPackName":Ljava/lang/String;
    .end local v4    # "cacheKey":Lnet/oneplus/h2launcher/util/ComponentKey;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    .end local v7    # "flags":I
    .end local v8    # "hasCache":Z
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "launcherActInfo":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .end local v12    # "queryTitleSuccess":Z
    .end local v13    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 1268
    .restart local v3    # "assetPackName":Ljava/lang/String;
    .restart local v4    # "cacheKey":Lnet/oneplus/h2launcher/util/ComponentKey;
    .restart local v6    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    .restart local v8    # "hasCache":Z
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v11    # "launcherActInfo":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .restart local v12    # "queryTitleSuccess":Z
    .restart local v13    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_4
    :try_start_4
    const-string v15, ""

    iput-object v15, v6, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 1269
    const-string v15, ""

    iput-object v15, v6, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 1270
    const-string v15, ""

    iput-object v15, v6, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->locale:Ljava/lang/String;

    .line 1271
    const-string v15, "Launcher.IconCache"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "can\'t query packageInfo and LauncherActivityInfoCompat, let title empty, component = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method public updateIconInBackground(Lnet/oneplus/h2launcher/BubbleTextView;Lnet/oneplus/h2launcher/ItemInfo;)Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;
    .locals 3
    .param p1, "caller"    # Lnet/oneplus/h2launcher/BubbleTextView;
    .param p2, "info"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    .line 745
    new-instance v0, Lnet/oneplus/h2launcher/IconCache$4;

    invoke-direct {v0, p0, p2, p1}, Lnet/oneplus/h2launcher/IconCache$4;-><init>(Lnet/oneplus/h2launcher/IconCache;Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/BubbleTextView;)V

    .line 769
    .local v0, "request":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconCache;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 770
    new-instance v1, Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;

    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;-><init>(Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-object v1
.end method

.method public updateIconsForComponentName(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/IconCache;->updateIconsForComponentName(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V

    .line 345
    return-void
.end method

.method public declared-synchronized updateIconsForComponentName(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    .locals 9
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "resetToDefault"    # Z

    .prologue
    .line 351
    monitor-enter p0

    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/IconCache;->remove(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :try_start_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x2000

    invoke-virtual {v0, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 356
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v4

    .line 357
    .local v4, "userSerial":J
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v6

    .line 358
    .local v6, "currentAssetPackName":Ljava/lang/String;
    const-string v0, "none"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SYSTEM_DEFAULT_ICONS"

    .line 359
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 360
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mLauncherApps:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 361
    .local v1, "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/IconCache;->addIconToDBAndMemCache(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/content/pm/PackageInfo;Ljava/lang/String;J)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 371
    .end local v1    # "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "userSerial":J
    .end local v6    # "currentAssetPackName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 372
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v0, "Launcher.IconCache"

    const-string v3, "Package not found"

    invoke-static {v0, v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    monitor-exit p0

    return-void

    .line 366
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v4    # "userSerial":J
    .restart local v6    # "currentAssetPackName":Ljava/lang/String;
    :cond_2
    :try_start_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mLauncherApps:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 367
    .restart local v1    # "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 368
    const-string v3, "none"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/IconCache;->addIconToDBAndMemCache(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/content/pm/PackageInfo;Ljava/lang/String;J)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 351
    .end local v1    # "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "userSerial":J
    .end local v6    # "currentAssetPackName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateIconsForPkg(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/IconCache;->updateIconsForPkg(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V

    .line 312
    return-void
.end method

.method public declared-synchronized updateIconsForPkg(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "resetToDefault"    # Z

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/IconCache;->removeIconForPackageUpdate(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :try_start_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 323
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v4

    .line 324
    .local v4, "userSerial":J
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v6

    .line 325
    .local v6, "currentAssetPackName":Ljava/lang/String;
    const-string v0, "none"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SYSTEM_DEFAULT_ICONS"

    .line 326
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mLauncherApps:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 328
    .local v1, "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/IconCache;->addIconToDBAndMemCache(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/content/pm/PackageInfo;Ljava/lang/String;J)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 334
    .end local v1    # "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "userSerial":J
    .end local v6    # "currentAssetPackName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 335
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v0, "Launcher.IconCache"

    const-string v3, "Package not found"

    invoke-static {v0, v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    monitor-exit p0

    return-void

    .line 331
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v4    # "userSerial":J
    .restart local v6    # "currentAssetPackName":Ljava/lang/String;
    :cond_1
    :try_start_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mLauncherApps:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 332
    .restart local v1    # "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    const-string v3, "none"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/IconCache;->addIconToDBAndMemCache(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/content/pm/PackageInfo;Ljava/lang/String;J)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 318
    .end local v1    # "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "userSerial":J
    .end local v6    # "currentAssetPackName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateTitleAndIcon(Lnet/oneplus/h2launcher/AppInfo;)V
    .locals 12
    .param p1, "application"    # Lnet/oneplus/h2launcher/AppInfo;

    .prologue
    .line 805
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v7

    .line 806
    .local v7, "assetPackName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 807
    .local v2, "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    iget-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache;->mLauncherApps:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    iget-object v1, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 809
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v3

    .line 808
    invoke-virtual {v0, v1, v3}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v11

    .line 810
    .local v11, "matches":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 811
    .local v10, "infoCompatIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 813
    .local v9, "infoCompat":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    invoke-virtual {v9}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    move-object v2, v9

    .line 820
    .end local v9    # "infoCompat":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .end local v10    # "infoCompatIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    .end local v11    # "matches":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    :cond_1
    iget-object v1, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    const-string v4, "dynamic"

    const/4 v5, 0x0

    iget-boolean v6, p1, Lnet/oneplus/h2launcher/AppInfo;->usingLowResIcon:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v8

    .line 822
    .local v8, "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    if-nez v8, :cond_2

    .line 823
    iget-object v1, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    const-string v4, "custom"

    const/4 v5, 0x0

    iget-boolean v6, p1, Lnet/oneplus/h2launcher/AppInfo;->usingLowResIcon:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v8

    .line 826
    :cond_2
    if-nez v8, :cond_3

    const-string v0, "none"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 827
    iget-object v1, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    const/4 v5, 0x0

    iget-boolean v6, p1, Lnet/oneplus/h2launcher/AppInfo;->usingLowResIcon:Z

    move-object v0, p0

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v8

    .line 830
    :cond_3
    if-nez v8, :cond_4

    .line 831
    iget-object v1, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    const-string v4, "none"

    const/4 v5, 0x0

    iget-boolean v6, p1, Lnet/oneplus/h2launcher/AppInfo;->usingLowResIcon:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;ZZ)Lnet/oneplus/h2launcher/IconCache$CacheEntry;

    move-result-object v8

    .line 835
    :cond_4
    iget-object v0, v8, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, v8, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 836
    iget-object v0, v8, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->title:Ljava/lang/CharSequence;

    .line 837
    iget-object v0, v8, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 838
    iget-object v0, v8, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 839
    iget-boolean v0, v8, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->isLowResIcon:Z

    iput-boolean v0, p1, Lnet/oneplus/h2launcher/AppInfo;->usingLowResIcon:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    :cond_5
    monitor-exit p0

    return-void

    .line 805
    .end local v2    # "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .end local v7    # "assetPackName":Ljava/lang/String;
    .end local v8    # "entry":Lnet/oneplus/h2launcher/IconCache$CacheEntry;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
