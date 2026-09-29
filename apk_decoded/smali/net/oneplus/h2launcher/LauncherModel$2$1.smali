.class Lnet/oneplus/h2launcher/LauncherModel$2$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherModel$2;

.field final synthetic val$updates:Ljava/util/ArrayList;

.field final synthetic val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$2;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$2;

    .prologue
    .line 392
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$2$1;->this$1:Lnet/oneplus/h2launcher/LauncherModel$2;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$2$1;->val$updates:Ljava/util/ArrayList;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$2$1;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 394
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$2$1;->this$1:Lnet/oneplus/h2launcher/LauncherModel$2;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherModel$2;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 395
    .local v0, "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 396
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$2$1;->val$updates:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$2$1;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-interface {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 399
    :cond_0
    return-void
.end method
