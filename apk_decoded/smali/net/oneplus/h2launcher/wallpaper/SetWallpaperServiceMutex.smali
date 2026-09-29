.class Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;
.super Ljava/lang/Object;
.source "SetWallpaperServiceMutex.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->sInstance:Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;

    if-nez v0, :cond_1

    .line 18
    const-class v1, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->sInstance:Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->sInstance:Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->sInstance:Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method declared-synchronized acquire(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    sget-object v2, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->TAG:Ljava/lang/String;

    const-string v3, "[acquire] mName=%s, name=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->mName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 36
    :cond_1
    :try_start_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    iput-object p1, p0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->mName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 41
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized release(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->TAG:Ljava/lang/String;

    const-string v1, "[release] mName=%s, name=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->mName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 53
    :cond_1
    :try_start_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->mName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
