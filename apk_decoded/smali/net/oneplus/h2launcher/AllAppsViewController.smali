.class public Lnet/oneplus/h2launcher/AllAppsViewController;
.super Ljava/lang/Object;
.source "AllAppsViewController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.AllAppsViewController"


# instance fields
.field mLauncher:Lnet/oneplus/h2launcher/Launcher;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 0
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 18
    return-void
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->addApps(Ljava/util/List;)V

    .line 73
    :cond_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getAdapter()Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->notifyDataSetChanged()V

    .line 60
    :cond_0
    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->removeApps(Ljava/util/List;)V

    .line 91
    :cond_0
    return-void
.end method

.method public scrollToTop()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->scrollToTop()V

    .line 42
    :cond_0
    return-void
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->setApps(Ljava/util/List;)V

    .line 79
    :cond_0
    return-void
.end method

.method public setAppsAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 100
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getAppsRecyclerView()Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 103
    :cond_0
    return-void
.end method

.method public setFirstInitialized(Z)V
    .locals 1
    .param p1, "firstInitialized"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->isFirstInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->setFirstInitialized(Z)V

    .line 48
    :cond_0
    return-void
.end method

.method public setPredictedApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/util/ComponentKey;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->setPredictedApps(Ljava/util/List;)V

    .line 67
    :cond_0
    return-void
.end method

.method public setSearchBarBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "newBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 32
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->setSearchBarBounds(Landroid/graphics/Rect;)V

    .line 35
    :cond_0
    return-void
.end method

.method public setSearchBarController()V
    .locals 3

    .prologue
    .line 21
    iget-object v1, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 22
    iget-object v1, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getLauncherCallbacks()Lnet/oneplus/h2launcher/LauncherCallbacks;

    move-result-object v0

    .line 23
    .local v0, "launcherCallbacks":Lnet/oneplus/h2launcher/LauncherCallbacks;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherCallbacks;->getAllAppsSearchBarController()Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 24
    iget-object v1, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v1

    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherCallbacks;->getAllAppsSearchBarController()Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->setSearchBarController(Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;)V

    .line 29
    .end local v0    # "launcherCallbacks":Lnet/oneplus/h2launcher/LauncherCallbacks;
    :cond_0
    :goto_0
    return-void

    .line 26
    .restart local v0    # "launcherCallbacks":Lnet/oneplus/h2launcher/LauncherCallbacks;
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->newDefaultAppSearchController()Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->setSearchBarController(Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;)V

    goto :goto_0
.end method

.method public setUpdateIconsInBackground(Z)V
    .locals 1
    .param p1, "updateIconsInBackground"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getAdapter()Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getAdapter()Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->setUpdateIconsInBackground(Z)V

    .line 109
    :cond_0
    return-void
.end method

.method public updateAllAppsEntries(Lnet/oneplus/h2launcher/AssetCache;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;
    .param p2, "appEditComponent"    # Ljava/lang/String;
    .param p3, "updateLabels"    # Z

    .prologue
    .line 51
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->updateAllAppsEntries(Lnet/oneplus/h2launcher/AssetCache;Ljava/lang/String;Z)V

    .line 54
    :cond_0
    return-void
.end method

.method public updateAllAppsFromCustomizations()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->updateAllAppsFromCustomizations()V

    .line 97
    :cond_0
    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsViewController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->updateApps(Ljava/util/List;)V

    .line 85
    :cond_0
    return-void
.end method
