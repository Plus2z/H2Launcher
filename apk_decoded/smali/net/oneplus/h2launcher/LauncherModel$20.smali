.class Lnet/oneplus/h2launcher/LauncherModel$20;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel;->onPackageIconsUpdated(Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherModel;

.field final synthetic val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

.field final synthetic val$updatedShortcuts:Ljava/util/ArrayList;

.field final synthetic val$userFinal:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherModel;

    .prologue
    .line 3969
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$20;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$20;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$20;->val$updatedShortcuts:Ljava/util/ArrayList;

    iput-object p4, p0, Lnet/oneplus/h2launcher/LauncherModel$20;->val$userFinal:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3972
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$20;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 3973
    .local v0, "cb":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$20;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_0

    .line 3974
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$20;->val$updatedShortcuts:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$20;->val$userFinal:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-interface {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 3977
    :cond_0
    return-void
.end method
