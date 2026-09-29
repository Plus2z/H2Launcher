.class final Lnet/oneplus/h2launcher/LauncherModel$17;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 1338
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$17;->val$items:Ljava/util/ArrayList;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$17;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1340
    iget-object v7, p0, Lnet/oneplus/h2launcher/LauncherModel$17;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/ItemInfo;

    .line 1342
    .local v3, "item":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v7, v3, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v7, :cond_0

    move-object v7, v3

    .line 1343
    check-cast v7, Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 1344
    .local v5, "name":Landroid/content/ComponentName;
    if-eqz v5, :cond_0

    const-string v7, "com.android.stk"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1345
    const-string v7, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "really Delete stk from db & sBgWorkspaceItems, id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v3, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    .end local v5    # "name":Landroid/content/ComponentName;
    :cond_0
    iget-wide v10, v3, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    invoke-static {v10, v11}, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v6

    .line 1349
    .local v6, "uri":Landroid/net/Uri;
    iget-object v7, p0, Lnet/oneplus/h2launcher/LauncherModel$17;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v7, v6, v14, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1352
    sget-object v9, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1353
    :try_start_0
    iget v7, v3, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    packed-switch v7, :pswitch_data_0

    .line 1379
    :cond_1
    :goto_1
    :pswitch_0
    sget-object v7, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    iget-wide v10, v3, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    invoke-virtual {v7, v10, v11}, Lnet/oneplus/h2launcher/util/LongArrayMap;->remove(J)V

    .line 1380
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1355
    :pswitch_1
    :try_start_1
    sget-object v7, Lnet/oneplus/h2launcher/LauncherModel;->sBgFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    iget-wide v10, v3, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    invoke-virtual {v7, v10, v11}, Lnet/oneplus/h2launcher/util/LongArrayMap;->remove(J)V

    .line 1356
    sget-object v7, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/ItemInfo;

    .line 1357
    .local v2, "info":Lnet/oneplus/h2launcher/ItemInfo;
    iget-wide v10, v2, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    iget-wide v12, v3, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    .line 1360
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleting a folder ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") which still "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "contains items ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1362
    .local v4, "msg":Ljava/lang/String;
    const-string v10, "Launcher.Model"

    invoke-static {v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1365
    .end local v2    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    sget-object v7, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1369
    :pswitch_2
    sget-object v7, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1370
    instance-of v7, v3, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    if-eqz v7, :cond_1

    .line 1371
    move-object v0, v3

    check-cast v0, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    move-object v7, v0

    invoke-interface {v7}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->unregisterDataProvider()V

    .line 1372
    sget-object v10, Lnet/oneplus/h2launcher/LauncherModel;->sBgDynamicItems:Ljava/util/HashSet;

    move-object v0, v3

    check-cast v0, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    move-object v7, v0

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1376
    :pswitch_3
    sget-object v10, Lnet/oneplus/h2launcher/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    move-object v0, v3

    check-cast v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    move-object v7, v0

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1382
    .end local v3    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_4
    return-void

    .line 1353
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
