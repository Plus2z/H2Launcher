.class Lnet/oneplus/h2launcher/Workspace$5;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$cl:Lnet/oneplus/h2launcher/CellLayout;

.field final synthetic val$stripEmptyScreens:Z


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/CellLayout;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 925
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$5;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$5;->val$cl:Lnet/oneplus/h2launcher/CellLayout;

    iput-boolean p3, p0, Lnet/oneplus/h2launcher/Workspace$5;->val$stripEmptyScreens:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, -0xc9

    .line 928
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$5;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$5;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/util/LongArrayMap;->remove(J)V

    .line 930
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$5;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 931
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$5;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$5;->val$cl:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->removeView(Landroid/view/View;)V

    .line 932
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace$5;->val$stripEmptyScreens:Z

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$5;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->stripEmptyScreens()V

    .line 936
    :cond_0
    return-void
.end method
