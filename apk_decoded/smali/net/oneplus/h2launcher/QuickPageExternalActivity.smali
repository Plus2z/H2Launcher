.class public Lnet/oneplus/h2launcher/QuickPageExternalActivity;
.super Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;
.source "QuickPageExternalActivity.java"


# instance fields
.field private mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

.field private mModel:Lnet/oneplus/h2launcher/LauncherModel;

.field private mStats:Lnet/oneplus/h2launcher/Stats;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssetCache()Lnet/oneplus/h2launcher/AssetCache;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/QuickPageExternalActivity;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    return-object v0
.end method

.method public getModel()Lnet/oneplus/h2launcher/LauncherModel;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lnet/oneplus/h2launcher/QuickPageExternalActivity;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    return-object v0
.end method

.method public getStats()Lnet/oneplus/h2launcher/Stats;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lnet/oneplus/h2launcher/QuickPageExternalActivity;->mStats:Lnet/oneplus/h2launcher/Stats;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/QuickPageExternalActivity;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/QuickPageExternalActivity;->closeDrawer()V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-super {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/QuickPageExternalActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 40
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 41
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/QuickPageExternalActivity;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    .line 42
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/QuickPageExternalActivity;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 43
    new-instance v1, Lnet/oneplus/h2launcher/Stats;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Stats;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/QuickPageExternalActivity;->mStats:Lnet/oneplus/h2launcher/Stats;

    .line 45
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/QuickPageExternalActivity;->createQuickPage()V

    .line 47
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/QuickPageExternalActivity;->getQuickPageView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/QuickPageExternalActivity;->setContentView(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/QuickPageExternalActivity;->invalidateScheme()V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->stopListening()V

    .line 54
    invoke-super {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onDestroy()V

    .line 55
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 89
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 94
    return-void
.end method

.method public setWelcomePanel(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)V
    .locals 0
    .param p1, "welcomePanel"    # Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->setWelcomePanel(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)V

    .line 69
    return-void
.end method
