.class Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$5;
.super Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;
.source "GlobalSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

.field final synthetic val$layoutManager:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 654
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$5;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    iput-object p2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$5;->val$layoutManager:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 657
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$5;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->isHeader(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$5;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->isSearchOnline(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$5;->val$layoutManager:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanCount()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
