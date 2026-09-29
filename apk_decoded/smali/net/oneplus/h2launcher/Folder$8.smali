.class Lnet/oneplus/h2launcher/Folder$8;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Folder;->replaceFolderWithFinalItem(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Folder;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Folder;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Folder;

    .prologue
    .line 915
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v8, 0x1

    .line 918
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    .line 919
    .local v13, "itemCount":I
    if-gt v13, v8, :cond_2

    .line 920
    const/4 v3, 0x0

    .line 922
    .local v3, "newIcon":Landroid/view/View;
    if-ne v13, v8, :cond_0

    .line 925
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-wide v4, v2, Lnet/oneplus/h2launcher/FolderInfo;->container:J

    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-wide v6, v2, Lnet/oneplus/h2launcher/FolderInfo;->screenId:J

    invoke-virtual {v0, v4, v5, v6, v7}, Lnet/oneplus/h2launcher/Launcher;->getCellLayout(JJ)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v12

    .line 927
    .local v12, "cellLayout":Lnet/oneplus/h2launcher/CellLayout;
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 928
    .local v1, "finalItem":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, v12, v1}, Lnet/oneplus/h2launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v14

    .line 929
    .end local v3    # "newIcon":Landroid/view/View;
    .local v14, "newIcon":Landroid/view/View;
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-wide v2, v2, Lnet/oneplus/h2launcher/FolderInfo;->container:J

    iget-object v4, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-wide v4, v4, Lnet/oneplus/h2launcher/FolderInfo;->screenId:J

    iget-object v6, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v6, v6, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget v6, v6, Lnet/oneplus/h2launcher/FolderInfo;->cellX:I

    iget-object v7, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v7, v7, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget v7, v7, Lnet/oneplus/h2launcher/FolderInfo;->cellY:I

    invoke-static/range {v0 .. v7}, Lnet/oneplus/h2launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V

    move-object v3, v14

    .line 934
    .end local v1    # "finalItem":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v12    # "cellLayout":Lnet/oneplus/h2launcher/CellLayout;
    .end local v14    # "newIcon":Landroid/view/View;
    .restart local v3    # "newIcon":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Folder;->mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-virtual {v0, v2, v4, v8}, Lnet/oneplus/h2launcher/Launcher;->removeItem(Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;Z)Z

    .line 935
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    instance-of v0, v0, Lnet/oneplus/h2launcher/DropTarget;

    if-eqz v0, :cond_1

    .line 936
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v2, v0, Lnet/oneplus/h2launcher/Folder;->mDragController:Lnet/oneplus/h2launcher/DragController;

    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    check-cast v0, Lnet/oneplus/h2launcher/DropTarget;

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/DragController;->removeDropTarget(Lnet/oneplus/h2launcher/DropTarget;)V

    .line 939
    :cond_1
    if-eqz v3, :cond_2

    .line 943
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v2

    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-wide v4, v0, Lnet/oneplus/h2launcher/FolderInfo;->container:J

    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-wide v6, v0, Lnet/oneplus/h2launcher/FolderInfo;->screenId:J

    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget v8, v0, Lnet/oneplus/h2launcher/FolderInfo;->cellX:I

    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget v9, v0, Lnet/oneplus/h2launcher/FolderInfo;->cellY:I

    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget v10, v0, Lnet/oneplus/h2launcher/FolderInfo;->spanX:I

    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$8;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget v11, v0, Lnet/oneplus/h2launcher/FolderInfo;->spanY:I

    invoke-virtual/range {v2 .. v11}, Lnet/oneplus/h2launcher/Workspace;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    .line 947
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 950
    .end local v3    # "newIcon":Landroid/view/View;
    :cond_2
    return-void
.end method
