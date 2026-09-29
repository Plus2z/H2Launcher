.class Lnet/oneplus/h2launcher/Workspace$17;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->getFolderForTag(Ljava/lang/Object;)Lnet/oneplus/h2launcher/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 4453
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$17;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$17;->val$tag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    .line 4457
    instance-of v0, p2, Lnet/oneplus/h2launcher/Folder;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->getInfo()Lnet/oneplus/h2launcher/FolderInfo;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$17;->val$tag:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    check-cast p2, Lnet/oneplus/h2launcher/Folder;

    .line 4458
    .end local p2    # "v":Landroid/view/View;
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/Folder;->getInfo()Lnet/oneplus/h2launcher/FolderInfo;

    move-result-object v0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/FolderInfo;->opened:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
