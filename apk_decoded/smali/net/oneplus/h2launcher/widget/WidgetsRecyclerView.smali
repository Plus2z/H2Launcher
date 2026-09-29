.class public Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;
.super Lnet/oneplus/h2launcher/BaseRecyclerView;
.source "WidgetsRecyclerView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetsRecyclerView"


# instance fields
.field private mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

.field private mWidgets:Lnet/oneplus/h2launcher/model/WidgetsModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 80
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 81
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 82
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 80
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 83
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/BaseRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 84
    return-void
.end method

.method protected getCurScrollState(Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;)V
    .locals 4
    .param p1, "stateOut"    # Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    .prologue
    const/4 v3, -0x1

    .line 147
    iput v3, p1, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    .line 148
    iput v3, p1, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    .line 149
    iput v3, p1, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    .line 152
    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mWidgets:Lnet/oneplus/h2launcher/model/WidgetsModel;

    if-nez v3, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mWidgets:Lnet/oneplus/h2launcher/model/WidgetsModel;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/model/WidgetsModel;->getPackageSize()I

    move-result v2

    .line 158
    .local v2, "rowCount":I
    if-eqz v2, :cond_0

    .line 161
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v1

    .line 164
    .local v1, "position":I
    iput v1, p1, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    .line 165
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v3

    iput v3, p1, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p1, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    goto :goto_0
.end method

.method public getFastScrollerTrackColor(I)I
    .locals 1
    .param p1, "defaultTrackColor"    # I

    .prologue
    .line 64
    const/4 v0, -0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->onFinishInflate()V

    .line 60
    invoke-virtual {p0, p0}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 61
    return-void
.end method

.method public onUpdateScrollbar(I)V
    .locals 3
    .param p1, "dy"    # I

    .prologue
    const/4 v2, -0x1

    .line 122
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mWidgets:Lnet/oneplus/h2launcher/model/WidgetsModel;

    if-nez v1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mWidgets:Lnet/oneplus/h2launcher/model/WidgetsModel;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/model/WidgetsModel;->getPackageSize()I

    move-result v0

    .line 128
    .local v0, "rowCount":I
    if-nez v0, :cond_1

    .line 129
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v1, v2, v2}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->getCurScrollState(Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;)V

    .line 135
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    iget v1, v1, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    if-gez v1, :cond_2

    .line 136
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v1, v2, v2}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    invoke-virtual {p0, v1, v0}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;I)V

    goto :goto_0
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .locals 9
    .param p1, "touchFraction"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 92
    iget-object v6, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mWidgets:Lnet/oneplus/h2launcher/model/WidgetsModel;

    if-nez v6, :cond_0

    .line 93
    const-string v6, ""

    .line 113
    :goto_0
    return-object v6

    .line 97
    :cond_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mWidgets:Lnet/oneplus/h2launcher/model/WidgetsModel;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/model/WidgetsModel;->getPackageSize()I

    move-result v5

    .line 98
    .local v5, "rowCount":I
    if-nez v5, :cond_1

    .line 99
    const-string v6, ""

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->stopScroll()V

    .line 105
    iget-object v6, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->getCurScrollState(Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;)V

    .line 106
    int-to-float v6, v5

    mul-float v3, v6, p1

    .line 107
    .local v3, "pos":F
    iget-object v6, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    iget v6, v6, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    invoke-virtual {p0, v5, v6}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->getAvailableScrollHeight(II)I

    move-result v0

    .line 108
    .local v0, "availableScrollHeight":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 109
    .local v1, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v6, 0x0

    int-to-float v7, v0

    mul-float/2addr v7, p1

    neg-float v7, v7

    float-to-int v7, v7

    invoke-virtual {v1, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 111
    cmpl-float v6, p1, v8

    if-nez v6, :cond_2

    sub-float/2addr v3, v8

    .end local v3    # "pos":F
    :cond_2
    float-to-int v4, v3

    .line 112
    .local v4, "posInt":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mWidgets:Lnet/oneplus/h2launcher/model/WidgetsModel;

    invoke-virtual {v6, v4}, Lnet/oneplus/h2launcher/model/WidgetsModel;->getPackageItemInfo(I)Lnet/oneplus/h2launcher/model/PackageItemInfo;

    move-result-object v2

    .line 113
    .local v2, "p":Lnet/oneplus/h2launcher/model/PackageItemInfo;
    iget-object v6, v2, Lnet/oneplus/h2launcher/model/PackageItemInfo;->titleSectionName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setWidgets(Lnet/oneplus/h2launcher/model/WidgetsModel;)V
    .locals 0
    .param p1, "widgets"    # Lnet/oneplus/h2launcher/model/WidgetsModel;

    .prologue
    .line 71
    iput-object p1, p0, Lnet/oneplus/h2launcher/widget/WidgetsRecyclerView;->mWidgets:Lnet/oneplus/h2launcher/model/WidgetsModel;

    .line 72
    return-void
.end method
