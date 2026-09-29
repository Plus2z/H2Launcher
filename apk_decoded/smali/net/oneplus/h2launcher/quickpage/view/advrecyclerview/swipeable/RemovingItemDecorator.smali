.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;
.source "RemovingItemDecorator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator$DelayedNotificationRunner;
    }
.end annotation


# static fields
.field private static final ADDITIONAL_REMOVE_DURATION:J = 0x0L

.field private static final NOTIFY_REMOVAL_EFFECT_END:I = 0x1

.field private static final NOTIFY_REMOVAL_EFFECT_PHASE_1:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RemovingItemDecorator"


# instance fields
.field private mHorizontal:Z

.field private mMoveAnimationDuration:J

.field private mMoveAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mPendingNotificationMask:I

.field private mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field private mRemoveAnimationDuration:J

.field private mStartTime:J

.field private mSwipeBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field private mSwipingItemBounds:Landroid/graphics/Rect;

.field private mSwipingItemId:J

.field private mTranslationX:I

.field private mTranslationY:I


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IJJ)V
    .locals 6
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "swipingItem"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "result"    # I
    .param p4, "removeAnimationDuration"    # J
    .param p6, "moveAnimationDuration"    # J

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 57
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;-><init>()V

    .line 44
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mSwipingItemBounds:Landroid/graphics/Rect;

    .line 54
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mPendingNotificationMask:I

    .line 58
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 59
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 60
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mSwipingItemId:J

    .line 61
    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    const/4 v1, 0x4

    if-ne p3, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mHorizontal:Z

    .line 64
    const-wide/16 v0, 0x0

    add-long/2addr v0, p4

    iput-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mRemoveAnimationDuration:J

    .line 65
    iput-wide p6, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mMoveAnimationDuration:J

    .line 66
    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mTranslationX:I

    .line 67
    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mTranslationY:I

    .line 69
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mSwipingItemBounds:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/CustomRecyclerViewUtils;->getViewBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 70
    return-void
.end method

.method private determineBackgroundScaleSwipeCompletedSuccessfully(J)F
    .locals 7
    .param p1, "elapsedTime"    # J

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "heightScale":F
    iget-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mRemoveAnimationDuration:J

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 103
    const/high16 v0, 0x3f800000    # 1.0f

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    iget-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mRemoveAnimationDuration:J

    iget-wide v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mMoveAnimationDuration:J

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 105
    iget-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mMoveAnimationDuration:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 106
    const/high16 v1, 0x3f800000    # 1.0f

    iget-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mRemoveAnimationDuration:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    iget-wide v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mMoveAnimationDuration:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 108
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mMoveAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mMoveAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0
.end method

