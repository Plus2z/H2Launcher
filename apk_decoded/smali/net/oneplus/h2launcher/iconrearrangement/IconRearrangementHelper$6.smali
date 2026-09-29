.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$6;
.super Ljava/lang/Object;
.source "IconRearrangementHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->dropIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

.field final synthetic val$selectView:Landroid/view/View;

.field final synthetic val$shortcutInfo:Lnet/oneplus/h2launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 252
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$6;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iput-object p2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$6;->val$shortcutInfo:Lnet/oneplus/h2launcher/ShortcutInfo;

    iput-object p3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$6;->val$selectView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 254
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$6;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v1, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v0

    .line 255
    .local v0, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$6;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$6;->val$shortcutInfo:Lnet/oneplus/h2launcher/ShortcutInfo;

    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$6;->val$selectView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->dropIconToFolder(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$6;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$6;->val$shortcutInfo:Lnet/oneplus/h2launcher/ShortcutInfo;

    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$6;->val$selectView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->dropIconToWorkspace(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
