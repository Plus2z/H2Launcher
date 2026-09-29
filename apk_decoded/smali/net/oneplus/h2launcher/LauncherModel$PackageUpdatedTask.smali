.class Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUpdatedTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_SUSPEND:I = 0x5

.field public static final OP_UNAVAILABLE:I = 0x4

.field public static final OP_UNSUSPEND:I = 0x6

.field public static final OP_UPDATE:I = 0x2

.field public static final OP_USER_AVAILABLE:I = 0x7

.field public static final OP_USER_UNAVAILABLE:I = 0x8


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherModel;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/LauncherModel;I[Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p2, "op"    # I
    .param p3, "packages"    # [Ljava/lang/String;
    .param p4, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 4057
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4058
    iput p2, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    .line 4059
    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 4060
    iput-object p4, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 4061
    return-void
.end method


# virtual methods
.method public run()V
    .locals 52

    .prologue
    .line 4064
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-boolean v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mHasLoaderCompletedOnce:Z

    if-nez v4, :cond_0

    .line 4472
    :goto_0
    return-void

    .line 4068
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mApp:Lnet/oneplus/h2launcher/LauncherAppState;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v18

    .line 4070
    .local v18, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v34, v0

    .line 4071
    .local v34, "packages":[Ljava/lang/String;
    move-object/from16 v0, v34

    array-length v10, v0

    .line 4072
    .local v10, "N":I
    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    packed-switch v4, :pswitch_data_0

    .line 4134
    :cond_1
    :goto_1
    const/4 v12, 0x0

    .line 4135
    .local v12, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    const/16 v30, 0x0

    .line 4136
    .local v30, "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4138
    .local v7, "removedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v4, v4, Lnet/oneplus/h2launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 4139
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v4, v4, Lnet/oneplus/h2launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4140
    .restart local v12    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v4, v4, Lnet/oneplus/h2launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4142
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v4, v4, Lnet/oneplus/h2launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 4143
    new-instance v30, Ljava/util/ArrayList;

    .end local v30    # "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v4, v4, Lnet/oneplus/h2launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4144
    .restart local v30    # "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v4, v4, Lnet/oneplus/h2launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4146
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v4, v4, Lnet/oneplus/h2launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 4147
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v4, v4, Lnet/oneplus/h2launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4148
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v4, v4, Lnet/oneplus/h2launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4151
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v6

    .line 4152
    .local v6, "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-nez v6, :cond_b

    .line 4153
    const-string v4, "Launcher.Model"

    const-string v5, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4074
    .end local v6    # "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    .end local v7    # "removedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    .end local v12    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    .end local v30    # "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    :pswitch_0
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    move/from16 v0, v20

    if-ge v0, v10, :cond_5

    .line 4075
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "mAllAppsList.addPackage "

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v49, v34, v20

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    aget-object v5, v34, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v4, v5, v0}, Lnet/oneplus/h2launcher/AssetCache;->updateIconsForPkg(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4077
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    aget-object v5, v34, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v49, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v49

    invoke-virtual {v4, v0, v5, v1}, Lnet/oneplus/h2launcher/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4074
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 4080
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->get(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;

    move-result-object v19

    .line 4081
    .local v19, "heuristic":Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;
    if-eqz v19, :cond_1

    .line 4082
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->processPackageAdd([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4087
    .end local v19    # "heuristic":Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;
    .end local v20    # "i":I
    :pswitch_1
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_3
    move/from16 v0, v20

    if-ge v0, v10, :cond_1

    .line 4088
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "mAllAppsList.updatePackage "

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v49, v34, v20

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4089
    const-string v4, "com.android.stk"

    aget-object v5, v34, v20

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4090
    const-string v4, "Launcher.Model"

    const-string v5, "STK updatePackage"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4092
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    aget-object v5, v34, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v4, v5, v0}, Lnet/oneplus/h2launcher/AssetCache;->updateIconsForPkg(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4093
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    aget-object v5, v34, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v49, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v49

    invoke-virtual {v4, v0, v5, v1}, Lnet/oneplus/h2launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4094
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mApp:Lnet/oneplus/h2launcher/LauncherAppState;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getWidgetCache()Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    move-result-object v4

    aget-object v5, v34, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v4, v5, v0}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4087
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 4098
    .end local v20    # "i":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->get(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;

    move-result-object v19

    .line 4099
    .restart local v19    # "heuristic":Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;
    if-eqz v19, :cond_7

    .line 4100
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->processPackageRemoved([Ljava/lang/String;)V

    .line 4102
    :cond_7
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_4
    move/from16 v0, v20

    if-ge v0, v10, :cond_8

    .line 4103
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "mAllAppsList.removePackage "

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v49, v34, v20

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4104
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    aget-object v5, v34, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v4, v5, v0}, Lnet/oneplus/h2launcher/AssetCache;->removeIconForPackageUpdate(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4102
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 4109
    .end local v19    # "heuristic":Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;
    .end local v20    # "i":I
    :cond_8
    :pswitch_3
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_5
    move/from16 v0, v20

    if-ge v0, v10, :cond_1

    .line 4110
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "mAllAppsList.removePackage "

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v49, v34, v20

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4111
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    aget-object v5, v34, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v4, v5, v0}, Lnet/oneplus/h2launcher/AllAppsList;->removePackage(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4112
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mApp:Lnet/oneplus/h2launcher/LauncherAppState;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getWidgetCache()Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    move-result-object v4

    aget-object v5, v34, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v4, v5, v0}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4109
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 4117
    .end local v20    # "i":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_9

    const/16 v45, 0x1

    .line 4118
    .local v45, "suspend":Z
    :goto_6
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_7
    move/from16 v0, v20

    if-ge v0, v10, :cond_1

    .line 4119
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "mAllAppsList.suspendPackage "

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v49, " "

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v49, v34, v20

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4120
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    aget-object v5, v34, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v45

    invoke-virtual {v4, v5, v0, v1}, Lnet/oneplus/h2launcher/AllAppsList;->suspendPackage(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V

    .line 4118
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 4117
    .end local v20    # "i":I
    .end local v45    # "suspend":Z
    :cond_9
    const/16 v45, 0x0

    goto :goto_6

    .line 4126
    :pswitch_5
    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_a

    const/16 v39, 0x1

    .line 4127
    .local v39, "quiet":Z
    :goto_8
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_9
    move/from16 v0, v20

    if-ge v0, v10, :cond_1

    .line 4128
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "mAllAppsList.quietUserPackage "

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v49, " "

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v49, v34, v20

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4129
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    aget-object v5, v34, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v39

    invoke-virtual {v4, v5, v0, v1}, Lnet/oneplus/h2launcher/AllAppsList;->quietUserPackage(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V

    .line 4127
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 4126
    .end local v20    # "i":I
    .end local v39    # "quiet":Z
    :cond_a
    const/16 v39, 0x0

    goto :goto_8

    .line 4157
    .restart local v6    # "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    .restart local v7    # "removedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    .restart local v12    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    .restart local v30    # "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    :cond_b
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 4160
    .local v14, "addedOrUpdatedApps":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lnet/oneplus/h2launcher/AppInfo;>;"
    if-eqz v12, :cond_c

    .line 4161
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/oos/StyleManager;->addExtraWorkspaceItems()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4162
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4163
    .local v13, "addedInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v13}, Lnet/oneplus/h2launcher/LauncherModel;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 4172
    .end local v13    # "addedInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    :cond_c
    if-eqz v30, :cond_f

    .line 4173
    move-object/from16 v31, v30

    .line 4174
    .local v31, "modifiedFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lnet/oneplus/h2launcher/AppInfo;

    .line 4175
    .local v15, "ai":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v5, v15, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v14, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 4165
    .end local v15    # "ai":Lnet/oneplus/h2launcher/AppInfo;
    .end local v31    # "modifiedFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v12}, Lnet/oneplus/h2launcher/LauncherModel;->addAppsToAllApps(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 4166
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lnet/oneplus/h2launcher/AppInfo;

    .line 4167
    .restart local v15    # "ai":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v5, v15, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v14, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 4178
    .end local v15    # "ai":Lnet/oneplus/h2launcher/AppInfo;
    .restart local v31    # "modifiedFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    new-instance v5, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v5, v0, v6, v1}, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$1;-><init>(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 4189
    .end local v31    # "modifiedFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_10

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_10

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_10

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_10

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_10

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_28

    .line 4191
    :cond_10
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 4192
    .local v46, "updatedShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 4193
    .local v41, "removedShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 4195
    .local v48, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;>;"
    new-instance v33, Ljava/util/HashSet;

    invoke-static/range {v34 .. v34}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4196
    .local v33, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v5, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4197
    :try_start_0
    sget-object v4, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lnet/oneplus/h2launcher/ItemInfo;

    .line 4198
    .local v24, "info":Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, v24

    instance-of v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    move/from16 v49, v0

    if-eqz v49, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v49, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_22

    .line 4199
    move-object/from16 v0, v24

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    move-object/from16 v44, v0

    .line 4200
    .local v44, "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    const/16 v25, 0x0

    .line 4201
    .local v25, "infoUpdated":Z
    const/16 v43, 0x0

    .line 4202
    .local v43, "shortcutUpdated":Z
    const/16 v22, 0x0

    .line 4204
    .local v22, "iconUpdated":Z
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v49, v0

    const/16 v50, 0x5

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_12

    .line 4205
    move-object/from16 v0, v44

    iget v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    move/from16 v49, v0

    or-int/lit8 v49, v49, 0x4

    move/from16 v0, v49

    move-object/from16 v1, v44

    iput v0, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    .line 4206
    const/16 v25, 0x1

    .line 4208
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v49, v0

    const/16 v50, 0x6

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_13

    .line 4209
    move-object/from16 v0, v44

    iget v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    move/from16 v49, v0

    and-int/lit8 v49, v49, -0x5

    move/from16 v0, v49

    move-object/from16 v1, v44

    iput v0, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    .line 4210
    const/16 v25, 0x1

    .line 4212
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v49, v0

    const/16 v50, 0x7

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_14

    .line 4213
    move-object/from16 v0, v44

    iget v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    move/from16 v49, v0

    and-int/lit8 v49, v49, -0x9

    move/from16 v0, v49

    move-object/from16 v1, v44

    iput v0, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    .line 4214
    const/16 v25, 0x1

    .line 4216
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v49, v0

    const/16 v50, 0x8

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_15

    .line 4217
    move-object/from16 v0, v44

    iget v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    move/from16 v49, v0

    or-int/lit8 v49, v49, 0x8

    move/from16 v0, v49

    move-object/from16 v1, v44

    iput v0, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    .line 4218
    const/16 v25, 0x1

    .line 4222
    :cond_15
    move-object/from16 v0, v44

    iget-object v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    move-object/from16 v49, v0

    if-eqz v49, :cond_17

    move-object/from16 v0, v44

    iget-object v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    move-object/from16 v49, v0

    .line 4223
    move-object/from16 v0, v33

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_17

    .line 4224
    move-object/from16 v0, v44

    iget-object v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 4227
    .local v21, "icon":Landroid/graphics/Bitmap;
    if-eqz v21, :cond_17

    .line 4228
    invoke-static/range {v21 .. v21}, Lnet/oneplus/h2launcher/IconCache;->checkAndResizeIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v42

    .line 4229
    .local v42, "resizeIcon":Landroid/graphics/Bitmap;
    if-eqz v42, :cond_16

    .line 4230
    move-object/from16 v21, v42

    .line 4233
    :cond_16
    move-object/from16 v0, v44

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 4234
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->usingFallbackIcon:Z

    .line 4235
    const/16 v25, 0x1

    .line 4239
    .end local v21    # "icon":Landroid/graphics/Bitmap;
    .end local v42    # "resizeIcon":Landroid/graphics/Bitmap;
    :cond_17
    invoke-virtual/range {v44 .. v44}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v17

    .line 4240
    .local v17, "cn":Landroid/content/ComponentName;
    if-eqz v17, :cond_1f

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1f

    .line 4241
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/AssetCache;->packagedUpdated(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 4242
    const/16 v22, 0x1

    .line 4243
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lnet/oneplus/h2launcher/AppInfo;

    .line 4245
    .local v16, "appInfo":Lnet/oneplus/h2launcher/AppInfo;
    invoke-virtual/range {v44 .. v44}, Lnet/oneplus/h2launcher/ShortcutInfo;->isPromise()Z

    move-result v49

    if-eqz v49, :cond_1d

    .line 4246
    const/16 v49, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v49

    if-eqz v49, :cond_1b

    .line 4248
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v37

    .line 4249
    .local v37, "pm":Landroid/content/pm/PackageManager;
    new-instance v49, Landroid/content/Intent;

    const-string v50, "android.intent.action.MAIN"

    invoke-direct/range {v49 .. v50}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4251
    move-object/from16 v0, v49

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v49

    const-string v50, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v49 .. v50}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v49

    const/high16 v50, 0x10000

    .line 4249
    move-object/from16 v0, v37

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v29

    .line 4253
    .local v29, "matched":Landroid/content/pm/ResolveInfo;
    if-nez v29, :cond_1b

    .line 4256
    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v49

    .line 4255
    move-object/from16 v0, v37

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v27

    .line 4257
    .local v27, "intent":Landroid/content/Intent;
    if-eqz v27, :cond_18

    .line 4258
    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    .line 4259
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "appInfo":Lnet/oneplus/h2launcher/AppInfo;
    check-cast v16, Lnet/oneplus/h2launcher/AppInfo;

    .line 4262
    .restart local v16    # "appInfo":Lnet/oneplus/h2launcher/AppInfo;
    :cond_18
    if-eqz v27, :cond_19

    if-nez v16, :cond_1a

    .line 4263
    :cond_19
    move-object/from16 v0, v41

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 4322
    .end local v16    # "appInfo":Lnet/oneplus/h2launcher/AppInfo;
    .end local v17    # "cn":Landroid/content/ComponentName;
    .end local v22    # "iconUpdated":Z
    .end local v24    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v25    # "infoUpdated":Z
    .end local v27    # "intent":Landroid/content/Intent;
    .end local v29    # "matched":Landroid/content/pm/ResolveInfo;
    .end local v37    # "pm":Landroid/content/pm/PackageManager;
    .end local v43    # "shortcutUpdated":Z
    .end local v44    # "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4266
    .restart local v16    # "appInfo":Lnet/oneplus/h2launcher/AppInfo;
    .restart local v17    # "cn":Landroid/content/ComponentName;
    .restart local v22    # "iconUpdated":Z
    .restart local v24    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .restart local v25    # "infoUpdated":Z
    .restart local v27    # "intent":Landroid/content/Intent;
    .restart local v29    # "matched":Landroid/content/pm/ResolveInfo;
    .restart local v37    # "pm":Landroid/content/pm/PackageManager;
    .restart local v43    # "shortcutUpdated":Z
    .restart local v44    # "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1a
    :try_start_1
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    iput-object v0, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    .line 4271
    .end local v27    # "intent":Landroid/content/Intent;
    .end local v29    # "matched":Landroid/content/pm/ResolveInfo;
    .end local v37    # "pm":Landroid/content/pm/PackageManager;
    :cond_1b
    if-eqz v16, :cond_1c

    .line 4272
    move-object/from16 v0, v16

    iget v0, v0, Lnet/oneplus/h2launcher/AppInfo;->flags:I

    move/from16 v49, v0

    move/from16 v0, v49

    move-object/from16 v1, v44

    iput v0, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    .line 4275
    :cond_1c
    move-object/from16 v0, v44

    iget-object v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v44

    iput-object v0, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 4276
    const/16 v49, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v44

    iput-object v0, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    .line 4277
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, v44

    iput v0, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->status:I

    .line 4278
    const/16 v25, 0x1

    .line 4279
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    move-object/from16 v49, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ShortcutInfo;->forceUpdateIcon(Lnet/oneplus/h2launcher/AssetCache;)V

    .line 4282
    :cond_1d
    if-eqz v16, :cond_1e

    const-string v49, "android.intent.action.MAIN"

    move-object/from16 v0, v44

    iget-object v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1e

    move-object/from16 v0, v44

    iget v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    move/from16 v49, v0

    if-nez v49, :cond_1e

    .line 4284
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    move-object/from16 v49, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ShortcutInfo;->forceUpdateIcon(Lnet/oneplus/h2launcher/AssetCache;)V

    .line 4285
    move-object/from16 v0, v16

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v44

    iput-object v0, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 4286
    move-object/from16 v0, v16

    iget-object v0, v0, Lnet/oneplus/h2launcher/AppInfo;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v44

    iput-object v0, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 4287
    const/16 v25, 0x1

    .line 4290
    :cond_1e
    move-object/from16 v0, v44

    iget v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    move/from16 v49, v0

    and-int/lit8 v49, v49, 0x2

    if-eqz v49, :cond_1f

    .line 4292
    move-object/from16 v0, v44

    iget v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    move/from16 v49, v0

    and-int/lit8 v49, v49, -0x3

    move/from16 v0, v49

    move-object/from16 v1, v44

    iput v0, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    .line 4293
    const/16 v43, 0x1

    .line 4297
    .end local v16    # "appInfo":Lnet/oneplus/h2launcher/AppInfo;
    :cond_1f
    if-nez v25, :cond_20

    if-nez v43, :cond_20

    if-eqz v22, :cond_21

    .line 4298
    :cond_20
    move-object/from16 v0, v46

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4300
    :cond_21
    if-eqz v25, :cond_11

    .line 4301
    move-object/from16 v0, v18

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V

    goto/16 :goto_c

    .line 4303
    .end local v17    # "cn":Landroid/content/ComponentName;
    .end local v22    # "iconUpdated":Z
    .end local v25    # "infoUpdated":Z
    .end local v43    # "shortcutUpdated":Z
    .end local v44    # "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_22
    move-object/from16 v0, v24

    instance-of v0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    move/from16 v49, v0

    if-eqz v49, :cond_11

    .line 4304
    move-object/from16 v0, v24

    check-cast v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    move-object/from16 v47, v0

    .line 4305
    .local v47, "widgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v49, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_11

    const/16 v49, 0x2

    .line 4306
    move-object/from16 v0, v47

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v49

    if-eqz v49, :cond_11

    move-object/from16 v0, v47

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    move-object/from16 v49, v0

    .line 4307
    invoke-virtual/range {v49 .. v49}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_11

    .line 4308
    move-object/from16 v0, v47

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    move/from16 v49, v0

    and-int/lit8 v49, v49, -0xb

    move/from16 v0, v49

    move-object/from16 v1, v47

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    .line 4315
    move-object/from16 v0, v47

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    move/from16 v49, v0

    or-int/lit8 v49, v49, 0x4

    move/from16 v0, v49

    move-object/from16 v1, v47

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    .line 4317
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4318
    move-object/from16 v0, v18

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V

    goto/16 :goto_c

    .line 4322
    .end local v24    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v47    # "widgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    :cond_23
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4324
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_27

    .line 4325
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    new-instance v5, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v46

    invoke-direct {v5, v0, v1, v2, v6}, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$2;-><init>(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 4345
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_27

    .line 4346
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 4347
    .local v24, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual/range {v24 .. v24}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_25

    const-string v5, "com.android.stk"

    invoke-virtual/range {v24 .. v24}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 4348
    const-string v5, "Launcher.Model"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "STK deleteItem From Database on PackagedUpdatedTask, shortcut id = "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v24

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->id:J

    move-wide/from16 v50, v0

    invoke-virtual/range {v49 .. v51}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-static {v5, v0}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 4351
    .end local v24    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_26
    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 4354
    :cond_27
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    .line 4355
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    new-instance v5, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v5, v0, v6, v1}, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$3;-><init>(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 4366
    .end local v33    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v41    # "removedShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    .end local v46    # "updatedShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    .end local v48    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;>;"
    :cond_28
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4368
    .local v8, "removedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_29

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_29

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2e

    .line 4370
    :cond_29
    invoke-static/range {v34 .. v34}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4380
    :cond_2a
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 4382
    :cond_2b
    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_30

    .line 4383
    const/4 v9, 0x2

    .line 4408
    .local v9, "removeReason":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v0, v18

    invoke-static {v0, v8, v4}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->removeFromInstallQueue(Landroid/content/Context;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4410
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v0, v4, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    move-object/from16 v49, v0

    new-instance v4, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$4;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$4;-><init>(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 4430
    .end local v9    # "removeReason":I
    :cond_2c
    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2d

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2d

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3c

    .line 4432
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    const/16 v32, 0x1

    .line 4435
    .local v32, "needToRefresh":Z
    :goto_f
    sget-object v5, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4436
    :try_start_2
    sget-object v4, Lnet/oneplus/h2launcher/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    if-eqz v4, :cond_38

    .line 4437
    new-instance v36, Ljava/util/HashSet;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashSet;-><init>()V

    .line 4438
    .local v36, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-static {v0, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4440
    sget-object v4, Lnet/oneplus/h2launcher/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v49

    :goto_10
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lnet/oneplus/h2launcher/util/ComponentKey;

    .line 4441
    .local v28, "key":Lnet/oneplus/h2launcher/util/ComponentKey;
    move-object/from16 v0, v28

    iget-object v4, v0, Lnet/oneplus/h2launcher/util/ComponentKey;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    move-object/from16 v0, v28

    iget-object v4, v0, Lnet/oneplus/h2launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 4442
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    if-eqz v4, :cond_37

    const/4 v4, 0x1

    :goto_11
    or-int v32, v32, v4

    .line 4443
    goto :goto_10

    .line 4371
    .end local v28    # "key":Lnet/oneplus/h2launcher/util/ComponentKey;
    .end local v32    # "needToRefresh":Z
    .end local v36    # "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2e
    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2a

    .line 4373
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_12
    move/from16 v0, v20

    if-ge v0, v10, :cond_2a

    .line 4374
    aget-object v4, v34, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lnet/oneplus/h2launcher/LauncherModel;->isPackageDisabled(Landroid/content/Context;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 4375
    aget-object v4, v34, v20

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4373
    :cond_2f
    add-int/lit8 v20, v20, 0x1

    goto :goto_12

    .line 4384
    .end local v20    # "i":I
    :cond_30
    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_31

    .line 4385
    const/4 v9, 0x4

    .restart local v9    # "removeReason":I
    goto/16 :goto_e

    .line 4388
    .end local v9    # "removeReason":I
    :cond_31
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 4389
    .local v38, "pn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-static {v0, v1, v5}, Lnet/oneplus/h2launcher/LauncherModel;->deletePackageFromDatabase(Landroid/content/Context;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    goto :goto_13

    .line 4392
    .end local v38    # "pn":Ljava/lang/String;
    :cond_32
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/oneplus/h2launcher/AppInfo;

    .line 4393
    .local v11, "a":Lnet/oneplus/h2launcher/AppInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v0, v11, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-virtual {v5, v0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->getItemInfoForComponentName(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v26

    .line 4395
    .local v26, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    iget-object v5, v11, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v5, :cond_34

    iget-object v5, v11, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v49, "com.android.stk"

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 4396
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 4397
    .local v23, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_33

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lnet/oneplus/h2launcher/ItemInfo;

    .line 4398
    .local v24, "info":Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, v24

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    move-wide/from16 v50, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    move-object/from16 v0, v23

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 4400
    .end local v24    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_33
    const-string v5, "Launcher.Model"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "STK deleteItem From Database on PackagedUpdatedTask, id = "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-static {v5, v0}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4402
    .end local v23    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_34
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_14

    .line 4404
    .end local v11    # "a":Lnet/oneplus/h2launcher/AppInfo;
    .end local v26    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    :cond_35
    const/4 v9, 0x0

    .restart local v9    # "removeReason":I
    goto/16 :goto_e

    .line 4432
    .end local v9    # "removeReason":I
    :cond_36
    const/16 v32, 0x0

    goto/16 :goto_f

    .line 4442
    .restart local v28    # "key":Lnet/oneplus/h2launcher/util/ComponentKey;
    .restart local v32    # "needToRefresh":Z
    .restart local v36    # "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_37
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 4445
    .end local v28    # "key":Lnet/oneplus/h2launcher/util/ComponentKey;
    .end local v36    # "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_38
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4447
    if-nez v32, :cond_3b

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3b

    .line 4449
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v37

    .line 4451
    .restart local v37    # "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    array-length v0, v0

    move/from16 v50, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_16
    move/from16 v0, v50

    if-ge v5, v0, :cond_3b

    aget-object v35, v49, v5

    .line 4452
    .local v35, "pkg":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v51, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object/from16 v0, v51

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4454
    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/16 v51, 0x0

    .line 4452
    move-object/from16 v0, v37

    move/from16 v1, v51

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v40

    .line 4455
    .local v40, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v40, :cond_39

    .line 4451
    :goto_17
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_16

    .line 4445
    .end local v35    # "pkg":Ljava/lang/String;
    .end local v37    # "pm":Landroid/content/pm/PackageManager;
    .end local v40    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 4456
    .restart local v35    # "pkg":Ljava/lang/String;
    .restart local v37    # "pm":Landroid/content/pm/PackageManager;
    .restart local v40    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_39
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3a

    const/4 v4, 0x1

    :goto_18
    or-int v32, v32, v4

    goto :goto_17

    :cond_3a
    const/4 v4, 0x0

    goto :goto_18

    .line 4460
    .end local v35    # "pkg":Ljava/lang/String;
    .end local v37    # "pm":Landroid/content/pm/PackageManager;
    .end local v40    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move/from16 v0, v32

    invoke-virtual {v4, v6, v0}, Lnet/oneplus/h2launcher/LauncherModel;->loadAndBindWidgetsAndShortcuts(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Z)V

    .line 4464
    .end local v32    # "needToRefresh":Z
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    new-instance v5, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$5;-><init>(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4072
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
