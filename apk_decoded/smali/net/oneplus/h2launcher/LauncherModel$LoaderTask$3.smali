.class Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->verifyApplications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

.field final synthetic val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

.field final synthetic val$removedShortcutList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    .prologue
    .line 2077
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$3;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$3;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$3;->val$removedShortcutList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2079
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$3;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v6

    .line 2080
    .local v6, "cb":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$3;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    if-ne v0, v6, :cond_0

    if-eqz v6, :cond_0

    .line 2081
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$3;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$3;->val$removedShortcutList:Ljava/util/ArrayList;

    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->bindComponentsRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V

    .line 2083
    :cond_0
    return-void
.end method
