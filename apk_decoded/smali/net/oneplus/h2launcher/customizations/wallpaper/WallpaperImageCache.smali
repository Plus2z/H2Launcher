.class public Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;
.super Ljava/lang/Object;
.source "WallpaperImageCache.java"


# static fields
.field private static final CACHE_CAPACITY:I = 0x2400000

.field private static final LOG_TAG:Ljava/lang/String;

.field private static sCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sHomeWallpaper:Landroid/graphics/Bitmap;

.field private static sHomeWallpaperCacheKey:Ljava/lang/String;

.field private static final sLock:Ljava/lang/Object;

.field private static sLockscreenWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->LOG_TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sLock:Ljava/lang/Object;

    .line 46
    const/high16 v0, 0x2400000

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->createCache(I)V

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static cacheImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p0, "cacheKey"    # Ljava/lang/String;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 108
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[SNDMS-1030] cacheImage: cacheKey=%s, bmp=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    aput-object p1, v4, v0

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 139
    :goto_0
    return v0

    .line 114
    :cond_1
    const-string v2, "home_screen_wallpaper"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    sput-object p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sHomeWallpaperCacheKey:Ljava/lang/String;

    .line 116
    sput-object p1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sHomeWallpaper:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 118
    :cond_2
    const-string v2, "lock_screen_wallpaper"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    sput-object p1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sLockscreenWallpaper:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    sget-object v3, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->maxSize()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 125
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v2, "WallpaperImageCache cache full, please enlarge cache size"

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 126
    goto :goto_0

    .line 129
    :cond_4
    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sCache:Landroid/util/LruCache;

    invoke-virtual {v2, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 131
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v3, "cache image, key:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sCache:Landroid/util/LruCache;

    invoke-virtual {v2, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 134
    :cond_5
    :try_start_1
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v3, "update cache image, key:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sCache:Landroid/util/LruCache;

    invoke-virtual {v2, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 181
    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 183
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v2, "WallpaperImageCache cleared."

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sHomeWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sHomeWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 188
    sput-object v3, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sHomeWallpaper:Landroid/graphics/Bitmap;

    .line 191
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sLockscreenWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 192
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sLockscreenWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 193
    sput-object v3, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sLockscreenWallpaper:Landroid/graphics/Bitmap;

    .line 195
    :cond_1
    return-void

    .line 184
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static clearImage(Ljava/lang/String;)Z
    .locals 6
    .param p0, "cacheKey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 149
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[SNDMS-1030] clearImage: cacheKey=%s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    :goto_0
    return v0

    .line 154
    :cond_0
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sHomeWallpaperCacheKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sHomeWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 156
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sHomeWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 157
    sput-object v5, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sHomeWallpaper:Landroid/graphics/Bitmap;

    .line 158
    sput-object v5, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sHomeWallpaperCacheKey:Ljava/lang/String;

    .line 159
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[SNDMS-1030] clearImage: home wallpaper cleared"

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    .line 161
    goto :goto_0

    .line 162
    :cond_2
    const-string v2, "lock_screen_wallpaper"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 163
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sLockscreenWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 164
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sLockscreenWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    sput-object v5, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sLockscreenWallpaper:Landroid/graphics/Bitmap;

    .line 166
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[SNDMS-1030] clearImage: lock wallpaper cleared"

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v1

    .line 168
    goto :goto_0

    .line 171
    :cond_4
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 172
    :try_start_0
    sget-object v3, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sCache:Landroid/util/LruCache;

    invoke-virtual {v3, p0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    move v0, v1

    :cond_5
    monitor-exit v2

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static createCache(I)V
    .locals 6
    .param p0, "size"    # I

    .prologue
    .line 55
    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v2, "create image Cache, size: %d."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sCache:Landroid/util/LruCache;

    .line 63
    :cond_0
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache$1;-><init>(I)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sCache:Landroid/util/LruCache;

    .line 76
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    .line 90
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sHomeWallpaperCacheKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sHomeWallpaper:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 93
    :cond_1
    const-string v0, "lock_screen_wallpaper"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sLockscreenWallpaper:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 97
    :cond_2
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static resize(I)V
    .locals 5
    .param p0, "cacheSize"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 218
    if-lez p0, :cond_0

    .line 219
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "WallpaperImageCache resized to: %dMb."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    mul-int/lit16 v0, p0, 0x400

    mul-int/lit16 v0, v0, 0x400

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->createCache(I)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "invalid cache size:%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trimPreviewData()V
    .locals 8

    .prologue
    .line 201
    sget-object v3, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 202
    :try_start_0
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    .line 203
    .local v1, "snapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    .local v0, "id":Ljava/lang/String;
    const-string v4, "preview_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    sget-object v4, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v5, "WallpaperImageCache trimPreviewData:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    sget-object v4, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->sCache:Landroid/util/LruCache;

    invoke-virtual {v4, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 209
    .end local v0    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    return-void
.end method
