.class public Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;
.super Lnet/oneplus/h2launcher/BaseRecyclerView;
.source "AllAppsRecyclerView.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Stats$LaunchSourceProvider;


# static fields
.field private static final FAST_SCROLL_BAR_MODE_DISTRIBUTE_BY_ROW:I = 0x0

.field private static final FAST_SCROLL_BAR_MODE_DISTRIBUTE_BY_SECTIONS:I = 0x1

.field private static final FAST_SCROLL_MODE_FREE_SCROLL:I = 0x1

.field private static final FAST_SCROLL_MODE_JUMP_TO_FIRST_ICON:I


# instance fields
.field private mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

.field private mEmptySearchBackground:Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;

.field private mEmptySearchBackgroundTopOffset:I

.field mFastScrollFrameIndex:I

.field final mFastScrollFrames:[I

.field private final mFastScrollMode:I

.field mLastFastScrollFocusedView:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

.field private mNumAppsPerRow:I

.field mPrevFastScrollFocusedPosition:I

.field private final mScrollBarMode:I

.field private mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

.field mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mFastScrollFrames:[I

    .line 59
    iput v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mFastScrollMode:I

    .line 60
    iput v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollBarMode:I

    .line 62
    new-instance v1, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    .line 365
    new-instance v1, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView$1;-><init>(Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    .line 83
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->setDetachThumbOnFastScroll()V

    .line 85
    const v1, 0x7f0c0173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mEmptySearchBackgroundTopOffset:I

    .line 87
    return-void
.end method

.method private getScrollAtPosition(II)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "rowHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 442
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 443
    .local v0, "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    iget v2, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 445
    :cond_0
    iget v2, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getPaddingTop()I

    move-result v1

    .line 446
    .local v1, "offset":I
    :cond_1
    iget v2, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    .line 448
    .end local v1    # "offset":I
    :cond_2
    return v1
.end method

.method private smoothSnapToPosition(ILnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "scrollPosState"    # Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    .prologue
    .line 391
    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 395
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getPaddingTop()I

    move-result v4

    iget v5, p2, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    iget v6, p2, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, p2, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    sub-int v0, v4, v5

    .line 397
    .local v0, "curScrollY":I
    iget v4, p2, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    invoke-direct {p0, p1, v4}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getScrollAtPosition(II)I

    move-result v2

    .line 398
    .local v2, "newScrollY":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mFastScrollFrames:[I

    array-length v3, v4

    .line 399
    .local v3, "numFrames":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 401
    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mFastScrollFrames:[I

    sub-int v5, v2, v0

    div-int/2addr v5, v3

    aput v5, v4, v1

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mFastScrollFrameIndex:I

    .line 404
    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 405
    return-void
.end method

.method private updateEmptySearchBackgroundBounds()V
    .locals 5

    .prologue
    .line 456
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;

    if-nez v2, :cond_0

    .line 466
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 462
    .local v0, "x":I
    iget v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mEmptySearchBackgroundTopOffset:I

    .line 463
    .local v1, "y":I
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;

    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;

    .line 464
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;

    .line 465
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 463
    invoke-virtual {v2, v0, v1, v3, v4}, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->setBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 133
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 134
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 135
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 133
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 136
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/BaseRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 137
    return-void
.end method

.method protected enableScrollBar(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 469
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mDrawFastScrollBar:Z

    .line 470
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->invalidate()V

    .line 471
    return-void
.end method

.method public fillInLaunchSourceData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "sourceData"    # Landroid/os/Bundle;

    .prologue
    .line 173
    const-string v0, "container"

    const-string v1, "all_apps"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "sub_container"

    const-string v1, "search"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    const-string v0, "sub_container"

    const-string v1, "a-z"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getCurScrollState(Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;)V
    .locals 9
    .param p1, "stateOut"    # Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    .prologue
    const/4 v8, -0x1

    .line 411
    iput v8, p1, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    .line 412
    iput v8, p1, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    .line 413
    iput v8, p1, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    .line 416
    iget-object v6, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v4

    .line 417
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    if-nez v6, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v1

    .line 422
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 423
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 424
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v5

    .line 425
    .local v5, "position":I
    if-eq v5, v8, :cond_3

    .line 426
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 427
    .local v3, "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    iget v6, v3, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    iget v6, v3, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 429
    :cond_2
    iget v6, v3, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    iput v6, p1, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    .line 430
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v6

    iput v6, p1, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    .line 431
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p1, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    goto :goto_0

    .line 422
    .end local v3    # "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 142
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 144
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 145
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 143
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 147
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 150
    :cond_0
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/BaseRecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    .line 151
    return-void
.end method

.method public onFastScrollCompleted()V
    .locals 3

    .prologue
    .line 269
    invoke-super {p0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->onFastScrollCompleted()V

    .line 271
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mLastFastScrollFocusedView:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mLastFastScrollFocusedView:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;->setFastScrollFocused(ZZ)V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mLastFastScrollFocusedView:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    .line 275
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mPrevFastScrollFocusedPosition:I

    .line 276
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->onFinishInflate()V

    .line 168
    invoke-virtual {p0, p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 169
    return-void
.end method

.method public onSearchResultsChanged()V
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->scrollToTop()V

    .line 187
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;

    .line 190
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->setAlpha(I)V

    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 192
    invoke-direct {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->updateEmptySearchBackgroundBounds()V

    .line 194
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->animateBgAlpha(FI)V

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 195
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->setBgAlpha(F)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 160
    invoke-direct {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->updateEmptySearchBackgroundBounds()V

    .line 161
    return-void
.end method

.method public onUpdateScrollbar(I)V
    .locals 13
    .param p1, "dy"    # I

    .prologue
    const/4 v12, -0x1

    .line 283
    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v3

    .line 286
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    iget v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    if-nez v10, :cond_2

    .line 287
    :cond_0
    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v10, v12, v12}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    .line 359
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v5

    .line 293
    .local v5, "rowCount":I
    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    invoke-virtual {p0, v10}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getCurScrollState(Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;)V

    .line 294
    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    iget v10, v10, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    if-gez v10, :cond_3

    .line 295
    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v10, v12, v12}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    goto :goto_0

    .line 300
    :cond_3
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getAvailableScrollBarHeight()I

    move-result v0

    .line 301
    .local v0, "availableScrollBarHeight":I
    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v10

    iget-object v11, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    iget v11, v11, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    invoke-virtual {p0, v10, v11}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getAvailableScrollHeight(II)I

    move-result v1

    .line 302
    .local v1, "availableScrollHeight":I
    if-gtz v1, :cond_4

    .line 303
    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v10, v12, v12}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    goto :goto_0

    .line 310
    :cond_4
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getPaddingTop()I

    move-result v10

    iget-object v11, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    iget v11, v11, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    iget-object v12, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    iget v12, v12, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    iget-object v11, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    iget v11, v11, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    sub-int v8, v10, v11

    .line 312
    .local v8, "scrollY":I
    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v11, v8

    int-to-float v12, v1

    div-float/2addr v11, v12

    int-to-float v12, v0

    mul-float/2addr v11, v12

    float-to-int v11, v11

    add-int v7, v10, v11

    .line 315
    .local v7, "scrollBarY":I
    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->isThumbDetached()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 317
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 318
    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v6, v10, Landroid/graphics/Rect;->left:I

    .line 323
    .local v6, "scrollBarX":I
    :goto_1
    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->isDraggingThumb()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 326
    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    iget-object v11, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v11}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->getLastTouchY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v10, v6, v11}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    goto :goto_0

    .line 320
    .end local v6    # "scrollBarX":I
    :cond_5
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getWidth()I

    move-result v10

    iget-object v11, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v11}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->getThumbWidth()I

    move-result v11

    sub-int v6, v10, v11

    .restart local v6    # "scrollBarX":I
    goto :goto_1

    .line 328
    :cond_6
    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->getThumbOffset()Landroid/graphics/Point;

    move-result-object v10

    iget v9, v10, Landroid/graphics/Point;->y:I

    .line 329
    .local v9, "thumbScrollY":I
    sub-int v2, v7, v9

    .line 330
    .local v2, "diffScrollY":I
    mul-int v10, v2, p1

    int-to-float v10, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_8

    .line 336
    if-gez p1, :cond_7

    .line 337
    mul-int v10, p1, v9

    int-to-float v10, v10

    int-to-float v11, v7

    div-float/2addr v10, v11

    float-to-int v4, v10

    .line 338
    .local v4, "offset":I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v9, v10

    .line 344
    :goto_2
    const/4 v10, 0x0

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 345
    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v10, v6, v9}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    .line 346
    if-ne v7, v9, :cond_1

    .line 347
    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->reattachThumbToScroll()V

    goto/16 :goto_0

    .line 340
    .end local v4    # "offset":I
    :cond_7
    sub-int v10, v0, v9

    mul-int/2addr v10, p1

    int-to-float v10, v10

    sub-int v11, v0, v7

    int-to-float v11, v11

    div-float/2addr v10, v11

    float-to-int v4, v10

    .line 342
    .restart local v4    # "offset":I
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_2

    .line 353
    .end local v4    # "offset":I
    :cond_8
    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v10, v6, v9}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    goto/16 :goto_0

    .line 357
    .end local v2    # "diffScrollY":I
    .end local v6    # "scrollBarX":I
    .end local v9    # "thumbScrollY":I
    :cond_9
    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    invoke-virtual {p0, v10, v5}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;I)V

    goto/16 :goto_0
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .locals 10
    .param p1, "touchFraction"    # F

    .prologue
    const/4 v9, 0x0

    .line 207
    iget-object v7, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v6

    .line 208
    .local v6, "rowCount":I
    if-nez v6, :cond_0

    .line 209
    const-string v7, ""

    .line 264
    :goto_0
    return-object v7

    .line 213
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->stopScroll()V

    .line 216
    iget-object v7, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    .line 217
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v1

    .line 218
    .local v1, "fastScrollSections":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;>;"
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 220
    .local v4, "lastInfo":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 221
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 222
    .local v3, "info":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    iget v7, v3, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    cmpl-float v7, v7, p1

    if-lez v7, :cond_4

    .line 234
    .end local v3    # "info":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    :cond_1
    iget-object v7, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    invoke-virtual {p0, v7}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getCurScrollState(Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;)V

    .line 235
    iget-object v7, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    iget v7, v7, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    invoke-virtual {p0, v6, v7}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getAvailableScrollHeight(II)I

    move-result v0

    .line 236
    .local v0, "availableScrollHeight":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/LinearLayoutManager;

    .line 241
    .local v5, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget v7, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mPrevFastScrollFocusedPosition:I

    iget-object v8, v4, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget v8, v8, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    if-eq v7, v8, :cond_3

    .line 242
    iget-object v7, v4, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget v7, v7, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    iput v7, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mPrevFastScrollFocusedPosition:I

    .line 245
    iget-object v7, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mLastFastScrollFocusedView:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    if-eqz v7, :cond_2

    .line 246
    iget-object v7, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mLastFastScrollFocusedView:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    const/4 v8, 0x1

    invoke-interface {v7, v9, v8}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;->setFastScrollFocused(ZZ)V

    .line 247
    const/4 v7, 0x0

    iput-object v7, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mLastFastScrollFocusedView:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    .line 251
    :cond_2
    iget v7, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mPrevFastScrollFocusedPosition:I

    iget-object v8, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollPosState:Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;

    invoke-direct {p0, v7, v8}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->smoothSnapToPosition(ILnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;)V

    .line 264
    :cond_3
    iget-object v7, v4, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    goto :goto_0

    .line 225
    .end local v0    # "availableScrollHeight":I
    .end local v5    # "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    .restart local v3    # "info":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    :cond_4
    move-object v4, v3

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public scrollToTop()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->isThumbDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->reattachThumbToScroll()V

    .line 124
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->scrollToPosition(I)V

    .line 125
    return-void
.end method

.method public setApps(Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;)V
    .locals 0
    .param p1, "apps"    # Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    .prologue
    .line 93
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    .line 94
    return-void
.end method

.method public setDarkMode(Z)V
    .locals 1
    .param p1, "darkMode"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->setDarkMode(Z)V

    .line 98
    return-void
.end method

.method public setNumAppsPerRow(Lnet/oneplus/h2launcher/DeviceProfile;I)V
    .locals 5
    .param p1, "grid"    # Lnet/oneplus/h2launcher/DeviceProfile;
    .param p2, "numAppsPerRow"    # I

    .prologue
    const/4 v4, 0x1

    .line 104
    iput p2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    .line 106
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    .line 107
    .local v1, "pool":Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    iget v2, p1, Lnet/oneplus/h2launcher/DeviceProfile;->availableHeightPx:I

    iget v3, p1, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsIconSizePx:I

    div-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 108
    .local v0, "approxRows":I
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 109
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 110
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 111
    iget v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, v4, v2}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 112
    const/4 v2, 0x2

    iget v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 113
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 114
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 155
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/BaseRecyclerView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
