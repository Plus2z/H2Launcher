.class Lnet/oneplus/h2launcher/Workspace$16;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->onDropCompleted(Landroid/view/View;Lnet/oneplus/h2launcher/DropTarget$DragObject;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$d:Lnet/oneplus/h2launcher/DropTarget$DragObject;

.field final synthetic val$isFlingToDelete:Z

.field final synthetic val$success:Z

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;Landroid/view/View;Lnet/oneplus/h2launcher/DropTarget$DragObject;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 4105
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$16;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$16;->val$target:Landroid/view/View;

    iput-object p3, p0, Lnet/oneplus/h2launcher/Workspace$16;->val$d:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iput-boolean p4, p0, Lnet/oneplus/h2launcher/Workspace$16;->val$isFlingToDelete:Z

    iput-boolean p5, p0, Lnet/oneplus/h2launcher/Workspace$16;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4107
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$16;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$16;->val$target:Landroid/view/View;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace$16;->val$d:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/Workspace$16;->val$isFlingToDelete:Z

    iget-boolean v4, p0, Lnet/oneplus/h2launcher/Workspace$16;->val$success:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/oneplus/h2launcher/Workspace;->onDropCompleted(Landroid/view/View;Lnet/oneplus/h2launcher/DropTarget$DragObject;ZZ)V

    .line 4108
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$16;->this$0:Lnet/oneplus/h2launcher/Workspace;

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/oneplus/h2launcher/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    .line 4109
    return-void
.end method
