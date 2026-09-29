.class public Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;
.super Ljava/lang/Object;
.source "BaseRecyclerViewFastScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;
    }
.end annotation


# static fields
.field private static final MAX_TRACK_ALPHA:I = 0x1e

.field private static final SCROLL_BAR_VIS_DURATION:I = 0x96


# instance fields
.field private mCanThumbDetach:Z

.field private mContext:Landroid/content/Context;

.field private mIgnoreDragGesture:Z

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mIsDragging:Z

.field private mIsThumbDetached:Z

.field private mLastTouchY:F

.field private mPathTopMargin:I

.field private mPopup:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;

.field mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

.field private mScrollbarAnimator:Landroid/animation/AnimatorSet;

.field private mThumbActiveColor:I

.field private mThumbCurvature:I

.field mThumbHeight:I

.field private mThumbInactiveColor:I

.field private mThumbMaxWidth:I

.field private mThumbMinWidth:I

.field mThumbOffset:Landroid/graphics/Point;

.field mThumbPaint:Landroid/graphics/Paint;

.field private mThumbPath:Landroid/graphics/Path;

.field mThumbWidth:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchInset:I

.field private mTouchOffset:I

.field private mTrackPaint:Landroid/graphics/Paint;

.field private mTrackWidth:I


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/BaseRecyclerView;Landroid/content/Context;)V
    .locals 3
    .param p1, "rv"    # Lnet/oneplus/h2launcher/BaseRecyclerView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    .line 65
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    .line 81
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    .line 84
    iput-object p2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mContext:Landroid/content/Context;

    .line 85
    iput-object p1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    .line 86
    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;

    invoke-direct {v1, p1, v0}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;-><init>(Lnet/oneplus/h2launcher/BaseRecyclerView;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mPopup:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;

    .line 88
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v2}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getFastScrollerTrackColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 91
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->updateColors()V

    .line 94
    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    const v1, 0x7f0c01e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbMinWidth:I

    iput v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    .line 96
    const v1, 0x7f0c01e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    .line 97
    const v1, 0x7f0c01e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    .line 98
    iget v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    iget v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbMinWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    .line 99
    const v1, 0x7f0c01e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTouchInset:I

    .line 100
    return-void
.end method

