.class public abstract Lnet/oneplus/h2launcher/BaseRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "BaseRecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollListener;,
        Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;
    }
.end annotation


# static fields
.field private static final SCROLL_DELTA_THRESHOLD_DP:I = 0x4


# instance fields
.field protected mBackgroundPadding:Landroid/graphics/Rect;

.field private mDeltaThreshold:F

.field private mDownX:I

.field private mDownY:I

.field protected mDrawFastScrollBar:Z

.field mDy:I

.field private mLastY:I

.field protected mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mDy:I

    .line 61
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mDrawFastScrollBar:Z

    .line 66
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 78
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mDeltaThreshold:F

    .line 79
    new-instance v1, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-direct {v1, p0, p1}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;-><init>(Lnet/oneplus/h2launcher/BaseRecyclerView;Landroid/content/Context;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    .line 81
    new-instance v0, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollListener;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollListener;-><init>(Lnet/oneplus/h2launcher/BaseRecyclerView;)V

    .line 82
    .local v0, "listener":Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollListener;
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 83
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 132
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 133
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 134
    .local v2, "y":I
    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->isDraggingThumb()Z

    move-result v3

    return v3

    .line 137
    :pswitch_0
    iput v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mDownX:I

    .line 138
    iput v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mLastY:I

    iput v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mDownY:I

    .line 139
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/BaseRecyclerView;->shouldStopScroll(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->stopScroll()V

    .line 142
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    iget v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mDownX:I

    iget v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mDownY:I

    iget v6, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mLastY:I

    invoke-virtual {v3, p1, v4, v5, v6}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->handleTouchEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0

    .line 145
    :pswitch_1
    iput v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mLastY:I

    .line 146
    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    iget v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mDownX:I

    iget v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mDownY:I

    iget v6, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mLastY:I

    invoke-virtual {v3, p1, v4, v5, v6}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->handleTouchEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0

    .line 150
    :pswitch_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->onFastScrollCompleted()V

    .line 151
    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    iget v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mDownX:I

    iget v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mDownY:I

    iget v6, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mLastY:I

    invoke-virtual {v3, p1, v4, v5, v6}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->handleTouchEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 232
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mDrawFastScrollBar:Z

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->onUpdateScrollbar(I)V

    .line 234
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->draw(Landroid/graphics/Canvas;)V

    .line 236
    :cond_0
    return-void
.end method

.method protected getAvailableScrollBarHeight()I
    .locals 4

    .prologue
    .line 210
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 211
    .local v1, "visibleHeight":I
    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->getThumbHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 212
    .local v0, "availableScrollBarHeight":I
    return v0
.end method

.method protected getAvailableScrollHeight(II)I
    .locals 5
    .param p1, "rowCount"    # I
    .param p2, "rowHeight"    # I

    .prologue
    .line 199
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v3, v4

    .line 200
    .local v2, "visibleHeight":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getPaddingTop()I

    move-result v3

    mul-int v4, p1, p2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getPaddingBottom()I

    move-result v4

    add-int v1, v3, v4

    .line 201
    .local v1, "scrollHeight":I
    sub-int v0, v1, v2

    .line 202
    .local v0, "availableScrollHeight":I
    return v0
.end method

.method public getBackgroundPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected abstract getCurScrollState(Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;)V
.end method

.method public getFastScrollerThumbInactiveColor(I)I
    .locals 0
    .param p1, "defaultInactiveThumbColor"    # I

    .prologue
    .line 226
    return p1
.end method

.method public getFastScrollerTrackColor(I)I
    .locals 0
    .param p1, "defaultTrackColor"    # I

    .prologue
    .line 219
    return p1
.end method

.method public getMaxScrollbarWidth()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->getThumbMaxWidth()I

    move-result v0

    return v0
.end method

.method public onFastScrollCompleted()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onFinishInflate()V

    .line 109
    invoke-virtual {p0, p0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 110
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "rv"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 118
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/BaseRecyclerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 159
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "rv"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/BaseRecyclerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 124
    return-void
.end method

.method public abstract onUpdateScrollbar(I)V
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->reattachThumbToScroll()V

    .line 104
    return-void
.end method

.method public abstract scrollToPositionAtProgress(F)Ljava/lang/String;
.end method

.method protected shouldStopScroll(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mDy:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mDeltaThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synchronizeScrollBarThumbOffsetToViewScroll(Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;I)V
    .locals 8
    .param p1, "scrollPosState"    # Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;
    .param p2, "rowCount"    # I

    .prologue
    const/4 v6, -0x1

    .line 250
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getAvailableScrollBarHeight()I

    move-result v0

    .line 251
    .local v0, "availableScrollBarHeight":I
    iget v5, p1, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    invoke-virtual {p0, p2, v5}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getAvailableScrollHeight(II)I

    move-result v1

    .line 252
    .local v1, "availableScrollHeight":I
    if-gtz v1, :cond_0

    .line 253
    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v5, v6, v6}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    .line 273
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getPaddingTop()I

    move-result v5

    iget v6, p1, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    iget v7, p1, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iget v6, p1, Lnet/oneplus/h2launcher/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    sub-int v4, v5, v6

    .line 262
    .local v4, "scrollY":I
    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v4

    int-to-float v7, v1

    div-float/2addr v6, v7

    int-to-float v7, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int v3, v5, v6

    .line 267
    .local v3, "scrollBarY":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 268
    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 272
    .local v2, "scrollBarX":I
    :goto_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v5, v2, v3}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    goto :goto_0

    .line 270
    .end local v2    # "scrollBarX":I
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->getThumbWidth()I

    move-result v6

    sub-int v2, v5, v6

    .restart local v2    # "scrollBarX":I
    goto :goto_1
.end method

.method public updateBackgroundPadding(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 177
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 178
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerView;->mScrollbar:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->updateColors()V

    .line 179
    return-void
.end method
