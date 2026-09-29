.class Lnet/oneplus/h2launcher/LauncherModel$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel;->addAppsToAllApps(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherModel;

.field final synthetic val$allAppsApps:Ljava/util/ArrayList;

.field final synthetic val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherModel;

    .prologue
    .line 420
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$3;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$3;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$3;->val$allAppsApps:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$3;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$3$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/LauncherModel$3$1;-><init>(Lnet/oneplus/h2launcher/LauncherModel$3;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 430
    return-void
.end method
