.class public abstract Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;
.super Landroid/app/job/JobService;
.source "SetWallpaperService.java"


# instance fields
.field private mJobParameters:Landroid/app/job/JobParameters;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 23
    iput-object p1, p0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;->mName:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected getJobParameters()Landroid/app/job/JobParameters;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;->mJobParameters:Landroid/app/job/JobParameters;

    return-object v0
.end method

.method protected abstract onSetWallpaper()V
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v4, 0x0

    .line 28
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;->mName:Ljava/lang/String;

    const-string v1, "onStartJob#"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;->mJobParameters:Landroid/app/job/JobParameters;

    .line 31
    invoke-static {}, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->getInstance()Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->acquire(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;->mName:Ljava/lang/String;

    const-string v1, "failed to acquire right for execution, skip execution"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;->mName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :goto_0
    return v4

    .line 37
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;->onSetWallpaper()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-static {}, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->getInstance()Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->release(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->getInstance()Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->release(Ljava/lang/String;)V

    throw v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .prologue
    .line 47
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;->mName:Ljava/lang/String;

    const-string v1, "onStopJob#"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->getInstance()Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperServiceMutex;->release(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    return v0
.end method
