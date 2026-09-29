.class final Lnet/oneplus/h2launcher/LauncherModel$19;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel;->deleteFolderContentsFromDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/FolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$info:Lnet/oneplus/h2launcher/FolderInfo;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lnet/oneplus/h2launcher/FolderInfo;)V
    .locals 0

    .prologue
    .line 1441
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$19;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$19;->val$info:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1443
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$19;->val$cr:Landroid/content/ContentResolver;

    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherModel$19;->val$info:Lnet/oneplus/h2launcher/FolderInfo;

    iget-wide v4, v4, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1445
    sget-object v4, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1446
    :try_start_0
    sget-object v3, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherModel$19;->val$info:Lnet/oneplus/h2launcher/FolderInfo;

    iget-wide v6, v5, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    invoke-virtual {v3, v6, v7}, Lnet/oneplus/h2launcher/util/LongArrayMap;->remove(J)V

    .line 1447
    sget-object v3, Lnet/oneplus/h2launcher/LauncherModel;->sBgFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherModel$19;->val$info:Lnet/oneplus/h2launcher/FolderInfo;

    iget-wide v6, v5, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    invoke-virtual {v3, v6, v7}, Lnet/oneplus/h2launcher/util/LongArrayMap;->remove(J)V

    .line 1448
    sget-object v3, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherModel$19;->val$info:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1449
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1451
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$19;->val$cr:Landroid/content/ContentResolver;

    sget-object v4, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "container="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherModel$19;->val$info:Lnet/oneplus/h2launcher/FolderInfo;

    iget-wide v6, v6, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1454
    sget-object v4, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1455
    :try_start_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$19;->val$info:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/ItemInfo;

    .line 1456
    .local v2, "childInfo":Lnet/oneplus/h2launcher/ItemInfo;
    sget-object v3, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    iget-wide v6, v2, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    invoke-virtual {v3, v6, v7}, Lnet/oneplus/h2launcher/util/LongArrayMap;->remove(J)V

    .line 1457
    instance-of v3, v2, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    if-eqz v3, :cond_0

    .line 1458
    move-object v0, v2

    check-cast v0, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    move-object v3, v0

    invoke-interface {v3}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->unregisterDataProvider()V

    .line 1459
    sget-object v3, Lnet/oneplus/h2launcher/LauncherModel;->sBgDynamicItems:Ljava/util/HashSet;

    check-cast v2, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    .end local v2    # "childInfo":Lnet/oneplus/h2launcher/ItemInfo;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1462
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1449
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 1462
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1463
    return-void
.end method
