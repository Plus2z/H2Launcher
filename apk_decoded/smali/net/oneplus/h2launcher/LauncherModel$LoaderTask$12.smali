.class Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$12;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->bindWorkspace(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

.field final synthetic val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    .prologue
    .line 3651
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$12;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$12;->val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3653
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$12;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$12;->val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 3654
    .local v0, "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 3655
    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->startBinding()V

    .line 3657
    :cond_0
    return-void
.end method
