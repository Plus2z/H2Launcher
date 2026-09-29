.class Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReorderPreviewAnimation"
.end annotation


# static fields
.field private static final HINT_DURATION:I = 0x12c

.field public static final MODE_HINT:I = 0x0

.field public static final MODE_PREVIEW:I = 0x1

.field private static final PREVIEW_DURATION:I = 0x12c


# instance fields
.field a:Landroid/animation/Animator;

.field child:Landroid/view/View;

.field finalDeltaX:F

.field finalDeltaY:F

.field finalScale:F

.field initDeltaX:F

.field initDeltaY:F

.field initScale:F

.field mode:I

.field repeating:Z

.field final synthetic this$0:Lnet/oneplus/h2launcher/CellLayout;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/CellLayout;Landroid/view/View;IIIIIII)V
    .locals 17
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "mode"    # I
    .param p4, "cellX0"    # I
    .param p5, "cellY0"    # I
    .param p6, "cellX1"    # I
    .param p7, "cellY1"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I

    .prologue
    .line 2346
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2336
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->repeating:Z

    .line 2347
    move-object/from16 v0, p1

    iget-object v7, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpPoint:[I

    move-object/from16 v2, p1

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-virtual/range {v2 .. v7}, Lnet/oneplus/h2launcher/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2348
    move-object/from16 v0, p1

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpPoint:[I

    const/4 v3, 0x0

    aget v13, v2, v3

    .line 2349
    .local v13, "x0":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpPoint:[I

    const/4 v3, 0x1

    aget v15, v2, v3

    .line 2350
    .local v15, "y0":I
    move-object/from16 v0, p1

    iget-object v7, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpPoint:[I

    move-object/from16 v2, p1

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-virtual/range {v2 .. v7}, Lnet/oneplus/h2launcher/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2351
    move-object/from16 v0, p1

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpPoint:[I

    const/4 v3, 0x0

    aget v14, v2, v3

    .line 2352
    .local v14, "x1":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpPoint:[I

    const/4 v3, 0x1

    aget v16, v2, v3

    .line 2353
    .local v16, "y1":I
    sub-int v10, v14, v13

    .line 2354
    .local v10, "dX":I
    sub-int v11, v16, v15

    .line 2355
    .local v11, "dY":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    .line 2356
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    .line 2357
    if-nez p3, :cond_0

    const/4 v12, -0x1

    .line 2358
    .local v12, "dir":I
    :goto_0
    if-ne v10, v11, :cond_1

    if-nez v10, :cond_1

    .line 2372
    :goto_1
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->mode:I

    .line 2373
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    .line 2374
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    .line 2375
    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/CellLayout;->getChildrenScale()F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->finalScale:F

    .line 2376
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->initScale:F

    .line 2377
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    .line 2378
    return-void

    .line 2357
    .end local v12    # "dir":I
    :cond_0
    const/4 v12, 0x1

    goto :goto_0

    .line 2360
    .restart local v12    # "dir":I
    :cond_1
    if-nez v11, :cond_2

    .line 2361
    neg-int v2, v12

    int-to-float v2, v2

    int-to-float v3, v10

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p1

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mReorderPreviewAnimationMagnitude:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    goto :goto_1

    .line 2362
    :cond_2
    if-nez v10, :cond_3

    .line 2363
    neg-int v2, v12

    int-to-float v2, v2

    int-to-float v3, v11

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p1

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mReorderPreviewAnimationMagnitude:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    goto :goto_1

    .line 2365
    :cond_3
    int-to-float v2, v11

    int-to-float v3, v10

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    .line 2366
    .local v8, "angle":D
    neg-int v2, v12

    int-to-float v2, v2

    int-to-float v3, v10

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    .line 2367
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    move-object/from16 v0, p1

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout;->mReorderPreviewAnimationMagnitude:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    .line 2368
    neg-int v2, v12

    int-to-float v2, v2

    int-to-float v3, v11

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    .line 2369
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    move-object/from16 v0, p1

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout;->mReorderPreviewAnimationMagnitude:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    goto/16 :goto_1
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 2427
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2428
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2430
    :cond_0
    return-void
.end method


# virtual methods
.method animate()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2381
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    iget-object v2, v2, Lnet/oneplus/h2launcher/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2382
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    iget-object v2, v2, Lnet/oneplus/h2launcher/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    .line 2383
    .local v0, "oldAnimation":Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;
    invoke-direct {v0}, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->cancel()V

    .line 2384
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    iget-object v2, v2, Lnet/oneplus/h2launcher/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2385
    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    .line 2386
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->completeAnimationImmediately()V

    .line 2424
    .end local v0    # "oldAnimation":Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;
    :cond_0
    :goto_0
    return-void

    .line 2390
    :cond_1
    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 2393
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2394
    .local v1, "va":Landroid/animation/ValueAnimator;
    iput-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    .line 2395
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2396
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 2397
    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->mode:I

    if-nez v2, :cond_3

    :cond_3
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2398
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2399
    new-instance v2, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$1;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$1;-><init>(Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2413
    new-instance v2, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$2;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$2;-><init>(Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2422
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    iget-object v2, v2, Lnet/oneplus/h2launcher/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2423
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 2393
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method completeAnimationImmediately()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2433
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 2434
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 2437
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 2438
    .local v0, "s":Landroid/animation/AnimatorSet;
    iput-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    .line 2439
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    .line 2440
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/CellLayout;->getChildrenScale()F

    move-result v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    const-string v3, "scaleY"

    new-array v4, v7, [F

    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    .line 2441
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/CellLayout;->getChildrenScale()F

    move-result v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    const-string v4, "translationX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2442
    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    const-string v4, "translationY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2443
    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2439
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2445
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2446
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2447
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2448
    return-void
.end method
