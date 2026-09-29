.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;
.super Ljava/lang/Object;
.source "CustomRecyclerViewUtils.java"


# static fields
.field public static final LAYOUT_TYPE_GRID_HORIZONTAL:I = 0x2

.field public static final LAYOUT_TYPE_GRID_VERTICAL:I = 0x3

.field public static final LAYOUT_TYPE_LINEAR_HORIZONTAL:I = 0x0

.field public static final LAYOUT_TYPE_LINEAR_VERTICAL:I = 0x1

.field public static final LAYOUT_TYPE_STAGGERED_GRID_HORIZONTAL:I = 0x4

.field public static final LAYOUT_TYPE_STAGGERED_GRID_VERTICAL:I = 0x5

.field public static final LAYOUT_TYPE_UNKNOWN:I = -0x1

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_UNKNOWN:I = -0x1

.field public static final ORIENTATION_VERTICAL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findChildViewHolderUnderWithTranslation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;FF)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 2
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static findChildViewHolderUnderWithoutTranslation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;FF)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 2
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->findChildViewUnderWithoutTranslation(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static findChildViewUnderWithoutTranslation(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 4
    .param p0, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 87
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 88
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_0

    .line 96
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 87
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 96
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static findFirstCompletelyVisibleItemPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I
    .locals 2
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    .line 165
    .local v0, "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    instance-of v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 166
    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    .end local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    .line 168
    :goto_0
    return v1

    .restart local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static findFirstVisibleItemPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I
    .locals 2
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    .line 145
    .local v0, "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    instance-of v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 146
    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    .end local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 148
    :goto_0
    return v1

    .restart local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static findLastCompletelyVisibleItemPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I
    .locals 2
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    .line 175
    .local v0, "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    instance-of v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 176
    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    .end local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    .line 178
    :goto_0
    return v1

    .restart local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static findLastVisibleItemPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I
    .locals 2
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    .line 155
    .local v0, "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    instance-of v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 156
    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    .end local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 158
    :goto_0
    return v1

    .restart local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getDecorationOffsets(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "layoutManager"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outDecorations"    # Landroid/graphics/Rect;

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 126
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 127
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 128
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 130
    return-object p2
.end method

.method public static getLayoutMargins(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "outMargins"    # Landroid/graphics/Rect;

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 110
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 111
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 113
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 114
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 115
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 116
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 120
    .end local v1    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    return-object p1

    .line 118
    :cond_0
    const/4 v2, 0x0

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method public static getLayoutType(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)I
    .locals 1
    .param p0, "layoutManager"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    instance-of v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 59
    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;

    .end local p0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x2

    .line 80
    :goto_0
    return v0

    .line 63
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 65
    .restart local p0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    :cond_1
    instance-of v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    if-eqz v0, :cond_3

    .line 66
    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    .end local p0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_2

    .line 68
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    .restart local p0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    :cond_3
    instance-of v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    if-eqz v0, :cond_5

    .line 73
    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    .end local p0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_4

    .line 75
    const/4 v0, 0x4

    goto :goto_0

    .line 77
    :cond_4
    const/4 v0, 0x5

    goto :goto_0

    .line 80
    .restart local p0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getLayoutType(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I
    .locals 1
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getLayoutType(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)I

    move-result v0

    return v0
.end method

.method public static getOrientation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I
    .locals 2
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    .line 207
    .local v0, "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    instance-of v1, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 208
    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;

    .end local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getOrientation()I

    move-result v1

    .line 214
    :goto_0
    return v1

    .line 209
    .restart local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    :cond_0
    instance-of v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    if-eqz v1, :cond_1

    .line 210
    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    .end local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getOrientation()I

    move-result v1

    goto :goto_0

    .line 211
    .restart local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    :cond_1
    instance-of v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    if-eqz v1, :cond_2

    .line 212
    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    .end local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getOrientation()I

    move-result v1

    goto :goto_0

    .line 214
    .restart local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getSpanCount(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I
    .locals 2
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    .line 195
    .local v0, "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    instance-of v1, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 196
    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;

    .end local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanCount()I

    move-result v1

    .line 200
    :goto_0
    return v1

    .line 197
    .restart local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    :cond_0
    instance-of v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 198
    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    .end local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    goto :goto_0

    .line 200
    .restart local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getSynchronizedPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 2
    .param p0, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 184
    .local v0, "pos1":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 185
    .local v1, "pos2":I
    if-ne v0, v1, :cond_0

    .line 188
    .end local v0    # "pos1":I
    :goto_0
    return v0

    .restart local v0    # "pos1":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getViewBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "outBounds"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 138
    return-object p1
.end method
