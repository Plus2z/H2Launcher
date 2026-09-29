.class Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$4;
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

.field final synthetic val$removeReason:I

.field final synthetic val$removedApps:Ljava/util/ArrayList;

.field final synthetic val$removedPackageNames:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    .prologue
    .line 4410
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$4;->this$1:Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$4;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$4;->val$removedApps:Ljava/util/ArrayList;

    iput-object p4, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$4;->val$removedPackageNames:Ljava/util/ArrayList;

    iput p5, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$4;->val$removeReason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 4412
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$4;->this$1:Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v7

    .line 4413
    .local v7, "cb":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$4;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    if-ne v0, v7, :cond_2

    if-eqz v7, :cond_2

    .line 4415
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$4;->val$removedApps:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 4416
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$4;->val$removedApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/AppInfo;

    .line 4417
    .local v6, "a":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v1, v6, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, v6, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.stk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4418
    const-string v1, "Launcher.Model"

    const-string v2, "post bindComponentsRemoved for delete STK"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4422
    .end local v6    # "a":Lnet/oneplus/h2launcher/AppInfo;
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$4;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$4;->val$removedPackageNames:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$4;->val$removedApps:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$4;->this$1:Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget v5, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$4;->val$removeReason:I

    invoke-interface/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->bindComponentsRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V

    .line 4425
    :cond_2
    return-void
.end method
