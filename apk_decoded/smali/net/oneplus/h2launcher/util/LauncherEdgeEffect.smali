.class public Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;
.super Ljava/lang/Object;
.source "LauncherEdgeEffect.java"


# static fields
.field private static final ANGLE:D = 0.5235987755982988

.field private static final COS:F

.field private static final EPSILON:F = 0.001f

.field private static final MAX_ALPHA:F = 0.5f

.field private static final MAX_GLOW_SCALE:F = 2.0f

.field private static final MAX_VELOCITY:I = 0x2710

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x7d0

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.8f

.field private static final PULL_GLOW_BEGIN:F = 0.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x258

.field private static final SIN:F

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final VELOCITY_GLOW_FACTOR:I = 0x6


# instance fields
.field private mBaseGlowScale:F

.field private final mBounds:Landroid/graphics/Rect;

.field private mDisplacement:F

.field private mDuration:F

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPullDistance:F

.field private mRadius:F

.field private mStartTime:J

.field private mState:I

.field private mTargetDisplacement:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->SIN:F

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->COS:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mState:I

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mPaint:Landroid/graphics/Paint;

    .line 90
    iput v1, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mDisplacement:F

    .line 91
    iput v1, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mTargetDisplacement:F

    .line 97
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 100
    return-void
.end method

