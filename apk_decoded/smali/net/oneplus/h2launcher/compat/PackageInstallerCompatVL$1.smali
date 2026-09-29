.class Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL$1;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "PackageInstallerCompatVL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;

    .prologue
    .line 87
    iput-object p1, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL$1;->this$0:Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    return-void
.end method

.method private pushSessionDisplayToLauncher(I)V
    .locals 4
    .param p1, "sessionId"    # I

    .prologue
    .line 126
    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL$1;->this$0:Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;

    iget-object v2, v2, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    .line 127
    .local v1, "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v1, :cond_0

    .line 128
    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL$1;->this$0:Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;

    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->addSessionInfoToCahce(Landroid/content/pm/PackageInstaller$SessionInfo;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 129
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstanceNoCreate()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 131
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/LauncherModel;->updateSessionDisplayInfo(Ljava/lang/String;)V

    .line 135
    .end local v0    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    :cond_0
    return-void
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "active"    # Z

    .prologue
    .line 118
    return-void
.end method

.method public onBadgingChanged(I)V
    .locals 0
    .param p1, "sessionId"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL$1;->pushSessionDisplayToLauncher(I)V

    .line 123
    return-void
.end method

.method public onCreated(I)V
    .locals 0
    .param p1, "sessionId"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL$1;->pushSessionDisplayToLauncher(I)V

    .line 92
    return-void
.end method

.method public onFinished(IZ)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "success"    # Z

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL$1;->this$0:Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;

    iget-object v1, v1, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL$1;->this$0:Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;

    iget-object v1, v1, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 101
    if-eqz v0, :cond_0

    .line 102
    iget-object v3, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL$1;->this$0:Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;

    new-instance v4, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;

    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {v4, v0, v1, v2}, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->sendUpdate(Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 105
    :cond_0
    return-void

    .line 102
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onProgressChanged(IF)V
    .locals 7
    .param p1, "sessionId"    # I
    .param p2, "progress"    # F

    .prologue
    .line 109
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL$1;->this$0:Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;

    iget-object v1, v1, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    .line 110
    .local v0, "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL$1;->this$0:Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;

    new-instance v2, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 113
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v2, v3, v4, v5}, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;-><init>(Ljava/lang/String;II)V

    .line 111
    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/compat/PackageInstallerCompatVL;->sendUpdate(Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 115
    :cond_0
    return-void
.end method
