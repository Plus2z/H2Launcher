.class Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$9;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->bindWorkspaceItems(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/util/LongArrayMap;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

.field final synthetic val$end:I

.field final synthetic val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

.field final synthetic val$start:I

.field final synthetic val$workspaceItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    .prologue
    .line 3523
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$9;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$9;->val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$9;->val$workspaceItems:Ljava/util/ArrayList;

    iput p4, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$9;->val$start:I

    iput p5, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$9;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3526
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$9;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$9;->val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 3527
    .local v0, "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 3528
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$9;->val$workspaceItems:Ljava/util/ArrayList;

    iget v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$9;->val$start:I

    iget v3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$9;->val$end:I

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 3531
    :cond_0
    return-void
.end method
