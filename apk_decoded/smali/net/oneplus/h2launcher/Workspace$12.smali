.class Lnet/oneplus/h2launcher/Workspace$12;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->onDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$finalResizeRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 3072
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$12;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$12;->val$finalResizeRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3075
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$12;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-boolean v1, v0, Lnet/oneplus/h2launcher/Workspace;->mAnimatingViewIntoPlace:Z

    .line 3076
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$12;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 3078
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->showSearchBar()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$12;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Workspace;->access$000(Lnet/oneplus/h2launcher/Workspace;)Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->SPRING_LOADED:Lnet/oneplus/h2launcher/Workspace$State;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3079
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$12;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v1, 0x1

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 3081
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$12;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$12;->val$finalResizeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3088
    :cond_0
    :goto_0
    return-void

    .line 3084
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$12;->val$finalResizeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3085
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$12;->val$finalResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
