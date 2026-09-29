.class Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$4;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;
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


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 614
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$4;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 617
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    .line 618
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$4;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$4;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$4;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->T9KeyboardIsAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$4;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$4;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->runKeyboardDismissAnimation(Landroid/view/ViewGroup;)V

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$4;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$4;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$4;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public onScrolled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 631
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;->onScrolled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    .line 632
    return-void
.end method
