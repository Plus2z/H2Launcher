.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;
.super Ljava/lang/Object;
.source "IconRearrangementHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mergeFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 415
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 417
    move-object/from16 v14, p0

    .line 418
    .local v14, "task":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v2, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->getShortcutInfos()Ljava/util/ArrayList;

    move-result-object v13

    .line 419
    .local v13, "shortcutInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v8, 0x2

    if-ge v2, v8, :cond_1

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$300(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    move-result-object v2

    invoke-interface {v2, v14}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;->onTaskEnd(Ljava/lang/Runnable;)V

    .line 500
    :cond_0
    return-void

    .line 423
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v2

    const-string v8, "launcher.actions"

    const-string v9, "icon_rearrange_folder"

    const-string v25, "1"

    move-object/from16 v0, v25

    invoke-virtual {v2, v8, v9, v0}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v2, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v11

    .line 427
    .local v11, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v19

    .line 428
    .local v19, "currentPage":I
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v18

    .line 430
    .local v18, "childCount":I
    const/16 v24, 0x0

    .line 432
    .local v24, "newFolder":Lnet/oneplus/h2launcher/FolderIcon;
    const-wide/16 v6, 0x0

    .line 433
    .local v6, "screenId":J
    move/from16 v22, v19

    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 434
    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/CellLayout;

    .line 435
    .local v3, "layout":Lnet/oneplus/h2launcher/CellLayout;
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 436
    .local v17, "cell":[I
    const/4 v2, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v2, v8}, Lnet/oneplus/h2launcher/CellLayout;->findCellForSpan([III)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/CellLayout;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$900(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Lnet/oneplus/h2launcher/CellLayout;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v2, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v4, -0x65

    .line 441
    .local v4, "container":J
    :goto_1
    invoke-virtual {v11, v3}, Lnet/oneplus/h2launcher/Workspace;->getIdForScreen(Lnet/oneplus/h2launcher/CellLayout;)J

    move-result-wide v6

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v2, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v8, 0x0

    aget v8, v17, v8

    const/4 v9, 0x1

    aget v9, v17, v9

    invoke-virtual/range {v2 .. v9}, Lnet/oneplus/h2launcher/Launcher;->addFolder(Lnet/oneplus/h2launcher/CellLayout;JJII)Lnet/oneplus/h2launcher/FolderIcon;

    move-result-object v24

    .line 443
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/FolderIcon;->setAlpha(F)V

    .line 444
    invoke-virtual/range {v24 .. v24}, Lnet/oneplus/h2launcher/FolderIcon;->getFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Folder;->getInfo()Lnet/oneplus/h2launcher/FolderInfo;

    move-result-object v2

    invoke-virtual {v2, v13}, Lnet/oneplus/h2launcher/FolderInfo;->createWithContents(Ljava/util/ArrayList;)V

    .line 448
    .end local v3    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    .end local v4    # "container":J
    .end local v17    # "cell":[I
    :cond_2
    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(I)V

    .line 449
    move-object/from16 v10, v24

    .line 450
    .local v10, "targetFolderIcon":Lnet/oneplus/h2launcher/FolderIcon;
    new-instance v21, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 451
    .local v21, "folderIconShowAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v2, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->getFolderButton()Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    move-result-object v12

    .line 452
    .local v12, "folderButton":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 453
    const-wide/16 v8, 0x190

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$700(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/util/HashSet;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 455
    new-instance v8, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;Lnet/oneplus/h2launcher/FolderIcon;Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 486
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v16, "animatorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    move-object/from16 v0, v16

    invoke-static {v2, v0, v13}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$1000(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v23

    .line 489
    .local v23, "longestDuration":I
    new-instance v20, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 490
    .local v20, "folderButtonHideAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 491
    const-wide/16 v8, 0x190

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 492
    move/from16 v0, v23

    int-to-long v8, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setStartDelay(J)V

    .line 493
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    move/from16 v0, v23

    add-int/lit16 v2, v0, 0x190

    int-to-long v8, v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setStartDelay(J)V

    .line 496
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/animation/Animator;

    .line 498
    .local v15, "animator":Landroid/animation/Animator;
    invoke-virtual {v15}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 438
    .end local v10    # "targetFolderIcon":Lnet/oneplus/h2launcher/FolderIcon;
    .end local v12    # "folderButton":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;
    .end local v15    # "animator":Landroid/animation/Animator;
    .end local v16    # "animatorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v20    # "folderButtonHideAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .end local v21    # "folderIconShowAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .end local v23    # "longestDuration":I
    .restart local v3    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    .restart local v17    # "cell":[I
    :cond_3
    const-wide/16 v4, -0x64

    goto/16 :goto_1

    .line 433
    :cond_4
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0
.end method
