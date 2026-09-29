.class Lnet/oneplus/h2launcher/FolderIcon$2;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/FolderIcon;->onDrop(Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/FolderIcon;

.field final synthetic val$item:Lnet/oneplus/h2launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/FolderIcon;Lnet/oneplus/h2launcher/ShortcutInfo;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/FolderIcon;

    .prologue
    .line 518
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderIcon$2;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    iput-object p2, p0, Lnet/oneplus/h2launcher/FolderIcon$2;->val$item:Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon$2;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    iget-object v0, v0, Lnet/oneplus/h2launcher/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$2;->val$item:Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 521
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon$2;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    iget-object v0, v0, Lnet/oneplus/h2launcher/FolderIcon;->mFolder:Lnet/oneplus/h2launcher/Folder;

    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$2;->val$item:Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Folder;->showItem(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 522
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon$2;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderIcon;->invalidate()V

    .line 523
    return-void
.end method
