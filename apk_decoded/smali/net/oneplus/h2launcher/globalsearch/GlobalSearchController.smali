.class public Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;
.super Ljava/lang/Object;
.source "GlobalSearchController.java"

# interfaces
.implements Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$UpdateIconCacheCallback;


# static fields
.field public static final PERMISSIONS_REQUEST:I = 0xc8

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

.field private mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

.field private mLauncher:Lnet/oneplus/h2launcher/Launcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/AssetCache;)V
    .locals 0
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 34
    iput-object p2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    .prologue
    .line 24
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    return-object v0
.end method

.method private updateAppIconAndName(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 142
    .local p1, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    if-eqz p1, :cond_0

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 144
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/AppInfo;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/AppInfo;->updateIcon(Lnet/oneplus/h2launcher/AssetCache;)V

    .line 145
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/AppInfo;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/AppInfo;->updateLabel(Lnet/oneplus/h2launcher/AssetCache;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public closeGlobalSearchDatabase()V
    .locals 2

    .prologue
    .line 161
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getStats()Lnet/oneplus/h2launcher/Stats;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Stats;->getGlobalSearchDbHelper()Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;

    move-result-object v0

    .line 162
    .local v0, "globalSearchDbHelper":Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;->close()V

    .line 165
    :cond_0
    return-void
.end method

.method public getContactsDb()V
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController$1;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public hideGlobalSearch()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->cancelAnimation()V

    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->exitAnimation()V

    .line 85
    :cond_0
    return-void
.end method

.method public hideGlobalSearchWithoutAnimation()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->cancelAnimation()V

    .line 75
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->exitWithoutAnimation()V

    .line 76
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchContainer()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 78
    :cond_0
    return-void
.end method

.method public onComponentChanged()V
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getAppInfos()Ljava/util/ArrayList;

    move-result-object v0

    .line 106
    .local v0, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    :goto_0
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->updateAppIconAndName(Ljava/util/ArrayList;)V

    .line 107
    return-void

    .line 103
    .end local v0    # "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherModel;->getAllAppsList()Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0    # "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    goto :goto_0
.end method

.method public onPackageAdded(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/AssetCache;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    .line 130
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->onPackageAdded(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/AssetCache;)V

    .line 133
    :cond_0
    return-void
.end method

.method public onSystemLowMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->trimMemory(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public showGlobalSearch()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->isAllAppsLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->TAG:Ljava/lang/String;

    const-string v1, "All apps still loading, can\'t access global search !"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->inflateGlobalSearView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .line 45
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    if-nez v0, :cond_1

    .line 46
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->TAG:Ljava/lang/String;

    const-string v1, "Inflate GlobalSearchView failed, can\'t access global search !"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/PermissionUtils;->hasGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 52
    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->shouldShowRequestPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const-string v1, "android.permission.READ_CONTACTS"

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/PermissionUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 55
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasShowRequestWindow"

    const/4 v2, 0x1

    .line 56
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_3

    .line 60
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->initInputBackground()V

    .line 61
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->init()V

    .line 62
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setTranslationY(F)V

    .line 63
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchContainer()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 65
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchInputContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchInputContainer()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 68
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->cancelAnimation()V

    goto/16 :goto_0
.end method

.method public updateAllAppsList(Ljava/lang/String;Lnet/oneplus/h2launcher/AssetCache;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    .line 136
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->updateAllAppsList(Ljava/lang/String;Lnet/oneplus/h2launcher/AssetCache;)V

    .line 139
    :cond_0
    return-void
.end method

.method public updateAppInfo(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 111
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    if-eqz v2, :cond_2

    .line 112
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getAppInfos()Ljava/util/ArrayList;

    move-result-object v0

    .line 117
    .local v0, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/AppInfo;

    .line 119
    .local v1, "info":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v3, v1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 120
    invoke-virtual {v3, p2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/AppInfo;->updateIcon(Lnet/oneplus/h2launcher/AssetCache;)V

    .line 122
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/AppInfo;->updateLabel(Lnet/oneplus/h2launcher/AssetCache;)V

    .line 127
    .end local v1    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :cond_1
    return-void

    .line 114
    .end local v0    # "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppState;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherModel;->getAllAppsList()Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0    # "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    goto :goto_0
.end method

.method public updateIconCacheFinish(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 169
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->updateAppInfo(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 170
    return-void
.end method
