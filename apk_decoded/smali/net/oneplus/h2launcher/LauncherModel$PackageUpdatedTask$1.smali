.class Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

.field final synthetic val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

.field final synthetic val$modifiedFinal:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    .prologue
    .line 4178
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$1;->this$1:Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$1;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$1;->val$modifiedFinal:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4180
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$1;->this$1:Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 4181
    .local v0, "cb":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$1;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 4182
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$1;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$1;->val$modifiedFinal:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->bindAppsUpdated(Ljava/util/ArrayList;)V

    .line 4184
    :cond_0
    return-void
.end method
