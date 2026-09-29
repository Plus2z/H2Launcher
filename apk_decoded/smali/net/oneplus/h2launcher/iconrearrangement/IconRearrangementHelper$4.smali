.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$4;
.super Ljava/lang/Object;
.source "IconRearrangementHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->addShortcutFromFolder(Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/Folder;Lnet/oneplus/h2launcher/CellLayout;Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

.field final synthetic val$folder:Lnet/oneplus/h2launcher/Folder;

.field final synthetic val$info:Lnet/oneplus/h2launcher/ShortcutInfo;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Lnet/oneplus/h2launcher/Folder;Lnet/oneplus/h2launcher/ShortcutInfo;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 193
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$4;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iput-object p2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$4;->val$folder:Lnet/oneplus/h2launcher/Folder;

    iput-object p3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$4;->val$info:Lnet/oneplus/h2launcher/ShortcutInfo;

    iput-object p4, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$4;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$4;->val$folder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->getInfo()Lnet/oneplus/h2launcher/FolderInfo;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$4;->val$info:Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderInfo;->remove(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 196
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$4;->val$folder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 197
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$4;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v0, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$4;->val$folder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->rearrangeChildren()V

    .line 200
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$4;->val$folder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->resizeView()V

    .line 201
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$4;->val$folder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->invalidate()V

    .line 206
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$4;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$300(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$4;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;->onTaskEnd(Ljava/lang/Runnable;)V

    .line 207
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$4;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v0, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    .line 204
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$4;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$600(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)V

    goto :goto_0
.end method
