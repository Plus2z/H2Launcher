.class Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$10;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->bindWorkspaceItems(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/util/LongArrayMap;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

.field final synthetic val$folders:Lnet/oneplus/h2launcher/util/LongArrayMap;

.field final synthetic val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Lnet/oneplus/h2launcher/util/LongArrayMap;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    .prologue
    .line 3544
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$10;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$10;->val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$10;->val$folders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3546
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$10;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$10;->val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 3547
    .local v0, "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 3548
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$10;->val$folders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->bindFolders(Lnet/oneplus/h2launcher/util/LongArrayMap;)V

    .line 3550
    :cond_0
    return-void
.end method
