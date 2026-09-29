.class Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm$1;
.super Ljava/lang/Object;
.source "DefaultAppSearchAlgorithm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;->doSearch(Ljava/lang/String;Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;

.field final synthetic val$callback:Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$result:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;

    .prologue
    .line 51
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm$1;->this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;

    iput-object p2, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm$1;->val$callback:Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;

    iput-object p3, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm$1;->val$query:Ljava/lang/String;

    iput-object p4, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm$1;->val$result:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm$1;->val$callback:Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;

    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm$1;->val$query:Ljava/lang/String;

    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm$1;->val$result:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 56
    return-void
.end method
