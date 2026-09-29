.class public Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;
.super Ljava/lang/Object;
.source "ContactImageCache.java"


# static fields
.field private static final CACHE_CAPACITY:I = 0xf00000

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

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->LOG_TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->sLock:Ljava/lang/Object;

    .line 32
    const/high16 v0, 0xf00000

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->createCache(I)V

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static cacheImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p0, "cacheKey"    # Ljava/lang/String;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 97
    :goto_0
    return v0

    .line 90
    :cond_1
    sget-object v1, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    sget-object v2, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->sCache:Landroid/util/LruCache;

    invoke-virtual {v2, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 92
    sget-object v2, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v3, "cache image, key:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    sget-object v2, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->sCache:Landroid/util/LruCache;

    invoke-virtual {v2, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static clear()V
    .locals 3

    .prologue
    .line 104
    sget-object v1, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->sCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 106
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ContactImageCache cleared."

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    monitor-exit v1

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static createCache(I)V
    .locals 6
    .param p0, "size"    # I

    .prologue
    .line 41
    sget-object v1, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v2, "create image Cache, size: %d."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->sCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->sCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->sCache:Landroid/util/LruCache;

    .line 49
    :cond_0
    new-instance v0, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache$1;-><init>(I)V

    sput-object v0, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->sCache:Landroid/util/LruCache;

    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 61
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
    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->sCache:Landroid/util/LruCache;

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

    .line 116
    if-lez p0, :cond_0

    .line 117
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ContactImageCache resized to: %dMb."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    mul-int/lit16 v0, p0, 0x400

    mul-int/lit16 v0, v0, 0x400

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->createCache(I)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "invalid cache size:%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
