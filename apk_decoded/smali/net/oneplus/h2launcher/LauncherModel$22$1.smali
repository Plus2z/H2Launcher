.class Lnet/oneplus/h2launcher/LauncherModel$22$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherModel$22;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$22;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$22;

    .prologue
    .line 4565
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$22$1;->this$1:Lnet/oneplus/h2launcher/LauncherModel$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4568
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$22$1;->this$1:Lnet/oneplus/h2launcher/LauncherModel$22;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherModel$22;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 4569
    .local v0, "cb":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$22$1;->this$1:Lnet/oneplus/h2launcher/LauncherModel$22;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherModel$22;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 4570
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$22$1;->this$1:Lnet/oneplus/h2launcher/LauncherModel$22;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherModel$22;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$22$1;->this$1:Lnet/oneplus/h2launcher/LauncherModel$22;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel$22;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel;->mFgWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

    invoke-interface {v1, v2}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->bindAllPackages(Lnet/oneplus/h2launcher/model/WidgetsModel;)V

    .line 4572
    :cond_0
    return-void
.end method
