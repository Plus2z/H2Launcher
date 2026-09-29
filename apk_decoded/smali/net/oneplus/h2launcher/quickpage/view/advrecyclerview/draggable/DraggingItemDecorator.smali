.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;
.source "DraggingItemDecorator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DraggingItemDecorator"


# instance fields
.field private mDraggingItemImage:Landroid/graphics/Bitmap;

.field private mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

.field private mIsScrolling:Z

.field private mLayoutOrientation:I

.field private mRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

.field private mRecyclerViewPaddingLeft:I

.field private mShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mShadowPadding:Landroid/graphics/Rect;

.field private mStarted:Z

.field private mTouchPositionX:I

.field private mTouchPositionY:I

.field private mTranslationBottomLimit:I

.field private mTranslationLeftLimit:I

.field private mTranslationRightLimit:I

.field private mTranslationTopLimit:I

.field private mTranslationX:I

.field private mTranslationY:I


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "draggingItem"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "range"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mShadowPadding:Landroid/graphics/Rect;

    .line 55
    iput-object p3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    .line 56
    return-void
.end method

.method private static clip(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 59
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private createDraggingItemImage(Landroid/view/View;Landroid/graphics/drawable/NinePatchDrawable;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "shadow"    # Landroid/graphics/drawable/NinePatchDrawable;

    .prologue
    const/4 v7, 0x0

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int v4, v5, v6

    .line 325
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int v2, v5, v6

    .line 327
    .local v2, "height":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 329
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 331
    .local v1, "canvas":Landroid/graphics/Canvas;
    if-eqz p2, :cond_0

    .line 332
    invoke-virtual {p2, v7, v7, v4, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 333
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 336
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 338
    .local v3, "savedCount":I
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v2, v8

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 340
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 341
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 342
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 344
    return-object v0
.end method

.method private static findRangeFirstItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;II)Landroid/view/View;
    .locals 7
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "range"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;
    .param p2, "firstVisiblePosition"    # I
    .param p3, "lastVisiblePosition"    # I

    .prologue
    const/4 v6, -0x1

    .line 64
    if-eq p2, v6, :cond_0

    if-ne p3, v6, :cond_2

    .line 66
    :cond_0
    const/4 v3, 0x0

    .line 89
    :cond_1
    :goto_0
    return-object v3

    .line 69
    :cond_2
    const/4 v3, 0x0

    .line 71
    .local v3, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildCount()I

    move-result v0

    .line 72
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 73
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 74
    .local v4, "v2":Landroid/view/View;
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v5

    .line 76
    .local v5, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v5, :cond_3

    .line 77
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    .line 79
    .local v2, "position":I
    if-lt v2, p2, :cond_3

    if-gt v2, p3, :cond_3

    .line 81
    invoke-virtual {p1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->checkInRange(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 82
    move-object v3, v4

    .line 83
    goto :goto_0

    .line 72
    .end local v2    # "position":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static findRangeLastItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;II)Landroid/view/View;
    .locals 7
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "range"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;
    .param p2, "firstVisiblePosition"    # I
    .param p3, "lastVisiblePosition"    # I

    .prologue
    const/4 v6, -0x1

    .line 94
    if-eq p2, v6, :cond_0

    if-ne p3, v6, :cond_2

    .line 96
    :cond_0
    const/4 v3, 0x0

    .line 118
    :cond_1
    :goto_0
    return-object v3

    .line 99
    :cond_2
    const/4 v3, 0x0

    .line 101
    .local v3, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildCount()I

    move-result v0

    .line 102
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 103
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 104
    .local v4, "v2":Landroid/view/View;
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v5

    .line 106
    .local v5, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v5, :cond_3

    .line 107
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    .line 109
    .local v2, "position":I
    if-lt v2, p2, :cond_3

    if-gt v2, p3, :cond_3

    .line 111
    invoke-virtual {p1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->checkInRange(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 112
    move-object v3, v4

    .line 113
    goto :goto_0

    .line 102
    .end local v2    # "position":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private static toSpanAlignedPosition(II)I
    .locals 1
    .param p0, "position"    # I
    .param p1, "spanCount"    # I

    .prologue
    const/4 v0, -0x1

    .line 301
    if-ne p0, v0, :cond_0

    .line 304
    :goto_0
    return v0

    :cond_0
    div-int v0, p0, p1

    mul-int/2addr v0, p1

    goto :goto_0
.end method

.method private updateDraggingItemPosition(FI)V
    .locals 4
    .param p1, "translationX"    # F
    .param p2, "translationY"    # I

    .prologue
    .line 350
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 353
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 354
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    .line 351
    invoke-static {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->setItemTranslation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;FF)V

    .line 356
    :cond_0
    return-void
.end method

.method private updateTranslationOffset()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 233
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 234
    .local v6, "rv":Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildCount()I

    move-result v1

    .line 235
    .local v1, "childCount":I
    if-lez v1, :cond_3

    .line 236
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v8

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationLeftLimit:I

    .line 237
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget v9, v9, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->width:I

    sub-int/2addr v8, v9

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationRightLimit:I

    .line 240
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v8

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationTopLimit:I

    .line 241
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v8

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget v9, v9, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->height:I

    sub-int/2addr v8, v9

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationBottomLimit:I

    .line 244
    iget-boolean v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mIsScrolling:Z

    if-nez v8, :cond_0

    .line 246
    invoke-static {v6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->findFirstVisibleItemPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v2

    .line 248
    .local v2, "firstVisiblePosition":I
    invoke-static {v6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->findLastVisibleItemPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v3

    .line 251
    .local v3, "lastVisiblePosition":I
    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mLayoutOrientation:I

    packed-switch v8, :pswitch_data_0

    .line 293
    .end local v2    # "firstVisiblePosition":I
    .end local v3    # "lastVisiblePosition":I
    :cond_0
    :goto_0
    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTouchPositionX:I

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget v9, v9, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->grabbedPositionX:I

    sub-int/2addr v8, v9

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationX:I

    .line 294
    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTouchPositionY:I

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget v9, v9, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->grabbedPositionY:I

    sub-int/2addr v8, v9

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationY:I

    .line 296
    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationX:I

    iget v9, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationLeftLimit:I

    iget v10, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationRightLimit:I

    invoke-static {v8, v9, v10}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->clip(III)I

    move-result v8

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationX:I

    .line 297
    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationY:I

    iget v9, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationTopLimit:I

    iget v10, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationBottomLimit:I

    invoke-static {v8, v9, v10}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->clip(III)I

    move-result v8

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationY:I

    .line 298
    return-void

    .line 253
    .restart local v2    # "firstVisiblePosition":I
    .restart local v3    # "lastVisiblePosition":I
    :pswitch_0
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    invoke-static {v6, v8, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->findRangeFirstItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;II)Landroid/view/View;

    move-result-object v7

    .line 255
    .local v7, "topChild":Landroid/view/View;
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    invoke-static {v6, v8, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->findRangeLastItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;II)Landroid/view/View;

    move-result-object v0

    .line 258
    .local v0, "bottomChild":Landroid/view/View;
    if-eqz v7, :cond_1

    .line 259
    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationBottomLimit:I

    .line 260
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    .line 259
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationTopLimit:I

    .line 263
    :cond_1
    if-eqz v0, :cond_0

    .line 264
    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationBottomLimit:I

    .line 265
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    .line 264
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationBottomLimit:I

    goto :goto_0

    .line 270
    .end local v0    # "bottomChild":Landroid/view/View;
    .end local v7    # "topChild":Landroid/view/View;
    :pswitch_1
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    invoke-static {v6, v8, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->findRangeFirstItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;II)Landroid/view/View;

    move-result-object v4

    .line 272
    .local v4, "leftChild":Landroid/view/View;
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    invoke-static {v6, v8, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->findRangeLastItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;II)Landroid/view/View;

    move-result-object v5

    .line 275
    .local v5, "rightChild":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 276
    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationLeftLimit:I

    .line 277
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 276
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationLeftLimit:I

    .line 280
    :cond_2
    if-eqz v5, :cond_0

    .line 281
    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationRightLimit:I

    .line 282
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 281
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationRightLimit:I

    goto :goto_0

    .line 289
    .end local v2    # "firstVisiblePosition":I
    .end local v3    # "lastVisiblePosition":I
    .end local v4    # "leftChild":Landroid/view/View;
    .end local v5    # "rightChild":Landroid/view/View;
    :cond_3
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v8

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationLeftLimit:I

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationRightLimit:I

    .line 290
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v8

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationTopLimit:I

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationBottomLimit:I

    goto/16 :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public finish(Z)V
    .locals 5
    .param p1, "animate"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 163
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mStarted:Z

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V

    .line 167
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getItemAnimator()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 168
    .local v0, "itemAnimator":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->endAnimations()V

    .line 171
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->stopScroll()V

    .line 174
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationX:I

    int-to-float v1, v1

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationY:I

    invoke-direct {p0, v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->updateDraggingItemPosition(FI)V

    .line 175
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v1, :cond_2

    .line 176
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->moveToDefaultPosition(Landroid/view/View;Z)V

    .line 180
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v1, :cond_3

    .line 181
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_3
    iput-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 185
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 186
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 187
    iput-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemImage:Landroid/graphics/Bitmap;

    .line 190
    :cond_4
    iput-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRange:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    .line 191
    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationX:I

    .line 192
    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationY:I

    .line 193
    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationLeftLimit:I

    .line 194
    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationRightLimit:I

    .line 195
    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationTopLimit:I

    .line 196
    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationBottomLimit:I

    .line 197
    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRecyclerViewPaddingLeft:I

    .line 198
    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTouchPositionX:I

    .line 199
    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTouchPositionY:I

    .line 200
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mStarted:Z

    .line 201
    return-void
.end method

.method public getDraggingItemTranslationX()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationX:I

    return v0
.end method

.method public getDraggingItemTranslationY()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationY:I

    return v0
.end method

.method public getTranslatedItemPositionBottom()I
    .locals 2

    .prologue
    .line 372
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationY:I

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget v1, v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTranslatedItemPositionLeft()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationX:I

    return v0
.end method

.method public getTranslatedItemPositionRight()I
    .locals 2

    .prologue
    .line 380
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationX:I

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget v1, v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->width:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTranslatedItemPositionTop()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationY:I

    return v0
.end method

.method public invalidateDraggingItem()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 384
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 386
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 387
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 390
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 391
    return-void
.end method

.method public isReachedToBottomLimit()Z
    .locals 2

    .prologue
    .line 312
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationY:I

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationBottomLimit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReachedToLeftLimit()Z
    .locals 2

    .prologue
    .line 316
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationX:I

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationLeftLimit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReachedToRightLimit()Z
    .locals 2

    .prologue
    .line 320
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationX:I

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationRightLimit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReachedToTopLimit()Z
    .locals 2

    .prologue
    .line 308
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationY:I

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationTopLimit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 129
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 130
    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationX:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    iget-object v3, v3, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;->margins:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 132
    .local v0, "left":F
    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationY:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 133
    .local v1, "top":F
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 135
    .end local v0    # "left":F
    .end local v1    # "top":F
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 210
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->updateTranslationOffset()V

    .line 211
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationX:I

    int-to-float v0, v0

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationY:I

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->updateDraggingItemPosition(FI)V

    .line 213
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 214
    return-void
.end method

.method public setDraggingItemViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 394
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 395
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A new view holder is attempt to be assigned before invalidating the older one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_0
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 401
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 402
    return-void
.end method

.method public setIsScrolling(Z)V
    .locals 1
    .param p1, "isScrolling"    # Z

    .prologue
    .line 359
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mIsScrolling:Z

    if-ne v0, p1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mIsScrolling:Z

    goto :goto_0
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/NinePatchDrawable;)V
    .locals 2
    .param p1, "shadowDrawable"    # Landroid/graphics/drawable/NinePatchDrawable;

    .prologue
    .line 217
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 219
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mShadowPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 222
    :cond_0
    return-void
.end method

.method public start(Landroid/view/MotionEvent;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "draggingItemInfo"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    .prologue
    .line 138
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mStarted:Z

    if-eqz v1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v0, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 144
    .local v0, "itemView":Landroid/view/View;
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemInfo:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemInfo;

    .line 145
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->createDraggingItemImage(Landroid/view/View;Landroid/graphics/drawable/NinePatchDrawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mDraggingItemImage:Landroid/graphics/Bitmap;

    .line 147
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationLeftLimit:I

    .line 148
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTranslationTopLimit:I

    .line 149
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRecyclerViewPaddingLeft:I

    .line 150
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getOrientation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mLayoutOrientation:I

    .line 153
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->update(Landroid/view/MotionEvent;)V

    .line 157
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V

    .line 159
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mStarted:Z

    goto :goto_0
.end method

.method public update(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTouchPositionX:I

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->mTouchPositionY:I

    .line 206
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggingItemDecorator;->refresh()V

    .line 207
    return-void
.end method
