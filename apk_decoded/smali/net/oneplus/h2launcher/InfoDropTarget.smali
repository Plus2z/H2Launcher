.class public Lnet/oneplus/h2launcher/InfoDropTarget;
.super Lnet/oneplus/h2launcher/ButtonDropTarget;
.source "InfoDropTarget.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/InfoDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public static startDetailsActivityForInfo(Ljava/lang/Object;Lnet/oneplus/h2launcher/Launcher;)V
    .locals 3
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "componentName":Landroid/content/ComponentName;
    instance-of v2, p0, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v2, :cond_2

    move-object v2, p0

    .line 47
    check-cast v2, Lnet/oneplus/h2launcher/AppInfo;

    iget-object v0, v2, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 54
    :cond_0
    :goto_0
    instance-of v2, p0, Lnet/oneplus/h2launcher/ItemInfo;

    if-eqz v2, :cond_4

    .line 55
    check-cast p0, Lnet/oneplus/h2launcher/ItemInfo;

    .end local p0    # "info":Ljava/lang/Object;
    iget-object v1, p0, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 60
    .local v1, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :goto_1
    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p1, v0, v1}, Lnet/oneplus/h2launcher/Launcher;->startApplicationDetailsActivity(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 63
    :cond_1
    return-void

    .line 48
    .end local v1    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .restart local p0    # "info":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v2, :cond_3

    move-object v2, p0

    .line 49
    check-cast v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    iget-object v2, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_3
    instance-of v2, p0, Lnet/oneplus/h2launcher/PendingAddItemInfo;

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 51
    check-cast v2, Lnet/oneplus/h2launcher/PendingAddItemInfo;

    iget-object v0, v2, Lnet/oneplus/h2launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_0

    .line 57
    :cond_4
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v1

    .restart local v1    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    goto :goto_1
.end method

.method public static supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 71
    instance-of v0, p1, Lnet/oneplus/h2launcher/AppInfo;

    if-nez v0, :cond_0

    instance-of v0, p1, Lnet/oneplus/h2launcher/PendingAddItemInfo;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public completeDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 2
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->completeDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 77
    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    iget-object v1, p0, Lnet/oneplus/h2launcher/InfoDropTarget;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/InfoDropTarget;->startDetailsActivityForInfo(Ljava/lang/Object;Lnet/oneplus/h2launcher/Launcher;)V

    .line 78
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->onFinishInflate()V

    .line 39
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/InfoDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/InfoDropTarget;->mHoverColor:I

    .line 41
    const v0, 0x7f0200fb

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/InfoDropTarget;->setDrawable(I)V

    .line 42
    return-void
.end method

.method protected supportsDrop(Lnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "source"    # Lnet/oneplus/h2launcher/DragSource;
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 67
    invoke-interface {p1}, Lnet/oneplus/h2launcher/DragSource;->supportsAppInfoDropTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/InfoDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lnet/oneplus/h2launcher/InfoDropTarget;->supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
