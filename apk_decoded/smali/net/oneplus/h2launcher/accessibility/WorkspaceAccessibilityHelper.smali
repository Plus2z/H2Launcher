.class public Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;
.super Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;
.source "WorkspaceAccessibilityHelper.java"


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/CellLayout;)V
    .locals 0
    .param p1, "layout"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;-><init>(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected getConfirmationForIconDrop(I)Ljava/lang/String;
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 109
    iget-object v5, p0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mView:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v5

    rem-int v3, p1, v5

    .line 110
    .local v3, "x":I
    iget-object v5, p0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mView:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v5

    div-int v4, p1, v5

    .line 111
    .local v4, "y":I
    iget-object v5, p0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mDelegate:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->getDragInfo()Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    move-result-object v1

    .line 113
    .local v1, "dragInfo":Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;
    iget-object v5, p0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mView:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v5, v3, v4}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v5, v1, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    if-ne v0, v5, :cond_1

    .line 115
    :cond_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0073

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 125
    :goto_0
    return-object v5

    .line 117
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/ItemInfo;

    .line 118
    .local v2, "info":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v5, v2, Lnet/oneplus/h2launcher/AppInfo;

    if-nez v5, :cond_2

    instance-of v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v5, :cond_3

    .line 119
    :cond_2
    iget-object v5, p0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0052

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 121
    :cond_3
    instance-of v5, v2, Lnet/oneplus/h2launcher/FolderInfo;

    if-eqz v5, :cond_4

    .line 122
    iget-object v5, p0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0032

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 125
    :cond_4
    const-string v5, ""

    goto :goto_0
.end method

