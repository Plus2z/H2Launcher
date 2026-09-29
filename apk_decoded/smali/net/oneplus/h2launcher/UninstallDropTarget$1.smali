.class Lnet/oneplus/h2launcher/UninstallDropTarget$1;
.super Ljava/lang/Object;
.source "UninstallDropTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/UninstallDropTarget;->completeDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/UninstallDropTarget;

.field final synthetic val$componentInfo:Landroid/util/Pair;

.field final synthetic val$d:Lnet/oneplus/h2launcher/DropTarget$DragObject;

.field final synthetic val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/UninstallDropTarget;Landroid/util/Pair;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/UninstallDropTarget;

    .prologue
    .line 100
    iput-object p1, p0, Lnet/oneplus/h2launcher/UninstallDropTarget$1;->this$0:Lnet/oneplus/h2launcher/UninstallDropTarget;

    iput-object p2, p0, Lnet/oneplus/h2launcher/UninstallDropTarget$1;->val$componentInfo:Landroid/util/Pair;

    iput-object p3, p0, Lnet/oneplus/h2launcher/UninstallDropTarget$1;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iput-object p4, p0, Lnet/oneplus/h2launcher/UninstallDropTarget$1;->val$d:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 103
    iget-object v1, p0, Lnet/oneplus/h2launcher/UninstallDropTarget$1;->val$componentInfo:Landroid/util/Pair;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/UninstallDropTarget$1;->this$0:Lnet/oneplus/h2launcher/UninstallDropTarget;

    .line 105
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/UninstallDropTarget;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lnet/oneplus/h2launcher/UninstallDropTarget$1;->val$componentInfo:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lnet/oneplus/h2launcher/UninstallDropTarget$1;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 104
    invoke-static {v2, v1, v3}, Lnet/oneplus/h2launcher/AllAppsList;->packageHasActivities(Landroid/content/Context;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 106
    .local v0, "uninstallSuccessful":Z
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/UninstallDropTarget$1;->this$0:Lnet/oneplus/h2launcher/UninstallDropTarget;

    iget-object v2, p0, Lnet/oneplus/h2launcher/UninstallDropTarget$1;->val$d:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iget-object v2, v2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    invoke-virtual {v1, v2, v0}, Lnet/oneplus/h2launcher/UninstallDropTarget;->sendUninstallResult(Lnet/oneplus/h2launcher/DragSource;Z)V

    .line 107
    return-void

    .line 104
    .end local v0    # "uninstallSuccessful":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
