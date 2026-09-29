.class Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;
.super Ljava/lang/Object;
.source "GlobalSearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
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
    .line 174
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 217
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$002(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;I)I

    .line 178
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$000(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$102(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Z)Z

    .line 181
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->cancelAnimator()V

    .line 186
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 187
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Ljava/lang/CharSequence;)V

    .line 194
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$800(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->updateSearchResultAdapter()V

    .line 197
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$000(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$902(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Z)Z

    .line 199
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->runSearchResultAnimation(Z)V

    .line 212
    :cond_0
    :goto_1
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$600(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$700(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$000(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$902(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Z)Z

    .line 203
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$100(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 204
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->runSearchResultAnimation(Z)V

    .line 210
    :goto_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1000(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 206
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->initAppsHistory()V

    .line 207
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->initContactsHistory()V

    .line 208
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$102(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Z)Z

    goto :goto_2
.end method
