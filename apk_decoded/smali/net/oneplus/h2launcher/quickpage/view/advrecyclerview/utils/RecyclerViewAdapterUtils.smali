.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/RecyclerViewAdapterUtils;
.super Ljava/lang/Object;
.source "RecyclerViewAdapterUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getParentRecyclerView(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 36
    if-nez p0, :cond_0

    move-object v0, v1

    .line 45
    :goto_0
    return-object v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 40
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v2, :cond_1

    .line 41
    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    goto :goto_0

    .line 42
    :cond_1
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 43
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/RecyclerViewAdapterUtils;->getParentRecyclerView(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v0

    goto :goto_0

    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_2
    move-object v0, v1

    .line 45
    goto :goto_0
.end method

.method public static getParentViewHolderItemView(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 56
    if-nez p0, :cond_1

    move-object p0, v1

    .line 65
    .end local p0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-object p0

    .line 59
    .restart local p0    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 60
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-nez v2, :cond_0

    .line 62
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 63
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/RecyclerViewAdapterUtils;->getParentViewHolderItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_2
    move-object p0, v1

    .line 65
    goto :goto_0
.end method

.method public static getViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-static {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/RecyclerViewAdapterUtils;->getParentRecyclerView(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v0

    .line 77
    .local v0, "rv":Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    invoke-static {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/RecyclerViewAdapterUtils;->getParentViewHolderItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, "rvChild":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    .line 82
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
