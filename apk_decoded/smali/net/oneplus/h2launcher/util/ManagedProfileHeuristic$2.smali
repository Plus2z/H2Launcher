.class Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic$2;
.super Ljava/lang/Object;
.source "ManagedProfileHeuristic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->finalizeWorkFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;

.field final synthetic val$shortcuts:Ljava/util/ArrayList;

.field final synthetic val$workFolder:Lnet/oneplus/h2launcher/FolderInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/FolderInfo;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;

    .prologue
    .line 194
    iput-object p1, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic$2;->this$0:Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;

    iput-object p2, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic$2;->val$shortcuts:Ljava/util/ArrayList;

    iput-object p3, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic$2;->val$workFolder:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic$2;->val$shortcuts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 199
    .local v0, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v2, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic$2;->val$workFolder:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/FolderInfo;->add(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    goto :goto_0

    .line 201
    .end local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_0
    return-void
.end method
