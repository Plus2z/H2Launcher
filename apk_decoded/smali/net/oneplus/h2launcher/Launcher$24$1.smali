.class Lnet/oneplus/h2launcher/Launcher$24$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher$24;->onDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/Launcher$24;

.field final synthetic val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher$24;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/Launcher$24;

    .prologue
    .line 2745
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$24$1;->this$1:Lnet/oneplus/h2launcher/Launcher$24;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Launcher$24$1;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2747
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$24$1;->this$1:Lnet/oneplus/h2launcher/Launcher$24;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher$24;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$24$1;->this$1:Lnet/oneplus/h2launcher/Launcher$24;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher$24;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 2748
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2749
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$24$1;->this$1:Lnet/oneplus/h2launcher/Launcher$24;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher$24;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$24$1;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 2750
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 2752
    :cond_0
    return-void
.end method
