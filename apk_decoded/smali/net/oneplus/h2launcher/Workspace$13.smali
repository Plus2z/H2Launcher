.class Lnet/oneplus/h2launcher/Workspace$13;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->onDropExternal([ILjava/lang/Object;Lnet/oneplus/h2launcher/CellLayout;ZLnet/oneplus/h2launcher/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 3752
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$13;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3755
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$13;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v1, 0x1

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 3757
    return-void
.end method
