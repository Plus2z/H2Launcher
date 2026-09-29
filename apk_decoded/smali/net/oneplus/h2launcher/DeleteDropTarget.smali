.class public Lnet/oneplus/h2launcher/DeleteDropTarget;
.super Lnet/oneplus/h2launcher/ButtonDropTarget;
.source "DeleteDropTarget.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/DeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public static removeWorkspaceOrFolderItem(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;)Z
    .locals 6
    .param p0, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "item"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 89
    instance-of v4, p1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v4, :cond_3

    .line 90
    invoke-static {p0, p1}, Lnet/oneplus/h2launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 120
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 121
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3, p2}, Lnet/oneplus/h2launcher/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 122
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Workspace;->stripEmptyScreens()V

    .line 124
    :cond_1
    const/4 v3, 0x1

    :cond_2
    return v3

    .line 91
    :cond_3
    instance-of v4, p1, Lnet/oneplus/h2launcher/FolderInfo;

    if-eqz v4, :cond_4

    move-object v1, p1

    .line 92
    check-cast v1, Lnet/oneplus/h2launcher/FolderInfo;

    .line 93
    .local v1, "folder":Lnet/oneplus/h2launcher/FolderInfo;
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Launcher;->removeFolder(Lnet/oneplus/h2launcher/FolderInfo;)V

    .line 94
    invoke-static {p0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->deleteFolderContentsFromDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/FolderInfo;)V

    goto :goto_0

    .line 95
    .end local v1    # "folder":Lnet/oneplus/h2launcher/FolderInfo;
    :cond_4
    instance-of v4, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    if-eqz v4, :cond_2

    move-object v2, p1

    .line 96
    check-cast v2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    .line 99
    .local v2, "widget":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Launcher;->removeAppWidget(Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V

    .line 100
    invoke-static {p0, v2}, Lnet/oneplus/h2launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 103
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v0

    .line 105
    .local v0, "appWidgetHost":Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v4

    if-nez v4, :cond_0

    .line 106
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->isWidgetIdValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    new-instance v4, Lnet/oneplus/h2launcher/DeleteDropTarget$1;

    invoke-direct {v4, v0, v2}, Lnet/oneplus/h2launcher/DeleteDropTarget$1;-><init>(Lnet/oneplus/h2launcher/LauncherAppWidgetHost;Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Void;

    .line 114
    invoke-virtual {v4, v5, v3}, Lnet/oneplus/h2launcher/DeleteDropTarget$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static supportsDrop(Ljava/lang/Object;)Z
    .locals 5
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 50
    instance-of v3, p0, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v3, :cond_3

    move-object v0, p0

    .line 51
    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 52
    .local v0, "sInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isStandardLayout()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    iget v3, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    if-eq v3, v2, :cond_1

    :cond_0
    iget v3, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    :cond_1
    move v1, v2

    .line 57
    .end local v0    # "sInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_2
    :goto_0
    return v1

    :cond_3
    instance-of v3, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    if-nez v3, :cond_4

    instance-of v3, p0, Lnet/oneplus/h2launcher/FolderInfo;

    if-eqz v3, :cond_2

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isStandardLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_4
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public completeDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 7
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->completeDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 69
    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lnet/oneplus/h2launcher/ItemInfo;

    .line 70
    .local v0, "item":Lnet/oneplus/h2launcher/ItemInfo;
    iget-object v3, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    instance-of v3, v3, Lnet/oneplus/h2launcher/Workspace;

    if-nez v3, :cond_0

    iget-object v3, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    instance-of v3, v3, Lnet/oneplus/h2launcher/Folder;

    if-eqz v3, :cond_1

    .line 71
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/DeleteDropTarget;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lnet/oneplus/h2launcher/DeleteDropTarget;->removeWorkspaceOrFolderItem(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;)Z

    .line 72
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    instance-of v3, v3, Lnet/oneplus/h2launcher/Workspace;

    if-eqz v3, :cond_1

    .line 73
    iget-object v2, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    check-cast v2, Lnet/oneplus/h2launcher/Workspace;

    .line 74
    .local v2, "workspace":Lnet/oneplus/h2launcher/Workspace;
    iget-wide v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lnet/oneplus/h2launcher/Workspace;->getScreenWithId(J)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v1

    .line 75
    .local v1, "layout":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 76
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lnet/oneplus/h2launcher/Workspace;->removeWorkspaceScreen(Lnet/oneplus/h2launcher/CellLayout;Z)V

    .line 81
    .end local v1    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    .end local v2    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/DeleteDropTarget;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getStats()Lnet/oneplus/h2launcher/Stats;

    move-result-object v3

    iget-wide v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    iget-object v6, v0, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v3, v4, v5, v6}, Lnet/oneplus/h2launcher/Stats;->onShortcutRemoved(JLnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 82
    return-void
.end method

.method protected getAccessibilityDropConfirmation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->onFinishInflate()V

    .line 44
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/DeleteDropTarget;->mHoverColor:I

    .line 46
    const v0, 0x7f020119

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/DeleteDropTarget;->setDrawable(I)V

    .line 47
    return-void
.end method

.method public onFlingToDelete(Lnet/oneplus/h2launcher/DropTarget$DragObject;Landroid/graphics/PointF;)V
    .locals 12
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;
    .param p2, "vel"    # Landroid/graphics/PointF;

    .prologue
    const/4 v6, 0x0

    .line 130
    iget-object v1, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v1, v6}, Lnet/oneplus/h2launcher/DragView;->setColor(I)V

    .line 131
    iget-object v1, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/DragView;->updateInitialScaleToCurrentScale()V

    .line 133
    iget-object v1, p0, Lnet/oneplus/h2launcher/DeleteDropTarget;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    .line 134
    .local v0, "dragLayer":Lnet/oneplus/h2launcher/DragLayer;
    new-instance v2, Lnet/oneplus/h2launcher/util/FlingAnimation;

    iget-object v1, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    .line 135
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/DragView;->getMeasuredWidth()I

    move-result v1

    iget-object v7, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/DragView;->getMeasuredHeight()I

    move-result v7

    iget-object v10, p0, Lnet/oneplus/h2launcher/DeleteDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    iget-object v11, p0, Lnet/oneplus/h2launcher/DeleteDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 135
    invoke-virtual {p0, v1, v7, v10, v11}, Lnet/oneplus/h2launcher/DeleteDropTarget;->getIconRect(IIII)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v2, p1, p2, v1, v0}, Lnet/oneplus/h2launcher/util/FlingAnimation;-><init>(Lnet/oneplus/h2launcher/DropTarget$DragObject;Landroid/graphics/PointF;Landroid/graphics/Rect;Lnet/oneplus/h2launcher/DragLayer;)V

    .line 139
    .local v2, "fling":Lnet/oneplus/h2launcher/util/FlingAnimation;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/util/FlingAnimation;->getDuration()I

    move-result v3

    .line 140
    .local v3, "duration":I
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 147
    .local v8, "startTime":J
    new-instance v4, Lnet/oneplus/h2launcher/DeleteDropTarget$2;

    invoke-direct {v4, p0, v8, v9, v3}, Lnet/oneplus/h2launcher/DeleteDropTarget$2;-><init>(Lnet/oneplus/h2launcher/DeleteDropTarget;JI)V

    .line 164
    .local v4, "tInterpolator":Landroid/animation/TimeInterpolator;
    new-instance v5, Lnet/oneplus/h2launcher/DeleteDropTarget$3;

    invoke-direct {v5, p0, p1}, Lnet/oneplus/h2launcher/DeleteDropTarget$3;-><init>(Lnet/oneplus/h2launcher/DeleteDropTarget;Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 173
    .local v5, "onAnimationEndRunnable":Ljava/lang/Runnable;
    iget-object v1, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lnet/oneplus/h2launcher/DragLayer;->animateView(Lnet/oneplus/h2launcher/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 175
    return-void
.end method

.method protected supportsDrop(Lnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "source"    # Lnet/oneplus/h2launcher/DragSource;
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-interface {p1}, Lnet/oneplus/h2launcher/DragSource;->supportsDeleteDropTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lnet/oneplus/h2launcher/DeleteDropTarget;->supportsDrop(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
