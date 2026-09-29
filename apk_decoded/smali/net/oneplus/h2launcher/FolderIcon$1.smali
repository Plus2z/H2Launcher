.class Lnet/oneplus/h2launcher/FolderIcon$1;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Lnet/oneplus/h2launcher/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/FolderIcon;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/FolderIcon;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/FolderIcon;

    .prologue
    .line 412
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderIcon$1;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lnet/oneplus/h2launcher/Alarm;)V
    .locals 3
    .param p1, "alarm"    # Lnet/oneplus/h2launcher/Alarm;

    .prologue
    const/4 v2, 0x1

    .line 415
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$1;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    iget-object v1, v1, Lnet/oneplus/h2launcher/FolderIcon;->mDragInfo:Lnet/oneplus/h2launcher/ItemInfo;

    instance-of v1, v1, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$1;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    iget-object v1, v1, Lnet/oneplus/h2launcher/FolderIcon;->mDragInfo:Lnet/oneplus/h2launcher/ItemInfo;

    check-cast v1, Lnet/oneplus/h2launcher/AppInfo;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/AppInfo;->makeShortcut()Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v0

    .line 418
    .local v0, "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    iput v2, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->spanX:I

    .line 419
    iput v2, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->spanY:I

    .line 424
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$1;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    iget-object v1, v1, Lnet/oneplus/h2launcher/FolderIcon;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Folder;->beginExternalDrag()V

    .line 425
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$1;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    iget-object v1, v1, Lnet/oneplus/h2launcher/FolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon$1;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/Launcher;->openFolder(Lnet/oneplus/h2launcher/FolderIcon;)V

    .line 426
    return-void

    .line 422
    .end local v0    # "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$1;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    iget-object v0, v1, Lnet/oneplus/h2launcher/FolderIcon;->mDragInfo:Lnet/oneplus/h2launcher/ItemInfo;

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    .restart local v0    # "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    goto :goto_0
.end method
