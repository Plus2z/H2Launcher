.class Lnet/oneplus/h2launcher/LauncherModel$22;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel;->loadAndBindWidgetsAndShortcuts(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherModel;

.field final synthetic val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

.field final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel;ZLnet/oneplus/h2launcher/LauncherModel$Callbacks;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherModel;

    .prologue
    .line 4561
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$22;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iput-boolean p2, p0, Lnet/oneplus/h2launcher/LauncherModel$22;->val$refresh:Z

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$22;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4564
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$22;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/LauncherModel$22;->val$refresh:Z

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->updateWidgetsModel(Z)V

    .line 4565
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$22;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$22$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/LauncherModel$22$1;-><init>(Lnet/oneplus/h2launcher/LauncherModel$22;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 4575
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getWidgetCache()Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$22;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherModel;->mFgWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

    .line 4576
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/model/WidgetsModel;->getRawList()Ljava/util/ArrayList;

    move-result-object v1

    .line 4575
    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->removeObsoletePreviews(Ljava/util/ArrayList;)V

    .line 4577
    return-void
.end method
