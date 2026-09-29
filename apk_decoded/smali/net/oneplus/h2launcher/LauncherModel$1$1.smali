.class Lnet/oneplus/h2launcher/LauncherModel$1$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherModel$1;

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$1;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$1;

    .prologue
    .line 342
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$1$1;->this$1:Lnet/oneplus/h2launcher/LauncherModel$1;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$1$1;->val$updates:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 344
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$1$1;->this$1:Lnet/oneplus/h2launcher/LauncherModel$1;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherModel$1;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 345
    .local v0, "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 346
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$1$1;->val$updates:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->bindRestoreItemsChange(Ljava/util/HashSet;)V

    .line 348
    :cond_0
    return-void
.end method
