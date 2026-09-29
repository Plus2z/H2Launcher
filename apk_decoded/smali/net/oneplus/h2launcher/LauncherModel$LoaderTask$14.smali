.class Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;
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

.field final synthetic val$otherAppWidgets:Ljava/util/ArrayList;

.field final synthetic val$otherFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

.field final synthetic val$otherWorkspaceItems:Ljava/util/ArrayList;

.field final synthetic val$t:J


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/util/LongArrayMap;J)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    .prologue
    .line 3683
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;->val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;->val$otherWorkspaceItems:Ljava/util/ArrayList;

    iput-object p4, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;->val$otherAppWidgets:Ljava/util/ArrayList;

    iput-object p5, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;->val$otherFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    iput-wide p6, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;->val$t:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3686
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;->val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;->val$otherWorkspaceItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;->val$otherAppWidgets:Ljava/util/ArrayList;

    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;->val$otherFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->access$500(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/util/LongArrayMap;Ljava/util/ArrayList;)V

    .line 3689
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;->val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iget-wide v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;->val$t:J

    invoke-static {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->access$600(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;J)V

    .line 3691
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$14;->val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->access$700(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)V

    .line 3692
    return-void
.end method
