.class final Lnet/oneplus/h2launcher/LauncherModel$15;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lnet/oneplus/h2launcher/ItemInfo;

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Lnet/oneplus/h2launcher/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0

    .prologue
    .line 1249
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$values:Landroid/content/ContentValues;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    iput-object p4, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1251
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$cr:Landroid/content/ContentResolver;

    sget-object v2, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1254
    sget-object v2, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1255
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v4, v1, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v4, v5, v1, v3}, Lnet/oneplus/h2launcher/LauncherModel;->checkItemInfoLocked(JLnet/oneplus/h2launcher/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 1256
    sget-object v1, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v4, v3, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    invoke-virtual {v1, v4, v5, v3}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 1257
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    iget v1, v1, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_0

    .line 1286
    :cond_0
    :goto_0
    :pswitch_0
    monitor-exit v2

    .line 1287
    return-void

    .line 1259
    :pswitch_1
    sget-object v3, Lnet/oneplus/h2launcher/LauncherModel;->sBgFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v4, v1, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    check-cast v1, Lnet/oneplus/h2launcher/FolderInfo;

    invoke-virtual {v3, v4, v5, v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 1263
    :pswitch_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v4, v1, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v4, v1, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 1265
    :cond_1
    sget-object v1, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    instance-of v1, v1, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    if-eqz v1, :cond_0

    .line 1267
    sget-object v3, Lnet/oneplus/h2launcher/LauncherModel;->sBgDynamicItems:Ljava/util/HashSet;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1286
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1270
    :cond_2
    :try_start_1
    sget-object v1, Lnet/oneplus/h2launcher/LauncherModel;->sBgFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v4, v3, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    invoke-virtual {v1, v4, v5}, Lnet/oneplus/h2launcher/util/LongArrayMap;->containsKey(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding item: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to a folder that "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " doesn\'t exist"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1274
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1276
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    instance-of v1, v1, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    if-eqz v1, :cond_0

    .line 1277
    sget-object v3, Lnet/oneplus/h2launcher/LauncherModel;->sBgDynamicItems:Ljava/util/HashSet;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1283
    :pswitch_3
    sget-object v3, Lnet/oneplus/h2launcher/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$15;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    check-cast v1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
