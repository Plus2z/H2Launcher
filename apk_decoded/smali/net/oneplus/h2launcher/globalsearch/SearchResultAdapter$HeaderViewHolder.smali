.class Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;
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
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private mAnimationHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 342
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    .line 343
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 344
    invoke-static {p1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getAnimationHelper()Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->mAnimationHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .line 345
    const v0, 0x7f1101b7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->textView:Landroid/widget/TextView;

    .line 346
    const v0, 0x7f1101b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->imageView:Landroid/widget/ImageView;

    .line 347
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    return-void
.end method


# virtual methods
.method getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v2, 0x0

    .line 360
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->mAnimationHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getAdapterPosition()I

    move-result v0

    .line 365
    .local v0, "position":I
    if-nez v0, :cond_2

    .line 366
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getShowAllAppSearchResult()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setShowAllAppSearchResult(Z)V

    .line 368
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->mAnimationHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-virtual {v1, p1, v3, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->runRotateAnimation(Landroid/view/View;FF)V

    goto :goto_0

    .line 370
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setShowAllAppSearchResult(Z)V

    .line 371
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->mAnimationHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-virtual {v1, p1, v2, v3}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->runRotateAnimation(Landroid/view/View;FF)V

    goto :goto_0

    .line 374
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getShowAllContactSearchResult()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 375
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setShowAllContactSearchResult(Z)V

    .line 376
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->mAnimationHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-virtual {v1, p1, v3, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->runRotateAnimation(Landroid/view/View;FF)V

    goto :goto_0

    .line 378
    :cond_3
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setShowAllContactSearchResult(Z)V

    .line 379
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->mAnimationHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-virtual {v1, p1, v2, v3}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->runRotateAnimation(Landroid/view/View;FF)V

    goto :goto_0
.end method