.method private fillSwipingItemBackground(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F

    .prologue
    .line 118
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mSwipingItemBounds:Landroid/graphics/Rect;

    .line 119
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mTranslationX:I

    .line 120
    .local v4, "translationX":I
    iget v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mTranslationY:I

    .line 121
    .local v5, "translationY":I
    iget-boolean v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mHorizontal:Z

    if-eqz v8, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 122
    .local v1, "hScale":F
    :goto_0
    iget-boolean v8, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mHorizontal:Z

    if-eqz v8, :cond_2

    move v6, p3

    .line 124
    .local v6, "vScale":F
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v1

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v7, v8

    .line 125
    .local v7, "width":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v2, v8

    .line 127
    .local v2, "height":I
    if-eqz v2, :cond_0

    if-eqz v7, :cond_0

    if-nez p2, :cond_3

    .line 149
    :cond_0
    :goto_2
    return-void

    .end local v1    # "hScale":F
    .end local v2    # "height":I
    .end local v6    # "vScale":F
    .end local v7    # "width":I
    :cond_1
    move v1, p3

    .line 121
    goto :goto_0

    .line 122
    .restart local v1    # "hScale":F
    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    .line 131
    .restart local v2    # "height":I
    .restart local v6    # "vScale":F
    .restart local v7    # "width":I
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 133
    .local v3, "savedCount":I
    iget v8, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v4

    iget v9, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v5

    iget v10, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v4

    add-int/2addr v10, v7

    iget v11, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v5

    add-int/2addr v11, v2

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 141
    iget v8, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v4

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v9, v7

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v5

    .line 143
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    sub-int/2addr v10, v2

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    int-to-float v9, v9

    .line 141
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 144
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {p2, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 148
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2
.end method

.method private finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V

    .line 208
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->postInvalidateOnAnimation()V

    .line 210
    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 211
    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mTranslationY:I

    .line 213
    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mMoveAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 214
    return-void
.end method

.method protected static getElapsedTime(J)J
    .locals 4
    .param p0, "initialTime"    # J

    .prologue
    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 218
    .local v0, "curTime":J
    cmp-long v2, v0, p0

    if-ltz v2, :cond_0

    sub-long v2, v0, p0

    :goto_0
    return-wide v2

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private notifyDelayed(IJ)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "delay"    # J

    .prologue
    .line 172
    const/4 v2, 0x1

    shl-int v0, v2, p1

    .line 174
    .local v0, "mask":I
    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mPendingNotificationMask:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 182
    :goto_0
    return-void

    .line 178
    :cond_0
    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mPendingNotificationMask:I

    or-int/2addr v2, v0

    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mPendingNotificationMask:I

    .line 180
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator$DelayedNotificationRunner;

    invoke-direct {v1, p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator$DelayedNotificationRunner;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;I)V

    .line 181
    .local v1, "notification":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator$DelayedNotificationRunner;
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v2, v1, p2, p3}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private postInvalidateOnAnimation()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method private requiresContinuousAnimationAfterSwipeCompletedSuccessfully(J)Z
    .locals 5
    .param p1, "elapsedTime"    # J

    .prologue
    .line 95
    iget-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mRemoveAnimationDuration:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mRemoveAnimationDuration:J

    iget-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mMoveAnimationDuration:J

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method onDelayedNotification(I)V
    .locals 7
    .param p1, "code"    # I

    .prologue
    const/4 v6, 0x1

    .line 185
    shl-int v2, v6, p1

    .line 186
    .local v2, "mask":I
    iget-wide v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mStartTime:J

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->getElapsedTime(J)J

    move-result-wide v0

    .line 188
    .local v0, "elapsedTime":J
    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mPendingNotificationMask:I

    xor-int/lit8 v4, v2, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mPendingNotificationMask:I

    .line 190
    packed-switch p1, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget-wide v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mRemoveAnimationDuration:J

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 193
    const/4 v3, 0x0

    iget-wide v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mRemoveAnimationDuration:J

    sub-long/2addr v4, v0

    invoke-direct {p0, v3, v4, v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->notifyDelayed(IJ)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->postInvalidateOnAnimation()V

    .line 197
    iget-wide v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mMoveAnimationDuration:J

    invoke-direct {p0, v6, v4, v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->notifyDelayed(IJ)V

    goto :goto_0

    .line 201
    :pswitch_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->finish()V

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    .line 78
    iget-wide v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mStartTime:J

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->getElapsedTime(J)J

    move-result-wide v0

    .line 80
    .local v0, "elapsedTime":J
    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->determineBackgroundScaleSwipeCompletedSuccessfully(J)F

    move-result v2

    .line 82
    .local v2, "scale":F
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mSwipeBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v3, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->fillSwipingItemBackground(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V

    .line 84
    iget-wide v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mSwipingItemId:J

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 85
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v3

    add-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mTranslationX:I

    .line 86
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v3

    add-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mTranslationY:I

    .line 89
    :cond_0
    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->requiresContinuousAnimationAfterSwipeCompletedSuccessfully(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->postInvalidateOnAnimation()V

    .line 92
    :cond_1
    return-void
.end method

.method public setMoveAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 73
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mMoveAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 74
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 156
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;

    .line 157
    invoke-interface {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;->getSwipeableContainerView()Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, "containerView":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 161
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mStartTime:J

    .line 164
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mTranslationY:I

    .line 165
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mSwipingItem:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mSwipeBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 167
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->postInvalidateOnAnimation()V

    .line 168
    const/4 v1, 0x0

    iget-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->mRemoveAnimationDuration:J

    invoke-direct {p0, v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->notifyDelayed(IJ)V

    .line 169
    return-void
.end method
