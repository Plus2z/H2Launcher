.class Lnet/oneplus/h2launcher/LauncherModel$AppsAvailabilityCheck;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppsAvailabilityCheck"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherModel;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherModel;

    .prologue
    .line 4001
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$AppsAvailabilityCheck;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4005
    sget-object v9, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v9

    .line 4006
    :try_start_0
    iget-object v8, p0, Lnet/oneplus/h2launcher/LauncherModel$AppsAvailabilityCheck;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v8, v8, Lnet/oneplus/h2launcher/LauncherModel;->mApp:Lnet/oneplus/h2launcher/LauncherAppState;

    .line 4007
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v1

    .line 4008
    .local v1, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4009
    .local v2, "manager":Landroid/content/pm/PackageManager;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4010
    .local v4, "packagesRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4011
    .local v5, "packagesUnavailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v8, Lnet/oneplus/h2launcher/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4012
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 4013
    .local v7, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4014
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 4015
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4016
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {v1, v6, v7}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 4017
    const/16 v11, 0x2000

    invoke-virtual {v1, v2, v6, v11}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result v3

    .line 4019
    .local v3, "packageOnSdcard":Z
    if-eqz v3, :cond_2

    .line 4020
    const-string v11, "Launcher.Model"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package found on sd-card: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4021
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4038
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v1    # "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    .end local v3    # "packageOnSdcard":Z
    .end local v4    # "packagesRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "packagesUnavailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 4023
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .restart local v1    # "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    .restart local v2    # "manager":Landroid/content/pm/PackageManager;
    .restart local v3    # "packageOnSdcard":Z
    .restart local v4    # "packagesRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "packagesUnavailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v7    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_2
    :try_start_1
    const-string v11, "Launcher.Model"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4024
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4028
    .end local v3    # "packageOnSdcard":Z
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 4029
    iget-object v11, p0, Lnet/oneplus/h2launcher/LauncherModel$AppsAvailabilityCheck;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    new-instance v12, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    iget-object v13, p0, Lnet/oneplus/h2launcher/LauncherModel$AppsAvailabilityCheck;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    const/4 v14, 0x3

    .line 4030
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-direct {v12, v13, v14, v8, v7}, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;-><init>(Lnet/oneplus/h2launcher/LauncherModel;I[Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4029
    invoke-virtual {v11, v12}, Lnet/oneplus/h2launcher/LauncherModel;->enqueuePackageUpdated(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;)V

    .line 4032
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 4033
    iget-object v11, p0, Lnet/oneplus/h2launcher/LauncherModel$AppsAvailabilityCheck;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    new-instance v12, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    iget-object v13, p0, Lnet/oneplus/h2launcher/LauncherModel$AppsAvailabilityCheck;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    const/4 v14, 0x4

    .line 4034
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-direct {v12, v13, v14, v8, v7}, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;-><init>(Lnet/oneplus/h2launcher/LauncherModel;I[Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4033
    invoke-virtual {v11, v12}, Lnet/oneplus/h2launcher/LauncherModel;->enqueuePackageUpdated(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;)V

    goto/16 :goto_0

    .line 4037
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v7    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_5
    sget-object v8, Lnet/oneplus/h2launcher/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 4038
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4039
    return-void
.end method
