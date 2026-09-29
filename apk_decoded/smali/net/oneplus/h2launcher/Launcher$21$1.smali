.class Lnet/oneplus/h2launcher/Launcher$21$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher$21;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/Launcher$21;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher$21;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/Launcher$21;

    .prologue
    .line 2402
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$21$1;->this$1:Lnet/oneplus/h2launcher/Launcher$21;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Launcher$21$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2405
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$21$1;->this$1:Lnet/oneplus/h2launcher/Launcher$21;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher$21;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$21$1;->this$1:Lnet/oneplus/h2launcher/Launcher$21;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher$21;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 2406
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2407
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$21$1;->this$1:Lnet/oneplus/h2launcher/Launcher$21;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher$21;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$21$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->onClickWallpaperPicker(Landroid/view/View;)V

    .line 2409
    :cond_0
    return-void
.end method
