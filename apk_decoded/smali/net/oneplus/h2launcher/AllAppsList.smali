.class Lnet/oneplus/h2launcher/AllAppsList;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# static fields
.field public static final DEFAULT_APPLICATIONS_NUMBER:I = 0x2a

.field private static final SWIFTKEY_PACKAGE:Ljava/lang/String; = "com.touchtype.swiftkey"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppFilter:Lnet/oneplus/h2launcher/AppFilter;

.field private mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/AssetCache;Lnet/oneplus/h2launcher/AppFilter;)V
    .locals 2
    .param p1, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;
    .param p2, "appFilter"    # Lnet/oneplus/h2launcher/AppFilter;

    .prologue
    const/16 v1, 0x2a

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-class v0, Lnet/oneplus/h2launcher/AllAppsList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/AllAppsList;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/AllAppsList;->added:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 64
    iput-object p1, p0, Lnet/oneplus/h2launcher/AllAppsList;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 65
    iput-object p2, p0, Lnet/oneplus/h2launcher/AllAppsList;->mAppFilter:Lnet/oneplus/h2launcher/AppFilter;

    .line 66
    return-void
.end method

.method private static findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 334
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 335
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/AppInfo;

    .line 336
    .local v2, "info":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v3, v2, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v3, p2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    const/4 v3, 0x1

    .line 340
    .end local v2    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :goto_1
    return v3

    .line 334
    .restart local v2    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v2    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 311
    .local v0, "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    const/4 v1, 0x1

    .line 315
    .end local v0    # "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findApplicationInfoLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    iget-object v3, p0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/AppInfo;

    .line 364
    .local v1, "info":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v4, v1, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 365
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v4, v1, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {p2, v4}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :cond_1
    return-object v2
.end method

