.class Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;
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
    name = "LoaderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field mIsLoadingAndBindingWorkspace:Z

.field mLoadAndBindStepFinished:Z

.field private mStopped:Z

.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherModel;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "flags"    # I

    .prologue
    .line 1763
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1764
    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1765
    iput p3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mFlags:I

    .line 1766
    return-void
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Landroid/content/Context;)Ljava/util/TreeMap;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 1756
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Ljava/util/ArrayList;II)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 1756
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->loadItemsTitleAndIcon(Ljava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/util/LongArrayMap;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Lnet/oneplus/h2launcher/util/LongArrayMap;
    .param p5, "x5"    # Ljava/util/ArrayList;

    .prologue
    .line 1756
    invoke-direct/range {p0 .. p5}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->bindWorkspaceItems(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/util/LongArrayMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;J)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    .param p2, "x2"    # J

    .prologue
    .line 1756
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->doneBindingItems(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;J)V

    return-void
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    .prologue
    .line 1756
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->bindQuickPage(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)V

    return-void
.end method

.method static synthetic access$800(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    .prologue
    .line 1756
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->fireWorkspaceCurrentPageStepFinished()V

    return-void
.end method

.method private bindQuickPage(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)V
    .locals 2
    .param p1, "oldCallbacks"    # Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    .prologue
    .line 3483
    new-instance v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$7;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$7;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)V

    .line 3492
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 3493
    return-void
.end method

.method private bindRemainingWorkspace()V
    .locals 2

    .prologue
    .line 1791
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/LauncherModel;->access$000(Lnet/oneplus/h2launcher/LauncherModel;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1792
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/LauncherModel;->access$000(Lnet/oneplus/h2launcher/LauncherModel;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1793
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->access$002(Lnet/oneplus/h2launcher/LauncherModel;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1795
    :cond_0
    return-void
.end method

.method private bindWorkspace(I)V
    .locals 38
    .param p1, "synchronizeBindPage"    # I

    .prologue
    .line 3585
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    .line 3590
    .local v32, "t":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v5, v5, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    .line 3591
    .local v25, "oldCallbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-nez v25, :cond_0

    .line 3593
    const-string v5, "Launcher.Model"

    const-string v11, "LoaderTask running with no launcher"

    invoke-static {v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    :goto_0
    return-void

    .line 3598
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3599
    .local v8, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3601
    .local v14, "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 3606
    .local v36, "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v11, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v11

    .line 3607
    :try_start_0
    sget-object v5, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3608
    sget-object v5, Lnet/oneplus/h2launcher/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3609
    sget-object v5, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3611
    sget-object v5, Lnet/oneplus/h2launcher/LauncherModel;->sBgFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/util/LongArrayMap;->clone()Lnet/oneplus/h2launcher/util/LongArrayMap;

    move-result-object v21

    .line 3612
    .local v21, "folders":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/FolderInfo;>;"
    sget-object v5, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/util/LongArrayMap;->clone()Lnet/oneplus/h2launcher/util/LongArrayMap;

    move-result-object v20

    .line 3613
    .local v20, "itemsIdMap":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/ItemInfo;>;"
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3615
    const/16 v5, -0x3e9

    move/from16 v0, p1

    if-eq v0, v5, :cond_4

    const/16 v35, 0x1

    .line 3617
    .local v35, "isLoadingSynchronously":Z
    :goto_1
    if-eqz v35, :cond_5

    move/from16 v4, p1

    .line 3619
    .local v4, "currScreen":I
    :goto_2
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 3621
    const/16 v4, -0x3e9

    .line 3623
    :cond_1
    move/from16 v34, v4

    .line 3624
    .local v34, "currentScreen":I
    if-gez v34, :cond_6

    const-wide/16 v6, -0x1

    .line 3629
    .local v6, "currentScreenId":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/LauncherModel;->unbindWorkspaceItemsOnMainThread()V

    .line 3632
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3633
    .local v9, "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3634
    .local v10, "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3636
    .local v15, "currentAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 3638
    .local v16, "otherAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;>;"
    new-instance v22, Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-direct/range {v22 .. v22}, Lnet/oneplus/h2launcher/util/LongArrayMap;-><init>()V

    .line 3639
    .local v22, "currentFolders":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/FolderInfo;>;"
    new-instance v23, Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-direct/range {v23 .. v23}, Lnet/oneplus/h2launcher/util/LongArrayMap;-><init>()V

    .local v23, "otherFolders":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/FolderInfo;>;"
    move-object/from16 v5, p0

    .line 3641
    invoke-direct/range {v5 .. v10}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->filterCurrentWorkspaceItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v11, p0

    move-wide v12, v6

    .line 3643
    invoke-direct/range {v11 .. v16}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->filterCurrentAppWidgets(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v17, p0

    move-wide/from16 v18, v6

    .line 3645
    invoke-direct/range {v17 .. v23}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->filterCurrentFolders(JLnet/oneplus/h2launcher/util/LongArrayMap;Lnet/oneplus/h2launcher/util/LongArrayMap;Lnet/oneplus/h2launcher/util/LongArrayMap;Lnet/oneplus/h2launcher/util/LongArrayMap;)V

    .line 3647
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 3648
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 3651
    new-instance v37, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$12;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$12;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)V

    .line 3659
    .local v37, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 3661
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->bindWorkspaceScreens(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 3664
    const/16 v29, 0x0

    move-object/from16 v24, p0

    move-object/from16 v26, v9

    move-object/from16 v27, v15

    move-object/from16 v28, v22

    invoke-direct/range {v24 .. v29}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->bindWorkspaceItems(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/util/LongArrayMap;Ljava/util/ArrayList;)V

    .line 3666
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 3668
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    const/4 v11, 0x1

    invoke-static {v5, v11}, Lnet/oneplus/h2launcher/LauncherModel;->access$102(Lnet/oneplus/h2launcher/LauncherModel;Z)Z

    .line 3671
    :cond_2
    if-eqz v35, :cond_3

    .line 3672
    new-instance v37, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$13;

    .end local v37    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$13;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;I)V

    .line 3680
    .restart local v37    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 3683
    :cond_3
    new-instance v26, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;

    move-object/from16 v27, p0

    move-object/from16 v28, v25

    move-object/from16 v29, v10

    move-object/from16 v30, v16

    move-object/from16 v31, v23

    invoke-direct/range {v26 .. v33}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/util/LongArrayMap;J)V

    .line 3695
    .local v26, "bindOtherWorkspaceRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-static {v5}, Lnet/oneplus/h2launcher/LauncherModel;->access$100(Lnet/oneplus/h2launcher/LauncherModel;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3696
    invoke-interface/range {v26 .. v26}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 3613
    .end local v4    # "currScreen":I
    .end local v6    # "currentScreenId":J
    .end local v9    # "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .end local v10    # "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .end local v15    # "currentAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;>;"
    .end local v16    # "otherAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;>;"
    .end local v20    # "itemsIdMap":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .end local v21    # "folders":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/FolderInfo;>;"
    .end local v22    # "currentFolders":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/FolderInfo;>;"
    .end local v23    # "otherFolders":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/FolderInfo;>;"
    .end local v26    # "bindOtherWorkspaceRunnable":Ljava/lang/Runnable;
    .end local v34    # "currentScreen":I
    .end local v35    # "isLoadingSynchronously":Z
    .end local v37    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 3615
    .restart local v20    # "itemsIdMap":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .restart local v21    # "folders":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/FolderInfo;>;"
    :cond_4
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 3618
    .restart local v35    # "isLoadingSynchronously":Z
    :cond_5
    invoke-interface/range {v25 .. v25}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v4

    goto/16 :goto_2

    .line 3625
    .restart local v4    # "currScreen":I
    .restart local v34    # "currentScreen":I
    :cond_6
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto/16 :goto_3

    .line 3698
    .restart local v6    # "currentScreenId":J
    .restart local v9    # "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .restart local v10    # "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .restart local v15    # "currentAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;>;"
    .restart local v16    # "otherAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;>;"
    .restart local v22    # "currentFolders":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/FolderInfo;>;"
    .restart local v23    # "otherFolders":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/FolderInfo;>;"
    .restart local v26    # "bindOtherWorkspaceRunnable":Ljava/lang/Runnable;
    .restart local v37    # "r":Ljava/lang/Runnable;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Lnet/oneplus/h2launcher/LauncherModel;->access$002(Lnet/oneplus/h2launcher/LauncherModel;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto/16 :goto_0
.end method

.method private bindWorkspaceItems(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/util/LongArrayMap;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "oldCallbacks"    # Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/LauncherModel$Callbacks;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;",
            ">;",
            "Lnet/oneplus/h2launcher/util/LongArrayMap",
            "<",
            "Lnet/oneplus/h2launcher/FolderInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3514
    .local p2, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .local p3, "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;>;"
    .local p4, "folders":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/FolderInfo;>;"
    .local p5, "deferredBindRunnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    if-eqz p5, :cond_0

    const/4 v10, 0x1

    .line 3517
    .local v10, "postOnMainThread":Z
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3518
    .local v7, "N":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v7, :cond_3

    .line 3519
    move v5, v9

    .line 3520
    .local v5, "start":I
    add-int/lit8 v2, v9, 0x6

    if-gt v2, v7, :cond_1

    const/4 v8, 0x6

    .line 3521
    .local v8, "chunkSize":I
    :goto_2
    add-int v6, v5, v8

    .line 3522
    .local v6, "end":I
    invoke-direct {p0, p2, v5, v6}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->loadItemsTitleAndIcon(Ljava/util/ArrayList;II)V

    .line 3523
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$9;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$9;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V

    .line 3533
    .local v1, "r":Ljava/lang/Runnable;
    if-eqz v10, :cond_2

    .line 3534
    monitor-enter p5

    .line 3535
    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3536
    monitor-exit p5

    .line 3518
    :goto_3
    add-int/lit8 v9, v9, 0x6

    goto :goto_1

    .line 3514
    .end local v1    # "r":Ljava/lang/Runnable;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v7    # "N":I
    .end local v8    # "chunkSize":I
    .end local v9    # "i":I
    .end local v10    # "postOnMainThread":Z
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 3520
    .restart local v5    # "start":I
    .restart local v7    # "N":I
    .restart local v9    # "i":I
    .restart local v10    # "postOnMainThread":Z
    :cond_1
    sub-int v8, v7, v9

    goto :goto_2

    .line 3536
    .restart local v1    # "r":Ljava/lang/Runnable;
    .restart local v6    # "end":I
    .restart local v8    # "chunkSize":I
    :catchall_0
    move-exception v2

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3538
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 3543
    .end local v1    # "r":Ljava/lang/Runnable;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v8    # "chunkSize":I
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lnet/oneplus/h2launcher/util/LongArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3544
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$10;

    move-object/from16 v0, p4

    invoke-direct {v1, p0, p1, v0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$10;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Lnet/oneplus/h2launcher/util/LongArrayMap;)V

    .line 3552
    .restart local v1    # "r":Ljava/lang/Runnable;
    if-eqz v10, :cond_5

    .line 3553
    monitor-enter p5

    .line 3554
    :try_start_1
    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3555
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3562
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_4
    :goto_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3563
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v7, :cond_7

    .line 3564
    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    .line 3565
    .local v11, "widget":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$11;

    invoke-direct {v1, p0, p1, v11}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$11;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V

    .line 3573
    .restart local v1    # "r":Ljava/lang/Runnable;
    if-eqz v10, :cond_6

    .line 3574
    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3563
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 3555
    .end local v11    # "widget":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 3557
    :cond_5
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 3576
    .restart local v11    # "widget":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    :cond_6
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 3579
    .end local v1    # "r":Ljava/lang/Runnable;
    .end local v11    # "widget":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    :cond_7
    return-void
.end method

.method private bindWorkspaceScreens(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "oldCallbacks"    # Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/LauncherModel$Callbacks;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3497
    .local p2, "orderedScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$8;

    invoke-direct {v0, p0, p1, p2}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$8;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 3506
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 3507
    return-void
.end method

.method private checkItemPlacement(Lnet/oneplus/h2launcher/util/LongArrayMap;Lnet/oneplus/h2launcher/ItemInfo;Ljava/util/ArrayList;)Z
    .locals 20
    .param p2, "item"    # Lnet/oneplus/h2launcher/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/util/LongArrayMap",
            "<[[",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2441
    .local p1, "occupied":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<[[Lnet/oneplus/h2launcher/ItemInfo;>;"
    .local p3, "workspaceScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v4

    .line 2442
    .local v4, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v11

    .line 2443
    .local v11, "profile":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    iget v5, v11, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    .line 2444
    .local v5, "countX":I
    iget v8, v11, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    .line 2446
    .local v8, "countY":I
    move-object/from16 v0, p2

    iget-wide v6, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    .line 2447
    .local v6, "containerIndex":J
    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x66

    cmp-long v15, v16, v18

    if-nez v15, :cond_0

    .line 2448
    const/4 v15, 0x0

    .line 2533
    :goto_0
    return v15

    .line 2449
    :cond_0
    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x65

    cmp-long v15, v16, v18

    if-nez v15, :cond_6

    .line 2451
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v15, v15, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v15, v15, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 2452
    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->isAllAppsButtonRank(I)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2453
    :cond_1
    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error loading shortcut into hotseat "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " into position ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") occupied by all apps"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 2459
    :cond_2
    const-wide/16 v16, -0x65

    .line 2460
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Lnet/oneplus/h2launcher/ItemInfo;

    .line 2462
    .local v9, "hotseatItems":[[Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v16, v0

    iget v15, v11, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numHotseatIcons:I

    int-to-long v0, v15

    move-wide/from16 v18, v0

    cmp-long v15, v16, v18

    if-ltz v15, :cond_3

    .line 2463
    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error loading shortcut "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " into hotseat position "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", position out of bounds: (0 to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v11, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numHotseatIcons:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 2470
    :cond_3
    if-eqz v9, :cond_5

    .line 2471
    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v15, v0

    aget-object v15, v9, v15

    const/16 v16, 0x0

    aget-object v15, v15, v16

    if-eqz v15, :cond_4

    .line 2472
    const-string v16, "Launcher.Model"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error loading shortcut into hotseat "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " into position ("

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ") occupied by "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-wide/16 v18, -0x65

    .line 2475
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[Lnet/oneplus/h2launcher/ItemInfo;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    aget-object v15, v15, v18

    const/16 v18, 0x0

    aget-object v15, v15, v18

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2472
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 2479
    :cond_4
    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v15, v0

    aget-object v15, v9, v15

    const/16 v16, 0x0

    aput-object p2, v15, v16

    .line 2480
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 2483
    :cond_5
    iget v15, v11, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numHotseatIcons:I

    const/16 v16, 0x1

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v15

    const-class v16, Lnet/oneplus/h2launcher/ItemInfo;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Lnet/oneplus/h2launcher/ItemInfo;

    .line 2484
    .local v10, "items":[[Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v15, v0

    aget-object v15, v10, v15

    const/16 v16, 0x0

    aput-object p2, v15, v16

    .line 2485
    const-wide/16 v16, -0x65

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2, v10}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 2486
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 2488
    .end local v9    # "hotseatItems":[[Lnet/oneplus/h2launcher/ItemInfo;
    .end local v10    # "items":[[Lnet/oneplus/h2launcher/ItemInfo;
    :cond_6
    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x64

    cmp-long v15, v16, v18

    if-nez v15, :cond_7

    .line 2489
    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 2491
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 2495
    :cond_7
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 2498
    :cond_8
    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->containsKey(J)Z

    move-result v15

    if-nez v15, :cond_9

    .line 2499
    add-int/lit8 v15, v5, 0x1

    add-int/lit8 v16, v8, 0x1

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v15

    const-class v16, Lnet/oneplus/h2launcher/ItemInfo;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Lnet/oneplus/h2launcher/ItemInfo;

    .line 2500
    .restart local v10    # "items":[[Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2, v10}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 2503
    .end local v10    # "items":[[Lnet/oneplus/h2launcher/ItemInfo;
    :cond_9
    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Lnet/oneplus/h2launcher/ItemInfo;

    .line 2504
    .local v12, "screens":[[Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x64

    cmp-long v15, v16, v18

    if-nez v15, :cond_a

    move-object/from16 v0, p2

    iget v15, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    if-ltz v15, :cond_b

    :cond_a
    move-object/from16 v0, p2

    iget v15, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    if-ltz v15, :cond_b

    move-object/from16 v0, p2

    iget v15, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    move-object/from16 v0, p2

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    move/from16 v16, v0

    add-int v15, v15, v16

    if-gt v15, v5, :cond_b

    move-object/from16 v0, p2

    iget v15, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    move-object/from16 v0, p2

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    move/from16 v16, v0

    add-int v15, v15, v16

    if-le v15, v8, :cond_c

    .line 2507
    :cond_b
    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error loading shortcut "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " into cell ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") out of screen bounds ( "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 2515
    :cond_c
    move-object/from16 v0, p2

    iget v13, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .local v13, "x":I
    :goto_1
    move-object/from16 v0, p2

    iget v15, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    move-object/from16 v0, p2

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    move/from16 v16, v0

    add-int v15, v15, v16

    if-ge v13, v15, :cond_f

    .line 2516
    move-object/from16 v0, p2

    iget v14, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .local v14, "y":I
    :goto_2
    move-object/from16 v0, p2

    iget v15, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    move-object/from16 v0, p2

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    move/from16 v16, v0

    add-int v15, v15, v16

    if-ge v14, v15, :cond_e

    .line 2517
    aget-object v15, v12, v13

    aget-object v15, v15, v14

    if-eqz v15, :cond_d

    .line 2518
    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error loading shortcut "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " into cell ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") occupied by "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget-object v17, v12, v13

    aget-object v17, v17, v14

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 2516
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2515
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 2527
    .end local v14    # "y":I
    :cond_f
    move-object/from16 v0, p2

    iget v13, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    :goto_3
    move-object/from16 v0, p2

    iget v15, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    move-object/from16 v0, p2

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    move/from16 v16, v0

    add-int v15, v15, v16

    if-ge v13, v15, :cond_11

    .line 2528
    move-object/from16 v0, p2

    iget v14, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .restart local v14    # "y":I
    :goto_4
    move-object/from16 v0, p2

    iget v15, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    move-object/from16 v0, p2

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    move/from16 v16, v0

    add-int v15, v15, v16

    if-ge v14, v15, :cond_10

    .line 2529
    aget-object v15, v12, v13

    aput-object p2, v15, v14

    .line 2528
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 2527
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2533
    .end local v14    # "y":I
    :cond_11
    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method private clearSBgDataStructures()V
    .locals 4

    .prologue
    .line 2581
    const-string v1, "Launcher.Model"

    const-string v2, "clearSBgDataStructures"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2582
    sget-object v2, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2583
    :try_start_0
    sget-object v1, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2584
    sget-object v1, Lnet/oneplus/h2launcher/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2585
    sget-object v1, Lnet/oneplus/h2launcher/LauncherModel;->sBgFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->clear()V

    .line 2586
    sget-object v1, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->clear()V

    .line 2587
    sget-object v1, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2588
    sget-object v1, Lnet/oneplus/h2launcher/LauncherModel;->sBgDynamicItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    .line 2589
    .local v0, "info":Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;
    invoke-interface {v0}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->unregisterDataProvider()V

    goto :goto_0

    .line 2592
    .end local v0    # "info":Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2591
    :cond_0
    :try_start_1
    sget-object v1, Lnet/oneplus/h2launcher/LauncherModel;->sBgDynamicItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 2592
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2593
    return-void
.end method

.method private doneBindingItems(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;J)V
    .locals 2
    .param p1, "oldCallbacks"    # Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    .param p2, "time"    # J

    .prologue
    .line 3704
    new-instance v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$15;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$15;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;J)V

    .line 3731
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 3732
    return-void
.end method

.method private filterCurrentAppWidgets(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "currentScreenId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3426
    .local p3, "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;>;"
    .local p4, "currentScreenWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;>;"
    .local p5, "otherScreenWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    .line 3427
    .local v0, "widget":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    if-eqz v0, :cond_0

    .line 3428
    iget-wide v2, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->screenId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    .line 3430
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3432
    :cond_1
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3435
    .end local v0    # "widget":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    :cond_2
    return-void
.end method

.method private filterCurrentFolders(JLnet/oneplus/h2launcher/util/LongArrayMap;Lnet/oneplus/h2launcher/util/LongArrayMap;Lnet/oneplus/h2launcher/util/LongArrayMap;Lnet/oneplus/h2launcher/util/LongArrayMap;)V
    .locals 13
    .param p1, "currentScreenId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lnet/oneplus/h2launcher/util/LongArrayMap",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;",
            "Lnet/oneplus/h2launcher/util/LongArrayMap",
            "<",
            "Lnet/oneplus/h2launcher/FolderInfo;",
            ">;",
            "Lnet/oneplus/h2launcher/util/LongArrayMap",
            "<",
            "Lnet/oneplus/h2launcher/FolderInfo;",
            ">;",
            "Lnet/oneplus/h2launcher/util/LongArrayMap",
            "<",
            "Lnet/oneplus/h2launcher/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3444
    .local p3, "itemsIdMap":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .local p4, "folders":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/FolderInfo;>;"
    .local p5, "currentScreenFolders":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/FolderInfo;>;"
    .local p6, "otherScreenFolders":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/FolderInfo;>;"
    invoke-virtual/range {p4 .. p4}, Lnet/oneplus/h2launcher/util/LongArrayMap;->size()I

    move-result v7

    .line 3445
    .local v7, "total":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_3

    .line 3446
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/util/LongArrayMap;->keyAt(I)J

    move-result-wide v4

    .line 3447
    .local v4, "id":J
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/FolderInfo;

    .line 3449
    .local v2, "folder":Lnet/oneplus/h2launcher/FolderInfo;
    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/ItemInfo;

    .line 3450
    .local v6, "info":Lnet/oneplus/h2launcher/ItemInfo;
    if-eqz v6, :cond_0

    if-nez v2, :cond_1

    .line 3445
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3451
    :cond_1
    iget-wide v8, v6, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    iget-wide v8, v6, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    cmp-long v8, v8, p1

    if-nez v8, :cond_2

    .line 3453
    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5, v2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 3455
    :cond_2
    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5, v2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 3458
    .end local v2    # "folder":Lnet/oneplus/h2launcher/FolderInfo;
    .end local v4    # "id":J
    .end local v6    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_3
    return-void
.end method

.method private filterCurrentWorkspaceItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13
    .param p1, "currentScreenId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3380
    .local p3, "allWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .local p4, "currentScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .local p5, "otherScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 3381
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3382
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/ItemInfo;

    .line 3383
    .local v2, "i":Lnet/oneplus/h2launcher/ItemInfo;
    if-nez v2, :cond_0

    .line 3384
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 3391
    .end local v2    # "i":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 3392
    .local v4, "itemsOnScreen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v6, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$5;

    invoke-direct {v6, p0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$5;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;)V

    move-object/from16 v0, p3

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3398
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/ItemInfo;

    .line 3399
    .local v3, "info":Lnet/oneplus/h2launcher/ItemInfo;
    iget-wide v8, v3, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 3400
    iget-wide v8, v3, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    cmp-long v7, v8, p1

    if-nez v7, :cond_2

    .line 3401
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3402
    iget-wide v8, v3, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3404
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3406
    :cond_3
    iget-wide v8, v3, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    .line 3407
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3408
    iget-wide v8, v3, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3410
    :cond_4
    iget-wide v8, v3, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3411
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3412
    iget-wide v8, v3, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3414
    :cond_5
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3418
    .end local v3    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_6
    return-void
.end method

.method private findShortcutItemPlacement(Lnet/oneplus/h2launcher/util/LongArrayMap;Lnet/oneplus/h2launcher/ItemInfo;)Z
    .locals 20
    .param p2, "item"    # Lnet/oneplus/h2launcher/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/util/LongArrayMap",
            "<[[",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2537
    .local p1, "occupied":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<[[Lnet/oneplus/h2launcher/ItemInfo;>;"
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v4

    .line 2538
    .local v4, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v11

    .line 2539
    .local v11, "profile":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    iget v5, v11, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    .line 2540
    .local v5, "countX":I
    iget v8, v11, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    .line 2542
    .local v8, "countY":I
    move-object/from16 v0, p2

    iget-wide v6, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    .line 2544
    .local v6, "containerIndex":J
    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->containsKey(J)Z

    move-result v17

    if-nez v17, :cond_0

    .line 2545
    add-int/lit8 v17, v5, 0x1

    add-int/lit8 v18, v8, 0x1

    filled-new-array/range {v17 .. v18}, [I

    move-result-object v17

    const-class v18, Lnet/oneplus/h2launcher/ItemInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Lnet/oneplus/h2launcher/ItemInfo;

    .line 2546
    .local v10, "items":[[Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v10}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 2549
    .end local v10    # "items":[[Lnet/oneplus/h2launcher/ItemInfo;
    :cond_0
    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Lnet/oneplus/h2launcher/ItemInfo;

    .line 2552
    .local v12, "screens":[[Lnet/oneplus/h2launcher/ItemInfo;
    const/4 v13, -0x1

    .line 2553
    .local v13, "targetCellX":I
    const/4 v14, 0x0

    .line 2554
    .local v14, "targetCellY":I
    const/4 v9, 0x0

    .line 2555
    .local v9, "findNotEmpty":Z
    add-int/lit8 v16, v8, -0x1

    .local v16, "y":I
    :goto_0
    if-ltz v16, :cond_3

    if-nez v9, :cond_3

    .line 2556
    add-int/lit8 v15, v5, -0x1

    .local v15, "x":I
    :goto_1
    if-ltz v15, :cond_2

    if-nez v9, :cond_2

    .line 2557
    aget-object v17, v12, v15

    aget-object v17, v17, v16

    if-eqz v17, :cond_1

    .line 2558
    move v13, v15

    .line 2559
    move/from16 v14, v16

    .line 2560
    const/4 v9, 0x1

    .line 2556
    :cond_1
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 2555
    :cond_2
    add-int/lit8 v16, v16, -0x1

    goto :goto_0

    .line 2564
    .end local v15    # "x":I
    :cond_3
    add-int/lit8 v17, v5, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_4

    add-int/lit8 v17, v8, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_4

    .line 2565
    const/16 v17, 0x0

    .line 2576
    :goto_2
    return v17

    .line 2567
    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 2568
    if-lt v13, v5, :cond_5

    .line 2569
    const/4 v13, 0x0

    .line 2570
    add-int/lit8 v14, v14, 0x1

    .line 2572
    :cond_5
    aget-object v17, v12, v13

    aput-object p2, v17, v14

    .line 2573
    move-object/from16 v0, p2

    iput v13, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .line 2574
    move-object/from16 v0, p2

    iput v14, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .line 2575
    const-wide/16 v18, -0x64

    move-wide/from16 v0, v18

    move-object/from16 v2, p2

    iput-wide v0, v2, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    .line 2576
    const/16 v17, 0x1

    goto :goto_2
.end method

.method private fireWorkspaceCurrentPageStepFinished()V
    .locals 2

    .prologue
    .line 1798
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$1;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1808
    return-void
.end method

.method private isInPendingPackages(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 2116
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->isBootCompleted()Z

    move-result v0

    .line 2117
    .local v0, "isSdCardReady":Z
    if-eqz v0, :cond_1

    .line 2136
    :cond_0
    :goto_0
    return v3

    .line 2121
    :cond_1
    if-eqz p2, :cond_0

    sget-object v4, Lnet/oneplus/h2launcher/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2125
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v2

    .line 2126
    .local v2, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    sget-object v4, Lnet/oneplus/h2launcher/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 2127
    .local v1, "pendingPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2131
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2132
    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isInPendingPackages] pending will handle this. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private loadAllApps()V
    .locals 22

    .prologue
    .line 3814
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 3816
    .local v12, "loadTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    .line 3817
    .local v14, "oldCallbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-nez v14, :cond_0

    .line 3819
    const-string v2, "Launcher.Model"

    const-string v3, "LoaderTask running with no launcher (loadAllApps)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3909
    :goto_0
    return-void

    .line 3823
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v15

    .line 3826
    .local v15, "profiles":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/UserHandleCompat;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/AllAppsList;->clear()V

    .line 3827
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 3829
    .local v5, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 3830
    .local v16, "qiaTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel;->mLauncherApps:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v9

    .line 3832
    .local v9, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getActivityList took "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3833
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ms for user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3832
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3834
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getActivityList got "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " apps for user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3837
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3841
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    invoke-virtual {v2, v5}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->isQuietModeEnabled(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v7

    .line 3844
    .local v7, "quietMode":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v9}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->checkComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/List;)V

    .line 3847
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_2

    .line 3848
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 3850
    .local v4, "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v0, v2, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    move-object/from16 v20, v0

    new-instance v2, Lnet/oneplus/h2launcher/AppInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v6, v6, Lnet/oneplus/h2launcher/LauncherModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-direct/range {v2 .. v7}, Lnet/oneplus/h2launcher/AppInfo;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/AssetCache;Z)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/AllAppsList;->add(Lnet/oneplus/h2launcher/AppInfo;)V

    .line 3847
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 3853
    .end local v4    # "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->get(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;

    move-result-object v10

    .line 3854
    .local v10, "heuristic":Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;
    if-eqz v10, :cond_1

    .line 3855
    new-instance v18, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$17;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v9}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$17;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;Ljava/util/List;)V

    .line 3862
    .local v18, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    new-instance v3, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$18;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$18;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 3881
    .end local v5    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v7    # "quietMode":Z
    .end local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    .end local v10    # "heuristic":Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;
    .end local v11    # "i":I
    .end local v16    # "qiaTime":J
    .end local v18    # "r":Ljava/lang/Runnable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v8, v2, Lnet/oneplus/h2launcher/AllAppsList;->added:Ljava/util/ArrayList;

    .line 3882
    .local v8, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lnet/oneplus/h2launcher/AllAppsList;->added:Ljava/util/ArrayList;

    .line 3885
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    new-instance v3, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$19;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14, v8}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$19;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3902
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v15, v2}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->processAllUsers(Ljava/util/List;Landroid/content/Context;)V

    .line 3904
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lnet/oneplus/h2launcher/LauncherModel;->loadAndBindWidgetsAndShortcuts(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Z)V

    .line 3906
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Icons processed in "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3907
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v12

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3906
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private loadAndBindAllApps()V
    .locals 5

    .prologue
    .line 3736
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAndBindAllApps mAllAppsLoaded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-boolean v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mAllAppsLoaded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-boolean v2, v2, Lnet/oneplus/h2launcher/LauncherModel;->mAllAppsLoaded:Z

    if-nez v2, :cond_2

    .line 3739
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->loadAllApps()V

    .line 3740
    monitor-enter p0

    .line 3741
    :try_start_0
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v2, :cond_0

    .line 3742
    monitor-exit p0

    .line 3756
    :goto_0
    return-void

    .line 3744
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3746
    .local v0, "start":J
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->updateIconCache()V

    .line 3747
    monitor-enter p0

    .line 3748
    :try_start_1
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v2, :cond_1

    .line 3749
    monitor-exit p0

    goto :goto_0

    .line 3752
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3744
    .end local v0    # "start":J
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 3751
    .restart local v0    # "start":J
    :cond_1
    :try_start_3
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lnet/oneplus/h2launcher/LauncherModel;->mAllAppsLoaded:Z

    .line 3752
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3754
    .end local v0    # "start":J
    :cond_2
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->onlyBindAllApps()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1769
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    .line 1773
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAndBindWorkspace mWorkspaceLoaded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-boolean v2, v2, Lnet/oneplus/h2launcher/LauncherModel;->mWorkspaceLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/LauncherModel;->mWorkspaceLoaded:Z

    if-nez v0, :cond_1

    .line 1777
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->loadWorkspace()V

    .line 1778
    monitor-enter p0

    .line 1779
    :try_start_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 1780
    monitor-exit p0

    .line 1788
    :goto_0
    return-void

    .line 1782
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/oneplus/h2launcher/LauncherModel;->mWorkspaceLoaded:Z

    .line 1783
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1787
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->bindWorkspace(I)V

    goto :goto_0

    .line 1783
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private loadItemsTitleAndIcon(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3912
    .local p1, "itemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->loadItemsTitleAndIcon(Ljava/util/ArrayList;II)V

    .line 3913
    return-void
.end method

.method private loadItemsTitleAndIcon(Ljava/util/ArrayList;II)V
    .locals 4
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 3916
    .local p1, "itemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    if-gez p2, :cond_0

    .line 3917
    const/4 p2, 0x0

    .line 3919
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p3, v2, :cond_1

    .line 3920
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 3922
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_4

    .line 3923
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ItemInfo;

    .line 3924
    .local v1, "info":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v2, v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v2, :cond_3

    .line 3925
    check-cast v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    .end local v1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/ShortcutInfo;->getIcon(Lnet/oneplus/h2launcher/AssetCache;)Landroid/graphics/Bitmap;

    .line 3922
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3926
    .restart local v1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_3
    instance-of v2, v1, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v2, :cond_2

    .line 3927
    check-cast v1, Lnet/oneplus/h2launcher/AppInfo;

    .end local v1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/AppInfo;->getIcon(Lnet/oneplus/h2launcher/AssetCache;Z)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 3930
    :cond_4
    return-void
.end method

.method private loadWorkspace()V
    .locals 126

    .prologue
    .line 2596
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v114

    .line 2598
    .local v114, "t":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 2599
    .local v10, "context":Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2600
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v82

    .line 2601
    .local v82, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {v82 .. v82}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v69

    .line 2602
    .local v69, "isSafeMode":Z
    invoke-static {v10}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v77

    .line 2603
    .local v77, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->isBootCompleted()Z

    move-result v70

    .line 2605
    .local v70, "isSdCardReady":Z
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v36

    .line 2606
    .local v36, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual/range {v36 .. v36}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v90

    .line 2607
    .local v90, "profile":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    move-object/from16 v0, v90

    iget v0, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    move/from16 v49, v0

    .line 2608
    .local v49, "countX":I
    move-object/from16 v0, v90

    iget v0, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    move/from16 v50, v0

    .line 2610
    .local v50, "countY":I
    sget-boolean v6, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->ENABLED:Z

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 2611
    invoke-static {v6}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->migrateGridIfNeeded(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2612
    const-string v6, "Launcher.Model"

    const-string v7, "loadWorkspace: GridSizeMigrationTask fail. Don\'t clear database."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 2616
    const-string v6, "Launcher.Model"

    const-string v7, "loadWorkspace: resetting launcher database"

    const/4 v11, 0x1

    invoke-static {v6, v7, v11}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2617
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/LauncherProvider;->deleteDatabase()V

    .line 2620
    :cond_1
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    .line 2622
    const-string v6, "Launcher.Model"

    const-string v7, "loadWorkspace: migrating from launcher2"

    const/4 v11, 0x1

    invoke-static {v6, v7, v11}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2623
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/LauncherProvider;->migrateLauncher2Shortcuts()V

    .line 2631
    :goto_0
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/LauncherProvider;->loadDefaultQuickPageItemsIfNecessary()V

    .line 2633
    sget-object v125, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v125

    .line 2634
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->clearSBgDataStructures()V

    .line 2635
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 2636
    invoke-static {v6}, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/PackageInstallerCompat;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat;->updateAndGetActiveSessionCache()Ljava/util/HashMap;

    move-result-object v64

    .line 2637
    .local v64, "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v86

    .line 2638
    .local v86, "orderedScreens":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-virtual/range {v86 .. v86}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Integer;

    .line 2639
    .local v59, "i":Ljava/lang/Integer;
    sget-object v7, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    move-object/from16 v0, v86

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3359
    .end local v59    # "i":Ljava/lang/Integer;
    .end local v64    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v86    # "orderedScreens":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v6

    monitor-exit v125
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2626
    :cond_2
    const-string v6, "Launcher.Model"

    const-string v7, "loadWorkspace: loading default favorites"

    const/4 v11, 0x0

    invoke-static {v6, v7, v11}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2627
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/LauncherProvider;->loadDefaultFavoritesIfNecessary()V

    goto :goto_0

    .line 2641
    .restart local v64    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v86    # "orderedScreens":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_3
    :try_start_1
    invoke-static {v10}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-result-object v41

    .line 2643
    .local v41, "appWidgetManagerCompat":Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;
    new-instance v75, Ljava/util/ArrayList;

    invoke-direct/range {v75 .. v75}, Ljava/util/ArrayList;-><init>()V

    .line 2644
    .local v75, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v101, Ljava/util/ArrayList;

    invoke-direct/range {v101 .. v101}, Ljava/util/ArrayList;-><init>()V

    .line 2645
    .local v101, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v76, Ljava/util/ArrayList;

    invoke-direct/range {v76 .. v76}, Ljava/util/ArrayList;-><init>()V

    .line 2646
    .local v76, "itemsToReplace":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    sget-object v5, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 2647
    .local v5, "contentUri":Landroid/net/Uri;
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loading model from "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 2653
    .local v17, "c":Landroid/database/Cursor;
    new-instance v84, Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-direct/range {v84 .. v84}, Lnet/oneplus/h2launcher/util/LongArrayMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2656
    .local v84, "occupied":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<[[Lnet/oneplus/h2launcher/ItemInfo;>;"
    :try_start_2
    const-string v6, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v62

    .line 2657
    .local v62, "idIndex":I
    const-string v6, "intent"

    .line 2658
    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v66

    .line 2659
    .local v66, "intentIndex":I
    const-string v6, "title"

    .line 2660
    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 2661
    .local v13, "titleIndex":I
    const-string v6, "container"

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 2663
    .local v48, "containerIndex":I
    const-string v6, "itemType"

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v74

    .line 2665
    .local v74, "itemTypeIndex":I
    const-string v6, "appWidgetId"

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 2667
    .local v39, "appWidgetIdIndex":I
    const-string v6, "appWidgetProvider"

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 2669
    .local v42, "appWidgetProviderIndex":I
    const-string v6, "screen"

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v106

    .line 2671
    .local v106, "screenIndex":I
    const-string v6, "cellX"

    .line 2672
    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 2673
    .local v43, "cellXIndex":I
    const-string v6, "cellY"

    .line 2674
    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 2675
    .local v44, "cellYIndex":I
    const-string v6, "spanX"

    .line 2676
    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v107

    .line 2677
    .local v107, "spanXIndex":I
    const-string v6, "spanY"

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v112

    .line 2679
    .local v112, "spanYIndex":I
    const-string v6, "rank"

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v97

    .line 2681
    .local v97, "rankIndex":I
    const-string v6, "restored"

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v100

    .line 2683
    .local v100, "restoredIndex":I
    const-string v6, "profileId"

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v91

    .line 2685
    .local v91, "profileIdIndex":I
    const-string v6, "options"

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v85

    .line 2687
    .local v85, "optionsIndex":I
    new-instance v22, Lnet/oneplus/h2launcher/util/CursorIconInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/util/CursorIconInfo;-><init>(Landroid/database/Cursor;)V

    .line 2689
    .local v22, "cursorIconInfo":Lnet/oneplus/h2launcher/util/CursorIconInfo;
    new-instance v34, Landroid/util/LongSparseArray;

    invoke-direct/range {v34 .. v34}, Landroid/util/LongSparseArray;-><init>()V

    .line 2690
    .local v34, "allUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lnet/oneplus/h2launcher/compat/UserHandleCompat;>;"
    new-instance v96, Landroid/util/LongSparseArray;

    invoke-direct/range {v96 .. v96}, Landroid/util/LongSparseArray;-><init>()V

    .line 2691
    .local v96, "quietMode":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v6, v6, Lnet/oneplus/h2launcher/LauncherModel;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 2692
    .local v9, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v7, v7, Lnet/oneplus/h2launcher/LauncherModel;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    invoke-virtual {v7, v9}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v108

    .line 2693
    .local v108, "serialNo":J
    move-object/from16 v0, v34

    move-wide/from16 v1, v108

    invoke-virtual {v0, v1, v2, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2694
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v7, v7, Lnet/oneplus/h2launcher/LauncherModel;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    invoke-virtual {v7, v9}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->isQuietModeEnabled(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v96

    move-wide/from16 v1, v108

    invoke-virtual {v0, v1, v2, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 3227
    .end local v9    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v13    # "titleIndex":I
    .end local v22    # "cursorIconInfo":Lnet/oneplus/h2launcher/util/CursorIconInfo;
    .end local v34    # "allUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lnet/oneplus/h2launcher/compat/UserHandleCompat;>;"
    .end local v39    # "appWidgetIdIndex":I
    .end local v42    # "appWidgetProviderIndex":I
    .end local v43    # "cellXIndex":I
    .end local v44    # "cellYIndex":I
    .end local v48    # "containerIndex":I
    .end local v62    # "idIndex":I
    .end local v66    # "intentIndex":I
    .end local v74    # "itemTypeIndex":I
    .end local v85    # "optionsIndex":I
    .end local v91    # "profileIdIndex":I
    .end local v96    # "quietMode":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v97    # "rankIndex":I
    .end local v100    # "restoredIndex":I
    .end local v106    # "screenIndex":I
    .end local v107    # "spanXIndex":I
    .end local v108    # "serialNo":J
    .end local v112    # "spanYIndex":I
    :catchall_1
    move-exception v6

    if-eqz v17, :cond_4

    .line 3228
    :try_start_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2706
    .restart local v13    # "titleIndex":I
    .restart local v22    # "cursorIconInfo":Lnet/oneplus/h2launcher/util/CursorIconInfo;
    .restart local v34    # "allUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lnet/oneplus/h2launcher/compat/UserHandleCompat;>;"
    .restart local v39    # "appWidgetIdIndex":I
    .restart local v42    # "appWidgetProviderIndex":I
    .restart local v43    # "cellXIndex":I
    .restart local v44    # "cellYIndex":I
    .restart local v48    # "containerIndex":I
    .restart local v62    # "idIndex":I
    .restart local v66    # "intentIndex":I
    .restart local v74    # "itemTypeIndex":I
    .restart local v85    # "optionsIndex":I
    .restart local v91    # "profileIdIndex":I
    .restart local v96    # "quietMode":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v97    # "rankIndex":I
    .restart local v100    # "restoredIndex":I
    .restart local v106    # "screenIndex":I
    .restart local v107    # "spanXIndex":I
    .restart local v112    # "spanYIndex":I
    :cond_5
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v6, :cond_42

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v6

    if-eqz v6, :cond_42

    .line 2708
    :try_start_5
    move-object/from16 v0, v17

    move/from16 v1, v74

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 2709
    .local v21, "itemType":I
    move-object/from16 v0, v17

    move/from16 v1, v100

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_6

    const/16 v99, 0x1

    .line 2710
    .local v99, "restored":Z
    :goto_4
    const/16 v35, 0x0

    .line 2711
    .local v35, "allowMissingTarget":Z
    move-object/from16 v0, v17

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 2713
    .local v47, "container":I
    packed-switch v21, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 2717
    :pswitch_1
    move-object/from16 v0, v17

    move/from16 v1, v62

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v60

    .line 2718
    .local v60, "id":J
    move-object/from16 v0, v17

    move/from16 v1, v66

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v65

    .line 2719
    .local v65, "intentDescription":Ljava/lang/String;
    move-object/from16 v0, v17

    move/from16 v1, v91

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v110, v0

    .line 2720
    .local v110, "serialNumber":J
    move-object/from16 v0, v34

    move-wide/from16 v1, v110

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 2721
    .restart local v9    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    move-object/from16 v0, v17

    move/from16 v1, v100

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 2722
    .local v20, "promiseType":I
    const/16 v53, 0x0

    .line 2723
    .local v53, "disabledState":I
    const/16 v73, 0x0

    .line 2724
    .local v73, "itemReplaced":Z
    if-nez v9, :cond_7

    .line 2726
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[loadWorkspace] user is null. "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v65

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2727
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3

    .line 3222
    .end local v9    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v20    # "promiseType":I
    .end local v21    # "itemType":I
    .end local v35    # "allowMissingTarget":Z
    .end local v47    # "container":I
    .end local v53    # "disabledState":I
    .end local v60    # "id":J
    .end local v65    # "intentDescription":Ljava/lang/String;
    .end local v73    # "itemReplaced":Z
    .end local v99    # "restored":Z
    .end local v110    # "serialNumber":J
    :catch_0
    move-exception v54

    .line 3223
    .local v54, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v6, "Launcher.Model"

    const-string v7, "Desktop items loading interrupted"

    const/4 v11, 0x1

    move-object/from16 v0, v54

    invoke-static {v6, v7, v0, v11}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 2709
    .end local v54    # "e":Ljava/lang/Exception;
    .restart local v21    # "itemType":I
    :cond_6
    const/16 v99, 0x0

    goto :goto_4

    .line 2731
    .restart local v9    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .restart local v20    # "promiseType":I
    .restart local v35    # "allowMissingTarget":Z
    .restart local v47    # "container":I
    .restart local v53    # "disabledState":I
    .restart local v60    # "id":J
    .restart local v65    # "intentDescription":Ljava/lang/String;
    .restart local v73    # "itemReplaced":Z
    .restart local v99    # "restored":Z
    .restart local v110    # "serialNumber":J
    :cond_7
    const/4 v6, 0x0

    :try_start_7
    move-object/from16 v0, v65

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 2732
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v45

    .line 2733
    .local v45, "cn":Landroid/content/ComponentName;
    if-eqz v45, :cond_1c

    invoke-virtual/range {v45 .. v45}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1c

    .line 2735
    const-string v6, "com.android.contacts"

    invoke-virtual/range {v45 .. v45}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "com.oneplus.contacts.activities.OPDialtactsActivity"

    .line 2736
    invoke-virtual/range {v45 .. v45}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-boolean v6, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_ANDROID_N:Z

    if-eqz v6, :cond_8

    .line 2738
    const-string v6, "com.android.contacts"

    const-string v7, "com.android.dialer"

    move-object/from16 v0, v65

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v65

    .line 2739
    const/4 v6, 0x0

    move-object/from16 v0, v65

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 2740
    new-instance v119, Landroid/content/ContentValues;

    invoke-direct/range {v119 .. v119}, Landroid/content/ContentValues;-><init>()V

    .line 2741
    .local v119, "values":Landroid/content/ContentValues;
    const-string v6, "intent"

    const/4 v7, 0x0

    invoke-virtual {v8, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v119

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    move-object/from16 v0, p0

    move-wide/from16 v1, v60

    move-object/from16 v3, v119

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->updateItem(JLandroid/content/ContentValues;)V

    .line 2744
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v45

    .line 2748
    .end local v119    # "values":Landroid/content/ContentValues;
    :cond_8
    invoke-virtual/range {v45 .. v45}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2747
    move-object/from16 v0, v77

    invoke-virtual {v0, v6, v9}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v118

    .line 2749
    .local v118, "validPkg":Z
    if-eqz v118, :cond_f

    .line 2750
    move-object/from16 v0, v77

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v9}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/16 v117, 0x1

    .line 2752
    .local v117, "validComponent":Z
    :goto_5
    if-eqz v117, :cond_10

    .line 2753
    if-eqz v99, :cond_9

    .line 2755
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v101

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2756
    const/16 v99, 0x0

    .line 2759
    :cond_9
    invoke-virtual/range {v45 .. v45}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v77

    invoke-virtual {v0, v6, v9}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->isPackageSuspendedForProfile(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v71

    .line 2760
    .local v71, "isSuspended":Z
    if-eqz v71, :cond_a

    .line 2761
    const/16 v53, 0x4

    .line 2763
    :cond_a
    move-object/from16 v0, v96

    move-wide/from16 v1, v110

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v6

    if-eqz v6, :cond_b

    .line 2764
    or-int/lit8 v53, v53, 0x8

    .line 2880
    .end local v71    # "isSuspended":Z
    .end local v117    # "validComponent":Z
    .end local v118    # "validPkg":Z
    :cond_b
    :goto_6
    if-ltz v47, :cond_1d

    .line 2881
    :try_start_8
    move-object/from16 v0, v17

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {}, Lnet/oneplus/h2launcher/FolderIcon;->getNumItemsInPreview()I

    move-result v7

    if-lt v6, v7, :cond_1d

    const/4 v15, 0x1

    .line 2883
    .local v15, "useLowResIcon":Z
    :goto_7
    if-eqz v73, :cond_1f

    .line 2884
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v9, v6}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 2885
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    const/4 v11, 0x0

    move-object/from16 v0, v22

    iget v12, v0, Lnet/oneplus/h2launcher/util/CursorIconInfo;->iconIndex:I

    const/4 v14, 0x0

    move-object/from16 v7, v82

    invoke-virtual/range {v6 .. v15}, Lnet/oneplus/h2launcher/LauncherModel;->getAppShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Landroid/content/Context;Landroid/database/Cursor;IIZZ)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v25

    .line 2937
    .local v25, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_c
    :goto_8
    if-eqz v25, :cond_2a

    .line 2938
    move-wide/from16 v0, v60

    move-object/from16 v2, v25

    iput-wide v0, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->id:J

    .line 2939
    move-object/from16 v0, v25

    iput-object v8, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2940
    move/from16 v0, v47

    int-to-long v6, v0

    move-object/from16 v0, v25

    iput-wide v6, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->container:J

    .line 2941
    move-object/from16 v0, v17

    move/from16 v1, v106

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, v25

    iput-wide v6, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->screenId:J

    .line 2942
    move-object/from16 v0, v17

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v25

    iput v6, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->cellX:I

    .line 2943
    move-object/from16 v0, v17

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v25

    iput v6, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->cellY:I

    .line 2944
    move-object/from16 v0, v17

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v25

    iput v6, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->rank:I

    .line 2945
    const/4 v6, 0x1

    move-object/from16 v0, v25

    iput v6, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->spanX:I

    .line 2946
    const/4 v6, 0x1

    move-object/from16 v0, v25

    iput v6, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->spanY:I

    .line 2947
    move-object/from16 v0, v25

    iget-object v6, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    const-string v7, "profile"

    move-wide/from16 v0, v110

    invoke-virtual {v6, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2948
    move-object/from16 v0, v25

    iget-object v6, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v6, :cond_d

    .line 2949
    move-object/from16 v0, v25

    iget-object v6, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    const-string v7, "profile"

    move-wide/from16 v0, v110

    invoke-virtual {v6, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2951
    :cond_d
    move/from16 v0, v53

    move-object/from16 v1, v25

    iput v0, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    .line 2952
    if-eqz v69, :cond_e

    invoke-static {v10, v8}, Lnet/oneplus/h2launcher/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 2953
    move-object/from16 v0, v25

    iget v6, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    or-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v25

    iput v6, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    .line 2957
    :cond_e
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v6}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->checkItemPlacement(Lnet/oneplus/h2launcher/util/LongArrayMap;Lnet/oneplus/h2launcher/ItemInfo;Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_25

    .line 2958
    move-object/from16 v0, v25

    iget-wide v6, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->container:J

    const-wide/16 v18, -0x66

    cmp-long v6, v6, v18

    if-nez v6, :cond_24

    .line 2959
    move-object/from16 v0, v76

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_3

    .line 2750
    .end local v15    # "useLowResIcon":Z
    .end local v25    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    .restart local v118    # "validPkg":Z
    :cond_f
    const/16 v117, 0x0

    goto/16 :goto_5

    .line 2766
    .restart local v117    # "validComponent":Z
    :cond_10
    if-eqz v118, :cond_13

    .line 2767
    const/4 v8, 0x0

    .line 2768
    and-int/lit8 v6, v20, 0x2

    if-eqz v6, :cond_11

    .line 2772
    :try_start_9
    invoke-virtual/range {v45 .. v45}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2771
    move-object/from16 v0, v82

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 2773
    if-eqz v8, :cond_11

    .line 2774
    new-instance v119, Landroid/content/ContentValues;

    invoke-direct/range {v119 .. v119}, Landroid/content/ContentValues;-><init>()V

    .line 2775
    .restart local v119    # "values":Landroid/content/ContentValues;
    const-string v6, "intent"

    const/4 v7, 0x0

    .line 2776
    invoke-virtual {v8, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    .line 2775
    move-object/from16 v0, v119

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2777
    move-object/from16 v0, p0

    move-wide/from16 v1, v60

    move-object/from16 v3, v119

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->updateItem(JLandroid/content/ContentValues;)V

    .line 2781
    .end local v119    # "values":Landroid/content/ContentValues;
    :cond_11
    if-nez v8, :cond_12

    .line 2784
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid component removed: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    invoke-static {v6, v7, v11}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2786
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3

    .line 2873
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v45    # "cn":Landroid/content/ComponentName;
    .end local v117    # "validComponent":Z
    .end local v118    # "validPkg":Z
    :catch_1
    move-exception v54

    .line 2874
    .local v54, "e":Ljava/net/URISyntaxException;
    :try_start_a
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid uri: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v65

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    invoke-static {v6, v7, v11}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2876
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_3

    .line 2790
    .end local v54    # "e":Ljava/net/URISyntaxException;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v45    # "cn":Landroid/content/ComponentName;
    .restart local v117    # "validComponent":Z
    .restart local v118    # "validPkg":Z
    :cond_12
    :try_start_b
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v101

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2791
    const/16 v99, 0x0

    goto/16 :goto_6

    .line 2793
    :cond_13
    if-eqz v99, :cond_17

    .line 2796
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "package not yet restored: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    invoke-static {v6, v7, v11}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2799
    and-int/lit8 v6, v20, 0x8

    if-nez v6, :cond_b

    .line 2801
    invoke-virtual/range {v45 .. v45}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 2803
    or-int/lit8 v20, v20, 0x8

    .line 2804
    new-instance v119, Landroid/content/ContentValues;

    invoke-direct/range {v119 .. v119}, Landroid/content/ContentValues;-><init>()V

    .line 2805
    .restart local v119    # "values":Landroid/content/ContentValues;
    const-string v6, "restored"

    .line 2806
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2805
    move-object/from16 v0, v119

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2807
    move-object/from16 v0, p0

    move-wide/from16 v1, v60

    move-object/from16 v3, v119

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->updateItem(JLandroid/content/ContentValues;)V

    goto/16 :goto_6

    .line 2808
    .end local v119    # "values":Landroid/content/ContentValues;
    :cond_14
    move/from16 v0, v20

    and-int/lit16 v6, v0, 0xf0

    if-eqz v6, :cond_16

    .line 2810
    invoke-static/range {v20 .. v20}, Lnet/oneplus/h2launcher/CommonAppTypeParser;->decodeItemTypeFromFlag(I)I

    move-result v37

    .line 2811
    .local v37, "appType":I
    new-instance v87, Lnet/oneplus/h2launcher/CommonAppTypeParser;

    move-object/from16 v0, v87

    move-wide/from16 v1, v60

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3, v10}, Lnet/oneplus/h2launcher/CommonAppTypeParser;-><init>(JILandroid/content/Context;)V

    .line 2812
    .local v87, "parser":Lnet/oneplus/h2launcher/CommonAppTypeParser;
    invoke-virtual/range {v87 .. v87}, Lnet/oneplus/h2launcher/CommonAppTypeParser;->findDefaultApp()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 2814
    move-object/from16 v0, v87

    iget-object v8, v0, Lnet/oneplus/h2launcher/CommonAppTypeParser;->parsedIntent:Landroid/content/Intent;

    .line 2815
    move-object/from16 v0, v87

    iget-object v0, v0, Lnet/oneplus/h2launcher/CommonAppTypeParser;->parsedValues:Landroid/content/ContentValues;

    move-object/from16 v119, v0

    .line 2816
    .restart local v119    # "values":Landroid/content/ContentValues;
    const-string v6, "restored"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v119

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2817
    move-object/from16 v0, p0

    move-wide/from16 v1, v60

    move-object/from16 v3, v119

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->updateItem(JLandroid/content/ContentValues;)V

    .line 2818
    const/16 v99, 0x0

    .line 2819
    const/16 v73, 0x1

    .line 2821
    goto/16 :goto_6

    .line 2822
    .end local v119    # "values":Landroid/content/ContentValues;
    :cond_15
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unrestored package removed: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    invoke-static {v6, v7, v11}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2824
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2828
    .end local v37    # "appType":I
    .end local v87    # "parser":Lnet/oneplus/h2launcher/CommonAppTypeParser;
    :cond_16
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unrestored package removed: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    invoke-static {v6, v7, v11}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2830
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2834
    :cond_17
    invoke-virtual/range {v45 .. v45}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2000

    .line 2833
    move-object/from16 v0, v77

    move-object/from16 v1, v82

    invoke-virtual {v0, v1, v6, v7, v9}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->isAppOnSdcard(Landroid/content/pm/PackageManager;Ljava/lang/String;ILnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2836
    if-eqz v70, :cond_18

    .line 2839
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2843
    :cond_18
    const/16 v35, 0x1

    .line 2844
    const/16 v53, 0x2

    goto/16 :goto_6

    .line 2846
    :cond_19
    if-nez v70, :cond_1b

    .line 2849
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid package: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " (check again later)"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    invoke-static {v6, v7, v11}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2851
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/util/HashSet;

    .line 2852
    .local v88, "pkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v88, :cond_1a

    .line 2853
    new-instance v88, Ljava/util/HashSet;

    .end local v88    # "pkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {v88 .. v88}, Ljava/util/HashSet;-><init>()V

    .line 2854
    .restart local v88    # "pkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    move-object/from16 v0, v88

    invoke-virtual {v6, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2856
    :cond_1a
    invoke-virtual/range {v45 .. v45}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v88

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2857
    const/16 v35, 0x1

    .line 2860
    goto/16 :goto_6

    .line 2863
    .end local v88    # "pkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1b
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid package removed: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    invoke-static {v6, v7, v11}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2865
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2868
    .end local v117    # "validComponent":Z
    .end local v118    # "validPkg":Z
    :cond_1c
    if-nez v45, :cond_b

    .line 2870
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v101

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2871
    const/16 v99, 0x0

    goto/16 :goto_6

    .line 2881
    :cond_1d
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 2890
    .restart local v15    # "useLowResIcon":Z
    :cond_1e
    :try_start_c
    const-string v6, "Launcher.Model"

    const-string v7, "[loadWorkspace] Don\'t replace items for other profiles."

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2894
    :cond_1f
    if-eqz v99, :cond_21

    .line 2895
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v9, v6}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 2896
    const-string v6, "Launcher.Model"

    const-string v7, "constructing info for partially restored package"

    const/4 v11, 0x1

    invoke-static {v6, v7, v11}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2899
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v16, v0

    move/from16 v18, v13

    move-object/from16 v19, v8

    move-object/from16 v23, v10

    invoke-virtual/range {v16 .. v23}, Lnet/oneplus/h2launcher/LauncherModel;->getRestoredItemInfo(Landroid/database/Cursor;ILandroid/content/Intent;IILnet/oneplus/h2launcher/util/CursorIconInfo;Landroid/content/Context;)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v25

    .line 2901
    .restart local v25    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v10, v8}, Lnet/oneplus/h2launcher/LauncherModel;->getRestoredItemIntent(Landroid/database/Cursor;Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    goto/16 :goto_8

    .line 2904
    .end local v25    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_20
    const-string v6, "Launcher.Model"

    const-string v7, "[loadWorkspace] Don\'t restore items for other profiles."

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2905
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2908
    :cond_21
    if-eqz v21, :cond_22

    const/4 v6, 0x1

    move/from16 v0, v21

    if-ne v0, v6, :cond_23

    move-object/from16 v0, v22

    iget v6, v0, Lnet/oneplus/h2launcher/util/CursorIconInfo;->iconTypeIndex:I

    .line 2911
    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_23

    .line 2912
    :cond_22
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v0, v22

    iget v12, v0, Lnet/oneplus/h2launcher/util/CursorIconInfo;->iconIndex:I

    move-object/from16 v7, v82

    move-object/from16 v11, v17

    move/from16 v14, v35

    invoke-virtual/range {v6 .. v15}, Lnet/oneplus/h2launcher/LauncherModel;->getAppShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Landroid/content/Context;Landroid/database/Cursor;IIZZ)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v25

    .line 2915
    .restart local v25    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    move/from16 v0, v21

    move-object/from16 v1, v25

    iput v0, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    .line 2916
    const/4 v6, 0x1

    move/from16 v0, v21

    if-ne v0, v6, :cond_c

    .line 2917
    const/4 v6, 0x0

    move-object/from16 v0, v25

    iput v6, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    .line 2918
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "load itemTypeIs shortcut, but it need load image by application, info = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2921
    .end local v25    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_23
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v10, v13, v1}, Lnet/oneplus/h2launcher/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;ILnet/oneplus/h2launcher/util/CursorIconInfo;)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v25

    .line 2922
    .restart local v25    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    move/from16 v0, v21

    move-object/from16 v1, v25

    iput v0, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    .line 2927
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 2928
    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 2929
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2930
    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2931
    const/high16 v6, 0x10200000

    invoke-virtual {v8, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_8

    .line 2961
    :cond_24
    const-string v6, "Launcher.Model"

    const-string v7, "[loadWorkspace] checkItemPlacement fail."

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2962
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2968
    :cond_25
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/oos/StyleManager;->showHotSeat()Z

    move-result v6

    if-nez v6, :cond_26

    move-object/from16 v0, v25

    iget-wide v6, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->container:J

    const-wide/16 v18, -0x65

    cmp-long v6, v6, v18

    if-nez v6, :cond_26

    .line 2970
    const-string v6, "Launcher.Model"

    const-string v7, "Illegal item on HotSeat, item:%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {v25 .. v25}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v14

    aput-object v14, v11, v12

    invoke-static {v6, v7, v11}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2971
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2975
    :cond_26
    if-eqz v99, :cond_27

    .line 2976
    invoke-virtual/range {v25 .. v25}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v45

    .line 2977
    if-eqz v45, :cond_27

    .line 2978
    invoke-virtual/range {v45 .. v45}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v92

    check-cast v92, Ljava/lang/Integer;

    .line 2979
    .local v92, "progress":Ljava/lang/Integer;
    if-eqz v92, :cond_29

    .line 2980
    invoke-virtual/range {v92 .. v92}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lnet/oneplus/h2launcher/ShortcutInfo;->setInstallProgress(I)V

    .line 2987
    .end local v92    # "progress":Ljava/lang/Integer;
    :cond_27
    :goto_9
    packed-switch v47, :pswitch_data_1

    .line 2997
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 2998
    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->findOrMakeFolder(Lnet/oneplus/h2launcher/util/LongArrayMap;J)Lnet/oneplus/h2launcher/FolderInfo;

    move-result-object v58

    .line 2999
    .local v58, "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    move-object/from16 v0, v58

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderInfo;->add(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 3000
    move-object/from16 v0, v25

    instance-of v6, v0, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    if-eqz v6, :cond_28

    .line 3001
    sget-object v7, Lnet/oneplus/h2launcher/LauncherModel;->sBgDynamicItems:Ljava/util/HashSet;

    move-object/from16 v0, v25

    check-cast v0, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    move-object v6, v0

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3005
    .end local v58    # "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    :cond_28
    :goto_a
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    move-object/from16 v0, v25

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v25

    invoke-virtual {v6, v0, v1, v2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto/16 :goto_3

    .line 2982
    .restart local v92    # "progress":Ljava/lang/Integer;
    :cond_29
    move-object/from16 v0, v25

    iget v6, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->status:I

    and-int/lit8 v6, v6, -0x5

    move-object/from16 v0, v25

    iput v6, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->status:I

    goto :goto_9

    .line 2990
    .end local v92    # "progress":Ljava/lang/Integer;
    :pswitch_2
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2991
    move-object/from16 v0, v25

    instance-of v6, v0, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    if-eqz v6, :cond_28

    .line 2992
    sget-object v7, Lnet/oneplus/h2launcher/LauncherModel;->sBgDynamicItems:Ljava/util/HashSet;

    move-object/from16 v0, v25

    check-cast v0, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    move-object v6, v0

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 3007
    :cond_2a
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unexpected null ShortcutInfo"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3012
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v15    # "useLowResIcon":Z
    .end local v20    # "promiseType":I
    .end local v25    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v45    # "cn":Landroid/content/ComponentName;
    .end local v53    # "disabledState":I
    .end local v60    # "id":J
    .end local v65    # "intentDescription":Ljava/lang/String;
    .end local v73    # "itemReplaced":Z
    .end local v110    # "serialNumber":J
    :pswitch_3
    move-object/from16 v0, v17

    move/from16 v1, v62

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v60

    .line 3013
    .restart local v60    # "id":J
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    move-wide/from16 v0, v60

    invoke-static {v6, v0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->findOrMakeFolder(Lnet/oneplus/h2launcher/util/LongArrayMap;J)Lnet/oneplus/h2launcher/FolderInfo;

    move-result-object v58

    .line 3016
    .restart local v58    # "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v58

    iput-object v6, v0, Lnet/oneplus/h2launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 3017
    move-wide/from16 v0, v60

    move-object/from16 v2, v58

    iput-wide v0, v2, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    .line 3018
    move/from16 v0, v47

    int-to-long v6, v0

    move-object/from16 v0, v58

    iput-wide v6, v0, Lnet/oneplus/h2launcher/FolderInfo;->container:J

    .line 3019
    move-object/from16 v0, v17

    move/from16 v1, v106

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, v58

    iput-wide v6, v0, Lnet/oneplus/h2launcher/FolderInfo;->screenId:J

    .line 3020
    move-object/from16 v0, v17

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v58

    iput v6, v0, Lnet/oneplus/h2launcher/FolderInfo;->cellX:I

    .line 3021
    move-object/from16 v0, v17

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v58

    iput v6, v0, Lnet/oneplus/h2launcher/FolderInfo;->cellY:I

    .line 3022
    const/4 v6, 0x1

    move-object/from16 v0, v58

    iput v6, v0, Lnet/oneplus/h2launcher/FolderInfo;->spanX:I

    .line 3023
    const/4 v6, 0x1

    move-object/from16 v0, v58

    iput v6, v0, Lnet/oneplus/h2launcher/FolderInfo;->spanY:I

    .line 3024
    move-object/from16 v0, v17

    move/from16 v1, v85

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v58

    iput v6, v0, Lnet/oneplus/h2launcher/FolderInfo;->options:I

    .line 3027
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v58

    invoke-direct {v0, v1, v2, v6}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->checkItemPlacement(Lnet/oneplus/h2launcher/util/LongArrayMap;Lnet/oneplus/h2launcher/ItemInfo;Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 3028
    const-string v6, "Launcher.Model"

    const-string v7, "[loadWorkspace] folder checkItemPlacement fail."

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3029
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3034
    :cond_2b
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/oos/StyleManager;->showHotSeat()Z

    move-result v6

    if-nez v6, :cond_2c

    move-object/from16 v0, v58

    iget-wide v6, v0, Lnet/oneplus/h2launcher/FolderInfo;->container:J

    const-wide/16 v18, -0x65

    cmp-long v6, v6, v18

    if-nez v6, :cond_2c

    .line 3036
    const-string v6, "Launcher.Model"

    const-string v7, "Illegal folder on HotSeat, title:%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, v58

    iget-object v14, v0, Lnet/oneplus/h2launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    aput-object v14, v11, v12

    invoke-static {v6, v7, v11}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3037
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3041
    :cond_2c
    packed-switch v47, :pswitch_data_2

    .line 3048
    :goto_b
    if-eqz v99, :cond_2d

    .line 3050
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v101

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3053
    :cond_2d
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    move-object/from16 v0, v58

    iget-wide v0, v0, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v58

    invoke-virtual {v6, v0, v1, v2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 3054
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    move-object/from16 v0, v58

    iget-wide v0, v0, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v58

    invoke-virtual {v6, v0, v1, v2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto/16 :goto_3

    .line 3044
    :pswitch_4
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 3060
    .end local v58    # "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    .end local v60    # "id":J
    :pswitch_5
    const/4 v6, 0x5

    move/from16 v0, v21

    if-ne v0, v6, :cond_2e

    const/16 v52, 0x1

    .line 3063
    .local v52, "customWidget":Z
    :goto_c
    move-object/from16 v0, v17

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 3065
    .local v38, "appWidgetId":I
    move-object/from16 v0, v17

    move/from16 v1, v91

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v110

    .line 3066
    .restart local v110    # "serialNumber":J
    move-object/from16 v0, v17

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v102

    .line 3067
    .local v102, "savedProvider":Ljava/lang/String;
    move-object/from16 v0, v17

    move/from16 v1, v62

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v60

    .line 3068
    .restart local v60    # "id":J
    move-object/from16 v0, v34

    move-wide/from16 v1, v110

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 3069
    .restart local v9    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    if-nez v9, :cond_2f

    .line 3070
    const-string v6, "Launcher.Model"

    const-string v7, "[loadWorkspace] widget user is null."

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3071
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3060
    .end local v9    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v38    # "appWidgetId":I
    .end local v52    # "customWidget":Z
    .end local v60    # "id":J
    .end local v102    # "savedProvider":Ljava/lang/String;
    .end local v110    # "serialNumber":J
    :cond_2e
    const/16 v52, 0x0

    goto :goto_c

    .line 3076
    .restart local v9    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .restart local v38    # "appWidgetId":I
    .restart local v52    # "customWidget":Z
    .restart local v60    # "id":J
    .restart local v102    # "savedProvider":Ljava/lang/String;
    .restart local v110    # "serialNumber":J
    :cond_2f
    invoke-static/range {v102 .. v102}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v46

    .line 3078
    .local v46, "component":Landroid/content/ComponentName;
    move-object/from16 v0, v17

    move/from16 v1, v100

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v98

    .line 3079
    .local v98, "restoreStatus":I
    and-int/lit8 v6, v98, 0x1

    if-nez v6, :cond_30

    const/16 v67, 0x1

    .line 3081
    .local v67, "isIdValid":Z
    :goto_d
    and-int/lit8 v6, v98, 0x2

    if-nez v6, :cond_31

    const/16 v120, 0x1

    .line 3086
    .local v120, "wasProviderReady":Z
    :goto_e
    invoke-static/range {v102 .. v102}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 3085
    invoke-static {v10, v6, v9}, Lnet/oneplus/h2launcher/LauncherModel;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    move-result-object v93

    .line 3088
    .local v93, "provider":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    invoke-static/range {v93 .. v93}, Lnet/oneplus/h2launcher/LauncherModel;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v68

    .line 3090
    .local v68, "isProviderReady":Z
    move-object/from16 v0, v41

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v121

    .line 3091
    .local v121, "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v121, :cond_32

    const/16 v122, 0x1

    .line 3092
    .local v122, "widgetInfoValid":Z
    :goto_f
    if-nez v69, :cond_33

    if-nez v52, :cond_33

    if-eqz v120, :cond_33

    if-nez v68, :cond_33

    .line 3094
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v60

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " appWidgetId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " component:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3096
    invoke-virtual/range {v46 .. v46}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    .line 3098
    .local v81, "log":Ljava/lang/String;
    const-string v6, "Launcher.Model"

    move-object/from16 v0, v81

    invoke-static {v6, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3099
    const-string v6, "Launcher.Model"

    const/4 v7, 0x0

    move-object/from16 v0, v81

    invoke-static {v6, v0, v7}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3100
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3079
    .end local v67    # "isIdValid":Z
    .end local v68    # "isProviderReady":Z
    .end local v81    # "log":Ljava/lang/String;
    .end local v93    # "provider":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .end local v120    # "wasProviderReady":Z
    .end local v121    # "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v122    # "widgetInfoValid":Z
    :cond_30
    const/16 v67, 0x0

    goto :goto_d

    .line 3081
    .restart local v67    # "isIdValid":Z
    :cond_31
    const/16 v120, 0x0

    goto :goto_e

    .line 3091
    .restart local v68    # "isProviderReady":Z
    .restart local v93    # "provider":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .restart local v120    # "wasProviderReady":Z
    .restart local v121    # "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_32
    const/16 v122, 0x0

    goto :goto_f

    .line 3101
    .restart local v122    # "widgetInfoValid":Z
    :cond_33
    if-nez v69, :cond_34

    if-nez v52, :cond_34

    if-nez v122, :cond_34

    .line 3102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting widget that isn\'t a valid widget in AppWidgetManager: id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v60

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " appWidgetId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " component:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3104
    invoke-virtual/range {v46 .. v46}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    .line 3106
    .restart local v81    # "log":Ljava/lang/String;
    const-string v6, "Launcher.Model"

    move-object/from16 v0, v81

    invoke-static {v6, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    const-string v6, "Launcher.Model"

    const/4 v7, 0x0

    move-object/from16 v0, v81

    invoke-static {v6, v0, v7}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3108
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3110
    .end local v81    # "log":Ljava/lang/String;
    :cond_34
    if-eqz v68, :cond_38

    .line 3111
    new-instance v40, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    move-object/from16 v0, v93

    iget-object v6, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, v40

    move/from16 v1, v38

    invoke-direct {v0, v1, v6}, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 3117
    .local v40, "appWidgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    and-int/lit8 v113, v98, -0x9

    .line 3119
    .local v113, "status":I
    if-nez v120, :cond_35

    .line 3124
    if-eqz v67, :cond_37

    .line 3125
    const/16 v113, 0x4

    .line 3131
    :cond_35
    :goto_10
    move/from16 v0, v113

    move-object/from16 v1, v40

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    .line 3160
    .end local v113    # "status":I
    :goto_11
    move-wide/from16 v0, v60

    move-object/from16 v2, v40

    iput-wide v0, v2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->id:J

    .line 3161
    move-object/from16 v0, v17

    move/from16 v1, v106

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, v40

    iput-wide v6, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->screenId:J

    .line 3162
    move-object/from16 v0, v17

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v40

    iput v6, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellX:I

    .line 3163
    move-object/from16 v0, v17

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v40

    iput v6, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellY:I

    .line 3164
    move-object/from16 v0, v17

    move/from16 v1, v107

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v40

    iput v6, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    .line 3165
    move-object/from16 v0, v17

    move/from16 v1, v112

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v40

    iput v6, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    .line 3166
    move-object/from16 v0, v40

    iput-object v9, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 3171
    if-eqz v52, :cond_36

    move-object/from16 v0, v40

    iget v6, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    move-object/from16 v0, v90

    iget v7, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    if-eq v6, v7, :cond_36

    .line 3172
    move-object/from16 v0, v90

    iget v6, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    move-object/from16 v0, v40

    iput v6, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    .line 3174
    new-instance v119, Landroid/content/ContentValues;

    invoke-direct/range {v119 .. v119}, Landroid/content/ContentValues;-><init>()V

    .line 3175
    .restart local v119    # "values":Landroid/content/ContentValues;
    const-string v6, "spanX"

    move-object/from16 v0, v90

    iget v7, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v119

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3176
    const-string v6, "loadWorkspace"

    move-object/from16 v0, v119

    move-object/from16 v1, v40

    invoke-static {v10, v0, v1, v6}, Lnet/oneplus/h2launcher/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lnet/oneplus/h2launcher/ItemInfo;Ljava/lang/String;)V

    .line 3180
    .end local v119    # "values":Landroid/content/ContentValues;
    :cond_36
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/oos/StyleManager;->showHotSeat()Z

    move-result v6

    if-nez v6, :cond_3d

    move-object/from16 v0, v40

    iget-wide v6, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->container:J

    const-wide/16 v18, -0x65

    cmp-long v6, v6, v18

    if-nez v6, :cond_3d

    .line 3182
    const-string v6, "Launcher.Model"

    const-string v7, "Illegal widget on HotSeat, widget:%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, v40

    iget-object v14, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    aput-object v14, v11, v12

    invoke-static {v6, v7, v11}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3183
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3127
    .restart local v113    # "status":I
    :cond_37
    and-int/lit8 v113, v113, -0x3

    goto/16 :goto_10

    .line 3133
    .end local v40    # "appWidgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    .end local v113    # "status":I
    :cond_38
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Widget restore pending id="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v60

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " appWidgetId="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " status ="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v98

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    new-instance v40, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    move-object/from16 v0, v40

    move/from16 v1, v38

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 3138
    .restart local v40    # "appWidgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    move/from16 v0, v98

    move-object/from16 v1, v40

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    .line 3139
    invoke-virtual/range {v46 .. v46}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Integer;

    .line 3141
    .local v63, "installProgress":Ljava/lang/Integer;
    and-int/lit8 v6, v98, 0x8

    if-eqz v6, :cond_3a

    .line 3156
    :cond_39
    :goto_12
    if-nez v63, :cond_3c

    const/4 v6, 0x0

    .line 3157
    :goto_13
    move-object/from16 v0, v40

    iput v6, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->installProgress:I

    goto/16 :goto_11

    .line 3143
    :cond_3a
    if-eqz v63, :cond_3b

    .line 3145
    move-object/from16 v0, v40

    iget v6, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/lit8 v6, v6, 0x8

    move-object/from16 v0, v40

    iput v6, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    goto :goto_12

    .line 3147
    :cond_3b
    if-nez v69, :cond_39

    .line 3148
    if-nez v52, :cond_5

    .line 3149
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unrestored widget removed: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v46

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    invoke-static {v6, v7, v11}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3151
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3157
    :cond_3c
    invoke-virtual/range {v63 .. v63}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_13

    .line 3187
    .end local v63    # "installProgress":Ljava/lang/Integer;
    :cond_3d
    const/16 v6, -0x64

    move/from16 v0, v47

    if-eq v0, v6, :cond_3e

    const/16 v6, -0x65

    move/from16 v0, v47

    if-eq v0, v6, :cond_3e

    .line 3189
    const-string v6, "Launcher.Model"

    const-string v7, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3195
    :cond_3e
    move/from16 v0, v47

    int-to-long v6, v0

    move-object/from16 v0, v40

    iput-wide v6, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->container:J

    .line 3197
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2, v6}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->checkItemPlacement(Lnet/oneplus/h2launcher/util/LongArrayMap;Lnet/oneplus/h2launcher/ItemInfo;Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 3198
    const-string v6, "Launcher.Model"

    const-string v7, "[loadWorkspace] widget checkItemPlacement fail"

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3199
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3203
    :cond_3f
    if-nez v52, :cond_41

    .line 3204
    move-object/from16 v0, v40

    iget-object v6, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 3205
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v94

    .line 3206
    .local v94, "providerName":Ljava/lang/String;
    move-object/from16 v0, v94

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    move-object/from16 v0, v40

    iget v6, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    move/from16 v0, v98

    if-eq v6, v0, :cond_41

    .line 3208
    :cond_40
    new-instance v119, Landroid/content/ContentValues;

    invoke-direct/range {v119 .. v119}, Landroid/content/ContentValues;-><init>()V

    .line 3209
    .restart local v119    # "values":Landroid/content/ContentValues;
    const-string v6, "appWidgetProvider"

    move-object/from16 v0, v119

    move-object/from16 v1, v94

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3212
    const-string v6, "restored"

    move-object/from16 v0, v40

    iget v7, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    .line 3213
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3212
    move-object/from16 v0, v119

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3214
    move-object/from16 v0, p0

    move-wide/from16 v1, v60

    move-object/from16 v3, v119

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->updateItem(JLandroid/content/ContentValues;)V

    .line 3217
    .end local v94    # "providerName":Ljava/lang/String;
    .end local v119    # "values":Landroid/content/ContentValues;
    :cond_41
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    move-object/from16 v0, v40

    iget-wide v0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v40

    invoke-virtual {v6, v0, v1, v2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 3218
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_3

    .line 3227
    .end local v9    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v21    # "itemType":I
    .end local v35    # "allowMissingTarget":Z
    .end local v38    # "appWidgetId":I
    .end local v40    # "appWidgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    .end local v46    # "component":Landroid/content/ComponentName;
    .end local v47    # "container":I
    .end local v52    # "customWidget":Z
    .end local v60    # "id":J
    .end local v67    # "isIdValid":Z
    .end local v68    # "isProviderReady":Z
    .end local v93    # "provider":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .end local v98    # "restoreStatus":I
    .end local v99    # "restored":Z
    .end local v102    # "savedProvider":Ljava/lang/String;
    .end local v110    # "serialNumber":J
    .end local v120    # "wasProviderReady":Z
    .end local v121    # "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v122    # "widgetInfoValid":Z
    :cond_42
    if-eqz v17, :cond_43

    .line 3228
    :try_start_d
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 3233
    :cond_43
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v6, :cond_44

    .line 3234
    const-string v6, "Launcher.Model"

    const-string v7, "Break early if we\'ve stopped loading"

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->clearSBgDataStructures()V

    .line 3236
    monitor-exit v125

    .line 3360
    :goto_14
    return-void

    .line 3239
    :cond_44
    invoke-virtual/range {v75 .. v75}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_45

    .line 3241
    sget-object v6, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id"

    .line 3242
    move-object/from16 v0, v75

    invoke-static {v7, v0}, Lnet/oneplus/h2launcher/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    .line 3241
    invoke-virtual {v4, v6, v7, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3245
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removed = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "_id"

    move-object/from16 v0, v75

    invoke-static {v11, v0}, Lnet/oneplus/h2launcher/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v6

    .line 3251
    invoke-virtual {v6}, Lnet/oneplus/h2launcher/LauncherProvider;->deleteEmptyFolders()Ljava/util/List;

    move-result-object v6

    .line 3250
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v56

    .line 3252
    .local v56, "folderId":J
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    sget-object v11, Lnet/oneplus/h2launcher/LauncherModel;->sBgFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    move-wide/from16 v0, v56

    invoke-virtual {v11, v0, v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3253
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    move-wide/from16 v0, v56

    invoke-virtual {v6, v0, v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->remove(J)V

    .line 3254
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    move-wide/from16 v0, v56

    invoke-virtual {v6, v0, v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->remove(J)V

    goto :goto_15

    .line 3259
    .end local v56    # "folderId":J
    :cond_45
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_46
    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lnet/oneplus/h2launcher/FolderInfo;

    .line 3260
    .local v55, "folder":Lnet/oneplus/h2launcher/FolderInfo;
    invoke-virtual/range {v55 .. v55}, Lnet/oneplus/h2launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v7

    sget-object v11, Lnet/oneplus/h2launcher/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v7, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3261
    const/16 v89, 0x0

    .line 3262
    .local v89, "pos":I
    invoke-virtual/range {v55 .. v55}, Lnet/oneplus/h2launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_47
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_46

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 3263
    .restart local v25    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    move-object/from16 v0, v25

    iget-boolean v11, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->usingLowResIcon:Z

    if-eqz v11, :cond_48

    .line 3264
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v11, v11, Lnet/oneplus/h2launcher/LauncherModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    const/4 v12, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v12}, Lnet/oneplus/h2launcher/ShortcutInfo;->updateIcon(Lnet/oneplus/h2launcher/AssetCache;Z)V

    .line 3266
    :cond_48
    add-int/lit8 v89, v89, 0x1

    .line 3267
    invoke-static {}, Lnet/oneplus/h2launcher/FolderIcon;->getNumItemsInPreview()I

    move-result v11

    move/from16 v0, v89

    if-lt v0, v11, :cond_47

    goto :goto_16

    .line 3273
    .end local v25    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v55    # "folder":Lnet/oneplus/h2launcher/FolderInfo;
    .end local v89    # "pos":I
    :cond_49
    invoke-virtual/range {v101 .. v101}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4a

    .line 3275
    new-instance v119, Landroid/content/ContentValues;

    invoke-direct/range {v119 .. v119}, Landroid/content/ContentValues;-><init>()V

    .line 3276
    .restart local v119    # "values":Landroid/content/ContentValues;
    const-string v6, "restored"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v119

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3277
    sget-object v6, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id"

    .line 3278
    move-object/from16 v0, v101

    invoke-static {v7, v0}, Lnet/oneplus/h2launcher/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    .line 3277
    move-object/from16 v0, v119

    invoke-virtual {v4, v6, v0, v7, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3282
    .end local v119    # "values":Landroid/content/ContentValues;
    :cond_4a
    if-nez v70, :cond_4b

    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4b

    .line 3283
    new-instance v6, Lnet/oneplus/h2launcher/LauncherModel$AppsAvailabilityCheck;

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-direct {v6, v7}, Lnet/oneplus/h2launcher/LauncherModel$AppsAvailabilityCheck;-><init>(Lnet/oneplus/h2launcher/LauncherModel;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v11, "net.oneplus.h2launcher.SYSTEM_READY"

    invoke-direct {v7, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    sget-object v12, Lnet/oneplus/h2launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v10, v6, v7, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3289
    :cond_4b
    new-instance v116, Ljava/util/ArrayList;

    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    move-object/from16 v0, v116

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3290
    .local v116, "unusedScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4c
    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lnet/oneplus/h2launcher/ItemInfo;

    .line 3291
    .local v72, "item":Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, v72

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v104, v0

    .line 3292
    .local v104, "screenId":J
    move-object/from16 v0, v72

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    move-wide/from16 v18, v0

    const-wide/16 v26, -0x64

    cmp-long v7, v18, v26

    if-nez v7, :cond_4c

    .line 3293
    invoke-static/range {v104 .. v105}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v116

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 3294
    invoke-static/range {v104 .. v105}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v116

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_17

    .line 3299
    .end local v72    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v104    # "screenId":J
    :cond_4d
    invoke-virtual/range {v116 .. v116}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_4e

    .line 3300
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    move-object/from16 v0, v116

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 3301
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    sget-object v7, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v6, v10, v7}, Lnet/oneplus/h2launcher/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 3304
    :cond_4e
    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_52

    .line 3305
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    sget-object v7, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v78

    .line 3306
    .local v78, "lastScreen":J
    const/16 v51, 0x0

    .line 3307
    .local v51, "createNewScreen":Z
    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 3308
    .restart local v25    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    move-wide/from16 v0, v78

    move-object/from16 v2, v25

    iput-wide v0, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->screenId:J

    .line 3309
    const/16 v95, 0x0

    .line 3310
    .local v95, "putFail":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->findShortcutItemPlacement(Lnet/oneplus/h2launcher/util/LongArrayMap;Lnet/oneplus/h2launcher/ItemInfo;)Z

    move-result v7

    if-nez v7, :cond_4f

    .line 3311
    const/16 v51, 0x1

    .line 3312
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v7

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/LauncherProvider;->generateNewScreenId()J

    move-result-wide v78

    .line 3313
    sget-object v7, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3314
    move-wide/from16 v0, v78

    move-object/from16 v2, v25

    iput-wide v0, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->screenId:J

    .line 3315
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->findShortcutItemPlacement(Lnet/oneplus/h2launcher/util/LongArrayMap;Lnet/oneplus/h2launcher/ItemInfo;)Z

    move-result v7

    if-nez v7, :cond_4f

    .line 3316
    const/16 v95, 0x1

    .line 3317
    const-string v7, "Launcher.Model"

    const-string v11, "occur error to put item in new Screen"

    invoke-static {v7, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    :cond_4f
    if-nez v95, :cond_50

    .line 3321
    const-string v7, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "occur item stay in IconRearrangement, put it to last, obj = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    sget-object v7, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3323
    sget-object v7, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    move-object/from16 v0, v25

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v25

    invoke-virtual {v7, v0, v1, v2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 3324
    move-object/from16 v0, v25

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->container:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->screenId:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v25

    iget v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->cellX:I

    move/from16 v30, v0

    move-object/from16 v0, v25

    iget v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->cellY:I

    move/from16 v31, v0

    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v24, v10

    invoke-static/range {v24 .. v33}, Lnet/oneplus/h2launcher/LauncherModel;->modifyItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJIIII)V

    goto/16 :goto_18

    .line 3327
    :cond_50
    const-string v7, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "occur item stay in IconRearrangement, put it to last fail, obj = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 3330
    .end local v25    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v95    # "putFail":Z
    :cond_51
    if-eqz v51, :cond_52

    .line 3331
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    sget-object v7, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v6, v10, v7}, Lnet/oneplus/h2launcher/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 3336
    .end local v51    # "createNewScreen":Z
    .end local v78    # "lastScreen":J
    :cond_52
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loaded workspace in "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v114

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "ms"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    const-string v6, "Launcher.Model"

    const-string v7, "workspace layout: "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    invoke-virtual/range {v84 .. v84}, Lnet/oneplus/h2launcher/util/LongArrayMap;->size()I

    move-result v83

    .line 3339
    .local v83, "nScreens":I
    const/16 v124, 0x0

    .local v124, "y":I
    :goto_19
    move/from16 v0, v124

    move/from16 v1, v50

    if-ge v0, v1, :cond_58

    .line 3340
    const-string v80, ""

    .line 3342
    .local v80, "line":Ljava/lang/String;
    const/16 v59, 0x0

    .local v59, "i":I
    :goto_1a
    move/from16 v0, v59

    move/from16 v1, v83

    if-ge v0, v1, :cond_57

    .line 3343
    move-object/from16 v0, v84

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->keyAt(I)J

    move-result-wide v104

    .line 3344
    .restart local v104    # "screenId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v104, v6

    if-lez v6, :cond_53

    .line 3345
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v80

    .line 3347
    :cond_53
    move-object/from16 v0, v84

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, [[Lnet/oneplus/h2launcher/ItemInfo;

    .line 3348
    .local v103, "screen":[[Lnet/oneplus/h2launcher/ItemInfo;
    const/16 v123, 0x0

    .local v123, "x":I
    :goto_1b
    move/from16 v0, v123

    move/from16 v1, v49

    if-ge v0, v1, :cond_56

    .line 3349
    move-object/from16 v0, v103

    array-length v6, v0

    move/from16 v0, v123

    if-ge v0, v6, :cond_55

    aget-object v6, v103, v123

    array-length v6, v6

    move/from16 v0, v124

    if-ge v0, v6, :cond_55

    .line 3350
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v6, v103, v123

    aget-object v6, v6, v124

    if-eqz v6, :cond_54

    const-string v6, "#"

    :goto_1c
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v80

    .line 3348
    :goto_1d
    add-int/lit8 v123, v123, 0x1

    goto :goto_1b

    .line 3350
    :cond_54
    const-string v6, "."

    goto :goto_1c

    .line 3352
    :cond_55
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v80

    goto :goto_1d

    .line 3342
    :cond_56
    add-int/lit8 v59, v59, 0x1

    goto/16 :goto_1a

    .line 3356
    .end local v103    # "screen":[[Lnet/oneplus/h2launcher/ItemInfo;
    .end local v104    # "screenId":J
    .end local v123    # "x":I
    :cond_57
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v80

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " ]"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    add-int/lit8 v124, v124, 0x1

    goto/16 :goto_19

    .line 3359
    .end local v59    # "i":I
    .end local v80    # "line":Ljava/lang/String;
    :cond_58
    monitor-exit v125
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_14

    .line 2713
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_1
    .end packed-switch

    .line 2987
    :pswitch_data_1
    .packed-switch -0x65
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 3041
    :pswitch_data_2
    .packed-switch -0x65
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/TreeMap;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2285
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2286
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lnet/oneplus/h2launcher/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 2287
    .local v1, "screensUri":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2288
    .local v13, "sc":Landroid/database/Cursor;
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 2291
    .local v9, "orderedScreens":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :try_start_0
    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 2293
    .local v8, "idIndex":I
    const-string v2, "screenRank"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 2295
    .local v12, "rankIndex":I
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 2297
    :try_start_1
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 2298
    .local v14, "screenId":J
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2299
    .local v11, "rank":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2300
    .end local v11    # "rank":I
    .end local v14    # "screenId":J
    :catch_0
    move-exception v6

    .line 2301
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Desktop items loading interrupted - invalid screens: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2305
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "idIndex":I
    .end local v12    # "rankIndex":I
    :catchall_0
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v8    # "idIndex":I
    .restart local v12    # "rankIndex":I
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2309
    const-string v2, "Launcher.Model"

    const-string v3, "loadWorkspaceScreensDb()"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2310
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2311
    .local v10, "orderedScreensPairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 2312
    .local v7, "i":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2314
    .end local v7    # "i":Ljava/lang/Integer;
    :cond_1
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screens: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    .line 2315
    invoke-static {v4, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 2314
    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2316
    return-object v9
.end method

.method private onlyBindAllApps()V
    .locals 6

    .prologue
    .line 3780
    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    .line 3781
    .local v2, "oldCallbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-nez v2, :cond_0

    .line 3783
    const-string v4, "Launcher.Model"

    const-string v5, "LoaderTask running with no launcher (onlyBindAllApps)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    :goto_0
    return-void

    .line 3789
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v4, v4, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    .line 3790
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3791
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    new-instance v3, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$16;

    invoke-direct {v3, p0, v2, v1}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$16;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 3805
    .local v3, "r":Ljava/lang/Runnable;
    sget-object v4, Lnet/oneplus/h2launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    if-eq v4, v5, :cond_1

    const/4 v0, 0x1

    .line 3806
    .local v0, "isRunningOnMainThread":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 3807
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3805
    .end local v0    # "isRunningOnMainThread":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 3809
    .restart local v0    # "isRunningOnMainThread":Z
    :cond_2
    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    invoke-virtual {v4, v3}, Lnet/oneplus/h2launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3463
    .local p1, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 3464
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v1

    .line 3466
    .local v1, "profile":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    new-instance v2, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$6;

    invoke-direct {v2, p0, v1}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$6;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3480
    return-void
.end method

.method private updateIconCache()V
    .locals 8

    .prologue
    .line 3760
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 3761
    .local v3, "packagesToIgnore":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v6, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3762
    :try_start_0
    sget-object v5, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ItemInfo;

    .line 3763
    .local v1, "info":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v7, v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v7, :cond_1

    .line 3764
    move-object v0, v1

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    move-object v4, v0

    .line 3765
    .local v4, "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->isPromise()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 3766
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3775
    .end local v1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v4    # "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3768
    .restart local v1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_1
    :try_start_1
    instance-of v7, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    if-eqz v7, :cond_0

    .line 3769
    move-object v0, v1

    check-cast v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    move-object v2, v0

    .line 3770
    .local v2, "lawi":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3771
    iget-object v7, v2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3775
    .end local v1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v2    # "lawi":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3776
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v5, v5, Lnet/oneplus/h2launcher/LauncherModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v5, v3}, Lnet/oneplus/h2launcher/AssetCache;->updateDbIcons(Ljava/util/Set;)V

    .line 3777
    return-void
.end method

.method private updateItem(JLandroid/content/ContentValues;)V
    .locals 7
    .param p1, "itemId"    # J
    .param p3, "update"    # Landroid/content/ContentValues;

    .prologue
    .line 3366
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 3370
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3366
    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3371
    return-void
.end method

.method private verifyApplications()V
    .locals 19

    .prologue
    .line 2020
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v14, v14, Lnet/oneplus/h2launcher/LauncherModel;->mApp:Lnet/oneplus/h2launcher/LauncherAppState;

    invoke-virtual {v14}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 2023
    .local v6, "context":Landroid/content/Context;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2024
    .local v8, "removedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2025
    .local v9, "removedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2031
    .local v10, "removedShortcutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    sget-object v15, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2032
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v14, v14, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v14, v14, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v14, v14, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v14, v14, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_1

    .line 2033
    const-string v14, "Launcher.Model"

    const-string v16, "AllApps have no item, ignore verifyApplications!!"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    monitor-exit v15

    .line 2112
    :cond_0
    :goto_0
    return-void

    .line 2036
    :cond_1
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2038
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2039
    .local v5, "componentNameHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v14, v14, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v14, v14, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2040
    .local v3, "appInfoIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/AppInfo;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2041
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/AppInfo;

    .line 2042
    .local v2, "app":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v14, v2, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2036
    .end local v2    # "app":Lnet/oneplus/h2launcher/AppInfo;
    .end local v3    # "appInfoIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/AppInfo;>;"
    .end local v5    # "componentNameHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v14

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .line 2045
    .restart local v3    # "appInfoIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/AppInfo;>;"
    .restart local v5    # "componentNameHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :cond_2
    sget-object v14, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v14}, Lnet/oneplus/h2launcher/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/ItemInfo;

    .line 2046
    .local v7, "info":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v15, v7, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v15, :cond_3

    .line 2049
    iget v15, v7, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    move-object v11, v7

    .line 2053
    check-cast v11, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 2054
    .local v11, "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 2055
    .local v12, "targetComponent":Landroid/content/ComponentName;
    if-nez v12, :cond_4

    .line 2056
    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[verifyApplications] targetComponent is null. ShortcutInfo = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", isDisabled = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v11, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", status = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v11, Lnet/oneplus/h2launcher/ShortcutInfo;->status:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", isPromise = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2058
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/ShortcutInfo;->isPromise()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2056
    invoke-static/range {v15 .. v16}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2063
    :cond_4
    invoke-virtual {v5, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 2064
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->isInPendingPackages(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 2065
    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[verifyApplications] remove: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2067
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2068
    check-cast v7, Lnet/oneplus/h2launcher/ShortcutInfo;

    .end local v7    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2072
    .end local v11    # "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v12    # "targetComponent":Landroid/content/ComponentName;
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 2073
    invoke-static {v6, v8}, Lnet/oneplus/h2launcher/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2075
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v14}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v4

    .line 2077
    .local v4, "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v14, v14, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    new-instance v15, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v4, v10}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$3;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v14, v15}, Lnet/oneplus/h2launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2089
    .end local v4    # "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2090
    .local v1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    sget-object v15, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2095
    :try_start_2
    sget-object v14, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    if-eqz v14, :cond_7

    sget-object v14, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v14}, Lnet/oneplus/h2launcher/util/LongArrayMap;->size()I

    move-result v14

    if-nez v14, :cond_7

    .line 2096
    const-string v14, "Launcher.Model"

    const-string v16, "Workspace have no item, ignore verifyApplications!!"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    monitor-exit v15

    goto/16 :goto_0

    .line 2108
    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v14

    .line 2100
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v14, v14, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v14, v14, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_8
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/AppInfo;

    .line 2101
    .restart local v2    # "app":Lnet/oneplus/h2launcher/AppInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v16, v0

    iget-object v0, v2, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    iget-object v0, v2, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lnet/oneplus/h2launcher/LauncherModel;->getItemInfoForComponentName(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v13

    .line 2102
    .local v13, "tempInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 2104
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2105
    const-string v16, "Launcher.Model"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Add missing application back, "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v2, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2108
    .end local v2    # "app":Lnet/oneplus/h2launcher/AppInfo;
    .end local v13    # "tempInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    :cond_9
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2109
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 2110
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v1}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->addAndBindAddedWorkspaceApps(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private waitForCurrentPageIdle()V
    .locals 6

    .prologue
    .line 1814
    monitor-enter p0

    .line 1815
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1817
    .local v0, "workspaceWaitTime":J
    :goto_0
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-static {v2}, Lnet/oneplus/h2launcher/LauncherModel;->access$100(Lnet/oneplus/h2launcher/LauncherModel;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1821
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1822
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1827
    :cond_0
    :try_start_2
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1828
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms for current page to finish binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1827
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    monitor-exit p0

    .line 1832
    return-void

    .line 1831
    .end local v0    # "workspaceWaitTime":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private waitForIdle()V
    .locals 6

    .prologue
    .line 1838
    monitor-enter p0

    .line 1839
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1841
    .local v0, "workspaceWaitTime":J
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    new-instance v3, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$2;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$2;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1853
    :goto_0
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1857
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1858
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1863
    :cond_0
    :try_start_2
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1864
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms for previous step to finish binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1863
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    monitor-exit p0

    .line 1868
    return-void

    .line 1867
    .end local v0    # "workspaceWaitTime":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public addAndBindAddedWorkspaceApps(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2141
    .local p2, "workspaceApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 2143
    .local v0, "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-nez p2, :cond_0

    .line 2144
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "workspaceApps and allAppsApps must not be null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2146
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2279
    :goto_0
    return-void

    .line 2150
    :cond_1
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;

    invoke-direct {v1, p0, p1, p2, v0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Landroid/content/Context;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)V

    .line 2278
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method appWasPromise(Landroid/content/Context;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    const/4 v1, 0x0

    .line 2382
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2383
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 2386
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Lnet/oneplus/h2launcher/LauncherModel;->access$400(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dumpState()V
    .locals 4

    .prologue
    .line 3933
    sget-object v1, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3934
    :try_start_0
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLoaderTask.mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3935
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLoaderTask.mStopped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3936
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLoaderTask.mLoadAndBindStepFinished="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mItems size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3938
    monitor-exit v1

    .line 3939
    return-void

    .line 3938
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method findNextAvailableIconSpace(Landroid/content/Context;ILjava/util/ArrayList;)Landroid/util/Pair;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "firstScreenIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 2350
    .local p3, "workspaceScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 2351
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v4

    .line 2352
    .local v4, "model":Lnet/oneplus/h2launcher/LauncherModel;
    const/4 v2, 0x0

    .line 2353
    .local v2, "found":Z
    monitor-enter v0

    .line 2354
    :try_start_0
    sget-object v7, Lnet/oneplus/h2launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v7

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 2360
    :cond_0
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2364
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2365
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2366
    .local v1, "count":I
    move v5, p2

    .local v5, "screen":I
    :goto_0
    if-ge v5, v1, :cond_2

    if-nez v2, :cond_2

    .line 2367
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 2368
    .local v6, "tmpCoordinates":[I
    add-int/lit8 v7, v1, -0x1

    .line 2369
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 2368
    invoke-virtual {p0, v3, v6, v8, v9}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[IJ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2371
    new-instance v7, Landroid/util/Pair;

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    .line 2375
    .end local v6    # "tmpCoordinates":[I
    :goto_1
    return-object v7

    .line 2366
    .restart local v6    # "tmpCoordinates":[I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2374
    .end local v6    # "tmpCoordinates":[I
    :cond_2
    monitor-exit v0

    .line 2375
    const/4 v7, 0x0

    goto :goto_1

    .line 2374
    .end local v1    # "count":I
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .end local v5    # "screen":I
    :catchall_0
    move-exception v7

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[IJ)Z
    .locals 21
    .param p2, "xy"    # [I
    .param p3, "screen"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;[IJ)Z"
        }
    .end annotation

    .prologue
    .line 2321
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v8

    .line 2322
    .local v8, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v12

    .line 2323
    .local v12, "invariantDeviceProfile":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    iget v5, v12, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    .line 2324
    .local v5, "xCount":I
    iget v6, v12, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    .line 2325
    .local v6, "yCount":I
    filled-new-array {v5, v6}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    .line 2327
    .local v7, "occupied":[[Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_2

    .line 2328
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/oneplus/h2launcher/ItemInfo;

    .line 2329
    .local v13, "item":Lnet/oneplus/h2launcher/ItemInfo;
    iget-wide v2, v13, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    const-wide/16 v18, -0x64

    cmp-long v2, v2, v18

    if-nez v2, :cond_1

    .line 2330
    iget-wide v2, v13, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    cmp-long v2, v2, p3

    if-nez v2, :cond_1

    .line 2331
    iget v9, v13, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .line 2332
    .local v9, "cellX":I
    iget v10, v13, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .line 2333
    .local v10, "cellY":I
    iget v14, v13, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    .line 2334
    .local v14, "spanX":I
    iget v15, v13, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    .line 2335
    .local v15, "spanY":I
    move/from16 v16, v9

    .local v16, "x":I
    :goto_1
    if-ltz v16, :cond_1

    add-int v2, v9, v14

    move/from16 v0, v16

    if-ge v0, v2, :cond_1

    move/from16 v0, v16

    if-ge v0, v5, :cond_1

    .line 2336
    move/from16 v17, v10

    .local v17, "y":I
    :goto_2
    if-ltz v17, :cond_0

    add-int v2, v10, v15

    move/from16 v0, v17

    if-ge v0, v2, :cond_0

    move/from16 v0, v17

    if-ge v0, v6, :cond_0

    .line 2337
    aget-object v2, v7, v16

    const/4 v3, 0x1

    aput-boolean v3, v2, v17

    .line 2336
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 2335
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 2327
    .end local v9    # "cellX":I
    .end local v10    # "cellY":I
    .end local v14    # "spanX":I
    .end local v15    # "spanY":I
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2344
    .end local v13    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lnet/oneplus/h2launcher/Utilities;->findVacantCell([IIIII[[Z)Z

    move-result v2

    return v2
.end method

.method getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2394
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2395
    .local v17, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2396
    .local v4, "cr":Landroid/content/ContentResolver;
    sget-object v5, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "itemType"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "container"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "screen"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "cellX"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "cellY"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "spanX"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "spanY"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "profileId"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2403
    .local v10, "c":Landroid/database/Cursor;
    const-string v5, "itemType"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 2404
    .local v16, "itemTypeIndex":I
    const-string v5, "container"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 2405
    .local v13, "containerIndex":I
    const-string v5, "screen"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 2406
    .local v19, "screenIndex":I
    const-string v5, "cellX"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 2407
    .local v11, "cellXIndex":I
    const-string v5, "cellY"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 2408
    .local v12, "cellYIndex":I
    const-string v5, "spanX"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 2409
    .local v22, "spanXIndex":I
    const-string v5, "spanY"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 2410
    .local v23, "spanYIndex":I
    const-string v5, "profileId"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 2411
    .local v18, "profileIdIndex":I
    invoke-static/range {p1 .. p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v24

    .line 2413
    .local v24, "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2414
    new-instance v15, Lnet/oneplus/h2launcher/ItemInfo;

    invoke-direct {v15}, Lnet/oneplus/h2launcher/ItemInfo;-><init>()V

    .line 2415
    .local v15, "item":Lnet/oneplus/h2launcher/ItemInfo;
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v15, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .line 2416
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v15, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .line 2417
    const/4 v5, 0x1

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v15, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    .line 2418
    const/4 v5, 0x1

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v15, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    .line 2419
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, v15, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    .line 2420
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v15, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    .line 2421
    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, v15, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    .line 2422
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    .line 2423
    .local v20, "serialNumber":J
    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getUserForSerialNumber(J)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v5

    iput-object v5, v15, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 2425
    iget-object v5, v15, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    if-eqz v5, :cond_0

    .line 2426
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2429
    .end local v15    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v20    # "serialNumber":J
    :catch_0
    move-exception v14

    .line 2430
    .local v14, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2432
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2435
    .end local v14    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v17

    .line 2432
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1917
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v2, v1, Lnet/oneplus/h2launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1918
    :try_start_0
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v1, :cond_0

    .line 1919
    monitor-exit v2

    .line 1980
    :goto_0
    return-void

    .line 1921
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lnet/oneplus/h2launcher/LauncherModel;->mIsLoaderTaskRunning:Z

    .line 1922
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1933
    const-string v1, "Launcher.Model"

    const-string v2, "step 1: loading workspace"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    .line 1936
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v1, :cond_3

    .line 1960
    :cond_1
    :goto_1
    iput-object v4, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1962
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v2, v1, Lnet/oneplus/h2launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1964
    :try_start_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherModel;->mLoaderTask:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    if-ne v1, p0, :cond_2

    .line 1965
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    const/4 v3, 0x0

    iput-object v3, v1, Lnet/oneplus/h2launcher/LauncherModel;->mLoaderTask:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    .line 1967
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lnet/oneplus/h2launcher/LauncherModel;->mIsLoaderTaskRunning:Z

    .line 1968
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lnet/oneplus/h2launcher/LauncherModel;->mHasLoaderCompletedOnce:Z

    .line 1970
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    .line 1971
    .local v0, "callback":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-nez v0, :cond_4

    .line 1973
    const-string v1, "Launcher.Model"

    const-string v3, "LoaderTask running with no launcher"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    monitor-exit v2

    goto :goto_0

    .line 1978
    .end local v0    # "callback":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1922
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 1940
    :cond_3
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->waitForCurrentPageIdle()V

    .line 1943
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->bindRemainingWorkspace()V

    .line 1945
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->waitForIdle()V

    .line 1948
    const-string v1, "Launcher.Model"

    const-string v2, "step 2: loading all apps"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    .line 1951
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->needVerifyApplications()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1953
    const-string v1, "Launcher.Model"

    const-string v2, "step 3: loading rest of applications"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->verifyApplications()V

    goto :goto_1

    .line 1976
    .restart local v0    # "callback":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    :cond_4
    :try_start_3
    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->finishLoaderTask()V

    .line 1978
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1979
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/AssetCache;->checkAndPreloadAllItem()V

    goto/16 :goto_0
.end method

.method runBindSynchronousPage(I)V
    .locals 4
    .param p1, "synchronousBindPage"    # I

    .prologue
    .line 1871
    const/16 v1, -0x3e9

    if-ne p1, v1, :cond_0

    .line 1873
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Should not call runBindSynchronousPage() without valid page index"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1876
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/LauncherModel;->mAllAppsLoaded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/LauncherModel;->mWorkspaceLoaded:Z

    if-nez v1, :cond_2

    .line 1879
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Expecting AllApps and Workspace to be loaded"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1881
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v2, v1, Lnet/oneplus/h2launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1882
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/LauncherModel;->mIsLoaderTaskRunning:Z

    if-eqz v1, :cond_3

    .line 1885
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Error! Background loading is already running"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1887
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1896
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/DeferredHandler;->flush()V

    .line 1900
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->bindWorkspace(I)V

    .line 1903
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->onlyBindAllApps()V

    .line 1905
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    .line 1906
    .local v0, "callback":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-nez v0, :cond_4

    .line 1908
    const-string v1, "Launcher.Model"

    const-string v2, "LoaderTask running with no launcher"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    :goto_0
    return-void

    .line 1911
    :cond_4
    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->finishLoaderTask()V

    goto :goto_0
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 1983
    monitor-enter p0

    .line 1984
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mStopped:Z

    .line 1985
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1986
    monitor-exit p0

    .line 1987
    return-void

    .line 1986
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    .locals 5
    .param p1, "oldCallbacks"    # Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    .prologue
    const/4 v1, 0x0

    .line 1997
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1998
    :try_start_0
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_0

    .line 1999
    monitor-exit v2

    move-object v0, v1

    .line 2015
    :goto_0
    return-object v0

    .line 2002
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v3, v3, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_1

    .line 2003
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 2006
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v3, v3, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    .line 2007
    .local v0, "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 2008
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 2010
    :cond_2
    if-nez v0, :cond_3

    .line 2011
    const-string v3, "Launcher.Model"

    const-string v4, "no mCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 2015
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 2016
    .end local v0    # "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
