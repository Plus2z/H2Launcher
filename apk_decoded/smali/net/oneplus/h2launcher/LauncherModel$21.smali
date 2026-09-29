.class Lnet/oneplus/h2launcher/LauncherModel$21;
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

.field final synthetic val$updatedApps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherModel;

    .prologue
    .line 3982
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$21;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$21;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$21;->val$updatedApps:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3985
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$21;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 3986
    .local v0, "cb":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$21;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_0

    .line 3987
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$21;->val$updatedApps:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->bindAppsUpdated(Ljava/util/ArrayList;)V

    .line 3989
    :cond_0
    return-void
.end method
