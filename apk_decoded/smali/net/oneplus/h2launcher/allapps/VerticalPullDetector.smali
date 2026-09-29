.class public Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;
.super Ljava/lang/Object;
.source "VerticalPullDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$Listener;,
        Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DIRECTION_BOTH:I = 0x3

.field public static final DIRECTION_DOWN:I = 0x2

.field public static final DIRECTION_UP:I = 0x1

.field public static final RELEASE_VELOCITY_PX_MS:F = 1.0f

.field public static final SCROLL_VELOCITY_DAMPENING_RC:F = 15.915494f

.field private static final TAG:Ljava/lang/String; = "VerticalPullDetector"


# instance fields
.field private mCurrentMillis:J

.field private mDisplacementX:F

.field private mDisplacementY:F

.field private mDownX:F

.field private mDownY:F

.field private mIgnoreSlopWhenSettling:Z

.field private mLastDisplacement:F

.field private mLastY:F

.field mListener:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$Listener;

.field private mScrollConditions:I

.field private mState:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

.field private mSubtractDisplacement:F

.field private mTouchSlop:F

.field private mVelocity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->IDLE:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mState:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    .line 124
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mTouchSlop:F

    .line 125
    return-void
.end method

.method private static computeDampeningFactor(F)F
    .locals 1
    .param p0, "deltaTime"    # F

    .prologue
    .line 266
    const v0, 0x417ea5dd

    add-float/2addr v0, p0

    div-float v0, p0, v0

    return v0
.end method

.method private computeVelocity(Landroid/view/MotionEvent;)F
    .locals 4
    .param p1, "to"    # Landroid/view/MotionEvent;

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mLastY:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->computeVelocity(FJ)F

    move-result v0

    return v0
.end method

.method private initializeDragging()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mState:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz v0, :cond_0

    .line 209
    iput v2, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mSubtractDisplacement:F

    .line 211
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mDisplacementY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 212
    iget v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mTouchSlop:F

    iput v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mSubtractDisplacement:F

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_1
    iget v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mTouchSlop:F

    neg-float v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mSubtractDisplacement:F

    goto :goto_0
.end method

.method private static interpolate(FFF)F
    .locals 2
    .param p0, "from"    # F
    .param p1, "to"    # F
    .param p2, "alpha"    # F

    .prologue
    .line 273
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p2, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private reportDragEnd()V
    .locals 4

    .prologue
    .line 236
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mListener:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$Listener;

    iget v2, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mVelocity:F

    iget v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$Listener;->onDragEnd(FZ)V

    .line 238
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reportDragStart(Z)Z
    .locals 3
    .param p1, "recatch"    # Z

    .prologue
    const/4 v1, 0x1

    .line 200
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mListener:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$Listener;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$Listener;->onDragStart(Z)V

    .line 204
    return v1

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reportDragging()Z
    .locals 4

    .prologue
    .line 219
    iget v1, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mDisplacementY:F

    iget v2, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mLastDisplacement:F

    sub-float v0, v1, v2

    .line 220
    .local v0, "delta":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mListener:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$Listener;

    iget v2, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mDisplacementY:F

    iget v3, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mSubtractDisplacement:F

    sub-float/2addr v2, v3

    iget v3, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mVelocity:F

    invoke-interface {v1, v2, v3}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$Listener;->onDrag(FF)Z

    move-result v1

    .line 228
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setState(Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;)V
    .locals 2
    .param p1, "newState"    # Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    .prologue
    .line 60
    sget-object v0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    if-ne p1, v0, :cond_0

    .line 61
    invoke-direct {p0}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->initializeDragging()V

    .line 62
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mState:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->IDLE:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_2

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->reportDragStart(Z)Z

    .line 68
    :cond_0
    :goto_0
    sget-object v0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    if-ne p1, v0, :cond_1

    .line 69
    invoke-direct {p0}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->reportDragEnd()V

    .line 72
    :cond_1
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mState:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    .line 73
    return-void

    .line 64
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mState:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->reportDragStart(Z)Z

    goto :goto_0