.method private animateScrollbar(Z)V
    .locals 9
    .param p1, "isScrolling"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 270
    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 271
    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 274
    :cond_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    .line 275
    const-string v4, "trackWidth"

    new-array v5, v7, [I

    if-eqz p1, :cond_2

    iget v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    :goto_0
    aput v3, v5, v6

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 277
    .local v2, "trackWidthAnim":Landroid/animation/ObjectAnimator;
    const-string v4, "thumbWidth"

    new-array v5, v7, [I

    if-eqz p1, :cond_3

    iget v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    :goto_1
    aput v3, v5, v6

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 279
    .local v1, "thumbWidthAnim":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    new-array v4, v8, [Landroid/animation/Animator;

    aput-object v2, v4, v6

    aput-object v1, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 280
    iget v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbActiveColor:I

    iget v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    if-eq v3, v4, :cond_1

    .line 281
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    .line 282
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    if-eqz p1, :cond_4

    iget v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbActiveColor:I

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v7

    .line 281
    invoke-static {v4, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 283
    .local v0, "colorAnimation":Landroid/animation/ValueAnimator;
    new-instance v3, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$1;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$1;-><init>(Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 291
    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 293
    .end local v0    # "colorAnimation":Landroid/animation/ValueAnimator;
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 294
    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 295
    return-void

    .line 275
    .end local v1    # "thumbWidthAnim":Landroid/animation/ObjectAnimator;
    .end local v2    # "trackWidthAnim":Landroid/animation/ObjectAnimator;
    :cond_2
    iget v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbMinWidth:I

    goto :goto_0

    .line 277
    .restart local v2    # "trackWidthAnim":Landroid/animation/ObjectAnimator;
    :cond_3
    iget v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbMinWidth:I

    goto :goto_1

    .line 282
    .restart local v1    # "thumbWidthAnim":Landroid/animation/ObjectAnimator;
    :cond_4
    iget v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    goto :goto_2
.end method

.method private isNearThumb(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 318
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTouchInset:I

    iget v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTouchInset:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 319
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private updateThumbPath()V
    .locals 7

    .prologue
    .line 301
    iget v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    iget v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    .line 302
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 303
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 304
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 305
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 306
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 309
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 310
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 251
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_2

    .line 257
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mPathTopMargin:I

    int-to-float v2, v0

    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    .line 258
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 257
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 260
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 263
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mPopup:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getLastTouchY()F
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mLastTouchY:F

    return v0
.end method

.method public getThumbHeight()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    return v0
.end method

.method public getThumbMaxWidth()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    return v0
.end method

.method public getThumbOffset()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getThumbWidth()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    return v0
.end method

.method public getTrackWidth()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTrackWidth:I

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;III)V
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "downX"    # I
    .param p3, "downY"    # I
    .param p4, "lastY"    # I

    .prologue
    .line 198
    iget-object v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 200
    .local v3, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 201
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 202
    .local v6, "y":I
    packed-switch v0, :pswitch_data_0

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 204
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->isNearThumb(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 205
    iget-object v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int v7, p3, v7

    iput v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    goto :goto_0

    .line 211
    :pswitch_1
    iget-boolean v8, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    sub-int v7, v6, p3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v9

    if-le v7, v9, :cond_3

    const/4 v7, 0x1

    :goto_1
    or-int/2addr v7, v8

    iput-boolean v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    .line 212
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    if-nez v7, :cond_2

    invoke-direct {p0, p2, p4}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->isNearThumb(II)Z

    move-result v7

    if-eqz v7, :cond_2

    sub-int v7, v6, p3

    .line 213
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    if-le v7, v8, :cond_2

    .line 214
    iget-object v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 215
    const/4 v7, 0x1

    iput-boolean v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    .line 216
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mCanThumbDetach:Z

    if-eqz v7, :cond_1

    .line 217
    const/4 v7, 0x1

    iput-boolean v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mIsThumbDetached:Z

    .line 219
    :cond_1
    iget v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    sub-int v8, p4, p3

    add-int/2addr v7, v8

    iput v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    .line 220
    iget-object v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mPopup:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->animateVisibility(Z)V

    .line 221
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->animateScrollbar(Z)V

    .line 223
    :cond_2
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    if-eqz v7, :cond_0

    .line 225
    iget-object v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getBackgroundPadding()Landroid/graphics/Rect;

    move-result-object v7

    iget v5, v7, Landroid/graphics/Rect;->top:I

    .line 226
    .local v5, "top":I
    iget-object v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getBackgroundPadding()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    iget v8, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    sub-int v1, v7, v8

    .line 227
    .local v1, "bottom":I
    iget v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    sub-int v7, v6, v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v2, v7

    .line 228
    .local v2, "boundedY":F
    iget-object v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    int-to-float v8, v5

    sub-float v8, v2, v8

    sub-int v9, v1, v5

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lnet/oneplus/h2launcher/BaseRecyclerView;->scrollToPositionAtProgress(F)Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "sectionName":Ljava/lang/String;
    iget-object v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mPopup:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {v7, v4}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->setSectionName(Ljava/lang/String;)V

    .line 231
    iget-object v8, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mPopup:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v8, v7}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->animateVisibility(Z)V

    .line 232
    iget-object v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    iget-object v8, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mPopup:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;

    iget-object v9, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    invoke-virtual {v8, v9, p4}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->updateFastScrollerBounds(Lnet/oneplus/h2launcher/BaseRecyclerView;I)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/oneplus/h2launcher/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 233
    iput v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mLastTouchY:F

    goto/16 :goto_0

    .line 211
    .end local v1    # "bottom":I
    .end local v2    # "boundedY":F
    .end local v4    # "sectionName":Ljava/lang/String;
    .end local v5    # "top":I
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 231
    .restart local v1    # "bottom":I
    .restart local v2    # "boundedY":F
    .restart local v4    # "sectionName":Ljava/lang/String;
    .restart local v5    # "top":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 238
    .end local v1    # "bottom":I
    .end local v2    # "boundedY":F
    .end local v4    # "sectionName":Ljava/lang/String;
    .end local v5    # "top":I
    :pswitch_2
    const/4 v7, 0x0

    iput v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    .line 239
    const/4 v7, 0x0

    iput v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mLastTouchY:F

    .line 240
    const/4 v7, 0x0

    iput-boolean v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    .line 241
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    if-eqz v7, :cond_0

    .line 242
    const/4 v7, 0x0

    iput-boolean v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    .line 243
    iget-object v7, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mPopup:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->animateVisibility(Z)V

    .line 244
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->animateScrollbar(Z)V

    goto/16 :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isDraggingThumb()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    return v0
.end method

.method public isThumbDetached()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mIsThumbDetached:Z

    return v0
.end method

.method public reattachThumbToScroll()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mIsThumbDetached:Z

    .line 120
    return-void
.end method

.method public setDarkMode(Z)V
    .locals 0
    .param p1, "darkMode"    # Z

    .prologue
    .line 103
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->updateColors()V

    .line 104
    return-void
.end method

.method public setDetachThumbOnFastScroll()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mCanThumbDetach:Z

    .line 116
    return-void
.end method

.method public setPathTopMargin(I)V
    .locals 0
    .param p1, "pathTopMargin"    # I

    .prologue
    .line 170
    iput p1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mPathTopMargin:I

    .line 171
    return-void
.end method

.method public setThumbOffset(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_0

    .line 133
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 128
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 129
    invoke-direct {p0}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->updateThumbPath()V

    .line 130
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 132
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setThumbWidth(I)V
    .locals 6
    .param p1, "width"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 143
    iput p1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    .line 144
    invoke-direct {p0}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->updateThumbPath()V

    .line 145
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 147
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 148
    return-void
.end method

.method public setTrackWidth(I)V
    .locals 5
    .param p1, "width"    # I

    .prologue
    const/4 v4, 0x0

    .line 156
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    .line 157
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getHeight()I

    move-result v3

    .line 156
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 158
    iput p1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mTrackWidth:I

    .line 159
    invoke-direct {p0}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->updateThumbPath()V

    .line 160
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    .line 161
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getHeight()I

    move-result v3

    .line 160
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 162
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 163
    return-void
.end method

.method public updateColors()V
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mContext:Landroid/content/Context;

    const v2, 0x7f0e020b

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 108
    .local v0, "color":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/BaseRecyclerView;->getFastScrollerThumbInactiveColor(I)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    .line 109
    iput v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbActiveColor:I

    .line 110
    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    iget v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mPopup:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollPopup;->setBackgroundColor(I)V

    .line 112
    return-void
.end method
