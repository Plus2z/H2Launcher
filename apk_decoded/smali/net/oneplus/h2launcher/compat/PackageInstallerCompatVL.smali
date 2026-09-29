.class public Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;
.super Lnet/oneplus/h2launcher/compat/PackageInstallerCompat;
.source "PackageInstallerCompatVL.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field final mActiveSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Lnet/oneplus/h2launcher/AssetCache;

.field private final mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

.field final mInstaller:Landroid/content/pm/PackageInstaller;

.field private final mWorker:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat;-><init>()V

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->mActiveSessions:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL$1;-><init>(Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 47
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->mCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lnet/oneplus/h2launcher/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->mWorker:Landroid/os/Handler;

    .line 50
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 51
    return-void
.end method


# virtual methods
.method addSessionInfoToCahce(Landroid/content/pm/PackageInstaller$SessionInfo;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "info"    # Landroid/content/pm/PackageInstaller$SessionInfo;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->mCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 71
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 70
    invoke-virtual {v1, v0, p2, v2, v3}, Lnet/oneplus/h2launcher/AssetCache;->cachePackageInstallInfo(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 78
    return-void
.end method

.method sendUpdate(Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;

    .prologue
    .line 81
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstanceNoCreate()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 82
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/LauncherModel;->setPackageState(Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 85
    :cond_0
    return-void
.end method

.method public updateAndGetActiveSessionCache()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v0, "activePackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v2

    .line 57
    .local v2, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    iget-object v3, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 58
    .local v1, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {p0, v1, v2}, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->addSessionInfoToCahce(Landroid/content/pm/PackageInstaller$SessionInfo;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 59
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 60
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v4, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v5

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 64
    .end local v1    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_1
    return-object v0
.end method
