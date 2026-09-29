.class Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$17;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->loadAllApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

.field final synthetic val$apps:Ljava/util/List;

.field final synthetic val$heuristic:Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    .prologue
    .line 3855
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$17;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$17;->val$heuristic:Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$17;->val$apps:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3859
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$17;->val$heuristic:Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$17;->val$apps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->processUserApps(Ljava/util/List;)V

    .line 3860
    return-void
.end method
