.class Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;

.field final synthetic val$addNotAnimated:Ljava/util/ArrayList;

.field final synthetic val$newBindedScreenId:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$2"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;

    .prologue
    .line 2252
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4$1;->this$2:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4$1;->val$newBindedScreenId:Ljava/util/ArrayList;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4$1;->val$addNotAnimated:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2254
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4$1;->this$2:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 2255
    .local v0, "cb":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4$1;->this$2:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 2258
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4$1;->this$2:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4$1;->val$newBindedScreenId:Ljava/util/ArrayList;

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4$1;->val$addNotAnimated:Ljava/util/ArrayList;

    invoke-interface {v1, v2, v3, v4, v4}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2261
    :cond_0
    return-void
.end method
