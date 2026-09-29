.class Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$3;
.super Ljava/lang/Object;
.source "GlobalSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 402
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$3;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$3;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1100(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/Stats;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Stats;->loadContactsHistory()Z

    .line 406
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$3;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getContactsDb(Z)V

    .line 407
    return-void
.end method
