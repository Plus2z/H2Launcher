.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$18;
.super Ljava/lang/Object;
.source "IconRearrangementHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->onFolderClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 786
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$18;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 788
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$18;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v1, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->setFolderButtonForceDisable(Z)V

    .line 789
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$18;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$800(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 790
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/animation/Animator;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 793
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$18;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$800(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 794
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$18;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$300(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    move-result-object v1

    invoke-interface {v1, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;->onTaskEnd(Ljava/lang/Runnable;)V

    .line 795
    return-void
.end method