.end method

.method private shouldScrollStart()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 134
    iget v3, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mDisplacementY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mTouchSlop:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v2

    .line 139
    :cond_1
    iget v3, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mDisplacementY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 140
    .local v1, "deltaY":F
    iget v3, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mDisplacementX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 141
    .local v0, "deltaX":F
    cmpl-float v3, v0, v1

    if-gtz v3, :cond_0

    .line 145
    iget v3, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mScrollConditions:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_2

    iget v3, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mDisplacementY:F

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_3

    :cond_2
    iget v3, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mScrollConditions:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_0

    iget v3, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mDisplacementY:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    .line 147
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public computeVelocity(FJ)F
    .locals 8
    .param p1, "delta"    # F
    .param p2, "currentMillis"    # J

    .prologue
    const/4 v4, 0x0

    .line 248
    iget-wide v2, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mCurrentMillis:J

    .line 249
    .local v2, "previousMillis":J
    iput-wide p2, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mCurrentMillis:J

    .line 251
    iget-wide v6, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mCurrentMillis:J

    sub-long/2addr v6, v2

    long-to-float v1, v6

    .line 252
    .local v1, "deltaTimeMillis":F
    cmpl-float v5, v1, v4

    if-lez v5, :cond_0

    div-float v5, p1, v1

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float v4, v5, v6

    .line 253
    .local v4, "velocity":F
    :cond_0
    iget v5, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mVelocity:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3a83126f    # 0.001f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 254
    iput v4, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mVelocity:F

    .line 259
    :goto_0
    iget v5, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mVelocity:F

    return v5

    .line 256
    :cond_1
    invoke-static {v1}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->computeDampeningFactor(F)F

    move-result v0

    .line 257
    .local v0, "alpha":F
    iget v5, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mVelocity:F

    invoke-static {v5, v4, v0}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->interpolate(FFF)F

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mVelocity:F

    goto :goto_0
.end method

.method public finishedScrolling()V
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->IDLE:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->setState(Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;)V

    .line 197
    return-void
.end method

.method public isDraggingOrSettling()Z
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mState:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mState:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDraggingState()Z
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mState:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdleState()Z
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mState:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->IDLE:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSettlingState()Z
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mState:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    iget v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mDisplacementY:F

    iput v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mLastDisplacement:F

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mLastY:F

    .line 192
    const/4 v0, 0x1

    return v0

    .line 155
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mDownX:F

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mDownY:F

    .line 157
    iput v1, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mLastDisplacement:F

    .line 158
    iput v1, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mDisplacementY:F

    .line 159
    iput v1, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mVelocity:F

    .line 161
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mState:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->setState(Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;)V

    goto :goto_0

    .line 166
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mDownX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mDisplacementX:F

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mDownY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mDisplacementY:F

    .line 168
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->computeVelocity(Landroid/view/MotionEvent;)F

    .line 171
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mState:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->shouldScrollStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    sget-object v0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->setState(Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;)V

    .line 174
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mState:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    .line 175
    invoke-direct {p0}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->reportDragging()Z

    goto :goto_0

    .line 181
    :pswitch_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mState:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    .line 182
    sget-object v0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->setState(Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$ScrollState;)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDetectableScrollConditions(IZ)V
    .locals 0
    .param p1, "scrollDirectionFlags"    # I
    .param p2, "ignoreSlop"    # Z

    .prologue
    .line 128
    iput p1, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mScrollConditions:I

    .line 129
    iput-boolean p2, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mIgnoreSlopWhenSettling:Z

    .line 130
    return-void
.end method

.method public setListener(Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$Listener;)V
    .locals 0
    .param p1, "l"    # Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$Listener;

    .prologue
    .line 112
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->mListener:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$Listener;

    .line 113
    return-void
.end method
