.class Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;
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
    name = "ContactViewHolder"
.end annotation


# instance fields
.field private circleImageView:Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 453
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    .line 454
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 455
    const v0, 0x7f1100c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->circleImageView:Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    .line 456
    const v0, 0x7f1100c3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->textView:Landroid/widget/TextView;

    .line 457
    const v0, 0x7f1100c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 458
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    return-void
.end method


# virtual methods
.method getCircleImageView()Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->circleImageView:Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    return-object v0
.end method

.method getLayoutView()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 475
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->getAdapterPosition()I

    move-result v7

    .line 476
    .local v7, "position":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$900(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$900(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v4}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$600(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v4, v7, v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/ContactData;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/ContactData;->getId()Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "id":Ljava/lang/String;
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$900(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v4}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$600(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v4, v7, v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/ContactData;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/ContactData;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "displayName":Ljava/lang/String;
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$900(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v4}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$600(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v4, v7, v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/ContactData;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/ContactData;->getIcon()Landroid/net/Uri;

    move-result-object v3

    .line 480
    .local v3, "iconUri":Landroid/net/Uri;
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$900(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v4}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$600(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v4, v7, v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/ContactData;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/ContactData;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 481
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 482
    if-eqz v6, :cond_0

    .line 483
    const/high16 v0, 0x10000000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 484
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$700(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v6, v4}, Lnet/oneplus/h2launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 486
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$800(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/Stats;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/Stats;->recordContactHistory(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 488
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setShouldDismiss(Z)V

    .line 489
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->cancelAnimation()V

    .line 490
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->exitWithoutAnimation()V

    .line 496
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "displayName":Ljava/lang/String;
    .end local v3    # "iconUri":Landroid/net/Uri;
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 492
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "displayName":Ljava/lang/String;
    .restart local v3    # "iconUri":Landroid/net/Uri;
    .restart local v6    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->cancelAnimation()V

    .line 493
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->exitAnimation()V

    goto :goto_0
.end method
