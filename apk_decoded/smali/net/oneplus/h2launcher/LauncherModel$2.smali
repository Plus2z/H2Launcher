.class Lnet/oneplus/h2launcher/LauncherModel$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel;->updateSessionDisplayInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherModel;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherModel;

    .prologue
    .line 362
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$2;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 366
    sget-object v8, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v8

    .line 367
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v5, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v6

    .line 370
    .local v6, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    sget-object v7, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/ItemInfo;

    .line 371
    .local v2, "info":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v9, v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v9, :cond_0

    .line 372
    move-object v0, v2

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    move-object v4, v0

    .line 373
    .local v4, "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 374
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->isPromise()Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v1, :cond_0

    iget-object v9, p0, Lnet/oneplus/h2launcher/LauncherModel$2;->val$packageName:Ljava/lang/String;

    .line 375
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 376
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Lnet/oneplus/h2launcher/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 378
    iget-object v9, p0, Lnet/oneplus/h2launcher/LauncherModel$2;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v9, v9, Lnet/oneplus/h2launcher/LauncherModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    iget-object v10, v4, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    .line 380
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->shouldUseLowResIcon()Z

    move-result v11

    .line 378
    invoke-virtual {v9, v4, v10, v6, v11}, Lnet/oneplus/h2launcher/AssetCache;->getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V

    .line 385
    :goto_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 403
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v4    # "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v5    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    .end local v6    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 383
    .restart local v1    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .restart local v4    # "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    .restart local v5    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    .restart local v6    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_1
    :try_start_1
    iget-object v9, p0, Lnet/oneplus/h2launcher/LauncherModel$2;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v9, v9, Lnet/oneplus/h2launcher/LauncherModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v4, v9}, Lnet/oneplus/h2launcher/ShortcutInfo;->updateIcon(Lnet/oneplus/h2launcher/AssetCache;)V

    goto :goto_1

    .line 390
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v4    # "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 392
    new-instance v3, Lnet/oneplus/h2launcher/LauncherModel$2$1;

    invoke-direct {v3, p0, v5, v6}, Lnet/oneplus/h2launcher/LauncherModel$2$1;-><init>(Lnet/oneplus/h2launcher/LauncherModel$2;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 401
    .local v3, "r":Ljava/lang/Runnable;
    iget-object v7, p0, Lnet/oneplus/h2launcher/LauncherModel$2;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v7, v7, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    invoke-virtual {v7, v3}, Lnet/oneplus/h2launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 403
    .end local v3    # "r":Ljava/lang/Runnable;
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    return-void
.end method
