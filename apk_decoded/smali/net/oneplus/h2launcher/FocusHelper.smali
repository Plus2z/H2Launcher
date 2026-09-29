.class public Lnet/oneplus/h2launcher/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/FocusHelper$PagedFolderKeyEventListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FocusHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    .locals 2
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "i"    # I

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 456
    .local v0, "parent":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    return-object v1
.end method

.method static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 24
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 185
    invoke-static/range {p1 .. p1}, Lnet/oneplus/h2launcher/util/FocusLogic;->shouldConsume(I)Z

    move-result v10

    .line 186
    .local v10, "consume":Z
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v17

    .line 188
    .local v17, "launcher":Lnet/oneplus/h2launcher/Launcher;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v9, 0x1

    if-eq v2, v9, :cond_0

    if-eqz v10, :cond_0

    if-nez v17, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v10

    .line 192
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v21

    .line 201
    .local v21, "profile":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    .line 202
    .local v13, "hotseatParent":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    invoke-virtual {v13}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lnet/oneplus/h2launcher/CellLayout;

    .line 203
    .local v12, "hotseatLayout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v12}, Lnet/oneplus/h2launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lnet/oneplus/h2launcher/Hotseat;

    .line 204
    .local v11, "hotseat":Lnet/oneplus/h2launcher/Hotseat;
    if-nez v11, :cond_2

    .line 205
    const-string v2, "FocusHelper"

    const-string v9, "[handleHotseatButtonKeyEvent] hotseat is null."

    invoke-static {v2, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const v9, 0x7f11003a

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lnet/oneplus/h2launcher/Workspace;

    .line 210
    .local v22, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual/range {v22 .. v22}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v7

    .line 211
    .local v7, "pageIndex":I
    invoke-virtual/range {v22 .. v22}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v8

    .line 212
    .local v8, "pageCount":I
    const/4 v3, -0x1

    .line 213
    .local v3, "countX":I
    const/4 v4, -0x1

    .line 214
    .local v4, "countY":I
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 215
    .local v6, "iconIndex":I
    invoke-virtual {v12}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 216
    invoke-virtual {v2, v6}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    iget v0, v2, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    move/from16 v16, v0

    .line 218
    .local v16, "iconRank":I
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lnet/oneplus/h2launcher/CellLayout;

    .line 219
    .local v14, "iconLayout":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v14, :cond_0

    .line 225
    invoke-virtual {v14}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v15

    .line 227
    .local v15, "iconParent":Landroid/view/ViewGroup;
    const/16 v20, 0x0

    .line 228
    .local v20, "parent":Landroid/view/ViewGroup;
    const/4 v5, 0x0

    check-cast v5, [[I

    .line 230
    .local v5, "matrix":[[I
    const/16 v2, 0x13

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 231
    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-nez v2, :cond_7

    .line 232
    const/4 v9, 0x1

    move-object/from16 v0, v21

    iget-object v2, v0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v0, v2, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatAllAppsRank:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget-object v2, v0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v2, v2, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatAllAppsRank:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_6

    const/4 v2, 0x1

    :goto_1
    move/from16 v0, v23

    invoke-static {v14, v12, v9, v0, v2}, Lnet/oneplus/h2launcher/util/FocusLogic;->createSparseMatrix(Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/CellLayout;ZIZ)[[I

    move-result-object v5

    .line 235
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/2addr v6, v2

    .line 236
    invoke-virtual {v14}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v3

    .line 237
    invoke-virtual {v14}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v2

    invoke-virtual {v12}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v9

    add-int v4, v2, v9

    .line 238
    move-object/from16 v20, v15

    .line 262
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v9

    move/from16 v2, p1

    .line 261
    invoke-static/range {v2 .. v9}, Lnet/oneplus/h2launcher/util/FocusLogic;->handleKeyEvent(III[[IIIIZ)I

    move-result v19

    .line 264
    .local v19, "newIconIndex":I
    const/16 v18, 0x0

    .line 265
    .local v18, "newIcon":Landroid/view/View;
    const/4 v2, -0x8

    move/from16 v0, v19

    if-ne v0, v2, :cond_3

    .line 266
    add-int/lit8 v2, v7, 0x1

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v20

    .line 267
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 270
    add-int/lit8 v2, v7, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(I)V

    .line 272
    :cond_3
    move-object/from16 v0, v20

    if-ne v0, v15, :cond_4

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move/from16 v0, v19

    if-lt v0, v2, :cond_4

    .line 273
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int v19, v19, v2

    .line 275
    :cond_4
    if-eqz v20, :cond_0

    .line 276
    if-nez v18, :cond_5

    if-ltz v19, :cond_5

    .line 277
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 279
    :cond_5
    if-eqz v18, :cond_0

    .line 280
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    .line 281
    move/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto/16 :goto_0

    .line 232
    .end local v18    # "newIcon":Landroid/view/View;
    .end local v19    # "newIconIndex":I
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 239
    :cond_7
    const/16 v2, 0x15

    move/from16 v0, p1

    if-ne v0, v2, :cond_9

    .line 240
    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 241
    const/4 v9, 0x0

    move-object/from16 v0, v21

    iget-object v2, v0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v0, v2, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatAllAppsRank:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget-object v2, v0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v2, v2, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatAllAppsRank:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_8

    const/4 v2, 0x1

    :goto_3
    move/from16 v0, v23

    invoke-static {v14, v12, v9, v0, v2}, Lnet/oneplus/h2launcher/util/FocusLogic;->createSparseMatrix(Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/CellLayout;ZIZ)[[I

    move-result-object v5

    .line 244
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/2addr v6, v2

    .line 245
    invoke-virtual {v14}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v2

    invoke-virtual {v12}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v9

    add-int v3, v2, v9

    .line 246
    invoke-virtual {v14}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v4

    .line 247
    move-object/from16 v20, v15

    goto/16 :goto_2

    .line 241
    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    .line 248
    :cond_9
    const/16 v2, 0x16

    move/from16 v0, p1

    if-ne v0, v2, :cond_a

    .line 249
    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 250
    const/16 p1, 0x5d

    goto/16 :goto_2

    .line 254
    :cond_a
    invoke-static {v12}, Lnet/oneplus/h2launcher/util/FocusLogic;->createSparseMatrix(Lnet/oneplus/h2launcher/CellLayout;)[[I

    move-result-object v5

    .line 255
    invoke-virtual {v12}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v3

    .line 256
    invoke-virtual {v12}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v4

    .line 257
    move-object/from16 v20, v13

    goto/16 :goto_2
.end method

.method static handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 31
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 291
    invoke-static/range {p1 .. p1}, Lnet/oneplus/h2launcher/util/FocusLogic;->shouldConsume(I)Z

    move-result v17

    .line 292
    .local v17, "consume":Z
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v23

    .line 294
    .local v23, "launcher":Lnet/oneplus/h2launcher/Launcher;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v9, 0x1

    if-eq v2, v9, :cond_0

    if-eqz v17, :cond_0

    if-nez v23, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v17

    .line 298
    :cond_1
    invoke-virtual/range {v23 .. v23}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v27

    .line 299
    .local v27, "profile":Lnet/oneplus/h2launcher/DeviceProfile;
    const/16 v20, 0x0

    .line 300
    .local v20, "hotseatLayout":Lnet/oneplus/h2launcher/CellLayout;
    const/16 v21, 0x0

    .line 308
    .local v21, "hotseatParent":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    check-cast v26, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    .line 309
    .local v26, "parent":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    invoke-virtual/range {v26 .. v26}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    check-cast v22, Lnet/oneplus/h2launcher/CellLayout;

    .line 310
    .local v22, "iconLayout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual/range {v22 .. v22}, Lnet/oneplus/h2launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v30

    check-cast v30, Lnet/oneplus/h2launcher/Workspace;

    .line 311
    .local v30, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual/range {v30 .. v30}, Lnet/oneplus/h2launcher/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    .line 312
    .local v18, "dragLayer":Landroid/view/ViewGroup;
    const v2, 0x7f11014f

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    .line 313
    .local v29, "tabs":Landroid/view/ViewGroup;
    const v2, 0x7f110158

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lnet/oneplus/h2launcher/Hotseat;

    .line 314
    .local v19, "hotseat":Lnet/oneplus/h2launcher/Hotseat;
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/oos/StyleManager;->showHotSeat()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 315
    if-nez v19, :cond_2

    .line 316
    const-string v2, "FocusHelper"

    const-string v9, "[handleIconKeyEvent] hotseat is null."

    invoke-static {v2, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/Hotseat;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .end local v20    # "hotseatLayout":Lnet/oneplus/h2launcher/CellLayout;
    check-cast v20, Lnet/oneplus/h2launcher/CellLayout;

    .line 320
    .restart local v20    # "hotseatLayout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual/range {v20 .. v20}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v21

    .line 323
    :cond_3
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 324
    .local v6, "iconIndex":I
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 325
    .local v7, "pageIndex":I
    invoke-virtual/range {v30 .. v30}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v8

    .line 326
    .local v8, "pageCount":I
    invoke-virtual/range {v22 .. v22}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v3

    .line 327
    .local v3, "countX":I
    invoke-virtual/range {v22 .. v22}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v4

    .line 335
    .local v4, "countY":I
    const/16 v2, 0x14

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    invoke-virtual/range {v27 .. v27}, Lnet/oneplus/h2launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v20, :cond_6

    .line 336
    const/4 v9, 0x1

    move-object/from16 v0, v27

    iget-object v2, v0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v10, v2, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatAllAppsRank:I

    .line 338
    invoke-virtual/range {v19 .. v19}, Lnet/oneplus/h2launcher/Hotseat;->hasIcons()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    .line 336
    :goto_1
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9, v10, v2}, Lnet/oneplus/h2launcher/util/FocusLogic;->createSparseMatrix(Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/CellLayout;ZIZ)[[I

    move-result-object v5

    .line 339
    .local v5, "matrix":[[I
    add-int/lit8 v4, v4, 0x1

    .line 360
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v9

    move/from16 v2, p1

    .line 359
    invoke-static/range {v2 .. v9}, Lnet/oneplus/h2launcher/util/FocusLogic;->handleKeyEvent(III[[IIIIZ)I

    move-result v25

    .line 361
    .local v25, "newIconIndex":I
    const/16 v24, 0x0

    .line 362
    .local v24, "newIcon":Landroid/view/View;
    packed-switch v25, :pswitch_data_0

    .line 430
    if-ltz v25, :cond_e

    invoke-virtual/range {v26 .. v26}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_e

    .line 431
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 438
    :cond_4
    :goto_3
    if-eqz v24, :cond_0

    .line 439
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->requestFocus()Z

    .line 440
    move/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto/16 :goto_0

    .line 338
    .end local v5    # "matrix":[[I
    .end local v24    # "newIcon":Landroid/view/View;
    .end local v25    # "newIconIndex":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 340
    :cond_6
    const/16 v2, 0x16

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 341
    invoke-virtual/range {v27 .. v27}, Lnet/oneplus/h2launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v20, :cond_8

    .line 342
    const/4 v9, 0x0

    move-object/from16 v0, v27

    iget-object v2, v0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v10, v2, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatAllAppsRank:I

    .line 344
    invoke-virtual/range {v19 .. v19}, Lnet/oneplus/h2launcher/Hotseat;->hasIcons()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    .line 342
    :goto_4
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9, v10, v2}, Lnet/oneplus/h2launcher/util/FocusLogic;->createSparseMatrix(Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/CellLayout;ZIZ)[[I

    move-result-object v5

    .line 345
    .restart local v5    # "matrix":[[I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 344
    .end local v5    # "matrix":[[I
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 346
    :cond_8
    const/16 v2, 0x43

    move/from16 v0, p1

    if-eq v0, v2, :cond_9

    const/16 v2, 0x70

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    .line 347
    :cond_9
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/oos/StyleManager;->showAllApps()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 348
    invoke-virtual/range {v30 .. v31}, Lnet/oneplus/h2launcher/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    goto/16 :goto_0

    .line 350
    :cond_a
    const-string v2, "FocusHelper"

    const-string v9, "[handleIconKeyEvent] KEYCODE_DEL - Has no all apps view, do nothing."

    invoke-static {v2, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    :cond_b
    invoke-static/range {v22 .. v22}, Lnet/oneplus/h2launcher/util/FocusLogic;->createSparseMatrix(Lnet/oneplus/h2launcher/CellLayout;)[[I

    move-result-object v5

    .restart local v5    # "matrix":[[I
    goto/16 :goto_2

    .line 364
    .restart local v24    # "newIcon":Landroid/view/View;
    .restart local v25    # "newIconIndex":I
    :pswitch_0
    const/16 v2, 0x13

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 365
    move-object/from16 v24, v29

    goto :goto_3

    .line 370
    :pswitch_1
    add-int/lit8 v14, v7, -0x1

    .line 371
    .local v14, "newPageIndex":I
    const/16 v2, -0xa

    move/from16 v0, v25

    if-ne v0, v2, :cond_c

    .line 372
    add-int/lit8 v14, v7, 0x1

    .line 374
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    iget v0, v2, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    move/from16 v28, v0

    .line 375
    .local v28, "row":I
    move-object/from16 v0, v30

    invoke-static {v0, v14}, Lnet/oneplus/h2launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v26

    .line 376
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(I)V

    .line 377
    if-eqz v26, :cond_4

    .line 378
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(I)V

    .line 379
    invoke-virtual/range {v26 .. v26}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .end local v22    # "iconLayout":Lnet/oneplus/h2launcher/CellLayout;
    check-cast v22, Lnet/oneplus/h2launcher/CellLayout;

    .line 381
    .restart local v22    # "iconLayout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual/range {v22 .. v22}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v2

    .line 380
    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-static {v0, v2, v1}, Lnet/oneplus/h2launcher/util/FocusLogic;->createSparseMatrix(Lnet/oneplus/h2launcher/CellLayout;II)[[I

    move-result-object v5

    .line 382
    add-int/lit8 v10, v3, 0x1

    const/16 v13, 0x64

    .line 384
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v16

    move/from16 v9, p1

    move v11, v4

    move-object v12, v5

    move v15, v8

    .line 382
    invoke-static/range {v9 .. v16}, Lnet/oneplus/h2launcher/util/FocusLogic;->handleKeyEvent(III[[IIIIZ)I

    move-result v25

    .line 385
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    goto/16 :goto_3

    .line 389
    .end local v14    # "newPageIndex":I
    .end local v28    # "row":I
    :pswitch_2
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v26

    .line 390
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 391
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(I)V

    goto/16 :goto_3

    .line 394
    :pswitch_3
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v26

    .line 395
    invoke-virtual/range {v26 .. v26}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 396
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(I)V

    goto/16 :goto_3

    .line 399
    :pswitch_4
    add-int/lit8 v2, v7, 0x1

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v26

    .line 400
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 401
    add-int/lit8 v2, v7, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(I)V

    goto/16 :goto_3

    .line 405
    :pswitch_5
    add-int/lit8 v14, v7, 0x1

    .line 406
    .restart local v14    # "newPageIndex":I
    const/4 v2, -0x5

    move/from16 v0, v25

    if-ne v0, v2, :cond_d

    .line 407
    add-int/lit8 v14, v7, -0x1

    .line 409
    :cond_d
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(I)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    iget v0, v2, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    move/from16 v28, v0

    .line 411
    .restart local v28    # "row":I
    move-object/from16 v0, v30

    invoke-static {v0, v14}, Lnet/oneplus/h2launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v26

    .line 412
    if-eqz v26, :cond_4

    .line 413
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(I)V

    .line 414
    invoke-virtual/range {v26 .. v26}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .end local v22    # "iconLayout":Lnet/oneplus/h2launcher/CellLayout;
    check-cast v22, Lnet/oneplus/h2launcher/CellLayout;

    .line 415
    .restart local v22    # "iconLayout":Lnet/oneplus/h2launcher/CellLayout;
    const/4 v2, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-static {v0, v2, v1}, Lnet/oneplus/h2launcher/util/FocusLogic;->createSparseMatrix(Lnet/oneplus/h2launcher/CellLayout;II)[[I

    move-result-object v5

    .line 416
    add-int/lit8 v10, v3, 0x1

    const/16 v13, 0x64

    .line 418
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v16

    move/from16 v9, p1

    move v11, v4

    move-object v12, v5

    move v15, v8

    .line 416
    invoke-static/range {v9 .. v16}, Lnet/oneplus/h2launcher/util/FocusLogic;->handleKeyEvent(III[[IIIIZ)I

    move-result v25

    .line 419
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    goto/16 :goto_3

    .line 423
    .end local v14    # "newPageIndex":I
    .end local v28    # "row":I
    :pswitch_6
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 424
    goto/16 :goto_3

    .line 426
    :pswitch_7
    invoke-virtual/range {v26 .. v26}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 427
    goto/16 :goto_3

    .line 432
    :cond_e
    if-eqz v21, :cond_4

    invoke-virtual/range {v26 .. v26}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    move/from16 v0, v25

    if-gt v2, v0, :cond_4

    .line 433
    invoke-virtual/range {v26 .. v26}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v9

    add-int/2addr v2, v9

    move/from16 v0, v25

    if-ge v0, v2, :cond_4

    .line 434
    invoke-virtual/range {v26 .. v26}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    sub-int v2, v25, v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    goto/16 :goto_3

    .line 362
    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static playSoundEffect(ILandroid/view/View;)V
    .locals 1
    .param p0, "keyCode"    # I
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 463
    sparse-switch p0, :sswitch_data_0

    .line 483
    :goto_0
    return-void

    .line 465
    :sswitch_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 468
    :sswitch_1
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 473
    :sswitch_2
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 478
    :sswitch_3
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 463
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x5c -> :sswitch_3
        0x5d -> :sswitch_2
        0x7a -> :sswitch_3
        0x7b -> :sswitch_2
    .end sparse-switch
.end method