.method private update()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 321
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 322
    .local v2, "time":J
    iget-wide v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mDuration:F

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 324
    .local v1, "t":F
    iget-object v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 326
    .local v0, "interp":F
    iget v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlphaStart:F

    iget v5, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlphaFinish:F

    iget v6, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlpha:F

    .line 327
    iget v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleYStart:F

    iget v5, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleY:F

    .line 328
    iget v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mDisplacement:F

    iget v5, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mTargetDisplacement:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mDisplacement:F

    .line 330
    const v4, 0x3f7fbe77    # 0.999f

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_0

    .line 331
    iget v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 333
    :pswitch_0
    iput v8, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mState:I

    .line 334
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mStartTime:J

    .line 335
    const/high16 v4, 0x44160000    # 600.0f

    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mDuration:F

    .line 337
    iget v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlphaStart:F

    .line 338
    iget v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleYStart:F

    .line 341
    iput v7, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlphaFinish:F

    .line 342
    iput v7, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 345
    :pswitch_1
    const/4 v4, 0x4

    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mState:I

    .line 346
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mStartTime:J

    .line 347
    const/high16 v4, 0x44fa0000    # 2000.0f

    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mDuration:F

    .line 349
    iget v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlphaStart:F

    .line 350
    iget v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleYStart:F

    .line 353
    iput v7, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlphaFinish:F

    .line 354
    iput v7, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 357
    :pswitch_2
    iput v8, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mState:I

    goto :goto_0

    .line 360
    :pswitch_3
    const/4 v4, 0x0

    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mState:I

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 290
    invoke-direct {p0}, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->update()V

    .line 292
    iget-object v6, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v0, v6

    .line 293
    .local v0, "centerX":F
    iget-object v6, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mRadius:F

    sub-float v1, v6, v7

    .line 295
    .local v1, "centerY":F
    iget v6, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleY:F

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget v7, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mBaseGlowScale:F

    mul-float/2addr v6, v7

    invoke-virtual {p1, v8, v6, v0, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 297
    iget v6, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mDisplacement:F

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float v2, v6, v7

    .line 298
    .local v2, "displacement":F
    iget-object v6, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float v4, v6, v7

    .line 299
    .local v4, "translateX":F
    iget-object v6, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x437f0000    # 255.0f

    iget v8, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlpha:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 300
    add-float v6, v0, v4

    iget v7, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mRadius:F

    iget-object v8, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 302
    const/4 v3, 0x0

    .line 303
    .local v3, "oneLastFrame":Z
    iget v6, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    iget v6, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleY:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_0

    .line 304
    iput v5, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mState:I

    .line 305
    const/4 v3, 0x1

    .line 308
    :cond_0
    iget v6, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mState:I

    if-nez v6, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v5, 0x1

    :cond_2
    return v5
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mState:I

    .line 139
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAbsorb(I)V
    .locals 4
    .param p1, "velocity"    # I

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 239
    const/4 v0, 0x2

    iput v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mState:I

    .line 240
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 242
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mStartTime:J

    .line 243
    const v0, 0x3e19999a    # 0.15f

    int-to-float v1, p1

    const v2, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mDuration:F

    .line 247
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlphaStart:F

    .line 248
    iget v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleY:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleYStart:F

    .line 255
    const v0, 0x3ccccccd    # 0.025f

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952    # 1.5E-4f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleYFinish:F

    .line 257
    iget v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x6

    int-to-float v1, v1

    const v2, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v1, v2

    .line 258
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 257
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlphaFinish:F

    .line 259
    iput v3, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mTargetDisplacement:F

    .line 260
    return-void
.end method

.method public onPull(F)V
    .locals 1
    .param p1, "deltaDistance"    # F

    .prologue
    .line 155
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->onPull(FF)V

    .line 156
    return-void
.end method

.method public onPull(FF)V
    .locals 10
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .prologue
    const/4 v6, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x0

    .line 172
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 173
    .local v2, "now":J
    iput p2, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mTargetDisplacement:F

    .line 174
    iget v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 202
    :goto_0
    return-void

    .line 177
    :cond_0
    iget v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mState:I

    if-eq v4, v6, :cond_1

    .line 178
    iget v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleY:F

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleY:F

    .line 180
    :cond_1
    iput v6, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mState:I

    .line 182
    iput-wide v2, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mStartTime:J

    .line 183
    const/high16 v4, 0x43270000    # 167.0f

    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mDuration:F

    .line 185
    iget v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mPullDistance:F

    .line 187
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 188
    .local v0, "absdd":F
    const/high16 v4, 0x3f000000    # 0.5f

    iget v5, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlpha:F

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlpha:F

    .line 191
    iget v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mPullDistance:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_2

    .line 192
    iput v7, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleYStart:F

    iput v7, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleY:F

    .line 200
    :goto_1
    iget v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlphaFinish:F

    .line 201
    iget v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 194
    :cond_2
    const-wide/16 v4, 0x0

    iget v6, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mPullDistance:F

    .line 195
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double v6, v8, v6

    sub-double v6, v8, v6

    const-wide v8, 0x3fd3333333333333L    # 0.3

    sub-double/2addr v6, v8

    .line 194
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const-wide v6, 0x3fe6666666666666L    # 0.7

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 197
    .local v1, "scale":F
    iput v1, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleYStart:F

    iput v1, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleY:F

    goto :goto_1
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    iput v2, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mPullDistance:F

    .line 213
    iget v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mState:I

    .line 218
    iget v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlphaStart:F

    .line 219
    iget v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleYStart:F

    .line 221
    iput v2, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowAlphaFinish:F

    .line 222
    iput v2, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mGlowScaleYFinish:F

    .line 224
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mStartTime:J

    .line 225
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mDuration:F

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    return-void
.end method

.method public setSize(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 109
    int-to-float v7, p1

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    sget v8, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->SIN:F

    div-float v4, v7, v8

    .line 110
    .local v4, "r":F
    sget v7, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->COS:F

    mul-float v5, v7, v4

    .line 111
    .local v5, "y":F
    sub-float v0, v4, v5

    .line 112
    .local v0, "h":F
    int-to-float v7, p2

    const/high16 v8, 0x3f400000    # 0.75f

    mul-float/2addr v7, v8

    sget v8, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->SIN:F

    div-float v2, v7, v8

    .line 113
    .local v2, "or":F
    sget v7, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->COS:F

    mul-float v3, v7, v2

    .line 114
    .local v3, "oy":F
    sub-float v1, v2, v3

    .line 116
    .local v1, "oh":F
    iput v4, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mRadius:F

    .line 117
    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-lez v7, :cond_0

    div-float v7, v1, v0

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :cond_0
    iput v6, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mBaseGlowScale:F

    .line 119
    iget-object v6, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lnet/oneplus/h2launcher/util/LauncherEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v9, p2

    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v6, v7, v8, p1, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 120
    return-void
.end method
