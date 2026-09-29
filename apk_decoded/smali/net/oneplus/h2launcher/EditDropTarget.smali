.class public Lnet/oneplus/h2launcher/EditDropTarget;
.super Lnet/oneplus/h2launcher/ButtonDropTarget;
.source "EditDropTarget.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/EditDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method private static isSupportEditFlag(I)Z
    .locals 1
    .param p0, "flags"    # I

    .prologue
    .line 52
    and-int/lit8 v0, p0, 0xc

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportsDrop(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 44
    instance-of v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    iget v1, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    if-eq v1, v3, :cond_2

    move v0, v3

    .line 46
    .local v0, "isLauncherShortcut":Z
    :goto_0
    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    iget v1, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    invoke-static {v1}, Lnet/oneplus/h2launcher/EditDropTarget;->isSupportEditFlag(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    instance-of v1, p0, Lnet/oneplus/h2launcher/AppInfo;

    if-nez v1, :cond_1

    instance-of v1, p0, Lnet/oneplus/h2launcher/PendingAddItemInfo;

    if-eqz v1, :cond_3

    :cond_1
    move v1, v3

    :goto_1
    return v1

    .end local v0    # "isLauncherShortcut":Z
    :cond_2
    move v0, v2

    .line 44
    goto :goto_0

    .restart local v0    # "isLauncherShortcut":Z
    :cond_3
    move v1, v2

    .line 46
    goto :goto_1
.end method


# virtual methods
.method public completeDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 4
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v1, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lnet/oneplus/h2launcher/AppInfo;

    iget-object v0, v1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 80
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lnet/oneplus/h2launcher/ItemInfo;

    if-eqz v1, :cond_1

    .line 81
    iget-object v2, p0, Lnet/oneplus/h2launcher/EditDropTarget;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    .line 82
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/DragView;->getDragView()Landroid/view/View;

    move-result-object v3

    iget-object v1, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lnet/oneplus/h2launcher/ItemInfo;

    .line 81
    invoke-virtual {v2, v0, v3, v1}, Lnet/oneplus/h2launcher/Launcher;->startApplicationEditDialog(Landroid/content/ComponentName;Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 85
    :cond_1
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->completeDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 86
    return-void

    .line 74
    :cond_2
    iget-object v1, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v1, :cond_3

    .line 75
    iget-object v1, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    iget-object v1, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_3
    iget-object v1, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lnet/oneplus/h2launcher/PendingAddItemInfo;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lnet/oneplus/h2launcher/PendingAddItemInfo;

    iget-object v0, v1, Lnet/oneplus/h2launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 1
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->remove:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->edit:Z

    .line 66
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->onDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 67
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->onFinishInflate()V

    .line 38
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/EditDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/EditDropTarget;->mHoverColor:I

    .line 40
    const v0, 0x7f0200e7

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/EditDropTarget;->setDrawable(I)V

    .line 41
    return-void
.end method

.method protected supportsDrop(Lnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "source"    # Lnet/oneplus/h2launcher/DragSource;
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-interface {p1}, Lnet/oneplus/h2launcher/DragSource;->supportsEditDropTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lnet/oneplus/h2launcher/EditDropTarget;->supportsDrop(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