.method private findApplicationInfoLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Lnet/oneplus/h2launcher/AppInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v2, p0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/AppInfo;

    .line 349
    .local v1, "info":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v3, v1, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 350
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v3, v1, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {p2, v3}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static packageHasActivities(Landroid/content/Context;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 324
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v0

    .line 325
    .local v0, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private replaceBgItemsMap(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "beReplacedCn"    # Landroid/content/ComponentName;
    .param p2, "updateCn"    # Landroid/content/ComponentName;

    .prologue
    .line 293
    sget-object v4, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iters":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 294
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ItemInfo;

    .line 295
    .local v1, "i":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v4, v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 296
    check-cast v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 297
    .local v2, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 298
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    iget-object v4, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 303
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "i":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v2    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    return-void
.end method

.method private updateAllAppsList(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v14

    invoke-virtual {v14}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v11

    .line 374
    .local v11, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-nez v11, :cond_1

    .line 375
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/AllAppsList;->TAG:Ljava/lang/String;

    const-string v15, "[updateAllAppsList] launcher is null. Should not be here."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v4

    .line 380
    .local v4, "appsView":Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;
    if-nez v4, :cond_2

    .line 381
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/AllAppsList;->TAG:Ljava/lang/String;

    const-string v15, "[updateAllAppsList] appsView is null. Should not be here."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    :cond_2
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getApps()Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    move-result-object v14

    invoke-virtual {v14}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getComponentToAppMap()Ljava/util/HashMap;

    move-result-object v3

    .line 386
    .local v3, "appMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lnet/oneplus/h2launcher/util/ComponentKey;Lnet/oneplus/h2launcher/AppInfo;>;"
    if-nez v3, :cond_3

    .line 387
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/AllAppsList;->TAG:Ljava/lang/String;

    const-string v15, "[updateAllAppsList] appMap is null."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    :cond_3
    invoke-static/range {p1 .. p1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v12

    .line 392
    .local v12, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v13

    .line 394
    .local v13, "matches":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v2, "allappMatchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 396
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/oneplus/h2launcher/util/ComponentKey;Lnet/oneplus/h2launcher/AppInfo;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/oneplus/h2launcher/util/ComponentKey;

    iget-object v5, v14, Lnet/oneplus/h2launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 397
    .local v5, "component":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 398
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 402
    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/oneplus/h2launcher/util/ComponentKey;Lnet/oneplus/h2launcher/AppInfo;>;"
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_0

    .line 404
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 405
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_6
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 406
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 407
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 408
    .local v8, "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 409
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 410
    invoke-interface {v13, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 416
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 417
    .local v9, "item":Landroid/content/ComponentName;
    new-instance v15, Lnet/oneplus/h2launcher/util/ComponentKey;

    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v9, v0}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method


# virtual methods
.method public add(Lnet/oneplus/h2launcher/AppInfo;)V
    .locals 3
    .param p1, "info"    # Lnet/oneplus/h2launcher/AppInfo;

    .prologue
    .line 75
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsList;->mAppFilter:Lnet/oneplus/h2launcher/AppFilter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsList;->mAppFilter:Lnet/oneplus/h2launcher/AppFilter;

    iget-object v1, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object v1, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/AllAppsList;->findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.touchtype.swiftkey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPackage(Landroid/content/Context;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 109
    invoke-static {p1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v7

    .line 110
    .local v7, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    invoke-virtual {v7, p2, p3}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v8

    .line 113
    .local v8, "matches":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 115
    .local v2, "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {p3, v0}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v6, v9

    .line 116
    .local v6, "isDualApp":Z
    :goto_1
    new-instance v0, Lnet/oneplus/h2launcher/AppInfo;

    iget-object v4, p0, Lnet/oneplus/h2launcher/AllAppsList;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    if-nez v6, :cond_1

    move v5, v9

    :goto_2
    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/AppInfo;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/AssetCache;Z)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/AllAppsList;->add(Lnet/oneplus/h2launcher/AppInfo;)V

    goto :goto_0

    .end local v6    # "isDualApp":Z
    :cond_0
    move v6, v10

    .line 115
    goto :goto_1

    .restart local v6    # "isDualApp":Z
    :cond_1
    move v5, v10

    .line 116
    goto :goto_2

    .line 118
    .end local v2    # "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .end local v6    # "isDualApp":Z
    :cond_2
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    return-void
.end method

.method public get(I)Lnet/oneplus/h2launcher/AppInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/AppInfo;

    return-object v0
.end method

.method public quietUserPackage(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "quiet"    # Z

    .prologue
    .line 155
    iget-object v1, p0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    .line 156
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/AppInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 157
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/AppInfo;

    .line 158
    .local v3, "info":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v4, v3, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 159
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v4, v3, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v4, p2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    if-eqz p3, :cond_1

    .line 161
    iget v4, v3, Lnet/oneplus/h2launcher/AppInfo;->isDisabled:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v3, Lnet/oneplus/h2launcher/AppInfo;->isDisabled:I

    .line 165
    :goto_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 163
    :cond_1
    iget v4, v3, Lnet/oneplus/h2launcher/AppInfo;->isDisabled:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Lnet/oneplus/h2launcher/AppInfo;->isDisabled:I

    goto :goto_1

    .line 168
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v3    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :cond_2
    return-void
.end method

.method public removePackage(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 124
    iget-object v1, p0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    .line 125
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/AppInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 126
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/AppInfo;

    .line 127
    .local v3, "info":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v4, v3, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 128
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v4, v3, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v4, p2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    iget-object v4, p0, Lnet/oneplus/h2launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 125
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 133
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v3    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public suspendPackage(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "suspend"    # Z

    .prologue
    .line 139
    iget-object v1, p0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    .line 140
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/AppInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 141
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/AppInfo;

    .line 142
    .local v3, "info":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v4, v3, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 143
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v4, v3, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v4, p2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    if-eqz p3, :cond_1

    .line 145
    iget v4, v3, Lnet/oneplus/h2launcher/AppInfo;->isDisabled:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Lnet/oneplus/h2launcher/AppInfo;->isDisabled:I

    .line 149
    :goto_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 147
    :cond_1
    iget v4, v3, Lnet/oneplus/h2launcher/AppInfo;->isDisabled:I

    and-int/lit8 v4, v4, -0x5

    iput v4, v3, Lnet/oneplus/h2launcher/AppInfo;->isDisabled:I

    goto :goto_1

    .line 152
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v3    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :cond_2
    return-void
.end method

.method public updateIconsAndLabels(Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/ArrayList;)V
    .locals 3
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, "outUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    iget-object v1, p0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/AppInfo;

    .line 173
    .local v0, "info":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v2, v0, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v2, p2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lnet/oneplus/h2launcher/AllAppsList;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/AssetCache;->updateTitleAndIcon(Lnet/oneplus/h2launcher/AppInfo;)V

    .line 175
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    .end local v0    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :cond_1
    return-void
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 184
    invoke-static/range {p1 .. p1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v12

    .line 188
    .local v12, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v13

    .line 193
    .local v13, "matches":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v16

    .line 197
    .local v16, "newLauncherActivityListFromPackageManager":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v18

    .line 200
    .local v18, "removableActivityListFromLocal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_9

    .line 201
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 202
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/AppInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 203
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/AppInfo;

    .line 205
    .local v4, "appInfo":Lnet/oneplus/h2launcher/AppInfo;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 206
    .local v10, "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    iget-object v0, v4, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 207
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 208
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    .end local v4    # "appInfo":Lnet/oneplus/h2launcher/AppInfo;
    .end local v10    # "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 219
    .local v14, "modifyCount":I
    if-lez v14, :cond_4

    .line 220
    const/4 v7, 0x0

    .line 222
    .local v7, "count":I
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v17, "removableActivityHashMapFromLocal":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lnet/oneplus/h2launcher/AppInfo;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/oneplus/h2launcher/AppInfo;

    .line 224
    .local v10, "info":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v0, v10, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 227
    .end local v10    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :cond_3
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_4

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/oneplus/h2launcher/AppInfo;

    .line 229
    .restart local v10    # "info":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v0, v10, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 230
    .local v6, "component":Landroid/content/ComponentName;
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 231
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    invoke-virtual/range {v19 .. v19}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    .line 233
    .local v15, "newComponentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lnet/oneplus/h2launcher/AllAppsList;->replaceBgItemsMap(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 234
    iput-object v15, v10, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 235
    iget-object v0, v10, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 236
    add-int/lit8 v7, v7, 0x1

    .line 237
    if-lt v7, v14, :cond_5

    .line 246
    .end local v6    # "component":Landroid/content/ComponentName;
    .end local v7    # "count":I
    .end local v9    # "i":I
    .end local v10    # "info":Lnet/oneplus/h2launcher/AppInfo;
    .end local v15    # "newComponentName":Landroid/content/ComponentName;
    .end local v17    # "removableActivityHashMapFromLocal":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lnet/oneplus/h2launcher/AppInfo;>;"
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/AllAppsList;->updateAllAppsList(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)V

    .line 250
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 252
    .local v10, "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    invoke-virtual {v10}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 253
    invoke-virtual {v10}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Lnet/oneplus/h2launcher/AppInfo;

    move-result-object v5

    .line 254
    .local v5, "applicationInfo":Lnet/oneplus/h2launcher/AppInfo;
    if-nez v5, :cond_6

    .line 255
    new-instance v20, Lnet/oneplus/h2launcher/AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AllAppsList;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v10, v2, v3}, Lnet/oneplus/h2launcher/AppInfo;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/AssetCache;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/AllAppsList;->add(Lnet/oneplus/h2launcher/AppInfo;)V

    goto :goto_3

    .line 227
    .end local v5    # "applicationInfo":Lnet/oneplus/h2launcher/AppInfo;
    .restart local v6    # "component":Landroid/content/ComponentName;
    .restart local v7    # "count":I
    .restart local v9    # "i":I
    .local v10, "info":Lnet/oneplus/h2launcher/AppInfo;
    .restart local v17    # "removableActivityHashMapFromLocal":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lnet/oneplus/h2launcher/AppInfo;>;"
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 257
    .end local v6    # "component":Landroid/content/ComponentName;
    .end local v7    # "count":I
    .end local v9    # "i":I
    .end local v17    # "removableActivityHashMapFromLocal":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lnet/oneplus/h2launcher/AppInfo;>;"
    .restart local v5    # "applicationInfo":Lnet/oneplus/h2launcher/AppInfo;
    .local v10, "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AllAppsList;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v5, v10, v1}, Lnet/oneplus/h2launcher/AssetCache;->getTitleAndIcon(Lnet/oneplus/h2launcher/AppInfo;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Z)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 264
    .end local v5    # "applicationInfo":Lnet/oneplus/h2launcher/AppInfo;
    .end local v10    # "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    :cond_7
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v8

    .line 265
    .local v8, "finalMatches":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v9, v19, -0x1

    .restart local v9    # "i":I
    :goto_4
    if-ltz v9, :cond_b

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/AppInfo;

    .line 267
    .restart local v5    # "applicationInfo":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v0, v5, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 268
    .restart local v6    # "component":Landroid/content/ComponentName;
    iget-object v0, v5, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 269
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 270
    invoke-static {v8, v6}, Lnet/oneplus/h2launcher/AllAppsList;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AllAppsList;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lnet/oneplus/h2launcher/AssetCache;->remove(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 265
    :cond_8
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 279
    .end local v5    # "applicationInfo":Lnet/oneplus/h2launcher/AppInfo;
    .end local v6    # "component":Landroid/content/ComponentName;
    .end local v8    # "finalMatches":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    .end local v9    # "i":I
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/AppInfo;>;"
    .end local v14    # "modifyCount":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v9, v19, -0x1

    .restart local v9    # "i":I
    :goto_5
    if-ltz v9, :cond_b

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/AppInfo;

    .line 281
    .restart local v5    # "applicationInfo":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v0, v5, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 282
    .restart local v6    # "component":Landroid/content/ComponentName;
    iget-object v0, v5, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 283
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AllAppsList;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lnet/oneplus/h2launcher/AssetCache;->remove(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 279
    :cond_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 290
    .end local v5    # "applicationInfo":Lnet/oneplus/h2launcher/AppInfo;
    .end local v6    # "component":Landroid/content/ComponentName;
    :cond_b
    return-void
.end method
