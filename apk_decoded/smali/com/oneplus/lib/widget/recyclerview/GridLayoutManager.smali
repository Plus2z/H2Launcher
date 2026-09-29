.class public Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;
.super Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;,
        Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;,
        Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field static final MAIN_DIR_SPEC:I

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->MAIN_DIR_SPEC:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    .line 61
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 62
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 63
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 90
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->setSpanCount(I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    .line 61
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 62
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 63
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 103
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->setSpanCount(I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 50
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    .line 61
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 62
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 63
    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    .line 65
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 78
    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 79
    .local v0, "properties":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->setSpanCount(I)V

    .line 80
    return-void
.end method

.method private assignSpans(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;IIZ)V
    .locals 10
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "count"    # I
    .param p4, "consumedSpanCount"    # I
    .param p5, "layingOutInPrimaryDirection"    # Z

    .prologue
    const/4 v9, 0x1

    .line 596
    if-eqz p5, :cond_0

    .line 597
    const/4 v6, 0x0

    .line 598
    .local v6, "start":I
    move v1, p3

    .line 599
    .local v1, "end":I
    const/4 v0, 0x1

    .line 605
    .local v0, "diff":I
    :goto_0
    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    if-ne v8, v9, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->isLayoutRTL()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 606
    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    add-int/lit8 v4, v8, -0x1

    .line 607
    .local v4, "span":I
    const/4 v5, -0x1

    .line 612
    .local v5, "spanDiff":I
    :goto_1
    move v2, v6

    .local v2, "i":I
    :goto_2
    if-eq v2, v1, :cond_3

    .line 613
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v7, v8, v2

    .line 614
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    .line 615
    .local v3, "params":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    invoke-direct {p0, p1, p2, v8}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v8

    invoke-static {v3, v8}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$102(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;I)I

    .line 616
    const/4 v8, -0x1

    if-ne v5, v8, :cond_2

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v8

    if-le v8, v9, :cond_2

    .line 617
    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    sub-int v8, v4, v8

    invoke-static {v3, v8}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$002(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;I)I

    .line 621
    :goto_3
    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v8

    mul-int/2addr v8, v5

    add-int/2addr v4, v8

    .line 612
    add-int/2addr v2, v0

    goto :goto_2

    .line 601
    .end local v0    # "diff":I
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "params":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    .end local v4    # "span":I
    .end local v5    # "spanDiff":I
    .end local v6    # "start":I
    .end local v7    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v6, p3, -0x1

    .line 602
    .restart local v6    # "start":I
    const/4 v1, -0x1

    .line 603
    .restart local v1    # "end":I
    const/4 v0, -0x1

    .restart local v0    # "diff":I
    goto :goto_0

    .line 609
    :cond_1
    const/4 v4, 0x0

    .line 610
    .restart local v4    # "span":I
    const/4 v5, 0x1

    .restart local v5    # "spanDiff":I
    goto :goto_1

    .line 619
    .restart local v2    # "i":I
    .restart local v3    # "params":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    .restart local v7    # "view":Landroid/view/View;
    :cond_2
    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$002(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;I)I

    goto :goto_3

    .line 623
    .end local v3    # "params":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    .end local v7    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 6

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 189
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 190
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    .line 191
    .local v2, "lp":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    .line 192
    .local v3, "viewPosition":I
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 193
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v2    # "lp":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    .end local v3    # "viewPosition":I
    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 9
    .param p1, "totalSpace"    # I

    .prologue
    const/4 v8, 0x0

    .line 278
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    array-length v6, v6

    iget v7, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    add-int/lit8 v7, v7, 0x1

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    if-eq v6, p1, :cond_1

    .line 280
    :cond_0
    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    .line 282
    :cond_1
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    aput v8, v6, v8

    .line 283
    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    div-int v4, p1, v6

    .line 284
    .local v4, "sizePerSpan":I
    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    rem-int v5, p1, v6

    .line 285
    .local v5, "sizePerSpanRemainder":I
    const/4 v1, 0x0

    .line 286
    .local v1, "consumedPixels":I
    const/4 v0, 0x0

    .line 287
    .local v0, "additionalSize":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-gt v2, v6, :cond_3

    .line 288
    move v3, v4

    .line 289
    .local v3, "itemSize":I
    add-int/2addr v0, v5

    .line 290
    if-lez v0, :cond_2

    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v6, v0

    if-ge v6, v5, :cond_2

    .line 291
    add-int/lit8 v3, v3, 0x1

    .line 292
    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v0, v6

    .line 294
    :cond_2
    add-int/2addr v1, v3

    .line 295
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    aput v1, v6, v2

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    .end local v3    # "itemSize":I
    :cond_3
    return-void
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 184
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 185
    return-void
.end method

.method private ensureAnchorIsInFirstSpan(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .prologue
    .line 315
    iget v1, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v0

    .line 316
    .local v0, "span":I
    :goto_0
    if-lez v0, :cond_0

    iget v1, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v1, :cond_0

    .line 317
    iget v1, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 318
    iget v1, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v0

    goto :goto_0

    .line 320
    :cond_0
    return-void
.end method

.method private getMainDirSpec(I)I
    .locals 1
    .param p1, "dim"    # I

    .prologue
    .line 558
    if-gez p1, :cond_0

    .line 559
    sget v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->MAIN_DIR_SPEC:I

    .line 561
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private getSpanGroupIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 4
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "viewPosition"    # I

    .prologue
    .line 358
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, p3, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    .line 370
    :goto_0
    return v1

    .line 361
    :cond_0
    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 362
    .local v0, "adapterPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 367
    const-string v1, "GridLayoutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find span size for pre layout position. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v1, 0x0

    goto :goto_0

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    goto :goto_0
.end method

.method private getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 5
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "pos"    # I

    .prologue
    const/4 v3, -0x1

    .line 374
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_1

    .line 375
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, p3, v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v1

    .line 391
    :cond_0
    :goto_0
    return v1

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 378
    .local v1, "cached":I
    if-ne v1, v3, :cond_0

    .line 381
    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 382
    .local v0, "adapterPosition":I
    if-ne v0, v3, :cond_2

    .line 387
    const-string v2, "GridLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v1, 0x0

    goto :goto_0

    .line 391
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v0, v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v1

    goto :goto_0
.end method

.method private getSpanSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 5
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "pos"    # I

    .prologue
    const/4 v3, -0x1

    .line 395
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_1

    .line 396
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2, p3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    .line 412
    :cond_0
    :goto_0
    return v1

    .line 398
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 399
    .local v1, "cached":I
    if-ne v1, v3, :cond_0

    .line 402
    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 403
    .local v0, "adapterPosition":I
    if-ne v0, v3, :cond_2

    .line 408
    const-string v2, "GridLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v1, 0x1

    goto :goto_0

    .line 412
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "capBothSpecs"    # Z

    .prologue
    .line 567
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 568
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 569
    .local v0, "lp":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    if-nez p4, :cond_0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 570
    :cond_0
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    .line 573
    :cond_1
    if-nez p4, :cond_2

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_3

    .line 574
    :cond_2
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-direct {p0, p3, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    .line 577
    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 578
    return-void
.end method

.method private updateMeasurements()V
    .locals 3

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPaddingLeft()I

    move-result v2

    sub-int v0, v1, v2

    .line 274
    .local v0, "totalSpace":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->calculateItemBorders(I)V

    .line 275
    return-void

    .line 272
    .end local v0    # "totalSpace":I
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPaddingTop()I

    move-result v2

    sub-int v0, v1, v2

    .restart local v0    # "totalSpace":I
    goto :goto_0
.end method

.method private updateSpecWithExtra(III)I
    .locals 2
    .param p1, "spec"    # I
    .param p2, "startInset"    # I
    .param p3, "endInset"    # I

    .prologue
    .line 581
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 589
    .end local p1    # "spec":I
    :cond_0
    :goto_0
    return p1

    .line 584
    .restart local p1    # "spec":I
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 585
    .local v0, "mode":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 587
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    .line 586
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method


# virtual methods
.method public checkLayoutParams(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .prologue
    .line 245
    instance-of v0, p1, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    return v0
.end method

.method findReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;III)Landroid/view/View;
    .locals 10
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->ensureLayoutState()V

    .line 326
    const/4 v4, 0x0

    .line 327
    .local v4, "invalidMatch":Landroid/view/View;
    const/4 v5, 0x0

    .line 328
    .local v5, "outOfBoundsMatch":Landroid/view/View;
    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 329
    .local v1, "boundsStart":I
    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 330
    .local v0, "boundsEnd":I
    if-le p4, p3, :cond_1

    const/4 v2, 0x1

    .line 331
    .local v2, "diff":I
    :goto_0
    move v3, p3

    .local v3, "i":I
    :goto_1
    if-eq v3, p4, :cond_5

    .line 332
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 333
    .local v8, "view":Landroid/view/View;
    invoke-virtual {p0, v8}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 334
    .local v6, "position":I
    if-ltz v6, :cond_0

    if-ge v6, p5, :cond_0

    .line 335
    invoke-direct {p0, p1, p2, v6}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v7

    .line 336
    .local v7, "span":I
    if-eqz v7, :cond_2

    .line 331
    .end local v7    # "span":I
    :cond_0
    :goto_2
    add-int/2addr v3, v2

    goto :goto_1

    .line 330
    .end local v2    # "diff":I
    .end local v3    # "i":I
    .end local v6    # "position":I
    .end local v8    # "view":Landroid/view/View;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 339
    .restart local v2    # "diff":I
    .restart local v3    # "i":I
    .restart local v6    # "position":I
    .restart local v7    # "span":I
    .restart local v8    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 340
    if-nez v4, :cond_0

    .line 341
    move-object v4, v8

    goto :goto_2

    .line 343
    :cond_3
    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9, v8}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    if-ge v9, v0, :cond_4

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 344
    invoke-virtual {v9, v8}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    if-ge v9, v1, :cond_6

    .line 345
    :cond_4
    if-nez v5, :cond_0

    .line 346
    move-object v5, v8

    goto :goto_2

    .line 353
    .end local v6    # "position":I
    .end local v7    # "span":I
    .end local v8    # "view":Landroid/view/View;
    :cond_5
    if-eqz v5, :cond_7

    .end local v5    # "outOfBoundsMatch":Landroid/view/View;
    :goto_3
    move-object v8, v5

    :cond_6
    return-object v8

    .restart local v5    # "outOfBoundsMatch":Landroid/view/View;
    :cond_7
    move-object v5, v4

    goto :goto_3
.end method

.method public generateDefaultLayoutParams()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 225
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 231
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 236
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 239
    :goto_0
    return-object v0

    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    const/4 v1, 0x1

    .line 135
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_0

    .line 136
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    .line 141
    :goto_0
    return v0

    .line 138
    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 139
    const/4 v0, 0x0

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanGroupIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v0

    goto :goto_0
.end method

.method public getRowCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 123
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 124
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    .line 129
    :goto_0
    return v0

    .line 126
    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 127
    const/4 v0, 0x0

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanGroupIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v0

    goto :goto_0
.end method

.method public getSpanCount()I
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public getSpanSizeLookup()Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method layoutChunk(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;)V
    .locals 32
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "layoutState"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;
    .param p4, "result"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;

    .prologue
    .line 418
    move-object/from16 v0, p3

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v9, 0x1

    .line 420
    .local v9, "layingOutInPrimaryDirection":Z
    :goto_0
    const/4 v7, 0x0

    .line 421
    .local v7, "count":I
    const/4 v8, 0x0

    .line 422
    .local v8, "consumedSpanCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    move/from16 v26, v0

    .line 423
    .local v26, "remainingSpan":I
    if-nez v9, :cond_0

    .line 424
    move-object/from16 v0, p3

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v18

    .line 425
    .local v18, "itemSpanIndex":I
    move-object/from16 v0, p3

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v19

    .line 426
    .local v19, "itemSpanSize":I
    add-int v26, v18, v19

    .line 428
    .end local v18    # "itemSpanIndex":I
    .end local v19    # "itemSpanSize":I
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ge v7, v4, :cond_3

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->hasMore(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-lez v26, :cond_3

    .line 429
    move-object/from16 v0, p3

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v25, v0

    .line 430
    .local v25, "pos":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v29

    .line 431
    .local v29, "spanSize":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    move/from16 v0, v29

    if-le v0, v4, :cond_2

    .line 432
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Item at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " spans but GridLayoutManager has only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " spans."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 418
    .end local v7    # "count":I
    .end local v8    # "consumedSpanCount":I
    .end local v9    # "layingOutInPrimaryDirection":Z
    .end local v25    # "pos":I
    .end local v26    # "remainingSpan":I
    .end local v29    # "spanSize":I
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 436
    .restart local v7    # "count":I
    .restart local v8    # "consumedSpanCount":I
    .restart local v9    # "layingOutInPrimaryDirection":Z
    .restart local v25    # "pos":I
    .restart local v26    # "remainingSpan":I
    .restart local v29    # "spanSize":I
    :cond_2
    sub-int v26, v26, v29

    .line 437
    if-gez v26, :cond_4

    .line 449
    .end local v25    # "pos":I
    .end local v29    # "spanSize":I
    :cond_3
    if-nez v7, :cond_5

    .line 450
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 555
    :goto_2
    return-void

    .line 440
    .restart local v25    # "pos":I
    .restart local v29    # "spanSize":I
    :cond_4
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->next(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v11

    .line 441
    .local v11, "view":Landroid/view/View;
    if-eqz v11, :cond_3

    .line 444
    add-int v8, v8, v29

    .line 445
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v11, v4, v7

    .line 446
    add-int/lit8 v7, v7, 0x1

    .line 447
    goto/16 :goto_1

    .line 454
    .end local v11    # "view":Landroid/view/View;
    .end local v25    # "pos":I
    .end local v29    # "spanSize":I
    :cond_5
    const/16 v23, 0x0

    .local v23, "maxSize":I
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 457
    invoke-direct/range {v4 .. v9}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->assignSpans(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;IIZ)V

    .line 458
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v0, v7, :cond_b

    .line 459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v17

    .line 460
    .restart local v11    # "view":Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_8

    .line 461
    if-eqz v9, :cond_7

    .line 462
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->addView(Landroid/view/View;)V

    .line 474
    :goto_4
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    .line 475
    .local v21, "lp":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    .line 476
    invoke-static/range {v21 .. v21}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v5

    invoke-static/range {v21 .. v21}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v6

    add-int/2addr v5, v6

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    .line 477
    invoke-static/range {v21 .. v21}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v6

    aget v5, v5, v6

    sub-int/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    .line 475
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .line 479
    .local v30, "spec":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 480
    move-object/from16 v0, v21

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->height:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getMainDirSpec(I)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v11, v1, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 484
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v11}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v28

    .line 485
    .local v28, "size":I
    move/from16 v0, v28

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    .line 486
    move/from16 v23, v28

    .line 458
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 464
    .end local v21    # "lp":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    .end local v28    # "size":I
    .end local v30    # "spec":I
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_4

    .line 467
    :cond_8
    if-eqz v9, :cond_9

    .line 468
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_4

    .line 470
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto :goto_4

    .line 482
    .restart local v21    # "lp":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    .restart local v30    # "spec":I
    :cond_a
    move-object/from16 v0, v21

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getMainDirSpec(I)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v11, v4, v1, v5}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_5

    .line 491
    .end local v11    # "view":Landroid/view/View;
    .end local v21    # "lp":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    .end local v30    # "spec":I
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getMainDirSpec(I)I

    move-result v22

    .line 492
    .local v22, "maxMeasureSpec":I
    const/16 v17, 0x0

    :goto_6
    move/from16 v0, v17

    if-ge v0, v7, :cond_e

    .line 493
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v17

    .line 494
    .restart local v11    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v11}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    move/from16 v0, v23

    if-eq v4, v0, :cond_c

    .line 495
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    .line 496
    .restart local v21    # "lp":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    .line 497
    invoke-static/range {v21 .. v21}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v5

    invoke-static/range {v21 .. v21}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v6

    add-int/2addr v5, v6

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    .line 498
    invoke-static/range {v21 .. v21}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v6

    aget v5, v5, v6

    sub-int/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    .line 496
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .line 500
    .restart local v30    # "spec":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 501
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v22

    invoke-direct {v0, v11, v1, v2, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 492
    .end local v21    # "lp":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    .end local v30    # "spec":I
    :cond_c
    :goto_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 503
    .restart local v21    # "lp":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    .restart local v30    # "spec":I
    :cond_d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v30

    invoke-direct {v0, v11, v1, v2, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_7

    .line 508
    .end local v11    # "view":Landroid/view/View;
    .end local v21    # "lp":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    .end local v30    # "spec":I
    :cond_e
    move/from16 v0, v23

    move-object/from16 v1, p4

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 510
    const/16 v20, 0x0

    .local v20, "left":I
    const/16 v27, 0x0

    .local v27, "right":I
    const/16 v31, 0x0

    .local v31, "top":I
    const/16 v16, 0x0

    .line 511
    .local v16, "bottom":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    .line 512
    move-object/from16 v0, p3

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_11

    .line 513
    move-object/from16 v0, p3

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v16, v0

    .line 514
    sub-int v31, v16, v23

    .line 528
    :goto_8
    const/16 v17, 0x0

    :goto_9
    move/from16 v0, v17

    if-ge v0, v7, :cond_15

    .line 529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v17

    .line 530
    .restart local v11    # "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    .line 531
    .local v24, "params":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPaddingLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    invoke-static/range {v24 .. v24}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v6

    aget v5, v5, v6

    add-int v20, v4, v5

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v11}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    add-int v27, v20, v4

    .line 540
    :goto_a
    move-object/from16 v0, v24

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int v12, v20, v4

    move-object/from16 v0, v24

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->topMargin:I

    add-int v13, v31, v4

    move-object/from16 v0, v24

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->rightMargin:I

    sub-int v14, v27, v4

    move-object/from16 v0, v24

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v15, v16, v4

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 549
    invoke-virtual/range {v24 .. v24}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual/range {v24 .. v24}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 550
    :cond_f
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 552
    :cond_10
    move-object/from16 v0, p4

    iget-boolean v4, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v11}, Landroid/view/View;->isFocusable()Z

    move-result v5

    or-int/2addr v4, v5

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 528
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 516
    .end local v11    # "view":Landroid/view/View;
    .end local v24    # "params":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    :cond_11
    move-object/from16 v0, p3

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v31, v0

    .line 517
    add-int v16, v31, v23

    goto :goto_8

    .line 520
    :cond_12
    move-object/from16 v0, p3

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_13

    .line 521
    move-object/from16 v0, p3

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v27, v0

    .line 522
    sub-int v20, v27, v23

    goto/16 :goto_8

    .line 524
    :cond_13
    move-object/from16 v0, p3

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v20, v0

    .line 525
    add-int v27, v20, v23

    goto/16 :goto_8

    .line 535
    .restart local v11    # "view":Landroid/view/View;
    .restart local v24    # "params":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPaddingTop()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    invoke-static/range {v24 .. v24}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v6

    aget v5, v5, v6

    add-int v31, v4, v5

    .line 536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v11}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    add-int v16, v31, v4

    goto :goto_a

    .line 554
    .end local v11    # "view":Landroid/view/View;
    .end local v24    # "params":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method onAnchorReady(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .prologue
    .line 303
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->onAnchorReady(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    .line 304
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->updateMeasurements()V

    .line 305
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->ensureAnchorIsInFirstSpan(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_2

    .line 309
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 311
    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 10
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 147
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 148
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v9, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    if-nez v0, :cond_0

    .line 149
    invoke-super {p0, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 165
    :goto_0
    return-void

    :cond_0
    move-object v8, v9

    .line 152
    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    .line 153
    .local v8, "glp":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanGroupIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v2

    .line 154
    .local v2, "spanGroupIndex":I
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_2

    .line 156
    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v1

    const/4 v3, 0x1

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 158
    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v4

    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    .line 155
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    goto :goto_0

    .line 158
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 160
    :cond_2
    const/4 v3, 0x1

    .line 162
    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v4

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 163
    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x0

    .line 160
    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    goto :goto_0

    .line 163
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public onItemsAdded(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 200
    return-void
.end method

.method public onItemsChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 205
    return-void
.end method

.method public onItemsMoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;III)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 221
    return-void
.end method

.method public onItemsRemoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 210
    return-void
.end method

.method public onItemsUpdated(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;IILjava/lang/Object;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 216
    return-void
.end method

.method public onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 1
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 169
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 172
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    .line 176
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    .line 177
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 180
    :cond_1
    return-void
.end method

.method public setSpanCount(I)V
    .locals 3
    .param p1, "spanCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 645
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_0

    .line 655
    :goto_0
    return-void

    .line 648
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 649
    if-ge p1, v1, :cond_1

    .line 650
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_1
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    .line 654
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    goto :goto_0
.end method

.method public setSpanSizeLookup(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;)V
    .locals 0
    .param p1, "spanSizeLookup"    # Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    .line 256
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 2
    .param p1, "stackFromEnd"    # Z

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 118
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
