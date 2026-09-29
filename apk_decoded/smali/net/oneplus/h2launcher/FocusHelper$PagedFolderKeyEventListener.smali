.class public Lnet/oneplus/h2launcher/FocusHelper$PagedFolderKeyEventListener;
.super Ljava/lang/Object;
.source "FocusHelper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/FocusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PagedFolderKeyEventListener"
.end annotation


# instance fields
.field private final mFolder:Lnet/oneplus/h2launcher/Folder;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/Folder;)V
    .locals 0
    .param p1, "folder"    # Lnet/oneplus/h2launcher/Folder;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lnet/oneplus/h2launcher/FocusHelper$PagedFolderKeyEventListener;->mFolder:Lnet/oneplus/h2launcher/Folder;

    .line 64
    return-void
.end method


# virtual methods
.method public handleNoopKey(ILandroid/view/View;)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 171
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Lnet/oneplus/h2launcher/FocusHelper$PagedFolderKeyEventListener;->mFolder:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ExtendedEditText;->requestFocus()Z

    .line 173
    invoke-static {p1, p2}, Lnet/oneplus/h2launcher/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    .line 175
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 20
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 68
    invoke-static/range {p2 .. p2}, Lnet/oneplus/h2launcher/util/FocusLogic;->shouldConsume(I)Z

    move-result v13

    .line 69
    .local v13, "consume":Z
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_0

    .line 167
    .end local v13    # "consume":Z
    :goto_0
    return v13

    .line 78
    .restart local v13    # "consume":Z
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    if-nez v3, :cond_2

    .line 79
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->isDogfoodBuild()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v19, "Parent of the focused item is not supported."

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    .line 88
    .local v14, "itemContainer":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    invoke-virtual {v14}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lnet/oneplus/h2launcher/CellLayout;

    .line 89
    .local v11, "cellLayout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v4

    .line 90
    .local v4, "countX":I
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v5

    .line 92
    .local v5, "countY":I
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 93
    .local v7, "iconIndex":I
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Lnet/oneplus/h2launcher/FolderPagedView;

    .line 95
    .local v17, "pagedView":Lnet/oneplus/h2launcher/FolderPagedView;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lnet/oneplus/h2launcher/FolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 96
    .local v8, "pageIndex":I
    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/FolderPagedView;->getPageCount()I

    move-result v9

    .line 97
    .local v9, "pageCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v10

    .line 99
    .local v10, "isLayoutRtl":Z
    invoke-static {v11}, Lnet/oneplus/h2launcher/util/FocusLogic;->createSparseMatrix(Lnet/oneplus/h2launcher/CellLayout;)[[I

    move-result-object v6

    .local v6, "matrix":[[I
    move/from16 v3, p2

    .line 101
    invoke-static/range {v3 .. v10}, Lnet/oneplus/h2launcher/util/FocusLogic;->handleKeyEvent(III[[IIIIZ)I

    move-result v15

    .line 103
    .local v15, "newIconIndex":I
    const/4 v3, -0x1

    if-ne v15, v3, :cond_3

    .line 104
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/FocusHelper$PagedFolderKeyEventListener;->handleNoopKey(ILandroid/view/View;)V

    goto :goto_0

    .line 107
    :cond_3
    const/16 v16, 0x0

    .line 108
    .local v16, "newParent":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    const/4 v12, 0x0

    .line 110
    .local v12, "child":Landroid/view/View;
    packed-switch v15, :pswitch_data_0

    .line 158
    invoke-virtual {v14, v15}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 161
    :cond_4
    :goto_1
    if-eqz v12, :cond_7

    .line 162
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 163
    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    .line 113
    :pswitch_0
    add-int/lit8 v3, v8, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lnet/oneplus/h2launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v16

    .line 114
    if-eqz v16, :cond_4

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    iget v0, v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    move/from16 v18, v0

    .line 116
    .local v18, "row":I
    add-int/lit8 v3, v8, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/FolderPagedView;->snapToPage(I)V

    .line 117
    const/4 v3, -0x5

    if-ne v15, v3, :cond_5

    const/4 v3, 0x1

    .line 119
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v19

    xor-int v3, v3, v19

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    .line 117
    :goto_3
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v12

    .line 120
    goto :goto_1

    .line 117
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 119
    :cond_6
    add-int/lit8 v3, v4, -0x1

    goto :goto_3

    .line 123
    .end local v18    # "row":I
    :pswitch_1
    add-int/lit8 v3, v8, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lnet/oneplus/h2launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v16

    .line 124
    if-eqz v16, :cond_4

    .line 125
    add-int/lit8 v3, v8, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/FolderPagedView;->snapToPage(I)V

    .line 126
    const/4 v3, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v12

    goto :goto_1

    .line 130
    :pswitch_2
    add-int/lit8 v3, v8, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lnet/oneplus/h2launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v16

    .line 131
    if-eqz v16, :cond_4

    .line 132
    add-int/lit8 v3, v8, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/FolderPagedView;->snapToPage(I)V

    .line 133
    add-int/lit8 v3, v4, -0x1

    add-int/lit8 v19, v5, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v12

    goto :goto_1

    .line 137
    :pswitch_3
    add-int/lit8 v3, v8, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lnet/oneplus/h2launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v16

    .line 138
    if-eqz v16, :cond_4

    .line 139
    add-int/lit8 v3, v8, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/FolderPagedView;->snapToPage(I)V

    .line 140
    const/4 v3, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v12

    goto/16 :goto_1

    .line 145
    :pswitch_4
    add-int/lit8 v3, v8, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lnet/oneplus/h2launcher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v16

    .line 146
    if-eqz v16, :cond_4

    .line 147
    add-int/lit8 v3, v8, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/FolderPagedView;->snapToPage(I)V

    .line 148
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1, v15}, Lnet/oneplus/h2launcher/util/FocusLogic;->getAdjacentChildInNextPage(Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    goto/16 :goto_1

    .line 152
    :pswitch_5
    const/4 v3, 0x0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v3, v0}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v12

    .line 153
    goto/16 :goto_1

    .line 155
    :pswitch_6
    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v12

    .line 156
    goto/16 :goto_1

    .line 165
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/FocusHelper$PagedFolderKeyEventListener;->handleNoopKey(ILandroid/view/View;)V

    goto/16 :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
