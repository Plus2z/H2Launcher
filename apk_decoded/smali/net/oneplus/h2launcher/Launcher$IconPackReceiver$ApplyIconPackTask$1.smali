.class Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->updateDesktopItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;

.field final synthetic val$shortcut:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;Landroid/util/Pair;)V
    .locals 0
    .param p1, "this$2"    # Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;

    .prologue
    .line 5871
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$1;->this$2:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$1;->val$shortcut:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5874
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$1;->val$shortcut:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v1, v1, Lnet/oneplus/h2launcher/BubbleTextView;

    if-eqz v1, :cond_1

    .line 5875
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$1;->val$shortcut:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lnet/oneplus/h2launcher/BubbleTextView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$1;->val$shortcut:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-virtual {v1, v2, v3, v3}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;ZZ)V

    .line 5877
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$1;->val$shortcut:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v1, v1, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    if-eqz v1, :cond_0

    .line 5878
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$1;->val$shortcut:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    invoke-interface {v1}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->updateIconCache()V

    .line 5886
    :cond_0
    :goto_0
    return-void

    .line 5880
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$1;->val$shortcut:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v1, v1, Lnet/oneplus/h2launcher/FolderIcon;

    if-eqz v1, :cond_0

    .line 5881
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$1;->val$shortcut:Landroid/util/Pair;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lnet/oneplus/h2launcher/FolderIcon;

    .line 5882
    .local v0, "folder":Lnet/oneplus/h2launcher/FolderIcon;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderIcon;->getFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Folder;->setScaledSize()V

    .line 5883
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderIcon;->setScaledLayout()V

    .line 5884
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderIcon;->invalidate()V

    goto :goto_0
.end method
