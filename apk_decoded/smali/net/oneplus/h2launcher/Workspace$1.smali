.class Lnet/oneplus/h2launcher/Workspace$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->removeWorkspaceScreen(Lnet/oneplus/h2launcher/CellLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$layout:Lnet/oneplus/h2launcher/CellLayout;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/CellLayout;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 763
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$1;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$1;->val$layout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 766
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace$1;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace$1;->val$layout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Workspace;->getIdForScreen(Lnet/oneplus/h2launcher/CellLayout;)J

    move-result-wide v0

    .line 767
    .local v0, "screenId":J
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace$1;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v2, v0, v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->remove(J)V

    .line 768
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace$1;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 769
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace$1;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace$1;->val$layout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Workspace;->removeView(Landroid/view/View;)V

    .line 770
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace$1;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace$1;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 771
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace$1;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace$1;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Workspace;->setCurrentPage(I)V

    .line 773
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace$1;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->updateWorkspaceScreenOrder()V

    .line 774
    return-void
.end method
