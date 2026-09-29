.class Lnet/oneplus/h2launcher/DeleteDropTarget$3;
.super Ljava/lang/Object;
.source "DeleteDropTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/DeleteDropTarget;->onFlingToDelete(Lnet/oneplus/h2launcher/DropTarget$DragObject;Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/DeleteDropTarget;

.field final synthetic val$d:Lnet/oneplus/h2launcher/DropTarget$DragObject;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/DeleteDropTarget;Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/DeleteDropTarget;

    .prologue
    .line 164
    iput-object p1, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$3;->this$0:Lnet/oneplus/h2launcher/DeleteDropTarget;

    iput-object p2, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$3;->val$d:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$3;->this$0:Lnet/oneplus/h2launcher/DeleteDropTarget;

    iget-object v0, v0, Lnet/oneplus/h2launcher/DeleteDropTarget;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragMode()V

    .line 168
    iget-object v0, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$3;->this$0:Lnet/oneplus/h2launcher/DeleteDropTarget;

    iget-object v1, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$3;->val$d:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/DeleteDropTarget;->completeDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 169
    iget-object v0, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$3;->this$0:Lnet/oneplus/h2launcher/DeleteDropTarget;

    iget-object v0, v0, Lnet/oneplus/h2launcher/DeleteDropTarget;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragController()Lnet/oneplus/h2launcher/DragController;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$3;->val$d:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/DragController;->onDeferredEndFling(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 170
    return-void
.end method