.method protected getLocationDescriptionForIconDrop(I)Ljava/lang/String;
    .locals 14
    .param p1, "id"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 130
    iget-object v8, p0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mView:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v8

    rem-int v6, p1, v8

    .line 131
    .local v6, "x":I
    iget-object v8, p0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mView:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v8

    div-int v7, p1, v8

    .line 132
    .local v7, "y":I
    iget-object v8, p0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mDelegate:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->getDragInfo()Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    move-result-object v1

    .line 134
    .local v1, "dragInfo":Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;
    iget-object v8, p0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mView:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v8, v6, v7}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v8, v1, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    if-ne v0, v8, :cond_2

    .line 136
    :cond_0
    iget-object v8, p0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mView:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/CellLayout;->isHotseat()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 137
    iget-object v8, p0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f0b007d

    new-array v10, v13, [Ljava/lang/Object;

    add-int/lit8 v11, p1, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 163
    :goto_0
    return-object v8

    .line 139
    :cond_1
    iget-object v8, p0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f0b007c

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    add-int/lit8 v11, v7, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    add-int/lit8 v11, v6, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/ItemInfo;

    .line 143
    .local v4, "info":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v8, v4, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v8, :cond_3

    .line 144
    iget-object v8, p0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0040

    new-array v10, v13, [Ljava/lang/Object;

    iget-object v11, v4, Lnet/oneplus/h2launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 145
    :cond_3
    instance-of v8, v4, Lnet/oneplus/h2launcher/FolderInfo;

    if-eqz v8, :cond_8

    .line 146
    iget-object v8, v4, Lnet/oneplus/h2launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v3, v4

    .line 148
    check-cast v3, Lnet/oneplus/h2launcher/FolderInfo;

    .line 149
    .local v3, "folder":Lnet/oneplus/h2launcher/FolderInfo;
    const/4 v2, 0x0

    .line 150
    .local v2, "firstItem":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 151
    .local v5, "shortcut":Lnet/oneplus/h2launcher/ShortcutInfo;
    if-eqz v2, :cond_5

    iget v9, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->rank:I

    iget v10, v5, Lnet/oneplus/h2launcher/ShortcutInfo;->rank:I

    if-le v9, v10, :cond_4

    .line 152
    :cond_5
    move-object v2, v5

    goto :goto_1

    .line 156
    .end local v5    # "shortcut":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_6
    if-eqz v2, :cond_7

    .line 157
    iget-object v8, p0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0031

    new-array v10, v13, [Ljava/lang/Object;

    iget-object v11, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 160
    .end local v2    # "firstItem":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v3    # "folder":Lnet/oneplus/h2launcher/FolderInfo;
    :cond_7
    iget-object v8, p0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0030

    new-array v10, v13, [Ljava/lang/Object;

    iget-object v11, v4, Lnet/oneplus/h2launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 163
    :cond_8
    const-string v8, ""

    goto/16 :goto_0
.end method

.method protected intersectsValidDropTarget(I)I
    .locals 20
    .param p1, "id"    # I

    .prologue
    .line 44
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mView:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v9

    .line 45
    .local v9, "mCountX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mView:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v10

    .line 47
    .local v10, "mCountY":I
    rem-int v14, p1, v9

    .line 48
    .local v14, "x":I
    div-int v16, p1, v9

    .line 49
    .local v16, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mDelegate:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->getDragInfo()Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    move-result-object v3

    .line 51
    .local v3, "dragInfo":Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;
    iget-object v0, v3, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    move-object/from16 v18, v0

    sget-object v19, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;->WIDGET:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mView:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/oneplus/h2launcher/CellLayout;->isHotseat()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 52
    const/16 p1, -0x1

    .line 103
    .end local p1    # "id":I
    :cond_0
    :goto_0
    return p1

    .line 55
    .restart local p1    # "id":I
    :cond_1
    iget-object v0, v3, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    move-object/from16 v18, v0

    sget-object v19, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;->WIDGET:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 58
    const/4 v4, 0x0

    .line 62
    .local v4, "fits":Z
    iget-object v0, v3, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lnet/oneplus/h2launcher/ItemInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v12, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    .line 63
    .local v12, "spanX":I
    iget-object v0, v3, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lnet/oneplus/h2launcher/ItemInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v13, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    .line 65
    .local v13, "spanY":I
    const/4 v8, 0x0

    .local v8, "m":I
    :goto_1
    if-ge v8, v12, :cond_a

    .line 66
    const/4 v11, 0x0

    .local v11, "n":I
    :goto_2
    if-ge v11, v13, :cond_9

    .line 68
    const/4 v4, 0x1

    .line 69
    sub-int v15, v14, v8

    .line 70
    .local v15, "x0":I
    sub-int v17, v16, v11

    .line 72
    .local v17, "y0":I
    if-ltz v15, :cond_2

    if-gez v17, :cond_3

    .line 66
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 74
    :cond_3
    move v5, v15

    .local v5, "i":I
    :goto_3
    add-int v18, v15, v12

    move/from16 v0, v18

    if-ge v5, v0, :cond_4

    .line 75
    if-nez v4, :cond_5

    .line 83
    :cond_4
    if-eqz v4, :cond_2

    .line 84
    mul-int v18, v9, v17

    add-int p1, v15, v18

    goto :goto_0

    .line 76
    :cond_5
    move/from16 v7, v17

    .local v7, "j":I
    :goto_4
    add-int v18, v17, v13

    move/from16 v0, v18

    if-ge v7, v0, :cond_7

    .line 77
    if-ge v5, v9, :cond_6

    if-ge v7, v10, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mView:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7}, Lnet/oneplus/h2launcher/CellLayout;->isOccupied(II)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 78
    :cond_6
    const/4 v4, 0x0

    .line 74
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 76
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 65
    .end local v5    # "i":I
    .end local v7    # "j":I
    .end local v15    # "x0":I
    .end local v17    # "y0":I
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 88
    .end local v11    # "n":I
    :cond_a
    const/16 p1, -0x1

    goto :goto_0

    .line 91
    .end local v4    # "fits":Z
    .end local v8    # "m":I
    .end local v12    # "spanX":I
    .end local v13    # "spanY":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;->mView:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 92
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_0

    iget-object v0, v3, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-eq v2, v0, :cond_0

    .line 95
    iget-object v0, v3, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    move-object/from16 v18, v0

    sget-object v19, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;->FOLDER:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/ItemInfo;

    .line 98
    .local v6, "info":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v0, v6, Lnet/oneplus/h2launcher/AppInfo;

    move/from16 v18, v0

    if-nez v18, :cond_0

    instance-of v0, v6, Lnet/oneplus/h2launcher/FolderInfo;

    move/from16 v18, v0

    if-nez v18, :cond_0

    instance-of v0, v6, Lnet/oneplus/h2launcher/ShortcutInfo;

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 103
    .end local v6    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_c
    const/16 p1, -0x1

    goto/16 :goto_0
.end method
