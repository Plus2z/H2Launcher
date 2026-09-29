.class public Lnet/oneplus/h2launcher/LauncherScroller;
.super Ljava/lang/Object;
.source "LauncherScroller.java"


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_MODE:I = 0x1

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SCROLL_MODE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private mCurrVelocity:F

.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDistance:I

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlywheel:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mPhysicalCoeff:F

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 65
    const-wide v12, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-float v11, v12

    sput v11, Lnet/oneplus/h2launcher/LauncherScroller;->DECELERATION_RATE:F

    .line 73
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Lnet/oneplus/h2launcher/LauncherScroller;->SPLINE_POSITION:[F

    .line 74
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Lnet/oneplus/h2launcher/LauncherScroller;->SPLINE_TIME:[F

    .line 83
    const/4 v7, 0x0

    .line 84
    .local v7, "x_min":F
    const/4 v10, 0x0

    .line 85
    .local v10, "y_min":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v11, 0x64

    if-ge v3, v11, :cond_4

    .line 86
    int-to-float v11, v3

    const/high16 v12, 0x42c80000    # 100.0f

    div-float v0, v11, v12

    .line 88
    .local v0, "alpha":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 91
    .local v6, "x_max":F
    :goto_1
    sub-float v11, v6, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v5, v7, v11

    .line 92
    .local v5, "x":F
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    mul-float v1, v11, v12

    .line 93
    .local v1, "coef":F
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v5

    const v12, 0x3e333333    # 0.175f

    mul-float/2addr v11, v12

    const v12, 0x3eb33334    # 0.35000002f

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float v4, v11, v12

    .line 94
    .local v4, "tx":F
    sub-float v11, v4, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v12, v14

    if-gez v11, :cond_0

    .line 98
    sget-object v11, Lnet/oneplus/h2launcher/LauncherScroller;->SPLINE_POSITION:[F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    add-float/2addr v12, v5

    mul-float/2addr v12, v1

    mul-float v13, v5, v5

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 100
    const/high16 v9, 0x3f800000    # 1.0f

    .line 103
    .local v9, "y_max":F
    :goto_2
    sub-float v11, v9, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v8, v10, v11

    .line 104
    .local v8, "y":F
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    mul-float v1, v11, v12

    .line 105
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    add-float/2addr v11, v8

    mul-float/2addr v11, v1

    mul-float v12, v8, v8

    mul-float/2addr v12, v8

    add-float v2, v11, v12

    .line 106
    .local v2, "dy":F
    sub-float v11, v2, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v12, v14

    if-gez v11, :cond_2

    .line 110
    sget-object v11, Lnet/oneplus/h2launcher/LauncherScroller;->SPLINE_TIME:[F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    const v13, 0x3e333333    # 0.175f

    mul-float/2addr v12, v13

    const v13, 0x3eb33334    # 0.35000002f

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    mul-float/2addr v12, v1

    mul-float v13, v8, v8

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 95
    .end local v2    # "dy":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_0
    cmpl-float v11, v4, v0

    if-lez v11, :cond_1

    move v6, v5

    goto/16 :goto_1

    .line 96
    :cond_1
    move v7, v5

    goto/16 :goto_1

    .line 107
    .restart local v2    # "dy":F
    .restart local v8    # "y":F
    .restart local v9    # "y_max":F
    :cond_2
    cmpl-float v11, v2, v0

    if-lez v11, :cond_3

    move v9, v8

    goto :goto_2

    .line 108
    :cond_3
    move v10, v8

    goto :goto_2

    .line 112
    .end local v0    # "alpha":F
    .end local v1    # "coef":F
    .end local v2    # "dy":F
    .end local v4    # "tx":F
    .end local v5    # "x":F
    .end local v6    # "x_max":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_4
    sget-object v11, Lnet/oneplus/h2launcher/LauncherScroller;->SPLINE_POSITION:[F

    const/16 v12, 0x64

    sget-object v13, Lnet/oneplus/h2launcher/LauncherScroller;->SPLINE_TIME:[F

    const/16 v14, 0x64

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v13, v14

    aput v15, v11, v12

    .line 115
    const/high16 v11, 0x41000000    # 8.0f

    sput v11, Lnet/oneplus/h2launcher/LauncherScroller;->sViscousFluidScale:F

    .line 117
    const/high16 v11, 0x3f800000    # 1.0f

    sput v11, Lnet/oneplus/h2launcher/LauncherScroller;->sViscousFluidNormalize:F

    .line 118
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12}, Lnet/oneplus/h2launcher/LauncherScroller;->viscousFluid(F)F

    move-result v12

    div-float/2addr v11, v12

    sput v11, Lnet/oneplus/h2launcher/LauncherScroller;->sViscousFluidNormalize:F

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/LauncherScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 142
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/LauncherScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 144
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFlingFriction:F

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinished:Z

    .line 153
    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mPpi:F

    .line 155
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/LauncherScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDeceleration:F

    .line 156
    iput-boolean p3, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFlywheel:Z

    .line 158
    const v0, 0x3f570a3d    # 0.84f

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/LauncherScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mPhysicalCoeff:F

    .line 159
    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2
    .param p1, "friction"    # F

    .prologue
    .line 174
    const v0, 0x43c10b3d

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mPpi:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private getSplineDeceleration(F)D
    .locals 3
    .param p1, "velocity"    # F

    .prologue
    .line 459
    const v0, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFlingFriction:F

    iget v2, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(F)D
    .locals 8
    .param p1, "velocity"    # F

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/LauncherScroller;->getSplineDeceleration(F)D

    move-result-wide v2

    .line 470
    .local v2, "l":D
    sget v4, Lnet/oneplus/h2launcher/LauncherScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    .line 471
    .local v0, "decelMinusOne":D
    iget v4, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFlingFriction:F

    iget v5, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Lnet/oneplus/h2launcher/LauncherScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(F)I
    .locals 8
    .param p1, "velocity"    # F

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/LauncherScroller;->getSplineDeceleration(F)D

    move-result-wide v2

    .line 464
    .local v2, "l":D
    sget v4, Lnet/oneplus/h2launcher/LauncherScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    .line 465
    .local v0, "decelMinusOne":D
    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method static viscousFluid(F)F
    .locals 5
    .param p0, "x"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 476
    sget v1, Lnet/oneplus/h2launcher/LauncherScroller;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    .line 477
    cmpg-float v1, p0, v4

    if-gez v1, :cond_0

    .line 478
    neg-float v1, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr p0, v1

    .line 484
    :goto_0
    sget v1, Lnet/oneplus/h2launcher/LauncherScroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    .line 485
    return p0

    .line 480
    :cond_0
    const v0, 0x3ebc5ab2

    .line 481
    .local v0, "start":F
    sub-float v1, v4, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float p0, v4, v1

    .line 482
    sub-float v1, v4, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalX:I

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrX:I

    .line 497
    iget v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalY:I

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrY:I

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinished:Z

    .line 499
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 14

    .prologue
    .line 278
    iget-boolean v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinished:Z

    if-eqz v10, :cond_0

    .line 279
    const/4 v10, 0x0

    .line 335
    :goto_0
    return v10

    .line 282
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartTime:J

    sub-long/2addr v10, v12

    long-to-int v7, v10

    .line 284
    .local v7, "timePassed":I
    iget v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDuration:I

    if-ge v7, v10, :cond_4

    .line 285
    iget v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mMode:I

    packed-switch v10, :pswitch_data_0

    .line 335
    :cond_1
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 287
    :pswitch_0
    int-to-float v10, v7

    iget v11, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDurationReciprocal:F

    mul-float v9, v10, v11

    .line 289
    .local v9, "x":F
    iget-object v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v10, :cond_2

    .line 290
    invoke-static {v9}, Lnet/oneplus/h2launcher/LauncherScroller;->viscousFluid(F)F

    move-result v9

    .line 294
    :goto_2
    iget v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartX:I

    iget v11, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDeltaX:F

    mul-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrX:I

    .line 295
    iget v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartY:I

    iget v11, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDeltaY:F

    mul-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrY:I

    goto :goto_1

    .line 292
    :cond_2
    iget-object v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v10, v9}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v9

    goto :goto_2

    .line 298
    .end local v9    # "x":F
    :pswitch_1
    int-to-float v10, v7

    iget v11, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDuration:I

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 299
    .local v4, "t":F
    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v10, v4

    float-to-int v3, v10

    .line 300
    .local v3, "index":I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 301
    .local v2, "distanceCoef":F
    const/4 v8, 0x0

    .line 302
    .local v8, "velocityCoef":F
    const/16 v10, 0x64

    if-ge v3, v10, :cond_3

    .line 303
    int-to-float v10, v3

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v5, v10, v11

    .line 304
    .local v5, "t_inf":F
    add-int/lit8 v10, v3, 0x1

    int-to-float v10, v10

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v6, v10, v11

    .line 305
    .local v6, "t_sup":F
    sget-object v10, Lnet/oneplus/h2launcher/LauncherScroller;->SPLINE_POSITION:[F

    aget v0, v10, v3

    .line 306
    .local v0, "d_inf":F
    sget-object v10, Lnet/oneplus/h2launcher/LauncherScroller;->SPLINE_POSITION:[F

    add-int/lit8 v11, v3, 0x1

    aget v1, v10, v11

    .line 307
    .local v1, "d_sup":F
    sub-float v10, v1, v0

    sub-float v11, v6, v5

    div-float v8, v10, v11

    .line 308
    sub-float v10, v4, v5

    mul-float/2addr v10, v8

    add-float v2, v0, v10

    .line 311
    .end local v0    # "d_inf":F
    .end local v1    # "d_sup":F
    .end local v5    # "t_inf":F
    .end local v6    # "t_sup":F
    :cond_3
    iget v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDistance:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    iget v11, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDuration:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x447a0000    # 1000.0f

    mul-float/2addr v10, v11

    iput v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrVelocity:F

    .line 313
    iget v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartX:I

    iget v11, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalX:I

    iget v12, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartX:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrX:I

    .line 315
    iget v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrX:I

    iget v11, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mMaxX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrX:I

    .line 316
    iget v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrX:I

    iget v11, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mMinX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrX:I

    .line 318
    iget v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartY:I

    iget v11, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalY:I

    iget v12, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartY:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrY:I

    .line 320
    iget v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrY:I

    iget v11, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mMaxY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrY:I

    .line 321
    iget v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrY:I

    iget v11, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mMinY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrY:I

    .line 323
    iget v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrX:I

    iget v11, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalX:I

    if-ne v10, v11, :cond_1

    iget v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrY:I

    iget v11, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalY:I

    if-ne v10, v11, :cond_1

    .line 324
    const/4 v10, 0x1

    iput-boolean v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinished:Z

    goto/16 :goto_1

    .line 331
    .end local v2    # "distanceCoef":F
    .end local v3    # "index":I
    .end local v4    # "t":F
    .end local v8    # "velocityCoef":F
    :cond_4
    iget v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalX:I

    iput v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrX:I

    .line 332
    iget v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalY:I

    iput v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrY:I

    .line 333
    const/4 v10, 0x1

    iput-boolean v10, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinished:Z

    goto/16 :goto_1

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .param p1, "extend"    # I

    .prologue
    .line 510
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherScroller;->timePassed()I

    move-result v0

    .line 511
    .local v0, "passed":I
    add-int v1, v0, p1

    iput v1, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDuration:I

    .line 512
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDurationReciprocal:F

    .line 513
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinished:Z

    .line 514
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 22
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 406
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/LauncherScroller;->mFlywheel:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinished:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 407
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherScroller;->getCurrVelocity()F

    move-result v11

    .line 409
    .local v11, "oldVel":F
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v6, v0

    .line 410
    .local v6, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v7, v0

    .line 411
    .local v7, "dy":F
    float-to-double v0, v6

    move-wide/from16 v18, v0

    float-to-double v0, v7

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v8, v0

    .line 413
    .local v8, "hyp":F
    div-float v9, v6, v8

    .line 414
    .local v9, "ndx":F
    div-float v10, v7, v8

    .line 416
    .local v10, "ndy":F
    mul-float v12, v9, v11

    .line 417
    .local v12, "oldVelocityX":F
    mul-float v13, v10, v11

    .line 418
    .local v13, "oldVelocityY":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    .line 419
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    .line 420
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 p3, v0

    .line 421
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v13

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 p4, v0

    .line 425
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v8    # "hyp":F
    .end local v9    # "ndx":F
    .end local v10    # "ndy":F
    .end local v11    # "oldVel":F
    .end local v12    # "oldVelocityX":F
    .end local v13    # "oldVelocityY":F
    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherScroller;->mMode:I

    .line 426
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/LauncherScroller;->mFinished:Z

    .line 428
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v16, v0

    .line 430
    .local v16, "velocity":F
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherScroller;->mVelocity:F

    .line 431
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/LauncherScroller;->getSplineFlingDuration(F)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherScroller;->mDuration:I

    .line 432
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lnet/oneplus/h2launcher/LauncherScroller;->mStartTime:J

    .line 433
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherScroller;->mStartX:I

    .line 434
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherScroller;->mStartY:I

    .line 436
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-nez v17, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 437
    .local v4, "coeffX":F
    :goto_0
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-nez v17, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    .line 439
    .local v5, "coeffY":F
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/LauncherScroller;->getSplineFlingDistance(F)D

    move-result-wide v14

    .line 440
    .local v14, "totalDistance":D
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->signum(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherScroller;->mDistance:I

    .line 442
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherScroller;->mMinX:I

    .line 443
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherScroller;->mMaxX:I

    .line 444
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherScroller;->mMinY:I

    .line 445
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherScroller;->mMaxY:I

    .line 447
    float-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    add-int v17, v17, p1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalX:I

    .line 449
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherScroller;->mMaxX:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalX:I

    .line 450
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherScroller;->mMinX:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalX:I

    .line 452
    float-to-double v0, v5

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    add-int v17, v17, p2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalY:I

    .line 454
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherScroller;->mMaxY:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalY:I

    .line 455
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherScroller;->mMinY:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalY:I

    .line 456
    return-void

    .line 436
    .end local v4    # "coeffX":F
    .end local v5    # "coeffY":F
    .end local v14    # "totalDistance":D
    :cond_1
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v4, v17, v16

    goto/16 :goto_0

    .line 437
    .restart local v4    # "coeffX":F
    :cond_2
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v5, v17, v16

    goto/16 :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinished:Z

    .line 197
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 233
    iget v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrVelocity:F

    .line 234
    :goto_0
    return v0

    .line 233
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mVelocity:F

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDeceleration:F

    .line 234
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherScroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 555
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalX:I

    iget v2, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 556
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalY:I

    iget v2, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinalX(I)V
    .locals 2
    .param p1, "newX"    # I

    .prologue
    .line 533
    iput p1, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalX:I

    .line 534
    iget v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalX:I

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDeltaX:F

    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinished:Z

    .line 536
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .param p1, "newY"    # I

    .prologue
    .line 546
    iput p1, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalY:I

    .line 547
    iget v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalY:I

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDeltaY:F

    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinished:Z

    .line 549
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/LauncherScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDeceleration:F

    .line 170
    iput p1, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFlingFriction:F

    .line 171
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 126
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 127
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 353
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherScroller;->startScroll(IIIII)V

    .line 354
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    const/4 v0, 0x0

    .line 371
    iput v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mMode:I

    .line 372
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinished:Z

    .line 373
    iput p5, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDuration:I

    .line 374
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartTime:J

    .line 375
    iput p1, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartX:I

    .line 376
    iput p2, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartY:I

    .line 377
    add-int v0, p1, p3

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalX:I

    .line 378
    add-int v0, p2, p4

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mFinalY:I

    .line 379
    int-to-float v0, p3

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDeltaX:F

    .line 380
    int-to-float v0, p4

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDeltaY:F

    .line 381
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mDurationReciprocal:F

    .line 382
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 522
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/oneplus/h2launcher/LauncherScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
