.class Lnet/oneplus/h2launcher/Launcher$24;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->onWindowVisibilityChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStarted:Z

.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 2732
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$24;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher$24;->mStarted:Z

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 6

    .prologue
    .line 2736
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher$24;->mStarted:Z

    if-eqz v1, :cond_0

    .line 2754
    :goto_0
    return-void

    .line 2737
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher$24;->mStarted:Z

    .line 2743
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$24;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$24;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lnet/oneplus/h2launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2744
    move-object v0, p0

    .line 2745
    .local v0, "listener":Landroid/view/ViewTreeObserver$OnDrawListener;
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$24;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    new-instance v2, Lnet/oneplus/h2launcher/Launcher$24$1;

    invoke-direct {v2, p0, v0}, Lnet/oneplus/h2launcher/Launcher$24$1;-><init>(Lnet/oneplus/h2launcher/Launcher$24;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
