.class Lnet/oneplus/h2launcher/Workspace$22;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->clearDropTargets()V
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
    .line 4510
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$22;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    .line 4513
    instance-of v0, p2, Lnet/oneplus/h2launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 4514
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$22;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mDragController:Lnet/oneplus/h2launcher/DragController;

    check-cast p2, Lnet/oneplus/h2launcher/DropTarget;

    .end local p2    # "v":Landroid/view/View;
    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/DragController;->removeDropTarget(Lnet/oneplus/h2launcher/DropTarget;)V

    .line 4517
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
