.class Lnet/oneplus/h2launcher/Workspace$11;
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

.field final synthetic val$addResizeFrame:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 3042
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$11;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$11;->val$addResizeFrame:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3044
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$11;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->isPageMoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3045
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$11;->val$addResizeFrame:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3049
    :goto_0
    return-void

    .line 3047
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$11;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$11;->val$addResizeFrame:Ljava/lang/Runnable;

    iput-object v1, v0, Lnet/oneplus/h2launcher/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method
