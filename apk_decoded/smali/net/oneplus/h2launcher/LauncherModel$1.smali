.class Lnet/oneplus/h2launcher/LauncherModel$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel;->setPackageState(Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherModel;

.field final synthetic val$installInfo:Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel;Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherModel;

    .prologue
    .line 304
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$1;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$1;->val$installInfo:Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 308
    sget-object v8, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v8

    .line 309
    :try_start_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 311
    .local v5, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lnet/oneplus/h2launcher/ItemInfo;>;"
    iget-object v7, p0, Lnet/oneplus/h2launcher/LauncherModel$1;->val$installInfo:Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v7, v7, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    if-nez v7, :cond_0

    .line 313
    monitor-exit v8

    .line 353
    :goto_0
    return-void

    .line 316
    :cond_0
    sget-object v7, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/ItemInfo;

    .line 317
    .local v2, "info":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v9, v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v9, :cond_1

    .line 318
    move-object v0, v2

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    move-object v4, v0

    .line 319
    .local v4, "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 320
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->isPromise()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v1, :cond_1

    iget-object v9, p0, Lnet/oneplus/h2launcher/LauncherModel$1;->val$installInfo:Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v9, v9, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    .line 321
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 322
    iget-object v9, p0, Lnet/oneplus/h2launcher/LauncherModel$1;->val$installInfo:Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v9, v9, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    invoke-virtual {v4, v9}, Lnet/oneplus/h2launcher/ShortcutInfo;->setInstallProgress(I)V

    .line 324
    iget-object v9, p0, Lnet/oneplus/h2launcher/LauncherModel$1;->val$installInfo:Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v9, v9, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 326
    iget v9, v4, Lnet/oneplus/h2launcher/ShortcutInfo;->status:I

    and-int/lit8 v9, v9, -0x5

    iput v9, v4, Lnet/oneplus/h2launcher/ShortcutInfo;->status:I

    .line 328
    :cond_2
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 352
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v4    # "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v5    # "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lnet/oneplus/h2launcher/ItemInfo;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 333
    .restart local v5    # "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lnet/oneplus/h2launcher/ItemInfo;>;"
    :cond_3
    :try_start_1
    sget-object v7, Lnet/oneplus/h2launcher/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    .line 334
    .local v6, "widget":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    iget-object v9, v6, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lnet/oneplus/h2launcher/LauncherModel$1;->val$installInfo:Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v10, v10, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 335
    iget-object v9, p0, Lnet/oneplus/h2launcher/LauncherModel$1;->val$installInfo:Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v9, v9, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    iput v9, v6, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->installProgress:I

    .line 336
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 340
    .end local v6    # "widget":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    :cond_5
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 342
    new-instance v3, Lnet/oneplus/h2launcher/LauncherModel$1$1;

    invoke-direct {v3, p0, v5}, Lnet/oneplus/h2launcher/LauncherModel$1$1;-><init>(Lnet/oneplus/h2launcher/LauncherModel$1;Ljava/util/HashSet;)V

    .line 350
    .local v3, "r":Ljava/lang/Runnable;
    iget-object v7, p0, Lnet/oneplus/h2launcher/LauncherModel$1;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v7, v7, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    invoke-virtual {v7, v3}, Lnet/oneplus/h2launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 352
    .end local v3    # "r":Ljava/lang/Runnable;
    :cond_6
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
