.class Lnet/oneplus/h2launcher/LauncherModel$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherModel;

.field final synthetic val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$workspaceApps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherModel;

    .prologue
    .line 544
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$4;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$4;->val$workspaceApps:Ljava/util/ArrayList;

    iput-object p4, p0, Lnet/oneplus/h2launcher/LauncherModel$4;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 546
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v14, "addedShortcutsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v5, "addedWorkspaceScreensFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$4;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lnet/oneplus/h2launcher/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 553
    .local v4, "workspaceScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v19, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v19

    .line 554
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$4;->val$workspaceApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnet/oneplus/h2launcher/ItemInfo;

    .line 555
    .local v18, "item":Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, v18

    instance-of v2, v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-nez v2, :cond_1

    move-object/from16 v0, v18

    instance-of v2, v0, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v2, :cond_2

    .line 557
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$4;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/LauncherModel$4;->val$context:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Lnet/oneplus/h2launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, v18

    iget-object v8, v0, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v2, v3, v6, v8}, Lnet/oneplus/h2launcher/LauncherModel;->shortcutExists(Landroid/content/Context;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 563
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$4;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/LauncherModel$4;->val$context:Landroid/content/Context;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lnet/oneplus/h2launcher/LauncherModel;->findSpaceForItem(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;

    move-result-object v16

    .line 566
    .local v16, "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 567
    .local v10, "screenId":J
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    .line 570
    .local v17, "cordinates":[I
    move-object/from16 v0, v18

    instance-of v2, v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-nez v2, :cond_3

    move-object/from16 v0, v18

    instance-of v2, v0, Lnet/oneplus/h2launcher/FolderInfo;

    if-eqz v2, :cond_5

    .line 571
    :cond_3
    move-object/from16 v7, v18

    .line 579
    .local v7, "itemInfo":Lnet/oneplus/h2launcher/ItemInfo;
    :goto_1
    move-object/from16 v0, v18

    instance-of v2, v0, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v2, :cond_4

    .line 580
    move-object/from16 v0, v18

    check-cast v0, Lnet/oneplus/h2launcher/AppInfo;

    move-object v15, v0

    .line 581
    .local v15, "appInfo":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v2, v15, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_4

    const-string v2, "com.android.stk"

    iget-object v3, v15, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 582
    const-string v2, "Launcher.Model"

    const-string v3, "addAndBindAddedWorkspaceItems STK add to DB"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .end local v15    # "appInfo":Lnet/oneplus/h2launcher/AppInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/LauncherModel$4;->val$context:Landroid/content/Context;

    const-wide/16 v8, -0x64

    const/4 v2, 0x0

    aget v12, v17, v2

    const/4 v2, 0x1

    aget v13, v17, v2

    invoke-static/range {v6 .. v13}, Lnet/oneplus/h2launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V

    .line 591
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 593
    .end local v7    # "itemInfo":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v10    # "screenId":J
    .end local v16    # "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    .end local v17    # "cordinates":[I
    .end local v18    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    :catchall_0
    move-exception v2

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 572
    .restart local v10    # "screenId":J
    .restart local v16    # "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    .restart local v17    # "cordinates":[I
    .restart local v18    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_5
    :try_start_1
    move-object/from16 v0, v18

    instance-of v2, v0, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v2, :cond_6

    .line 573
    move-object/from16 v0, v18

    check-cast v0, Lnet/oneplus/h2launcher/AppInfo;

    move-object v2, v0

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/AppInfo;->makeShortcut()Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v7

    .restart local v7    # "itemInfo":Lnet/oneplus/h2launcher/ItemInfo;
    goto :goto_1

    .line 575
    .end local v7    # "itemInfo":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_6
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[addAndBindAddedWorkspaceItems] Unexpected info type. item = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 593
    .end local v10    # "screenId":J
    .end local v16    # "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    .end local v17    # "cordinates":[I
    .end local v18    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_7
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$4;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/LauncherModel$4;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Lnet/oneplus/h2launcher/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 598
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$4;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    new-instance v3, Lnet/oneplus/h2launcher/LauncherModel$4$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14, v5}, Lnet/oneplus/h2launcher/LauncherModel$4$1;-><init>(Lnet/oneplus/h2launcher/LauncherModel$4;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 628
    :cond_8
    return-void
.end method
