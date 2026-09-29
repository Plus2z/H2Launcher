.class public Lnet/oneplus/h2launcher/DynamicIconDrawableCache;
.super Ljava/lang/Object;
.source "DynamicIconDrawableCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/DynamicIconDrawableCache$PreloadIconTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_DRAWABLE:Landroid/graphics/drawable/Drawable;

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
            "Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIconDpi:I

.field private final mOriginalCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;",
            "Landroid/graphics/drawable/Drawable;",
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
    .locals 1

    .prologue
    .line 32
    const-class v0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$1;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$1;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->EMPTY_DRAWABLE:Landroid/graphics/drawable/Drawable;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->PRELOAD_ICON_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/InvariantDeviceProfile;Lnet/oneplus/h2launcher/AssetCache;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inv"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .param p3, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    const/16 v1, 0x32

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mOriginalCache:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mAssetPackCache:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mPreloadTaskQueue:Ljava/util/ArrayList;

    .line 70
    iput-object p3, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 71
    iput-object p1, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lnet/oneplus/h2launcher/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mWorkerHandler:Landroid/os/Handler;

    .line 73
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    .line 74
    iget v0, p2, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->fillResIconDpi:I

    iput v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mIconDpi:I

    .line 75
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    .prologue
    .line 31
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    .prologue
    .line 31
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mPreloadTaskQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    .prologue
    .line 31
    iget v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mIconDpi:I

    return v0
.end method

.method static synthetic access$302(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/DynamicIconDrawableCache;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 31
    iput-object p1, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mPreloadTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method private declared-synchronized cacheLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "assetPackName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 82
    monitor-enter p0

    :try_start_0
    new-instance v0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;

    invoke-direct {v0, p1, p3, p2}, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 83
    .local v0, "cacheKey":Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;
    const/4 v1, 0x0

    .line 84
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v3, "none"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mOriginalCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 92
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 93
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->getDrawableFromDB(Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 94
    if-nez v1, :cond_5

    .line 95
    const-string v3, "none"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 96
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->getDrawableFromOriginal(Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 97
    if-nez v1, :cond_4

    .line 98
    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mOriginalCache:Ljava/util/HashMap;

    sget-object v4, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->EMPTY_DRAWABLE:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v2

    .line 86
    :cond_2
    if-eqz p3, :cond_3

    :try_start_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mAssetPackCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 88
    :cond_3
    if-nez p3, :cond_0

    goto :goto_1

    .line 101
    :cond_4
    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mOriginalCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_5
    :goto_2
    sget-object v3, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->EMPTY_DRAWABLE:Landroid/graphics/drawable/Drawable;

    if-eq v1, v3, :cond_1

    move-object v2, v1

    .line 120
    goto :goto_1

    .line 103
    :cond_6
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->getDrawableFromAssetPack(Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 104
    if-nez v1, :cond_7

    .line 105
    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mAssetPackCache:Ljava/util/HashMap;

    sget-object v4, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->EMPTY_DRAWABLE:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 82
    .end local v0    # "cacheKey":Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 110
    .restart local v0    # "cacheKey":Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    :try_start_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 111
    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mAssetPackCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private getDrawableFromAssetPack(Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "cacheKey"    # Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v2, p1, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->assetPackName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->resource:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-object v1

    .line 168
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    iget-object v3, p1, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->assetPackName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/AssetCache;->loadAssetPack(Ljava/lang/String;)Lnet/oneplus/h2launcher/IconPackHelper;

    move-result-object v0

    .line 169
    .local v0, "helper":Lnet/oneplus/h2launcher/IconPackHelper;
    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p1, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->resource:Ljava/lang/String;

    iget v2, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mIconDpi:I

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/IconPackHelper;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private getDrawableFromDB(Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;)Landroid/graphics/drawable/Drawable;
    .locals 18
    .param p1, "cacheKey"    # Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;

    .prologue
    .line 124
    move-object/from16 v0, p1

    iget-object v2, v0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->assetPackName:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->resource:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 125
    :cond_0
    const/4 v12, 0x0

    .line 149
    :cond_1
    :goto_0
    return-object v12

    .line 127
    :cond_2
    const/4 v12, 0x0

    .line 128
    .local v12, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "icon"

    aput-object v6, v4, v5

    const-string v5, "componentName = ? AND profileId = ? AND assetPackName = ? AND iconType = ? "

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->resource:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-object/from16 v0, p1

    iget-object v15, v0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 133
    invoke-virtual {v8, v15}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p1

    iget-object v8, v0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->assetPackName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x1

    .line 134
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 128
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 137
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 139
    .local v11, "data":[B
    const/4 v2, 0x0

    array-length v3, v11

    const/4 v4, 0x0

    invoke-static {v11, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 140
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v13, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v13, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v12, v13

    .line 145
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "data":[B
    .end local v13    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz v10, :cond_1

    .line 146
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 142
    :catch_0
    move-exception v14

    .line 143
    .local v14, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConfigFromDB error e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    if-eqz v10, :cond_1

    .line 146
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 145
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_4

    .line 146
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method private getDrawableFromOriginal(Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "cacheKey"    # Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v3, p1, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->assetPackName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->resource:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-object v2

    .line 156
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 157
    .local v1, "resources":Landroid/content/res/Resources;
    iget-object v3, p1, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->resource:Ljava/lang/String;

    const-string v4, "drawable"

    iget-object v5, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 159
    iget v2, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mIconDpi:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized changeAssetPack()V
    .locals 1

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mAssetPackCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush(I)V
    .locals 1
    .param p1, "cacheType"    # I

    .prologue
    .line 191
    monitor-enter p0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 192
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mOriginalCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 194
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mAssetPackCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_1
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized flushAssetPackIcon(Ljava/lang/String;)V
    .locals 1
    .param p1, "assetPackName"    # Ljava/lang/String;

    .prologue
    .line 180
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 181
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mAssetPackCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDynamicIconDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "assetPackName"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->cacheLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public preloadIcon(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 2
    .param p2, "assetPackName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "resource":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$2;

    invoke-direct {v1, p0, p2, p1}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache$2;-><init>(Lnet/oneplus/h2launcher/DynamicIconDrawableCache;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method
