.class Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$2;
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

.field final synthetic val$removedShortcuts:Ljava/util/ArrayList;

.field final synthetic val$updatedShortcuts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    .prologue
    .line 4325
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$2;->this$1:Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$2;->val$removedShortcuts:Ljava/util/ArrayList;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$2;->val$updatedShortcuts:Ljava/util/ArrayList;

    iput-object p4, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$2;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 4328
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$2;->this$1:Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 4329
    .local v0, "cb":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$2;->val$removedShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 4330
    .local v1, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "com.android.stk"

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4331
    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STK remove WorkspaceItem PackagedUpdatedTask, shortcut id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4334
    .end local v1    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$2;->val$updatedShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 4335
    .restart local v1    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "com.android.stk"

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4336
    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STK updateShortcuts WorkspaceItem PackagedUpdatedTask, shortcut id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4339
    .end local v1    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_3
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$2;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    if-ne v2, v0, :cond_4

    if-eqz v0, :cond_4

    .line 4340
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$2;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$2;->val$updatedShortcuts:Ljava/util/ArrayList;

    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$2;->val$removedShortcuts:Ljava/util/ArrayList;

    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask$2;->this$1:Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    iget-object v5, v5, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-interface {v2, v3, v4, v5}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4343
    :cond_4
    return-void
.end method
