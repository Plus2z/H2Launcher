.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$16;
.super Ljava/lang/Object;
.source "IconRearrangementHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->exitIconRearrangement()V
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
    .line 747
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$16;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 749
    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$16;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v2, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->getShortcutInfos()Ljava/util/ArrayList;

    move-result-object v0

    .line 750
    .local v0, "shortcutInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 751
    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$16;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v2, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$1100(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Ljava/util/ArrayList;)V

    .line 753
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$16;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v2, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    .line 754
    .local v1, "workspace":Lnet/oneplus/h2launcher/Workspace;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/Workspace;->removeExtraEmptyScreen(ZZ)V

    .line 755
    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$16;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$300(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    move-result-object v2

    invoke-interface {v2, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;->onTaskEnd(Ljava/lang/Runnable;)V

    .line 756
    return-void
.end method
