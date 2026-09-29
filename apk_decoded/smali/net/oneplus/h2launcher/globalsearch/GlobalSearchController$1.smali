.class Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController$1;
.super Ljava/lang/Object;
.source "GlobalSearchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->getContactsDb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    .prologue
    .line 88
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->access$000(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->access$000(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getContactsDb(Z)V

    .line 94
    :cond_0
    return-void
.end method
