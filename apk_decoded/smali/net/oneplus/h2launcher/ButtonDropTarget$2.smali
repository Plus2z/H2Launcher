.class Lnet/oneplus/h2launcher/ButtonDropTarget$2;
.super Ljava/lang/Object;
.source "ButtonDropTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/ButtonDropTarget;->onDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/ButtonDropTarget;

.field final synthetic val$d:Lnet/oneplus/h2launcher/DropTarget$DragObject;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/ButtonDropTarget;Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/ButtonDropTarget;

    .prologue
    .line 263
    iput-object p1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget$2;->this$0:Lnet/oneplus/h2launcher/ButtonDropTarget;

    iput-object p2, p0, Lnet/oneplus/h2launcher/ButtonDropTarget$2;->val$d:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget$2;->this$0:Lnet/oneplus/h2launcher/ButtonDropTarget;

    iget-object v1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget$2;->val$d:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->completeDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 267
    iget-object v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget$2;->this$0:Lnet/oneplus/h2launcher/ButtonDropTarget;

    iget-object v0, v0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->onDragEnd()V

    .line 268
    iget-object v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget$2;->this$0:Lnet/oneplus/h2launcher/ButtonDropTarget;

    iget-object v0, v0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 269
    return-void
.end method
