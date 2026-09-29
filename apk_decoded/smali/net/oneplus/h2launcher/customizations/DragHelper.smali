.class public Lnet/oneplus/h2launcher/customizations/DragHelper;
.super Ljava/lang/Object;
.source "DragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private final mMaxVelocity:F

.field private final mMinVelocity:F

.field private mParentView:Landroid/view/ViewGroup;

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/Scroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lnet/oneplus/h2launcher/customizations/DragHelper$1;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/customizations/DragHelper$1;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/DragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v1, Lnet/oneplus/h2launcher/customizations/DragHelper$2;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/customizations/DragHelper$2;-><init>(Lnet/oneplus/h2launcher/customizations/DragHelper;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 42
    const/4 v1, -0x1

    iput v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mActivePointerId:I

    .line 52
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCallback:Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;

    .line 53
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 54
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mTouchSlop:I

    .line 55
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mMaxVelocity:F

    .line 56
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mMinVelocity:F

    .line 57
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lnet/oneplus/h2launcher/customizations/DragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mScroller:Landroid/widget/Scroller;

    .line 58
    return-void
.end method

.method private checkTouchSlop(Landroid/view/View;F)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dy"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 263
    if-nez p1, :cond_0

    .line 268
    :goto_0
    return v2

    .line 267
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCallback:Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;

    invoke-virtual {v3, p1}, Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_1

    move v0, v1

    .line 268
    .local v0, "checkVertical":Z
    :goto_1
    if-eqz v0, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    :goto_2
    move v2, v1

    goto :goto_0

    .end local v0    # "checkVertical":Z
    :cond_1
    move v0, v2

    .line 267
    goto :goto_1

    .restart local v0    # "checkVertical":Z
    :cond_2
    move v1, v2

    .line 268
    goto :goto_2
.end method

.method private clampMag(FFF)F
    .locals 3
    .param p1, "value"    # F
    .param p2, "absMin"    # F
    .param p3, "absMax"    # F

    .prologue
    const/4 v1, 0x0

    .line 350
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 351
    .local v0, "absValue":F
    cmpg-float v2, v0, p2

    if-gez v2, :cond_1

    move p3, v1

    .line 353
    .end local p3    # "absMax":F
    :cond_0
    :goto_0
    return p3

    .line 352
    .restart local p3    # "absMax":F
    :cond_1
    cmpl-float v2, v0, p3

    if-lez v2, :cond_2

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_0

    neg-float p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 353
    goto :goto_0
.end method

.method private clampMag(III)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "absMin"    # I
    .param p3, "absMax"    # I

    .prologue
    .line 343
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 344
    .local v0, "absValue":I
    if-ge v0, p2, :cond_1

    const/4 p3, 0x0

    .line 346
    .end local p3    # "absMax":I
    :cond_0
    :goto_0
    return p3

    .line 345
    .restart local p3    # "absMax":I
    :cond_1
    if-le v0, p3, :cond_2

    if-gtz p1, :cond_0

    neg-int p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 346
    goto :goto_0
.end method

.method private clearMotionHistory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 257
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 258
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 259
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_0
.end method

.method private computeAxisDuration(III)I
    .locals 10
    .param p1, "delta"    # I
    .param p2, "velocity"    # I
    .param p3, "motionRange"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 475
    if-nez p1, :cond_0

    .line 476
    const/4 v6, 0x0

    .line 493
    :goto_0
    return v6

    .line 479
    :cond_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 480
    .local v5, "width":I
    div-int/lit8 v3, v5, 0x2

    .line 481
    .local v3, "halfWidth":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 482
    .local v1, "distanceRatio":F
    int-to-float v6, v3

    int-to-float v7, v3

    .line 483
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/customizations/DragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .line 486
    .local v0, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 487
    if-lez p2, :cond_1

    .line 488
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v2, v6, 0x4

    .line 493
    .local v2, "duration":I
    :goto_1
    const/16 v6, 0x258

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    .line 490
    .end local v2    # "duration":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p3

    div-float v4, v6, v7

    .line 491
    .local v4, "range":F
    add-float v6, v4, v9

    const/high16 v7, 0x43800000    # 256.0f

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .restart local v2    # "duration":I
    goto :goto_1
.end method

.method private computeSettleDuration(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dy"    # I
    .param p3, "yVel"    # I

    .prologue
    .line 470
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mMinVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p3, v0, p3}, Lnet/oneplus/h2launcher/customizations/DragHelper;->clampMag(III)I

    move-result p3

    .line 471
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCallback:Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Lnet/oneplus/h2launcher/customizations/DragHelper;->computeAxisDuration(III)I

    move-result v0

    return v0
.end method

.method public static create(Landroid/view/ViewGroup;FLnet/oneplus/h2launcher/customizations/DragHelper$Callback;)Lnet/oneplus/h2launcher/customizations/DragHelper;
    .locals 3
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "sensitivity"    # F
    .param p2, "cb"    # Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;

    .prologue
    .line 67
    invoke-static {p0, p2}, Lnet/oneplus/h2launcher/customizations/DragHelper;->create(Landroid/view/ViewGroup;Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;)Lnet/oneplus/h2launcher/customizations/DragHelper;

    move-result-object v0

    .line 68
    .local v0, "helper":Lnet/oneplus/h2launcher/customizations/DragHelper;
    iget v1, v0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mTouchSlop:I

    .line 69
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;)Lnet/oneplus/h2launcher/customizations/DragHelper;
    .locals 2
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "callback"    # Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;

    .prologue
    .line 61
    new-instance v0, Lnet/oneplus/h2launcher/customizations/DragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/oneplus/h2launcher/customizations/DragHelper;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;)V

    .line 62
    .local v0, "dragHelper":Lnet/oneplus/h2launcher/customizations/DragHelper;
    iput-object p0, v0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 63
    return-object v0
