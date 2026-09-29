.class Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
.source "SearchResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchOnlineViewHolder"
.end annotation


# instance fields
.field private buttonView:Landroid/widget/Button;

.field private dividerView:Landroid/view/View;

.field final synthetic this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 503
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    .line 504
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 505
    const v0, 0x7f1101b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;->buttonView:Landroid/widget/Button;

    .line 506
    const v0, 0x7f1101b5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;->dividerView:Landroid/view/View;

    .line 507
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;->buttonView:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    return-void
.end method


# virtual methods
.method getButtonView()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;->buttonView:Landroid/widget/Button;

    return-object v0
.end method

.method getDividerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;->dividerView:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 520
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v3}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchInputTextField()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, "keyWord":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://m.baidu.com/s?from=1011934f&word="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 523
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v3}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$000(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 531
    :goto_0
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SearchResultAdapter"

    const-string v4, "Activity not found !"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 526
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "SearchResultAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launcher does not have the permission to launch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "or use the exported attribute for this activity."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
