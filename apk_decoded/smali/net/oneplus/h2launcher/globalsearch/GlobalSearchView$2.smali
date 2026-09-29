.class Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$2;
.super Ljava/lang/Object;
.source "GlobalSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getContactsDb(Z)V
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
    .line 312
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$2;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$2;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->initContactsHistory()V

    .line 316
    return-void
.end method
