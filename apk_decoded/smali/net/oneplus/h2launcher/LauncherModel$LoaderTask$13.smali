.class Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$13;
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

.field final synthetic val$currentScreen:I

.field final synthetic val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;I)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    .prologue
    .line 3672
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$13;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$13;->val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iput p3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$13;->val$currentScreen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3674
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$13;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$13;->val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 3675
    .local v0, "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$13;->val$currentScreen:I

    const/16 v2, -0x3e9

    if-eq v1, v2, :cond_0

    .line 3676
    iget v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$13;->val$currentScreen:I

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->onPageBoundSynchronously(I)V

    .line 3678
    :cond_0
    return-void
.end method