.end method

.method private dispatchViewReleased(F)V
    .locals 4
    .param p1, "yVel"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 365
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mReleaseInProgress:Z

    .line 366
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCallback:Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;->onViewReleased(Landroid/view/View;F)V

    .line 367
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mReleaseInProgress:Z

    .line 369
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mDragState:I

    if-ne v0, v3, :cond_0

    .line 371
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/customizations/DragHelper;->setDragState(I)V

    .line 373
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 497
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 498
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 499
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private dragTo(Landroid/view/View;II)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 327
    move v1, p2

    .line 328
    .local v1, "clampedY":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 330
    .local v2, "oldTop":I
    if-eqz p3, :cond_0

    .line 331
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCallback:Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;

    invoke-virtual {v3, p1, p2}, Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;I)I

    move-result v1

    .line 332
    sub-int v0, v1, v2

    .line 333
    .local v0, "clampedDy":I
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 336
    .end local v0    # "clampedDy":I
    :cond_0
    if-eqz p3, :cond_1

    .line 337
    sub-int v0, v1, v2

    .line 338
    .restart local v0    # "clampedDy":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCallback:Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;

    invoke-virtual {v3, p1, v1, v0}, Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;->onViewPositionChanged(Landroid/view/View;II)V

    .line 340
    .end local v0    # "clampedDy":I
    :cond_1
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 7
    .param p1, "pointerId"    # I

    .prologue
    const/4 v6, 0x0

    .line 211
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionX:[F

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionX:[F

    array-length v4, v4

    if-gt v4, p1, :cond_2

    .line 212
    :cond_0
    add-int/lit8 v4, p1, 0x1

    new-array v0, v4, [F

    .line 213
    .local v0, "imx":[F
    add-int/lit8 v4, p1, 0x1

    new-array v1, v4, [F

    .line 214
    .local v1, "imy":[F
    add-int/lit8 v4, p1, 0x1

    new-array v2, v4, [F

    .line 215
    .local v2, "lmx":[F
    add-int/lit8 v4, p1, 0x1

    new-array v3, v4, [F

    .line 217
    .local v3, "lmy":[F
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionX:[F

    if-eqz v4, :cond_1

    .line 218
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionX:[F

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionX:[F

    array-length v5, v5

    invoke-static {v4, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionY:[F

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionY:[F

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mLastMotionX:[F

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mLastMotionX:[F

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mLastMotionY:[F

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mLastMotionY:[F

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    :cond_1
    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionX:[F

    .line 225
    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionY:[F

    .line 226
    iput-object v2, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mLastMotionX:[F

    .line 227
    iput-object v3, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mLastMotionY:[F

    .line 229
    .end local v0    # "imx":[F
    .end local v1    # "imy":[F
    .end local v2    # "lmx":[F
    .end local v3    # "lmy":[F
    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(II)Z
    .locals 8
    .param p1, "finalTop"    # I
    .param p2, "yVel"    # I

    .prologue
    const/4 v3, 0x0

    .line 444
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCapturedView:Landroid/view/View;

    const v7, 0x7f1100ca

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 445
    .local v6, "card":Landroid/view/View;
    if-nez v6, :cond_0

    .line 446
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 447
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/customizations/DragHelper;->setDragState(I)V

    .line 466
    :goto_0
    return v3

    .line 451
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 452
    .local v1, "startLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 453
    .local v2, "startTop":I
    sub-int v4, p1, v2

    .line 455
    .local v4, "dy":I
    if-nez v4, :cond_1

    .line 457
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 458
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/customizations/DragHelper;->setDragState(I)V

    goto :goto_0

    .line 462
    :cond_1
    invoke-direct {p0, v6, v4, p2}, Lnet/oneplus/h2launcher/customizations/DragHelper;->computeSettleDuration(Landroid/view/View;II)I

    move-result v5

    .line 463
    .local v5, "duration":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 465
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/DragHelper;->setDragState(I)V

    .line 466
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private releaseViewForPointerUp()V
    .locals 4

    .prologue
    .line 357
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mMaxVelocity:F

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 358
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mActivePointerId:I

    .line 359
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mMinVelocity:F

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mMaxVelocity:F

    .line 358
    invoke-direct {p0, v1, v2, v3}, Lnet/oneplus/h2launcher/customizations/DragHelper;->clampMag(FFF)F

    move-result v0

    .line 361
    .local v0, "yVel":F
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/customizations/DragHelper;->dispatchViewReleased(F)V

    .line 362
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 232
    invoke-direct {p0, p3}, Lnet/oneplus/h2launcher/customizations/DragHelper;->ensureMotionHistorySizeForId(I)V

    .line 233
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 234
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 235
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 239
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 240
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 241
    .local v2, "pointerId":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 242
    .local v3, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 244
    .local v4, "y":F
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mLastMotionX:[F

    if-eqz v5, :cond_0

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mLastMotionY:[F

    if-eqz v5, :cond_0

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mLastMotionX:[F

    array-length v5, v5

    if-le v5, v2, :cond_0

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mLastMotionY:[F

    array-length v5, v5

    if-le v5, v2, :cond_0

    .line 246
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 247
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    .line 239
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 503
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mActivePointerId:I

    .line 504
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/DragHelper;->clearMotionHistory()V

    .line 506
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 510
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCapturedView:Landroid/view/View;

    .line 291
    iput p2, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mActivePointerId:I

    .line 292
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/DragHelper;->setDragState(I)V

    .line 293
    return-void
.end method

.method public continueSettling(Z)Z
    .locals 9
    .param p1, "deferCallbacks"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 378
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCapturedView:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCapturedView:Landroid/view/View;

    const v7, 0x7f1100ca

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "card":Landroid/view/View;
    if-nez v0, :cond_2

    .end local v0    # "card":Landroid/view/View;
    :cond_0
    move v4, v5

    .line 413
    :cond_1
    :goto_0
    return v4

    .line 381
    .restart local v0    # "card":Landroid/view/View;
    :cond_2
    iget v6, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mDragState:I

    if-ne v6, v8, :cond_6

    .line 382
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    .line 383
    .local v2, "keepGoing":Z
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 384
    .local v3, "y":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v1, v3, v6

    .line 386
    .local v1, "dy":I
    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 388
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setTop(I)V

    goto :goto_0

    .line 392
    :cond_3
    if-eqz v1, :cond_4

    .line 393
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 394
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCallback:Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;

    invoke-virtual {v6, v0, v3, v1}, Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;->onViewPositionChanged(Landroid/view/View;II)V

    .line 397
    :cond_4
    if-eqz v2, :cond_5

    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getFinalY()I

    move-result v6

    if-ne v3, v6, :cond_5

    .line 400
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 401
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    .line 404
    :cond_5
    if-nez v2, :cond_6

    .line 405
    if-eqz p1, :cond_7

    .line 406
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 413
    .end local v1    # "dy":I
    .end local v2    # "keepGoing":Z
    .end local v3    # "y":I
    :cond_6
    :goto_1
    iget v6, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mDragState:I

    if-eq v6, v8, :cond_1

    move v4, v5

    goto :goto_0

    .line 408
    .restart local v1    # "dy":I
    .restart local v2    # "keepGoing":Z
    .restart local v3    # "y":I
    :cond_7
    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/customizations/DragHelper;->setDragState(I)V

    goto :goto_1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 305
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 306
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 307
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 308
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 313
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 306
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 313
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mTouchSlop:I

    return v0
.end method

.method public isDragging()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 517
    iget v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mDragState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x1

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 136
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/DragHelper;->cancel()V

    .line 142
    :cond_0
    iget-object v11, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_1

    .line 143
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 145
    :cond_1
    iget-object v11, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 147
    packed-switch v0, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 149
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 150
    .local v9, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 151
    .local v10, "y":F
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 152
    .local v7, "pointerId":I
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lnet/oneplus/h2launcher/customizations/DragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 154
    .local v8, "toCapture":Landroid/view/View;
    invoke-direct {p0, v9, v10, v7}, Lnet/oneplus/h2launcher/customizations/DragHelper;->saveInitialMotion(FFI)V

    .line 159
    invoke-virtual {p0, v8, v7}, Lnet/oneplus/h2launcher/customizations/DragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_0

    .line 164
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_1
    iget v11, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mDragState:I

    if-ne v11, v12, :cond_3

    .line 165
    iget v11, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mActivePointerId:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 166
    .local v5, "index":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 167
    .restart local v10    # "y":F
    iget-object v11, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mLastMotionY:[F

    iget v12, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mActivePointerId:I

    aget v11, v11, v12

    sub-float v11, v10, v11

    float-to-int v4, v11

    .line 169
    .local v4, "idy":I
    iget-object v11, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCapturedView:Landroid/view/View;

    const v12, 0x7f1100ca

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 170
    .local v1, "card":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 171
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    add-int/2addr v11, v4

    invoke-direct {p0, v1, v11, v4}, Lnet/oneplus/h2launcher/customizations/DragHelper;->dragTo(Landroid/view/View;II)V

    .line 173
    :cond_2
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/DragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 176
    .end local v1    # "card":Landroid/view/View;
    .end local v4    # "idy":I
    .end local v5    # "index":I
    .end local v10    # "y":F
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 177
    .local v6, "pointerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_4

    .line 178
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 179
    .restart local v7    # "pointerId":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 180
    .restart local v10    # "y":F
    iget-object v11, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionY:[F

    aget v11, v11, v7

    sub-float v2, v10, v11

    .line 182
    .local v2, "dy":F
    iget-object v11, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionX:[F

    aget v11, v11, v7

    float-to-int v11, v11

    iget-object v12, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionY:[F

    aget v12, v12, v7

    float-to-int v12, v12

    invoke-virtual {p0, v11, v12}, Lnet/oneplus/h2launcher/customizations/DragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 183
    .restart local v8    # "toCapture":Landroid/view/View;
    invoke-direct {p0, v8, v2}, Lnet/oneplus/h2launcher/customizations/DragHelper;->checkTouchSlop(Landroid/view/View;F)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {p0, v8, v7}, Lnet/oneplus/h2launcher/customizations/DragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 187
    .end local v2    # "dy":F
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v10    # "y":F
    :cond_4
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/DragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 177
    .restart local v2    # "dy":F
    .restart local v7    # "pointerId":I
    .restart local v8    # "toCapture":Landroid/view/View;
    .restart local v10    # "y":F
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 193
    .end local v2    # "dy":F
    .end local v3    # "i":I
    .end local v6    # "pointerCount":I
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v10    # "y":F
    :pswitch_2
    iget v11, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mDragState:I

    if-ne v11, v12, :cond_6

    .line 194
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/DragHelper;->releaseViewForPointerUp()V

    .line 196
    :cond_6
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/DragHelper;->cancel()V

    goto/16 :goto_0

    .line 201
    :pswitch_3
    iget v11, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mDragState:I

    if-ne v11, v12, :cond_7

    .line 202
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lnet/oneplus/h2launcher/customizations/DragHelper;->dispatchViewReleased(F)V

    .line 204
    :cond_7
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/DragHelper;->cancel()V

    goto/16 :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method setDragState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 296
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 297
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mDragState:I

    .line 298
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mDragState:I

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCapturedView:Landroid/view/View;

    .line 302
    :cond_0
    return-void
.end method

.method public settleCapturedViewAt(I)Z
    .locals 3
    .param p1, "finalTop"    # I

    .prologue
    .line 431
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mReleaseInProgress:Z

    if-nez v1, :cond_0

    .line 432
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v0, v1

    .line 437
    .local v0, "yVel":I
    int-to-float v1, v0

    iget v2, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mMaxVelocity:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 438
    iget v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mMaxVelocity:F

    float-to-int v0, v1

    .line 440
    :cond_1
    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/customizations/DragHelper;->forceSettleCapturedViewAt(II)Z

    move-result v1

    return v1
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 75
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/DragHelper;->cancel()V

    .line 81
    :cond_0
    iget-object v10, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_1

    .line 82
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 84
    :cond_1
    iget-object v10, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 86
    packed-switch v0, :pswitch_data_0

    .line 130
    :cond_2
    :goto_0
    iget v10, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mDragState:I

    if-ne v10, v8, :cond_7

    :goto_1
    return v8

    .line 88
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 89
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 90
    .local v7, "y":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 91
    .local v4, "pointerId":I
    invoke-direct {p0, v6, v7, v4}, Lnet/oneplus/h2launcher/customizations/DragHelper;->saveInitialMotion(FFI)V

    .line 93
    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {p0, v10, v11}, Lnet/oneplus/h2launcher/customizations/DragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    .line 96
    .local v5, "toCapture":Landroid/view/View;
    iget-object v10, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCapturedView:Landroid/view/View;

    if-ne v5, v10, :cond_2

    iget v10, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mDragState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 97
    invoke-virtual {p0, v5, v4}, Lnet/oneplus/h2launcher/customizations/DragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_0

    .line 104
    .end local v4    # "pointerId":I
    .end local v5    # "toCapture":Landroid/view/View;
    .end local v6    # "x":F
    .end local v7    # "y":F
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 105
    .local v3, "pointerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_5

    iget-object v10, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionX:[F

    if-eqz v10, :cond_5

    iget-object v10, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionY:[F

    if-eqz v10, :cond_5

    .line 106
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 107
    .restart local v4    # "pointerId":I
    iget-object v10, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionX:[F

    array-length v10, v10

    if-ge v4, v10, :cond_3

    iget-object v10, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionY:[F

    array-length v10, v10

    if-lt v4, v10, :cond_4

    .line 105
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 110
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 111
    .restart local v7    # "y":F
    iget-object v10, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionY:[F

    aget v10, v10, v4

    sub-float v1, v7, v10

    .line 113
    .local v1, "dy":F
    iget-object v10, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionX:[F

    aget v10, v10, v4

    float-to-int v10, v10

    iget-object v11, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mInitialMotionY:[F

    aget v11, v11, v4

    float-to-int v11, v11

    invoke-virtual {p0, v10, v11}, Lnet/oneplus/h2launcher/customizations/DragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    .line 114
    .restart local v5    # "toCapture":Landroid/view/View;
    if-eqz v5, :cond_3

    invoke-direct {p0, v5, v1}, Lnet/oneplus/h2launcher/customizations/DragHelper;->checkTouchSlop(Landroid/view/View;F)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0, v5, v4}, Lnet/oneplus/h2launcher/customizations/DragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 118
    .end local v1    # "dy":F
    .end local v4    # "pointerId":I
    .end local v5    # "toCapture":Landroid/view/View;
    .end local v7    # "y":F
    :cond_5
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/DragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 124
    .end local v2    # "i":I
    .end local v3    # "pointerCount":I
    :pswitch_2
    iget v10, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mDragState:I

    if-ne v10, v8, :cond_6

    .line 125
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/DragHelper;->releaseViewForPointerUp()V

    .line 127
    :cond_6
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/DragHelper;->cancel()V

    goto :goto_0

    :cond_7
    move v8, v9

    .line 130
    goto :goto_1

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public slideTo(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "top"    # I

    .prologue
    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 318
    .local v2, "oldTop":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCallback:Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;

    invoke-virtual {v3, p1, p2}, Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;I)I

    move-result v1

    .line 319
    .local v1, "clampedY":I
    sub-int v0, v1, v2

    .line 320
    .local v0, "clampedDy":I
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 322
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCallback:Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;

    invoke-virtual {v3, p1, v1, v0}, Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;->onViewPositionChanged(Landroid/view/View;II)V

    .line 324
    :cond_0
    return-void
.end method

.method public smoothSlideViewTo(Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "finalTop"    # I

    .prologue
    .line 424
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCapturedView:Landroid/view/View;

    .line 425
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mActivePointerId:I

    .line 427
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lnet/oneplus/h2launcher/customizations/DragHelper;->forceSettleCapturedViewAt(II)Z

    move-result v0

    return v0
.end method

.method public stopSettling()V
    .locals 2

    .prologue
    .line 417
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 418
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/DragHelper;->setDragState(I)V

    .line 421
    :cond_0
    return-void
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2
    .param p1, "toCapture"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    const/4 v0, 0x1

    .line 272
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mActivePointerId:I

    if-ne v1, p2, :cond_0

    .line 281
    :goto_0
    return v0

    .line 276
    :cond_0
    if-eqz p1, :cond_1

    .line 277
    iput p2, p0, Lnet/oneplus/h2launcher/customizations/DragHelper;->mActivePointerId:I

    .line 278
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/DragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0

    .line 281
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
