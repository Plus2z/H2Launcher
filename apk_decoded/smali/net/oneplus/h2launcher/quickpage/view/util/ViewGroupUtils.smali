.class public Lnet/oneplus/h2launcher/quickpage/view/util/ViewGroupUtils;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findViewAtPosition(Landroid/view/View;II)Landroid/view/View;
    .locals 7
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    .line 55
    instance-of v6, p0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    move-object v4, p0

    .line 56
    check-cast v4, Landroid/view/ViewGroup;

    .line 57
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 58
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "child":Landroid/view/View;
    invoke-static {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/util/ViewGroupUtils;->findViewAtPosition(Landroid/view/View;II)Landroid/view/View;

    move-result-object v3

    .line 60
    .local v3, "viewAtPosition":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 71
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v3    # "viewAtPosition":Landroid/view/View;
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :goto_1
    return-object v3

    .line 57
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "i":I
    .restart local v3    # "viewAtPosition":Landroid/view/View;
    .restart local v4    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "viewAtPosition":Landroid/view/View;
    :cond_1
    move-object v3, v5

    .line 64
    goto :goto_1

    .line 66
    .end local v1    # "i":I
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 67
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 68
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v3, p0

    .line 69
    goto :goto_1

    :cond_3
    move-object v3, v5

    .line 71
    goto :goto_1
.end method

.method public static hasScrollableChildren(Landroid/view/ViewGroup;)Z
    .locals 5
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 14
    const/4 v1, 0x0

    .line 15
    .local v1, "hasScrollableChildren":Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 16
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 17
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 18
    .local v3, "view":Landroid/view/View;
    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/view/util/ViewGroupUtils;->isViewScrollable(Landroid/view/View;)Z

    move-result v1

    .line 19
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 20
    if-nez v1, :cond_0

    check-cast v3, Landroid/view/ViewGroup;

    .line 21
    .end local v3    # "view":Landroid/view/View;
    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/view/util/ViewGroupUtils;->hasScrollableChildren(Landroid/view/ViewGroup;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v1, 0x1

    .line 23
    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    .line 25
    :cond_2
    return v1

    .line 21
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 16
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isEventOnScrollableView(Landroid/view/View;II)Z
    .locals 5
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 29
    const/4 v2, 0x0

    .line 30
    .local v2, "isScrollable":Z
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    move-object v3, p0

    .line 31
    check-cast v3, Landroid/view/ViewGroup;

    .line 32
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 33
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "child":Landroid/view/View;
    invoke-static {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/util/ViewGroupUtils;->isEventOnViewBounds(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 35
    if-nez v2, :cond_0

    .line 36
    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/util/ViewGroupUtils;->isViewScrollable(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/util/ViewGroupUtils;->isEventOnScrollableView(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 32
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 40
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_3
    return v2
.end method

.method private static isEventOnViewBounds(Landroid/view/View;II)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 50
    .local v0, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 51
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method private static isViewScrollable(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 44
    instance-of v0, p0, Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/webkit/WebView;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
