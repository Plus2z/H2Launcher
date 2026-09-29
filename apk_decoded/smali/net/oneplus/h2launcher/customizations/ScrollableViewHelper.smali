.class public Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;
.super Ljava/lang/Object;
.source "ScrollableViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollListener;,
        Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnListViewScrollListener;,
        Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollViewScrollListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOnScrollListener:Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;)Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;->mOnScrollListener:Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollListener;

    return-object v0
.end method


# virtual methods
.method public getScrollableViewScrollPosition(Landroid/view/View;Z)I
    .locals 13
    .param p1, "scrollableView"    # Landroid/view/View;
    .param p2, "isSlidingUp"    # Z

    .prologue
    const/4 v11, 0x0

    .line 32
    if-nez p1, :cond_0

    move v10, v11

    .line 78
    :goto_0
    return v10

    .line 33
    :cond_0
    instance-of v10, p1, Landroid/widget/ScrollView;

    if-eqz v10, :cond_2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    goto :goto_0

    :cond_1
    move-object v9, p1

    .line 37
    check-cast v9, Landroid/widget/ScrollView;

    .line 38
    .local v9, "sv":Landroid/widget/ScrollView;
    invoke-virtual {v9, v11}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v9}, Landroid/widget/ScrollView;->getHeight()I

    move-result v11

    invoke-virtual {v9}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v12

    add-int/2addr v11, v12

    sub-int/2addr v10, v11

    goto :goto_0

    .line 41
    .end local v0    # "child":Landroid/view/View;
    .end local v9    # "sv":Landroid/widget/ScrollView;
    :cond_2
    instance-of v10, p1, Landroid/widget/ListView;

    if-eqz v10, :cond_5

    move-object v10, p1

    check-cast v10, Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    if-lez v10, :cond_5

    move-object v5, p1

    .line 42
    check-cast v5, Landroid/widget/ListView;

    .line 43
    .local v5, "lv":Landroid/widget/ListView;
    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    if-nez v10, :cond_3

    move v10, v11

    goto :goto_0

    .line 44
    :cond_3
    if-eqz p2, :cond_4

    .line 45
    invoke-virtual {v5, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v10, v11

    goto :goto_0

    .line 49
    .end local v1    # "firstChild":Landroid/view/View;
    :cond_4
    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 51
    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v5}, Landroid/widget/ListView;->getBottom()I

    move-result v11

    sub-int/2addr v10, v11

    goto :goto_0

    .line 53
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "lv":Landroid/widget/ListView;
    :cond_5
    instance-of v10, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v10, :cond_8

    move-object v10, p1

    check-cast v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildCount()I

    move-result v10

    if-lez v10, :cond_8

    move-object v8, p1

    .line 54
    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 55
    .local v8, "rv":Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v4

    .line 56
    .local v4, "lm":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v10

    if-nez v10, :cond_6

    move v10, v11

    goto/16 :goto_0

    .line 57
    :cond_6
    if-eqz p2, :cond_7

    .line 58
    invoke-virtual {v8, v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 60
    .restart local v1    # "firstChild":Landroid/view/View;
    invoke-virtual {v8, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v11

    mul-int/2addr v10, v11

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v10, v11

    goto/16 :goto_0

    .line 62
    .end local v1    # "firstChild":Landroid/view/View;
    :cond_7
    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 64
    .restart local v3    # "lastChild":Landroid/view/View;
    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v11

    mul-int/2addr v10, v11

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getBottom()I

    move-result v11

    sub-int/2addr v10, v11

    goto/16 :goto_0

    .line 66
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v4    # "lm":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    .end local v8    # "rv":Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    :cond_8
    instance-of v10, p1, Landroid/widget/GridView;

    if-eqz v10, :cond_a

    move-object v10, p1

    check-cast v10, Landroid/widget/GridView;

    invoke-virtual {v10}, Landroid/widget/GridView;->getChildCount()I

    move-result v10

    if-lez v10, :cond_a

    move-object v2, p1

    .line 67
    check-cast v2, Landroid/widget/GridView;

    .line 68
    .local v2, "gv":Landroid/widget/GridView;
    invoke-virtual {v2}, Landroid/widget/GridView;->getNumColumns()I

    move-result v6

    .line 69
    .local v6, "numColumns":I
    invoke-virtual {v2}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v10

    div-int v7, v10, v6

    .line 70
    .local v7, "rows":I
    if-eqz p2, :cond_9

    .line 71
    invoke-virtual {v2, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 73
    .restart local v1    # "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    mul-int/2addr v10, v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v10, v11

    goto/16 :goto_0

    .end local v1    # "firstChild":Landroid/view/View;
    :cond_9
    move v10, v11

    .line 75
    goto/16 :goto_0

    .end local v2    # "gv":Landroid/widget/GridView;
    .end local v6    # "numColumns":I
    .end local v7    # "rows":I
    :cond_a
    move v10, v11

    .line 78
    goto/16 :goto_0
.end method

.method public monitorTopScrolled(Landroid/view/View;Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollListener;)V
    .locals 6
    .param p1, "scrollableView"    # Landroid/view/View;
    .param p2, "onScrollListener"    # Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollListener;

    .prologue
    const/4 v4, 0x0

    .line 90
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;->mOnScrollListener:Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollListener;

    .line 91
    instance-of v3, p1, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 92
    check-cast v2, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;

    .line 93
    .local v2, "onePlusScrollView":Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;
    new-instance v3, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollViewScrollListener;

    invoke-direct {v3, p0, v4}, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollViewScrollListener;-><init>(Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$1;)V

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;->setOnScrollListener(Lnet/oneplus/h2launcher/customizations/OnePlusScrollView$OnScrollListener;)V

    .line 103
    .end local v2    # "onePlusScrollView":Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;
    :goto_0
    return-void

    .line 94
    :cond_0
    instance-of v3, p1, Lnet/oneplus/h2launcher/customizations/OnePlusListView;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 95
    check-cast v1, Lnet/oneplus/h2launcher/customizations/OnePlusListView;

    .line 96
    .local v1, "onePlusListView":Lnet/oneplus/h2launcher/customizations/OnePlusListView;
    new-instance v0, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnListViewScrollListener;

    .line 97
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/OnePlusListView;->getOnScrollListener()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v3

    invoke-direct {v0, p0, v3, v4}, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnListViewScrollListener;-><init>(Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;Landroid/widget/AbsListView$OnScrollListener;Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$1;)V

    .line 98
    .local v0, "listener":Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnListViewScrollListener;
    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/customizations/OnePlusListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0

    .line 100
    .end local v0    # "listener":Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnListViewScrollListener;
    .end local v1    # "onePlusListView":Lnet/oneplus/h2launcher/customizations/OnePlusListView;
    :cond_1
    sget-object v3, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported scrollable view type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
