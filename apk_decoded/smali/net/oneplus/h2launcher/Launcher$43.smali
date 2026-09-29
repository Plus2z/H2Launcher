.class Lnet/oneplus/h2launcher/Launcher$43;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field final synthetic val$successfulDrop:Z


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 5609
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$43;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-boolean p2, p0, Lnet/oneplus/h2launcher/Launcher$43;->val$successfulDrop:Z

    iput-object p3, p0, Lnet/oneplus/h2launcher/Launcher$43;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5612
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher$43;->val$successfulDrop:Z

    if-eqz v0, :cond_0

    .line 5618
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$43;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsView:Lnet/oneplus/h2launcher/widget/WidgetsContainerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->setVisibility(I)V

    .line 5619
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$43;->this$0:Lnet/oneplus/h2launcher/Launcher;

    const/4 v1, 0x1

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$43;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(ZLjava/lang/Runnable;)V

    .line 5623
    :goto_0
    return-void

    .line 5621
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$43;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragMode()V

    goto :goto_0
.end method
