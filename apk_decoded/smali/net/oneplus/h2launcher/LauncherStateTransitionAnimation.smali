.class public Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;
.super Ljava/lang/Object;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    }
.end annotation


# static fields
.field public static final BUILD_AND_SET_LAYER:I = 0x1

.field public static final BUILD_LAYER:I = 0x0

.field public static final FOLDERS:I = 0x3

.field public static final SINGLE_FRAME_DELAY:I = 0x10

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mCurrentAnimation:Landroid/animation/AnimatorSet;

.field mFoldersController:Lnet/oneplus/h2launcher/FoldersTransitionController;

.field mLauncher:Lnet/oneplus/h2launcher/Launcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const-class v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 1
    .param p1, "l"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 133
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getFoldersController()Lnet/oneplus/h2launcher/FoldersTransitionController;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mFoldersController:Lnet/oneplus/h2launcher/FoldersTransitionController;

    .line 134
    return-void
.end method

.method private cancelAnimation()V
    .locals 6

    .prologue
    .line 1847
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_2

    .line 1848
    const/4 v1, 0x0

    .line 1849
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1851
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->getListeners()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 1854
    .restart local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1855
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1859
    if-eqz v1, :cond_1

    .line 1860
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 1861
    .local v0, "listener":Landroid/animation/Animator$AnimatorListener;
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-interface {v0, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 1864
    .end local v0    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 1866
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_2
    return-void
.end method

.method private startAnimationToCustomizationFromOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLjava/lang/Runnable;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)Landroid/animation/AnimatorSet;
    .locals 45
    .param p1, "fromWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "toWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p3, "toWorkspacePage"    # I
    .param p4, "buttonView"    # Landroid/view/View;
    .param p5, "fromView"    # Landroid/view/View;
    .param p6, "contentView"    # Landroid/view/View;
    .param p7, "revealView"    # Landroid/view/View;
    .param p8, "overlaySearchBarView"    # Landroid/view/View;
    .param p9, "animated"    # Z
    .param p10, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p11, "pCb"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    .prologue
    .line 1329
    sget-object v4, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startAnimationToCustomizationFromOverlay("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    .line 1332
    .local v5, "animation":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    .line 1333
    .local v35, "res":Landroid/content/res/Resources;
    sget-boolean v29, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    .line 1334
    .local v29, "material":Z
    const v4, 0x7f0f0033

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v37

    .line 1335
    .local v37, "revealDuration":I
    const v4, 0x7f0f0035

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v30

    .line 1336
    .local v30, "overlayDuration":I
    const v4, 0x7f0f0032

    .line 1337
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v27

    .line 1339
    .local v27, "itemsAlphaStagger":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v10

    .line 1341
    .local v10, "toView":Landroid/view/View;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1344
    .local v12, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    if-eqz p4, :cond_5

    const/16 v25, 0x1

    .line 1347
    .local v25, "initialized":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->cancelAnimation()V

    .line 1351
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p9

    invoke-virtual {v4, v0, v1, v2, v12}, Lnet/oneplus/h2launcher/Launcher;->startWorkspaceStateChangeAnimation(Lnet/oneplus/h2launcher/Workspace$State;IZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v44

    .line 1355
    .local v44, "workspaceAnim":Landroid/animation/Animator;
    if-eqz p9, :cond_6

    move/from16 v8, v37

    :goto_1
    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p8

    invoke-direct/range {v4 .. v9}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startWorkspaceSearchBarAnimation(Landroid/animation/AnimatorSet;Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;ILandroid/view/View;)V

    .line 1359
    if-eqz p9, :cond_7

    move/from16 v4, v30

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startCustomizationsViewAnimation(Lnet/oneplus/h2launcher/Workspace$State;I)V

    .line 1361
    if-eqz p9, :cond_8

    .end local v30    # "overlayDuration":I
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startWallpapersViewAnimation(Lnet/oneplus/h2launcher/Workspace$State;I)V

    .line 1363
    if-eqz p9, :cond_d

    if-eqz v25, :cond_d

    .line 1365
    if-eqz v44, :cond_0

    .line 1366
    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1372
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 1373
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v43

    .line 1374
    .local v43, "width":I
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    .line 1375
    .local v24, "height":I
    div-int/lit8 v4, v43, 0x2

    int-to-double v6, v4

    div-int/lit8 v4, v24, 0x2

    int-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v38, v0

    .line 1376
    .local v38, "revealRadius":F
    const/4 v4, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1377
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1378
    const/4 v4, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1379
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v12, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    if-eqz v29, :cond_9

    .line 1385
    const/4 v4, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4}, Lnet/oneplus/h2launcher/Utilities;->getCenterDeltaInScreenSpace(Landroid/view/View;Landroid/view/View;[I)[I

    move-result-object v20

    .line 1387
    .local v20, "buttonViewToPanelDelta":[I
    const/4 v4, 0x1

    aget v4, v20, v4

    int-to-float v0, v4

    move/from16 v41, v0

    .line 1388
    .local v41, "revealViewToYDrift":F
    const/4 v4, 0x0

    aget v4, v20, v4

    int-to-float v0, v4

    move/from16 v40, v0

    .line 1397
    .end local v20    # "buttonViewToPanelDelta":[I
    .local v40, "revealViewToXDrift":F
    :goto_4
    if-eqz v29, :cond_a

    new-instance v22, Lnet/oneplus/h2launcher/LogDecelerateInterpolator;

    const/16 v4, 0x64

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v6}, Lnet/oneplus/h2launcher/LogDecelerateInterpolator;-><init>(II)V

    .line 1400
    .local v22, "decelerateInterpolator":Landroid/animation/TimeInterpolator;
    :goto_5
    const-string v4, "translationY"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v41, v6, v7

    move-object/from16 v0, p7

    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v34

    .line 1402
    .local v34, "panelDriftY":Landroid/animation/ObjectAnimator;
    add-int/lit8 v4, v37, -0x10

    int-to-long v6, v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1403
    add-int/lit8 v4, v27, 0x10

    int-to-long v6, v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1404
    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1405
    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1407
    const-string v4, "translationX"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v40, v6, v7

    move-object/from16 v0, p7

    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    .line 1409
    .local v33, "panelDriftX":Landroid/animation/ObjectAnimator;
    add-int/lit8 v4, v37, -0x10

    int-to-long v6, v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1410
    add-int/lit8 v4, v27, 0x10

    int-to-long v6, v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1411
    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1412
    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1415
    const v39, 0x3e99999a    # 0.3f

    .line 1417
    .local v39, "revealViewToAlpha":F
    const-string v4, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    move-object/from16 v0, p7

    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v32

    .line 1419
    .local v32, "panelAlpha":Landroid/animation/ObjectAnimator;
    move/from16 v0, v37

    int-to-long v6, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1420
    add-int/lit8 v4, v27, 0x10

    int-to-long v6, v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1421
    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1422
    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1426
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v12, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    const-string v4, "translationY"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v41, v6, v7

    move-object/from16 v0, p6

    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v31

    .line 1431
    .local v31, "pageDrift":Landroid/animation/ObjectAnimator;
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1432
    add-int/lit8 v4, v37, -0x10

    int-to-long v6, v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1433
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1434
    add-int/lit8 v4, v27, 0x10

    int-to-long v6, v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1435
    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1437
    invoke-virtual/range {p11 .. p11}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->isContentViewAlphaEnabled()Z

    move-result v21

    .line 1438
    .local v21, "contentViewAlphaEnabled":Z
    if-eqz v21, :cond_1

    .line 1439
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1440
    const-string v4, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    move-object/from16 v0, p6

    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    .line 1441
    .local v26, "itemsAlpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x64

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1442
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1443
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1446
    .end local v26    # "itemsAlpha":Landroid/animation/ObjectAnimator;
    :cond_1
    if-eqz p8, :cond_2

    .line 1447
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1448
    const-string v4, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    move-object/from16 v0, p8

    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v42

    .line 1449
    .local v42, "searchAlpha":Landroid/animation/ObjectAnimator;
    if-eqz v29, :cond_b

    const-wide/16 v6, 0x64

    :goto_6
    move-object/from16 v0, v42

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1450
    move-object/from16 v0, v42

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1451
    if-eqz v29, :cond_c

    const-wide/16 v6, 0x0

    :goto_7
    move-object/from16 v0, v42

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1452
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v12, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1456
    .end local v42    # "searchAlpha":Landroid/animation/ObjectAnimator;
    :cond_2
    if-eqz v29, :cond_4

    .line 1458
    invoke-virtual/range {p11 .. p11}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewStartFinalRadius()F

    move-result v23

    .line 1460
    .local v23, "finalRadius":F
    move-object/from16 v0, p11

    move-object/from16 v1, p7

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v28

    .line 1461
    .local v28, "listener":Landroid/animation/AnimatorListenerAdapter;
    div-int/lit8 v4, v43, 0x2

    div-int/lit8 v6, v24, 0x2

    move-object/from16 v0, p7

    move/from16 v1, v38

    move/from16 v2, v23

    invoke-static {v0, v4, v6, v1, v2}, Lnet/oneplus/h2launcher/util/UiThreadCircularReveal;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/ValueAnimator;

    move-result-object v36

    .line 1463
    .local v36, "reveal":Landroid/animation/Animator;
    new-instance v4, Lnet/oneplus/h2launcher/LogDecelerateInterpolator;

    const/16 v6, 0x64

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lnet/oneplus/h2launcher/LogDecelerateInterpolator;-><init>(II)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1464
    move/from16 v0, v37

    int-to-long v6, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1465
    move/from16 v0, v27

    int-to-long v6, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1466
    if-eqz v28, :cond_3

    .line 1467
    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1469
    :cond_3
    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1473
    .end local v21    # "contentViewAlphaEnabled":Z
    .end local v22    # "decelerateInterpolator":Landroid/animation/TimeInterpolator;
    .end local v23    # "finalRadius":F
    .end local v24    # "height":I
    .end local v28    # "listener":Landroid/animation/AnimatorListenerAdapter;
    .end local v31    # "pageDrift":Landroid/animation/ObjectAnimator;
    .end local v32    # "panelAlpha":Landroid/animation/ObjectAnimator;
    .end local v33    # "panelDriftX":Landroid/animation/ObjectAnimator;
    .end local v34    # "panelDriftY":Landroid/animation/ObjectAnimator;
    .end local v36    # "reveal":Landroid/animation/Animator;
    .end local v38    # "revealRadius":F
    .end local v39    # "revealViewToAlpha":F
    .end local v40    # "revealViewToXDrift":F
    .end local v41    # "revealViewToYDrift":F
    .end local v43    # "width":I
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p9

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 1474
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v10, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 1476
    new-instance v6, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$21;

    move-object/from16 v7, p0

    move-object/from16 v8, p5

    move/from16 v9, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p6

    move-object/from16 v14, p8

    move-object/from16 v15, p11

    invoke-direct/range {v6 .. v15}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$21;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Landroid/view/View;ZLandroid/view/View;Ljava/lang/Runnable;Ljava/util/HashMap;Landroid/view/View;Landroid/view/View;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1511
    move-object v15, v5

    .line 1512
    .local v15, "stateAnimation":Landroid/animation/AnimatorSet;
    new-instance v13, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$22;

    move-object/from16 v14, p0

    move-object/from16 v16, p5

    move/from16 v17, p9

    move-object/from16 v18, v10

    move-object/from16 v19, v12

    invoke-direct/range {v13 .. v19}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$22;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;ZLandroid/view/View;Ljava/util/HashMap;)V

    .line 1534
    .local v13, "startAnimRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1552
    .end local v5    # "animation":Landroid/animation/AnimatorSet;
    .end local v13    # "startAnimRunnable":Ljava/lang/Runnable;
    .end local v15    # "stateAnimation":Landroid/animation/AnimatorSet;
    :goto_8
    return-object v5

    .line 1344
    .end local v25    # "initialized":Z
    .end local v44    # "workspaceAnim":Landroid/animation/Animator;
    .restart local v5    # "animation":Landroid/animation/AnimatorSet;
    .restart local v30    # "overlayDuration":I
    :cond_5
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1355
    .restart local v25    # "initialized":Z
    .restart local v44    # "workspaceAnim":Landroid/animation/Animator;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1359
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1361
    :cond_8
    const/16 v30, 0x0

    goto/16 :goto_3

    .line 1390
    .end local v30    # "overlayDuration":I
    .restart local v24    # "height":I
    .restart local v38    # "revealRadius":F
    .restart local v43    # "width":I
    :cond_9
    mul-int/lit8 v4, v24, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-float v0, v4

    move/from16 v41, v0

    .line 1391
    .restart local v41    # "revealViewToYDrift":F
    const/16 v40, 0x0

    .restart local v40    # "revealViewToXDrift":F
    goto/16 :goto_4

    .line 1397
    :cond_a
    new-instance v22, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto/16 :goto_5

    .line 1449
    .restart local v21    # "contentViewAlphaEnabled":Z
    .restart local v22    # "decelerateInterpolator":Landroid/animation/TimeInterpolator;
    .restart local v31    # "pageDrift":Landroid/animation/ObjectAnimator;
    .restart local v32    # "panelAlpha":Landroid/animation/ObjectAnimator;
    .restart local v33    # "panelDriftX":Landroid/animation/ObjectAnimator;
    .restart local v34    # "panelDriftY":Landroid/animation/ObjectAnimator;
    .restart local v39    # "revealViewToAlpha":F
    .restart local v42    # "searchAlpha":Landroid/animation/ObjectAnimator;
    :cond_b
    const-wide/16 v6, 0x96

    goto/16 :goto_6

    .line 1451
    :cond_c
    add-int/lit8 v4, v27, 0x10

    int-to-long v6, v4

    goto/16 :goto_7

    .line 1538
    .end local v21    # "contentViewAlphaEnabled":Z
    .end local v22    # "decelerateInterpolator":Landroid/animation/TimeInterpolator;
    .end local v24    # "height":I
    .end local v31    # "pageDrift":Landroid/animation/ObjectAnimator;
    .end local v32    # "panelAlpha":Landroid/animation/ObjectAnimator;
    .end local v33    # "panelDriftX":Landroid/animation/ObjectAnimator;
    .end local v34    # "panelDriftY":Landroid/animation/ObjectAnimator;
    .end local v38    # "revealRadius":F
    .end local v39    # "revealViewToAlpha":F
    .end local v40    # "revealViewToXDrift":F
    .end local v41    # "revealViewToYDrift":F
    .end local v42    # "searchAlpha":Landroid/animation/ObjectAnimator;
    .end local v43    # "width":I
    :cond_d
    const/16 v4, 0x8

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1539
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p9

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 1540
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p9

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 1541
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p9

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 1542
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v10, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 1543
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v10, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 1544
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v10, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 1545
    invoke-virtual/range {p11 .. p11}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    .line 1548
    if-eqz p10, :cond_e

    .line 1549
    invoke-interface/range {p10 .. p10}, Ljava/lang/Runnable;->run()V

    .line 1552
    :cond_e
    const/4 v5, 0x0

    goto :goto_8

    .line 1417
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    .line 1440
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1448
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startAnimationToFolderOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;Landroid/view/View;Lnet/oneplus/h2launcher/FoldersContainerView;ZILnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
    .locals 24
    .param p1, "fromWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "toWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p3, "buttonView"    # Landroid/view/View;
    .param p4, "toView"    # Lnet/oneplus/h2launcher/FoldersContainerView;
    .param p5, "animated"    # Z
    .param p6, "animType"    # I
    .param p7, "pCb"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 717
    sget-object v4, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startAnimationToFolderOverlay("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v17

    .line 720
    .local v17, "animation":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 722
    .local v21, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v6

    .line 724
    .local v6, "fromView":Landroid/view/View;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 727
    .local v9, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    if-eqz p3, :cond_2

    const/16 v20, 0x1

    .line 730
    .local v20, "initialized":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->cancelAnimation()V

    .line 734
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v23, 0x0

    .line 737
    .local v23, "workspaceAnim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lnet/oneplus/h2launcher/FoldersContainerView;->getContentView()Landroid/view/View;

    move-result-object v18

    .line 739
    .local v18, "contentView":Landroid/view/View;
    if-eqz p5, :cond_0

    if-nez v20, :cond_4

    .line 740
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/FoldersContainerView;->setTranslationX(F)V

    .line 741
    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/FoldersContainerView;->setTranslationY(F)V

    .line 742
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/FoldersContainerView;->setScaleX(F)V

    .line 743
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/FoldersContainerView;->setScaleY(F)V

    .line 744
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/FoldersContainerView;->setAlpha(F)V

    .line 745
    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/FoldersContainerView;->setVisibility(I)V

    .line 748
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 750
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 751
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 752
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 753
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 754
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 755
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 756
    invoke-virtual/range {p7 .. p7}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    .line 830
    :cond_1
    :goto_2
    return-void

    .line 727
    .end local v18    # "contentView":Landroid/view/View;
    .end local v20    # "initialized":Z
    .end local v23    # "workspaceAnim":Landroid/animation/Animator;
    :cond_2
    const/16 v20, 0x0

    goto :goto_0

    .line 734
    .restart local v20    # "initialized":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v5, -0x1

    .line 735
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v4, v0, v5, v1, v9}, Lnet/oneplus/h2launcher/Launcher;->startWorkspaceStateChangeAnimation(Lnet/oneplus/h2launcher/Workspace$State;IZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v23

    goto :goto_1

    .line 760
    .restart local v18    # "contentView":Landroid/view/View;
    .restart local v23    # "workspaceAnim":Landroid/animation/Animator;
    :cond_4
    const/4 v4, 0x3

    move/from16 v0, p6

    if-ne v0, v4, :cond_1

    .line 762
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    new-instance v4, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;

    move-object/from16 v5, p0

    move/from16 v7, p5

    move-object/from16 v8, p4

    move-object/from16 v10, p7

    invoke-direct/range {v4 .. v10}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$11;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Landroid/view/View;ZLnet/oneplus/h2launcher/FoldersContainerView;Ljava/util/HashMap;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 782
    const v4, 0x7f0f002e

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    .line 783
    .local v19, "duration":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mFoldersController:Lnet/oneplus/h2launcher/FoldersTransitionController;

    move/from16 v0, v19

    int-to-long v14, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v14, v15}, Lnet/oneplus/h2launcher/FoldersTransitionController;->animateToFolders(Landroid/animation/AnimatorSet;J)Z

    move-result v22

    .line 786
    .local v22, "shouldPost":Z
    if-eqz v23, :cond_5

    .line 787
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 790
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 791
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 793
    move-object/from16 v12, v17

    .line 794
    .local v12, "stateAnimation":Landroid/animation/AnimatorSet;
    new-instance v10, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$12;

    move-object/from16 v11, p0

    move-object v13, v6

    move/from16 v14, p5

    move-object/from16 v15, p4

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$12;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;ZLnet/oneplus/h2launcher/FoldersContainerView;Ljava/util/HashMap;)V

    .line 823
    .local v10, "startAnimRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 824
    if-eqz v22, :cond_6

    .line 825
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lnet/oneplus/h2launcher/FoldersContainerView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 827
    :cond_6
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_2
.end method

.method private startAnimationToOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)Landroid/animation/AnimatorSet;
    .locals 46
    .param p1, "fromWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "toWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p3, "buttonView"    # Landroid/view/View;
    .param p4, "toView"    # Landroid/view/View;
    .param p5, "contentView"    # Landroid/view/View;
    .param p6, "revealView"    # Landroid/view/View;
    .param p7, "overlaySearchBarView"    # Landroid/view/View;
    .param p8, "animated"    # Z
    .param p9, "pCb"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 475
    sget-object v4, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startAnimationToWorkspaceFromOverlay("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    .line 478
    .local v5, "animation":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    .line 479
    .local v32, "res":Landroid/content/res/Resources;
    sget-boolean v25, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    .line 480
    .local v25, "material":Z
    const v4, 0x7f0f0033

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v34

    .line 481
    .local v34, "revealDuration":I
    const v4, 0x7f0f0035

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v26

    .line 482
    .local v26, "overlayDuration":I
    const v4, 0x7f0f0032

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v23

    .line 483
    .local v23, "itemsAlphaStagger":I
    sget-object v4, Lnet/oneplus/h2launcher/Workspace$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_8

    sget-object v4, Lnet/oneplus/h2launcher/Workspace$State;->SHRUNKEN_ALL_APPS:Lnet/oneplus/h2launcher/Workspace$State;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_8

    const/4 v13, 0x1

    .line 486
    .local v13, "customizationToShrunkenAllApps":Z
    :goto_0
    sget-object v4, Lnet/oneplus/h2launcher/Workspace$State;->SHRUNKEN_ALL_APPS:Lnet/oneplus/h2launcher/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_9

    sget-object v4, Lnet/oneplus/h2launcher/Workspace$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Workspace$State;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_9

    const/16 v40, 0x1

    .line 490
    .local v40, "shrunkenAllAppsToCustomization":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v19

    .line 492
    .local v19, "fromView":Landroid/view/View;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 495
    .local v14, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    if-eqz p3, :cond_a

    const/16 v21, 0x1

    .line 498
    .local v21, "initialized":Z
    :goto_2
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->cancelAnimation()V

    .line 501
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v7, -0x1

    move-object/from16 v0, p2

    move/from16 v1, p8

    invoke-virtual {v4, v0, v7, v1, v14}, Lnet/oneplus/h2launcher/Launcher;->startWorkspaceStateChangeAnimation(Lnet/oneplus/h2launcher/Workspace$State;IZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v43

    .line 505
    .local v43, "workspaceAnim":Landroid/animation/Animator;
    if-eqz p8, :cond_b

    move/from16 v8, v34

    :goto_3
    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v9}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startWorkspaceSearchBarAnimation(Landroid/animation/AnimatorSet;Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;ILandroid/view/View;)V

    .line 508
    if-eqz v40, :cond_0

    .line 509
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v16

    .line 510
    .local v16, "allAppsContainerView":Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;
    if-eqz v16, :cond_c

    .line 511
    const/4 v4, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->setVisibility(I)V

    .line 518
    .end local v16    # "allAppsContainerView":Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;
    :cond_0
    :goto_4
    if-eqz p8, :cond_d

    move/from16 v4, v26

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startCustomizationsViewAnimation(Lnet/oneplus/h2launcher/Workspace$State;I)V

    .line 520
    if-eqz p8, :cond_e

    move/from16 v4, v26

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startWallpapersViewAnimation(Lnet/oneplus/h2launcher/Workspace$State;I)V

    .line 522
    if-eqz p8, :cond_f

    .end local v26    # "overlayDuration":I
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startIconRearrangementViewAnimation(Lnet/oneplus/h2launcher/Workspace$State;I)V

    .line 524
    if-eqz p8, :cond_12

    if-eqz v21, :cond_12

    .line 526
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v42

    .line 527
    .local v42, "width":I
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    .line 528
    .local v20, "height":I
    div-int/lit8 v4, v42, 0x2

    int-to-double v10, v4

    div-int/lit8 v4, v20, 0x2

    int-to-double v0, v4

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v0, v10

    move/from16 v35, v0

    .line 529
    .local v35, "revealRadius":F
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 530
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 531
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 532
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 538
    if-eqz v25, :cond_10

    .line 539
    const/4 v4, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Lnet/oneplus/h2launcher/Utilities;->getCenterDeltaInScreenSpace(Landroid/view/View;Landroid/view/View;[I)[I

    move-result-object v17

    .line 541
    .local v17, "buttonViewToPanelDelta":[I
    move-object/from16 v0, p9

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewFinalAlpha(Landroid/view/View;)F

    move-result v36

    .line 542
    .local v36, "revealViewToAlpha":F
    const/4 v4, 0x1

    aget v4, v17, v4

    int-to-float v0, v4

    move/from16 v38, v0

    .line 543
    .local v38, "revealViewToYDrift":F
    const/4 v4, 0x0

    aget v4, v17, v4

    int-to-float v0, v4

    move/from16 v37, v0

    .line 551
    .end local v17    # "buttonViewToPanelDelta":[I
    .local v37, "revealViewToXDrift":F
    :goto_8
    const-string v4, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v9, 0x0

    aput v36, v7, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v7, v9

    .line 552
    invoke-static {v4, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v28

    .line 553
    .local v28, "panelAlpha":Landroid/animation/PropertyValuesHolder;
    const-string v4, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v9, 0x0

    aput v38, v7, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v7, v9

    .line 554
    invoke-static {v4, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v31

    .line 555
    .local v31, "panelDriftY":Landroid/animation/PropertyValuesHolder;
    const-string v4, "translationX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v9, 0x0

    aput v37, v7, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v7, v9

    .line 556
    invoke-static {v4, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v30

    .line 557
    .local v30, "panelDriftX":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    aput-object v28, v4, v7

    const/4 v7, 0x1

    aput-object v31, v4, v7

    const/4 v7, 0x2

    aput-object v30, v4, v7

    move-object/from16 v0, p6

    invoke-static {v0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v29

    .line 559
    .local v29, "panelAlphaAndDrift":Landroid/animation/ObjectAnimator;
    move/from16 v0, v34

    int-to-long v10, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 560
    new-instance v4, Lnet/oneplus/h2launcher/LogDecelerateInterpolator;

    const/16 v7, 0x64

    const/4 v9, 0x0

    invoke-direct {v4, v7, v9}, Lnet/oneplus/h2launcher/LogDecelerateInterpolator;-><init>(II)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 563
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v14, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 566
    if-eqz p7, :cond_1

    if-nez v13, :cond_1

    .line 567
    const/4 v4, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 568
    const-string v4, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    move-object/from16 v0, p7

    invoke-static {v0, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v39

    .line 569
    .local v39, "searchBarAlpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v10, 0x64

    move-object/from16 v0, v39

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 570
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-direct {v4, v7}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 571
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v14, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 576
    .end local v39    # "searchBarAlpha":Landroid/animation/ObjectAnimator;
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 577
    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 578
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v14, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    if-eqz v13, :cond_2

    .line 582
    const/16 v23, 0x0

    .line 584
    :cond_2
    const-string v4, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v9, 0x0

    aput v38, v7, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v7, v9

    move-object/from16 v0, p5

    invoke-static {v0, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v27

    .line 586
    .local v27, "pageDrift":Landroid/animation/ObjectAnimator;
    move/from16 v0, v34

    int-to-long v10, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 587
    new-instance v4, Lnet/oneplus/h2launcher/LogDecelerateInterpolator;

    const/16 v7, 0x64

    const/4 v9, 0x0

    invoke-direct {v4, v7, v9}, Lnet/oneplus/h2launcher/LogDecelerateInterpolator;-><init>(II)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 588
    move/from16 v0, v23

    int-to-long v10, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 589
    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 591
    invoke-virtual/range {p9 .. p9}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->isContentViewAlphaEnabled()Z

    move-result v18

    .line 592
    .local v18, "contentViewAlphaEnabled":Z
    if-eqz v18, :cond_3

    .line 593
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 594
    const-string v4, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    move-object/from16 v0, p5

    invoke-static {v0, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 595
    .local v22, "itemsAlpha":Landroid/animation/ObjectAnimator;
    move/from16 v0, v34

    int-to-long v10, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 596
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-direct {v4, v7}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 597
    move/from16 v0, v23

    int-to-long v10, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 598
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 601
    .end local v22    # "itemsAlpha":Landroid/animation/ObjectAnimator;
    :cond_3
    if-eqz v25, :cond_5

    .line 602
    invoke-virtual/range {p9 .. p9}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewStartFinalRadius()F

    move-result v41

    .line 603
    .local v41, "startRadius":F
    move-object/from16 v0, p9

    move-object/from16 v1, p6

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v24

    .line 605
    .local v24, "listener":Landroid/animation/AnimatorListenerAdapter;
    div-int/lit8 v4, v42, 0x2

    div-int/lit8 v7, v20, 0x2

    move-object/from16 v0, p6

    move/from16 v1, v41

    move/from16 v2, v35

    invoke-static {v0, v4, v7, v1, v2}, Lnet/oneplus/h2launcher/util/UiThreadCircularReveal;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/ValueAnimator;

    move-result-object v33

    .line 607
    .local v33, "reveal":Landroid/animation/Animator;
    move/from16 v0, v34

    int-to-long v10, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 608
    new-instance v4, Lnet/oneplus/h2launcher/LogDecelerateInterpolator;

    const/16 v7, 0x64

    const/4 v9, 0x0

    invoke-direct {v4, v7, v9}, Lnet/oneplus/h2launcher/LogDecelerateInterpolator;-><init>(II)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 609
    if-eqz v24, :cond_4

    .line 610
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 612
    :cond_4
    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 615
    .end local v24    # "listener":Landroid/animation/AnimatorListenerAdapter;
    .end local v33    # "reveal":Landroid/animation/Animator;
    .end local v41    # "startRadius":F
    :cond_5
    new-instance v6, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;

    move-object/from16 v7, p0

    move-object/from16 v8, v19

    move/from16 v9, p8

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v15, p9

    invoke-direct/range {v6 .. v15}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$9;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Landroid/view/View;ZLandroid/view/View;Landroid/view/View;Landroid/view/View;ZLjava/util/HashMap;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 643
    if-eqz v43, :cond_6

    .line 644
    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 648
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 649
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 652
    move-object v8, v5

    .line 653
    .local v8, "stateAnimation":Landroid/animation/AnimatorSet;
    new-instance v6, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$10;

    move-object/from16 v7, p0

    move-object/from16 v9, v19

    move/from16 v10, p8

    move-object/from16 v11, p4

    move-object v12, v14

    invoke-direct/range {v6 .. v12}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$10;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;ZLandroid/view/View;Ljava/util/HashMap;)V

    .line 677
    .local v6, "startAnimRunnable":Ljava/lang/Runnable;
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->bringToFront()V

    .line 678
    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 679
    if-eqz p7, :cond_7

    .line 680
    if-eqz v13, :cond_11

    const/4 v4, 0x4

    :goto_9
    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 682
    :cond_7
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 704
    .end local v5    # "animation":Landroid/animation/AnimatorSet;
    .end local v6    # "startAnimRunnable":Ljava/lang/Runnable;
    .end local v8    # "stateAnimation":Landroid/animation/AnimatorSet;
    .end local v18    # "contentViewAlphaEnabled":Z
    .end local v20    # "height":I
    .end local v27    # "pageDrift":Landroid/animation/ObjectAnimator;
    .end local v28    # "panelAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v29    # "panelAlphaAndDrift":Landroid/animation/ObjectAnimator;
    .end local v30    # "panelDriftX":Landroid/animation/PropertyValuesHolder;
    .end local v31    # "panelDriftY":Landroid/animation/PropertyValuesHolder;
    .end local v35    # "revealRadius":F
    .end local v36    # "revealViewToAlpha":F
    .end local v37    # "revealViewToXDrift":F
    .end local v38    # "revealViewToYDrift":F
    .end local v42    # "width":I
    :goto_a
    return-object v5

    .line 483
    .end local v13    # "customizationToShrunkenAllApps":Z
    .end local v14    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .end local v19    # "fromView":Landroid/view/View;
    .end local v21    # "initialized":Z
    .end local v40    # "shrunkenAllAppsToCustomization":Z
    .end local v43    # "workspaceAnim":Landroid/animation/Animator;
    .restart local v5    # "animation":Landroid/animation/AnimatorSet;
    .restart local v26    # "overlayDuration":I
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 486
    .restart local v13    # "customizationToShrunkenAllApps":Z
    :cond_9
    const/16 v40, 0x0

    goto/16 :goto_1

    .line 495
    .restart local v14    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .restart local v19    # "fromView":Landroid/view/View;
    .restart local v40    # "shrunkenAllAppsToCustomization":Z
    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 505
    .restart local v21    # "initialized":Z
    .restart local v43    # "workspaceAnim":Landroid/animation/Animator;
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 513
    .restart local v16    # "allAppsContainerView":Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;
    :cond_c
    sget-object v4, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->TAG:Ljava/lang/String;

    const-string v7, "[startAnimationToOverlay] appsView is null. Should not be here!"

    invoke-static {v4, v7}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 518
    .end local v16    # "allAppsContainerView":Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 520
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 522
    :cond_f
    const/16 v26, 0x0

    goto/16 :goto_7

    .line 545
    .end local v26    # "overlayDuration":I
    .restart local v20    # "height":I
    .restart local v35    # "revealRadius":F
    .restart local v42    # "width":I
    :cond_10
    const/16 v36, 0x0

    .line 546
    .restart local v36    # "revealViewToAlpha":F
    mul-int/lit8 v4, v20, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-float v0, v4

    move/from16 v38, v0

    .line 547
    .restart local v38    # "revealViewToYDrift":F
    const/16 v37, 0x0

    .restart local v37    # "revealViewToXDrift":F
    goto/16 :goto_8

    .line 680
    .restart local v6    # "startAnimRunnable":Ljava/lang/Runnable;
    .restart local v8    # "stateAnimation":Landroid/animation/AnimatorSet;
    .restart local v18    # "contentViewAlphaEnabled":Z
    .restart local v27    # "pageDrift":Landroid/animation/ObjectAnimator;
    .restart local v28    # "panelAlpha":Landroid/animation/PropertyValuesHolder;
    .restart local v29    # "panelAlphaAndDrift":Landroid/animation/ObjectAnimator;
    .restart local v30    # "panelDriftX":Landroid/animation/PropertyValuesHolder;
    .restart local v31    # "panelDriftY":Landroid/animation/PropertyValuesHolder;
    :cond_11
    const/4 v4, 0x0

    goto :goto_9

    .line 686
    .end local v6    # "startAnimRunnable":Ljava/lang/Runnable;
    .end local v8    # "stateAnimation":Landroid/animation/AnimatorSet;
    .end local v18    # "contentViewAlphaEnabled":Z
    .end local v20    # "height":I
    .end local v27    # "pageDrift":Landroid/animation/ObjectAnimator;
    .end local v28    # "panelAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v29    # "panelAlphaAndDrift":Landroid/animation/ObjectAnimator;
    .end local v30    # "panelDriftX":Landroid/animation/PropertyValuesHolder;
    .end local v31    # "panelDriftY":Landroid/animation/PropertyValuesHolder;
    .end local v35    # "revealRadius":F
    .end local v36    # "revealViewToAlpha":F
    .end local v37    # "revealViewToXDrift":F
    .end local v38    # "revealViewToYDrift":F
    .end local v42    # "width":I
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 687
    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 688
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 689
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 690
    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 691
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->bringToFront()V

    .line 694
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 696
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 697
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 698
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 699
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 700
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 701
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 702
    invoke-virtual/range {p9 .. p9}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    .line 704
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 568
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 594
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startAnimationToWorkspaceFromAllApps(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/lang/Runnable;)V
    .locals 12
    .param p1, "fromWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "toWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p3, "toWorkspacePage"    # I
    .param p4, "animated"    # Z
    .param p5, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 838
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v5

    .line 839
    .local v5, "appsView":Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;
    if-nez v5, :cond_0

    .line 840
    sget-object v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->TAG:Ljava/lang/String;

    const-string v1, "[startAnimationToWorkspaceFromAllApps] appsView is null. Should not be here!"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    :goto_0
    return-void

    .line 844
    :cond_0
    new-instance v11, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$13;

    invoke-direct {v11, p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$13;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;)V

    .line 876
    .local v11, "cb":Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 877
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAllAppsButton()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getContentView()Landroid/view/View;

    move-result-object v6

    .line 878
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getSearchBarView()Landroid/view/View;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    .line 876
    invoke-direct/range {v0 .. v11}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLjava/lang/Runnable;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method private startAnimationToWorkspaceFromCustomizations(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/lang/Runnable;)V
    .locals 12
    .param p1, "fromWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "toWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p3, "toWorkspacePage"    # I
    .param p4, "animated"    # Z
    .param p5, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 953
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getCustomizationsView()Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    move-result-object v5

    .line 954
    .local v5, "customizationsView":Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;
    new-instance v11, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$16;

    invoke-direct {v11, p0, v5}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$16;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;)V

    .line 985
    .local v11, "cb":Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v4

    .line 986
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->getContentView()Landroid/view/View;

    move-result-object v6

    .line 987
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    .line 984
    invoke-direct/range {v0 .. v11}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLjava/lang/Runnable;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 988
    return-void
.end method

.method private startAnimationToWorkspaceFromFolderOverlay(Lnet/oneplus/h2launcher/Workspace$State;Landroid/view/View;Lnet/oneplus/h2launcher/FoldersContainerView;ZILjava/lang/Runnable;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
    .locals 25
    .param p1, "toWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "buttonView"    # Landroid/view/View;
    .param p3, "fromView"    # Lnet/oneplus/h2launcher/FoldersContainerView;
    .param p4, "animated"    # Z
    .param p5, "animType"    # I
    .param p6, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p7, "pCb"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    .prologue
    .line 1564
    sget-object v4, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startAnimationToWorkspaceFromFolderOverlay("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v18

    .line 1566
    .local v18, "animation":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 1568
    .local v22, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v8

    .line 1569
    .local v8, "toView":Landroid/view/View;
    invoke-virtual/range {p3 .. p3}, Lnet/oneplus/h2launcher/FoldersContainerView;->getContentView()Landroid/view/View;

    move-result-object v19

    .line 1571
    .local v19, "contentView":Landroid/view/View;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1574
    .local v10, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_2

    const/16 v21, 0x1

    .line 1577
    .local v21, "initialized":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->cancelAnimation()V

    .line 1581
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v24, 0x0

    .line 1584
    .local v24, "workspaceAnim":Landroid/animation/Animator;
    :goto_1
    if-eqz p4, :cond_0

    if-nez v21, :cond_4

    .line 1585
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mFoldersController:Lnet/oneplus/h2launcher/FoldersTransitionController;

    sget-object v5, Lnet/oneplus/h2launcher/FoldersTransitionController$State;->WORKSPACE:Lnet/oneplus/h2launcher/FoldersTransitionController$State;

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/FoldersTransitionController;->endAnimation(Lnet/oneplus/h2launcher/FoldersTransitionController$State;)V

    .line 1586
    const/16 v4, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/FoldersContainerView;->setVisibility(I)V

    .line 1587
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 1588
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 1589
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 1590
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v8, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 1591
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v8, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 1592
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v8, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 1593
    invoke-virtual/range {p7 .. p7}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    .line 1596
    if-eqz p6, :cond_1

    .line 1597
    invoke-interface/range {p6 .. p6}, Ljava/lang/Runnable;->run()V

    .line 1683
    :cond_1
    :goto_2
    return-void

    .line 1574
    .end local v21    # "initialized":Z
    .end local v24    # "workspaceAnim":Landroid/animation/Animator;
    :cond_2
    const/16 v21, 0x0

    goto :goto_0

    .line 1581
    .restart local v21    # "initialized":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v5, -0x1

    .line 1582
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v4, v0, v5, v1, v10}, Lnet/oneplus/h2launcher/Launcher;->startWorkspaceStateChangeAnimation(Lnet/oneplus/h2launcher/Workspace$State;IZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v24

    goto :goto_1

    .line 1602
    .restart local v24    # "workspaceAnim":Landroid/animation/Animator;
    :cond_4
    const/4 v4, 0x3

    move/from16 v0, p5

    if-ne v0, v4, :cond_1

    .line 1604
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    new-instance v4, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v11, p7

    invoke-direct/range {v4 .. v11}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$23;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Lnet/oneplus/h2launcher/FoldersContainerView;ZLandroid/view/View;Ljava/lang/Runnable;Ljava/util/HashMap;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1638
    const v4, 0x7f0f002e

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    .line 1639
    .local v20, "duration":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mFoldersController:Lnet/oneplus/h2launcher/FoldersTransitionController;

    move/from16 v0, v20

    int-to-long v6, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v6, v7}, Lnet/oneplus/h2launcher/FoldersTransitionController;->animateToWorkspace(Landroid/animation/AnimatorSet;J)Z

    move-result v23

    .line 1642
    .local v23, "shouldPost":Z
    if-eqz v24, :cond_5

    .line 1643
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1647
    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 1648
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v8, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 1650
    move-object/from16 v13, v18

    .line 1651
    .local v13, "stateAnimation":Landroid/animation/AnimatorSet;
    new-instance v11, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;

    move-object/from16 v12, p0

    move-object/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, v8

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$24;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Lnet/oneplus/h2launcher/FoldersContainerView;ZLandroid/view/View;Ljava/util/HashMap;)V

    .line 1676
    .local v11, "startAnimRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 1677
    if-eqz v23, :cond_6

    .line 1678
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lnet/oneplus/h2launcher/FoldersContainerView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 1680
    :cond_6
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_2
.end method

.method private startAnimationToWorkspaceFromFolders(Lnet/oneplus/h2launcher/Workspace$State;ZLjava/lang/Runnable;)V
    .locals 8
    .param p1, "toWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "animated"    # Z
    .param p3, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 888
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getFoldersView()Lnet/oneplus/h2launcher/FoldersContainerView;

    move-result-object v3

    .line 889
    .local v3, "foldersView":Lnet/oneplus/h2launcher/FoldersContainerView;
    new-instance v7, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$14;

    invoke-direct {v7, p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$14;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;)V

    .line 900
    .local v7, "cb":Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/FoldersContainerView;->getRevealView()Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromFolderOverlay(Lnet/oneplus/h2launcher/Workspace$State;Landroid/view/View;Lnet/oneplus/h2launcher/FoldersContainerView;ZILjava/lang/Runnable;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    .line 902
    return-void
.end method

.method private startAnimationToWorkspaceFromIconRearrangement(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZ)V
    .locals 12
    .param p1, "fromWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "toWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p3, "toWorkspacePage"    # I
    .param p4, "animated"    # Z

    .prologue
    .line 1046
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getIconRearrangementView()Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    move-result-object v5

    .line 1047
    .local v5, "iconRearrangementView":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;
    new-instance v11, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$18;

    invoke-direct {v11, p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$18;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;)V

    .line 1074
    .local v11, "cb":Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->getRevealView()Landroid/view/View;

    move-result-object v4

    .line 1075
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->getContentView()Landroid/view/View;

    move-result-object v6

    .line 1076
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->getRevealView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v9, p4

    .line 1073
    invoke-direct/range {v0 .. v11}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLjava/lang/Runnable;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 1077
    return-void
.end method

.method private startAnimationToWorkspaceFromOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLjava/lang/Runnable;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)Landroid/animation/AnimatorSet;
    .locals 46
    .param p1, "fromWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "toWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p3, "toWorkspacePage"    # I
    .param p4, "buttonView"    # Landroid/view/View;
    .param p5, "fromView"    # Landroid/view/View;
    .param p6, "contentView"    # Landroid/view/View;
    .param p7, "revealView"    # Landroid/view/View;
    .param p8, "overlaySearchBarView"    # Landroid/view/View;
    .param p9, "animated"    # Z
    .param p10, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p11, "pCb"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    .prologue
    .line 1087
    sget-object v4, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startAnimationToWorkspaceFromOverlay("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    .line 1090
    .local v5, "animation":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    .line 1091
    .local v35, "res":Landroid/content/res/Resources;
    sget-boolean v29, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    .line 1092
    .local v29, "material":Z
    const v4, 0x7f0f0033

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v37

    .line 1093
    .local v37, "revealDuration":I
    const v4, 0x7f0f0035

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v30

    .line 1094
    .local v30, "overlayDuration":I
    const v4, 0x7f0f0032

    .line 1095
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v27

    .line 1097
    .local v27, "itemsAlphaStagger":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v10

    .line 1099
    .local v10, "toView":Landroid/view/View;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1102
    .local v12, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    if-eqz p4, :cond_7

    const/16 v25, 0x1

    .line 1105
    .local v25, "initialized":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->cancelAnimation()V

    .line 1109
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p9

    invoke-virtual {v4, v0, v1, v2, v12}, Lnet/oneplus/h2launcher/Launcher;->startWorkspaceStateChangeAnimation(Lnet/oneplus/h2launcher/Workspace$State;IZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v45

    .line 1112
    .local v45, "workspaceAnim":Landroid/animation/Animator;
    sget-object v4, Lnet/oneplus/h2launcher/Workspace$State;->SHRUNKEN_ALL_APPS:Lnet/oneplus/h2launcher/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_8

    sget-object v4, Lnet/oneplus/h2launcher/Workspace$State;->OVERVIEW:Lnet/oneplus/h2launcher/Workspace$State;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_0

    sget-object v4, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_8

    :cond_0
    const/16 v43, 0x1

    .line 1114
    .local v43, "shrunkenAllAppsToOverview":Z
    :goto_1
    if-eqz v43, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1115
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v4

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->setVisibility(I)V

    .line 1119
    :cond_1
    if-eqz p9, :cond_9

    move/from16 v8, v37

    :goto_2
    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p8

    invoke-direct/range {v4 .. v9}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startWorkspaceSearchBarAnimation(Landroid/animation/AnimatorSet;Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;ILandroid/view/View;)V

    .line 1123
    if-eqz p9, :cond_a

    move/from16 v4, v30

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startCustomizationsViewAnimation(Lnet/oneplus/h2launcher/Workspace$State;I)V

    .line 1125
    if-eqz p9, :cond_b

    move/from16 v4, v30

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startWallpapersViewAnimation(Lnet/oneplus/h2launcher/Workspace$State;I)V

    .line 1127
    if-eqz p9, :cond_c

    .end local v30    # "overlayDuration":I
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startIconRearrangementViewAnimation(Lnet/oneplus/h2launcher/Workspace$State;I)V

    .line 1129
    if-eqz p9, :cond_11

    if-eqz v25, :cond_11

    .line 1131
    if-eqz v45, :cond_2

    .line 1132
    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1138
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    .line 1139
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v44

    .line 1140
    .local v44, "width":I
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    .line 1141
    .local v24, "height":I
    div-int/lit8 v4, v44, 0x2

    int-to-double v6, v4

    div-int/lit8 v4, v24, 0x2

    int-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v38, v0

    .line 1142
    .local v38, "revealRadius":F
    const/4 v4, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1143
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1144
    const/4 v4, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1145
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v12, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    if-eqz v29, :cond_d

    .line 1151
    const/4 v4, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4}, Lnet/oneplus/h2launcher/Utilities;->getCenterDeltaInScreenSpace(Landroid/view/View;Landroid/view/View;[I)[I

    move-result-object v20

    .line 1153
    .local v20, "buttonViewToPanelDelta":[I
    const/4 v4, 0x1

    aget v4, v20, v4

    int-to-float v0, v4

    move/from16 v41, v0

    .line 1154
    .local v41, "revealViewToYDrift":F
    const/4 v4, 0x0

    aget v4, v20, v4

    int-to-float v0, v4

    move/from16 v40, v0

    .line 1163
    .end local v20    # "buttonViewToPanelDelta":[I
    .local v40, "revealViewToXDrift":F
    :goto_6
    if-eqz v29, :cond_e

    new-instance v22, Lnet/oneplus/h2launcher/LogDecelerateInterpolator;

    const/16 v4, 0x64

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v6}, Lnet/oneplus/h2launcher/LogDecelerateInterpolator;-><init>(II)V

    .line 1166
    .local v22, "decelerateInterpolator":Landroid/animation/TimeInterpolator;
    :goto_7
    const-string v4, "translationY"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v41, v6, v7

    move-object/from16 v0, p7

    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v34

    .line 1168
    .local v34, "panelDriftY":Landroid/animation/ObjectAnimator;
    add-int/lit8 v4, v37, -0x10

    int-to-long v6, v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1169
    add-int/lit8 v4, v27, 0x10

    int-to-long v6, v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1170
    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1171
    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1173
    const-string v4, "translationX"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v40, v6, v7

    move-object/from16 v0, p7

    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    .line 1175
    .local v33, "panelDriftX":Landroid/animation/ObjectAnimator;
    add-int/lit8 v4, v37, -0x10

    int-to-long v6, v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1176
    add-int/lit8 v4, v27, 0x10

    int-to-long v6, v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1177
    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1178
    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1181
    const v39, 0x3e99999a    # 0.3f

    .line 1183
    .local v39, "revealViewToAlpha":F
    const-string v4, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    move-object/from16 v0, p7

    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v32

    .line 1185
    .local v32, "panelAlpha":Landroid/animation/ObjectAnimator;
    move/from16 v0, v37

    int-to-long v6, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1186
    add-int/lit8 v4, v27, 0x10

    int-to-long v6, v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1187
    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1188
    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1192
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v12, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    const-string v4, "translationY"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v41, v6, v7

    move-object/from16 v0, p6

    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v31

    .line 1197
    .local v31, "pageDrift":Landroid/animation/ObjectAnimator;
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1198
    add-int/lit8 v4, v37, -0x10

    int-to-long v6, v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1199
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1200
    add-int/lit8 v4, v27, 0x10

    int-to-long v6, v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1201
    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1203
    invoke-virtual/range {p11 .. p11}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->isContentViewAlphaEnabled()Z

    move-result v21

    .line 1204
    .local v21, "contentViewAlphaEnabled":Z
    if-eqz v21, :cond_3

    .line 1205
    const-string v4, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    move-object/from16 v0, p6

    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    .line 1206
    .local v26, "itemsAlpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x64

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1207
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1208
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1211
    .end local v26    # "itemsAlpha":Landroid/animation/ObjectAnimator;
    :cond_3
    if-eqz p8, :cond_4

    .line 1212
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1213
    const-string v4, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    move-object/from16 v0, p8

    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v42

    .line 1214
    .local v42, "searchAlpha":Landroid/animation/ObjectAnimator;
    if-eqz v29, :cond_f

    const-wide/16 v6, 0x64

    :goto_8
    move-object/from16 v0, v42

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1215
    move-object/from16 v0, v42

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1216
    if-eqz v29, :cond_10

    const-wide/16 v6, 0x0

    :goto_9
    move-object/from16 v0, v42

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1217
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v12, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1221
    .end local v42    # "searchAlpha":Landroid/animation/ObjectAnimator;
    :cond_4
    if-eqz v29, :cond_6

    .line 1223
    invoke-virtual/range {p11 .. p11}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewStartFinalRadius()F

    move-result v23

    .line 1225
    .local v23, "finalRadius":F
    move-object/from16 v0, p11

    move-object/from16 v1, p7

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v28

    .line 1226
    .local v28, "listener":Landroid/animation/AnimatorListenerAdapter;
    div-int/lit8 v4, v44, 0x2

    div-int/lit8 v6, v24, 0x2

    move-object/from16 v0, p7

    move/from16 v1, v38

    move/from16 v2, v23

    invoke-static {v0, v4, v6, v1, v2}, Lnet/oneplus/h2launcher/util/UiThreadCircularReveal;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/ValueAnimator;

    move-result-object v36

    .line 1228
    .local v36, "reveal":Landroid/animation/Animator;
    new-instance v4, Lnet/oneplus/h2launcher/LogDecelerateInterpolator;

    const/16 v6, 0x64

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lnet/oneplus/h2launcher/LogDecelerateInterpolator;-><init>(II)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1229
    move/from16 v0, v37

    int-to-long v6, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1230
    move/from16 v0, v27

    int-to-long v6, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1231
    if-eqz v28, :cond_5

    .line 1232
    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1234
    :cond_5
    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1238
    .end local v21    # "contentViewAlphaEnabled":Z
    .end local v22    # "decelerateInterpolator":Landroid/animation/TimeInterpolator;
    .end local v23    # "finalRadius":F
    .end local v24    # "height":I
    .end local v28    # "listener":Landroid/animation/AnimatorListenerAdapter;
    .end local v31    # "pageDrift":Landroid/animation/ObjectAnimator;
    .end local v32    # "panelAlpha":Landroid/animation/ObjectAnimator;
    .end local v33    # "panelDriftX":Landroid/animation/ObjectAnimator;
    .end local v34    # "panelDriftY":Landroid/animation/ObjectAnimator;
    .end local v36    # "reveal":Landroid/animation/Animator;
    .end local v38    # "revealRadius":F
    .end local v39    # "revealViewToAlpha":F
    .end local v40    # "revealViewToXDrift":F
    .end local v41    # "revealViewToYDrift":F
    .end local v44    # "width":I
    :cond_6
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p9

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 1239
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v10, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 1241
    new-instance v6, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;

    move-object/from16 v7, p0

    move-object/from16 v8, p5

    move/from16 v9, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p6

    move-object/from16 v14, p8

    move-object/from16 v15, p11

    invoke-direct/range {v6 .. v15}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$19;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Landroid/view/View;ZLandroid/view/View;Ljava/lang/Runnable;Ljava/util/HashMap;Landroid/view/View;Landroid/view/View;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1276
    move-object v15, v5

    .line 1277
    .local v15, "stateAnimation":Landroid/animation/AnimatorSet;
    new-instance v13, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;

    move-object/from16 v14, p0

    move-object/from16 v16, p5

    move/from16 v17, p9

    move-object/from16 v18, v10

    move-object/from16 v19, v12

    invoke-direct/range {v13 .. v19}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$20;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;ZLandroid/view/View;Ljava/util/HashMap;)V

    .line 1299
    .local v13, "startAnimRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1317
    .end local v5    # "animation":Landroid/animation/AnimatorSet;
    .end local v13    # "startAnimRunnable":Ljava/lang/Runnable;
    .end local v15    # "stateAnimation":Landroid/animation/AnimatorSet;
    :goto_a
    return-object v5

    .line 1102
    .end local v25    # "initialized":Z
    .end local v43    # "shrunkenAllAppsToOverview":Z
    .end local v45    # "workspaceAnim":Landroid/animation/Animator;
    .restart local v5    # "animation":Landroid/animation/AnimatorSet;
    .restart local v30    # "overlayDuration":I
    :cond_7
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1112
    .restart local v25    # "initialized":Z
    .restart local v45    # "workspaceAnim":Landroid/animation/Animator;
    :cond_8
    const/16 v43, 0x0

    goto/16 :goto_1

    .line 1119
    .restart local v43    # "shrunkenAllAppsToOverview":Z
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1123
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1125
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1127
    :cond_c
    const/16 v30, 0x0

    goto/16 :goto_5

    .line 1156
    .end local v30    # "overlayDuration":I
    .restart local v24    # "height":I
    .restart local v38    # "revealRadius":F
    .restart local v44    # "width":I
    :cond_d
    mul-int/lit8 v4, v24, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-float v0, v4

    move/from16 v41, v0

    .line 1157
    .restart local v41    # "revealViewToYDrift":F
    const/16 v40, 0x0

    .restart local v40    # "revealViewToXDrift":F
    goto/16 :goto_6

    .line 1163
    :cond_e
    new-instance v22, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto/16 :goto_7

    .line 1214
    .restart local v21    # "contentViewAlphaEnabled":Z
    .restart local v22    # "decelerateInterpolator":Landroid/animation/TimeInterpolator;
    .restart local v31    # "pageDrift":Landroid/animation/ObjectAnimator;
    .restart local v32    # "panelAlpha":Landroid/animation/ObjectAnimator;
    .restart local v33    # "panelDriftX":Landroid/animation/ObjectAnimator;
    .restart local v34    # "panelDriftY":Landroid/animation/ObjectAnimator;
    .restart local v39    # "revealViewToAlpha":F
    .restart local v42    # "searchAlpha":Landroid/animation/ObjectAnimator;
    :cond_f
    const-wide/16 v6, 0x96

    goto/16 :goto_8

    .line 1216
    :cond_10
    add-int/lit8 v4, v27, 0x10

    int-to-long v6, v4

    goto/16 :goto_9

    .line 1303
    .end local v21    # "contentViewAlphaEnabled":Z
    .end local v22    # "decelerateInterpolator":Landroid/animation/TimeInterpolator;
    .end local v24    # "height":I
    .end local v31    # "pageDrift":Landroid/animation/ObjectAnimator;
    .end local v32    # "panelAlpha":Landroid/animation/ObjectAnimator;
    .end local v33    # "panelDriftX":Landroid/animation/ObjectAnimator;
    .end local v34    # "panelDriftY":Landroid/animation/ObjectAnimator;
    .end local v38    # "revealRadius":F
    .end local v39    # "revealViewToAlpha":F
    .end local v40    # "revealViewToXDrift":F
    .end local v41    # "revealViewToYDrift":F
    .end local v42    # "searchAlpha":Landroid/animation/ObjectAnimator;
    .end local v44    # "width":I
    :cond_11
    move-object/from16 v0, p5

    instance-of v4, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    if-eqz v4, :cond_13

    const/4 v4, 0x4

    :goto_b
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1304
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p9

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 1305
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p9

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 1306
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p9

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 1307
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v10, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 1308
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v10, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 1309
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v10, v1, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 1310
    invoke-virtual/range {p11 .. p11}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    .line 1313
    if-eqz p10, :cond_12

    .line 1314
    invoke-interface/range {p10 .. p10}, Ljava/lang/Runnable;->run()V

    .line 1317
    :cond_12
    const/4 v5, 0x0

    goto :goto_a

    .line 1303
    :cond_13
    const/16 v4, 0x8

    goto :goto_b

    .line 1183
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    .line 1205
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1213
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startAnimationToWorkspaceFromWallpaper(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/lang/Runnable;)V
    .locals 13
    .param p1, "fromWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "toWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p3, "toWorkspacePage"    # I
    .param p4, "animated"    # Z
    .param p5, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 996
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersView()Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    move-result-object v5

    .line 997
    .local v5, "wallpapersView":Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;
    new-instance v11, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$17;

    invoke-direct {v11, p0, v5}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$17;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)V

    .line 1029
    .local v11, "cb":Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getRevealView()Landroid/view/View;

    move-result-object v4

    .line 1030
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getContentView()Landroid/view/View;

    move-result-object v6

    .line 1031
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getRevealView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    .line 1028
    invoke-direct/range {v0 .. v11}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLjava/lang/Runnable;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 1034
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getClings()Lnet/oneplus/h2launcher/LauncherClings;

    move-result-object v12

    .line 1035
    .local v12, "cling":Lnet/oneplus/h2launcher/LauncherClings;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lnet/oneplus/h2launcher/LauncherClings;->isWallpaperShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lnet/oneplus/h2launcher/LauncherClings;->dismissWallpapersCling(Z)V

    .line 1038
    :cond_0
    return-void
.end method

.method private startAnimationToWorkspaceFromWidgets(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/lang/Runnable;)V
    .locals 12
    .param p1, "fromWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "toWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p3, "toWorkspacePage"    # I
    .param p4, "animated"    # Z
    .param p5, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 910
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWidgetsView()Lnet/oneplus/h2launcher/widget/WidgetsContainerView;

    move-result-object v5

    .line 911
    .local v5, "widgetsView":Lnet/oneplus/h2launcher/widget/WidgetsContainerView;
    new-instance v11, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$15;

    invoke-direct {v11, p0, p2}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$15;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Lnet/oneplus/h2launcher/Workspace$State;)V

    .line 936
    .local v11, "cb":Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p1, v0, :cond_0

    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->OVERVIEW:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p2, v0, :cond_0

    .line 937
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragLayer;->snapshot()V

    .line 938
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->preloadWallpapers(Landroid/content/Context;)V

    .line 941
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 942
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWidgetsButton()Landroid/view/View;

    move-result-object v4

    .line 943
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->getContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    .line 941
    invoke-direct/range {v0 .. v11}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLjava/lang/Runnable;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 945
    return-void
.end method

.method private startCustomizationsViewAnimation(Lnet/oneplus/h2launcher/Workspace$State;I)V
    .locals 3
    .param p1, "toWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "duration"    # I

    .prologue
    .line 1756
    sget-object v2, Lnet/oneplus/h2launcher/Workspace$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Workspace$State;

    if-eq p1, v2, :cond_0

    sget-object v2, Lnet/oneplus/h2launcher/Workspace$State;->SHRUNKEN_ALL_APPS:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p1, v2, :cond_2

    :cond_0
    sget-object v1, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    .line 1760
    .local v1, "toCustomizationsViewState":Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getCustomizationsView()Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    move-result-object v0

    .line 1761
    .local v0, "customizationsContainerView":Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;
    if-eqz v0, :cond_1

    .line 1762
    invoke-virtual {v0, v1, p2}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->animateToState(Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;I)Z

    .line 1764
    :cond_1
    return-void

    .line 1756
    .end local v0    # "customizationsContainerView":Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;
    .end local v1    # "toCustomizationsViewState":Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;
    :cond_2
    sget-object v1, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->INVISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    goto :goto_0
.end method

.method private startIconRearrangementViewAnimation(Lnet/oneplus/h2launcher/Workspace$State;I)V
    .locals 3
    .param p1, "toWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "duration"    # I

    .prologue
    .line 1788
    sget-object v2, Lnet/oneplus/h2launcher/Workspace$State;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p1, v2, :cond_1

    sget-object v1, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    .line 1792
    .local v1, "toIconRearrangementViewState":Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getIconRearrangementView()Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    move-result-object v0

    .line 1793
    .local v0, "iconRearrangementContainerView":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;
    if-eqz v0, :cond_0

    .line 1794
    invoke-virtual {v0, v1, p2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->animateToState(Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;I)Z

    .line 1796
    :cond_0
    return-void

    .line 1788
    .end local v0    # "iconRearrangementContainerView":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;
    .end local v1    # "toIconRearrangementViewState":Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;
    :cond_1
    sget-object v1, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->INVISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    goto :goto_0
.end method

.method private startWallpapersViewAnimation(Lnet/oneplus/h2launcher/Workspace$State;I)V
    .locals 3
    .param p1, "toWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "duration"    # I

    .prologue
    .line 1772
    sget-object v2, Lnet/oneplus/h2launcher/Workspace$State;->WALLPAPERS:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p1, v2, :cond_1

    sget-object v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    .line 1776
    .local v0, "toWallpapersViewState":Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersView()Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    move-result-object v1

    .line 1777
    .local v1, "wallpapersContainerView":Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;
    if-eqz v1, :cond_0

    .line 1778
    invoke-virtual {v1, v0, p2}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->animateToState(Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;I)Z

    .line 1780
    :cond_0
    return-void

    .line 1772
    .end local v0    # "toWallpapersViewState":Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;
    .end local v1    # "wallpapersContainerView":Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;
    :cond_1
    sget-object v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->INVISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    goto :goto_0
.end method

.method private startWorkspaceSearchBarAnimation(Landroid/animation/AnimatorSet;Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;ILandroid/view/View;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/AnimatorSet;
    .param p2, "fromWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p3, "toWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p4, "duration"    # I
    .param p5, "overlaySearchBar"    # Landroid/view/View;

    .prologue
    .line 1692
    .line 1693
    invoke-virtual {p3}, Lnet/oneplus/h2launcher/Workspace$State;->getSearchDropTargetBarState()Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    move-result-object v0

    .line 1695
    .local v0, "toSearchBarState":Lnet/oneplus/h2launcher/SearchDropTargetBar$State;
    if-eqz p5, :cond_3

    .line 1696
    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p3, v1, :cond_1

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL_HIDDEN:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p2, v1, :cond_1

    .line 1698
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v1}, Lnet/oneplus/h2launcher/Utilities;->isDarkModeTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez p4, :cond_0

    .line 1699
    new-instance v1, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$25;

    invoke-direct {v1, p0, v0, p4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$25;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Lnet/oneplus/h2launcher/SearchDropTargetBar$State;I)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1748
    :goto_0
    return-void

    .line 1715
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getSearchDropTargetBar()Lnet/oneplus/h2launcher/SearchDropTargetBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->animateToState(Lnet/oneplus/h2launcher/SearchDropTargetBar$State;I)V

    goto :goto_0

    .line 1717
    :cond_1
    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p2, v1, :cond_2

    .line 1718
    new-instance v1, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$26;

    invoke-direct {v1, p0, v0, p4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$26;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Lnet/oneplus/h2launcher/SearchDropTargetBar$State;I)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 1742
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getSearchDropTargetBar()Lnet/oneplus/h2launcher/SearchDropTargetBar;

    move-result-object v1

    invoke-virtual {v1, v0, p4}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->animateToState(Lnet/oneplus/h2launcher/SearchDropTargetBar$State;I)V

    goto :goto_0

    .line 1746
    :cond_3
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getSearchDropTargetBar()Lnet/oneplus/h2launcher/SearchDropTargetBar;

    move-result-object v1

    invoke-virtual {v1, v0, p4}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->animateToState(Lnet/oneplus/h2launcher/SearchDropTargetBar$State;I)V

    goto :goto_0
.end method


# virtual methods
.method cleanupAnimation()V
    .locals 1

    .prologue
    .line 1869
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 1870
    return-void
.end method

.method dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 1834
    instance-of v0, p1, Lnet/oneplus/h2launcher/LauncherTransitionable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1835
    check-cast v0, Lnet/oneplus/h2launcher/LauncherTransitionable;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-interface {v0, v1, p2, p3}, Lnet/oneplus/h2launcher/LauncherTransitionable;->onLauncherTransitionEnd(Lnet/oneplus/h2launcher/Launcher;ZZ)V

    .line 1840
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStep(Landroid/view/View;F)V

    .line 1841
    return-void
.end method

.method dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 1802
    instance-of v0, p1, Lnet/oneplus/h2launcher/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 1803
    check-cast p1, Lnet/oneplus/h2launcher/LauncherTransitionable;

    .end local p1    # "v":Landroid/view/View;
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-interface {p1, v0, p2, p3}, Lnet/oneplus/h2launcher/LauncherTransitionable;->onLauncherTransitionPrepare(Lnet/oneplus/h2launcher/Launcher;ZZ)V

    .line 1806
    :cond_0
    return-void
.end method

.method dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 1812
    instance-of v0, p1, Lnet/oneplus/h2launcher/LauncherTransitionable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1813
    check-cast v0, Lnet/oneplus/h2launcher/LauncherTransitionable;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-interface {v0, v1, p2, p3}, Lnet/oneplus/h2launcher/LauncherTransitionable;->onLauncherTransitionStart(Lnet/oneplus/h2launcher/Launcher;ZZ)V

    .line 1818
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStep(Landroid/view/View;F)V

    .line 1819
    return-void
.end method

.method dispatchOnLauncherTransitionStep(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "t"    # F

    .prologue
    .line 1825
    instance-of v0, p1, Lnet/oneplus/h2launcher/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 1826
    check-cast p1, Lnet/oneplus/h2launcher/LauncherTransitionable;

    .end local p1    # "v":Landroid/view/View;
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-interface {p1, v0, p2}, Lnet/oneplus/h2launcher/LauncherTransitionable;->onLauncherTransitionStep(Lnet/oneplus/h2launcher/Launcher;F)V

    .line 1828
    :cond_0
    return-void
.end method

.method public startAnimationToAllApps(Lnet/oneplus/h2launcher/Workspace$State;ZZ)V
    .locals 10
    .param p1, "fromWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "animated"    # Z
    .param p3, "startSearchAfterTransition"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v4

    .line 145
    .local v4, "toView":Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;
    if-nez v4, :cond_0

    .line 146
    sget-object v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->TAG:Ljava/lang/String;

    const-string v1, "[startAnimationToAllApps] appsView is null. Should not be here!"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAllAppsButton()Landroid/view/View;

    move-result-object v3

    .line 151
    .local v3, "buttonView":Landroid/view/View;
    new-instance v9, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$1;

    invoke-direct {v9, p0, p3, v4}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$1;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;ZLnet/oneplus/h2launcher/allapps/AllAppsContainerView;)V

    .line 181
    .local v9, "cb":Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    sget-object v2, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL_HIDDEN:Lnet/oneplus/h2launcher/Workspace$State;

    .line 182
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getContentView()Landroid/view/View;

    move-result-object v5

    .line 183
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getSearchBarView()Landroid/view/View;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v8, p2

    .line 181
    invoke-direct/range {v0 .. v9}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method public startAnimationToCustomizations(Lnet/oneplus/h2launcher/Workspace$State;Z)V
    .locals 24
    .param p1, "fromWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "animated"    # Z

    .prologue
    .line 211
    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->SHRUNKEN_ALL_APPS:Lnet/oneplus/h2launcher/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v6

    .line 213
    .local v6, "appsView":Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;
    if-nez v6, :cond_0

    .line 214
    sget-object v1, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->TAG:Ljava/lang/String;

    const-string v2, "[startAnimationToCustomizations] appsView is null. Should not be here!"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .end local v6    # "appsView":Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;
    :goto_0
    return-void

    .line 218
    .restart local v6    # "appsView":Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getCustomizationsView()Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    move-result-object v23

    .line 219
    .local v23, "customizationsContainerView":Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;
    new-instance v12, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v6}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$3;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;)V

    .line 262
    .local v12, "cb":Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    sget-object v3, Lnet/oneplus/h2launcher/Workspace$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Workspace$State;

    const/4 v4, -0x1

    .line 263
    invoke-virtual {v6}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getContentView()Landroid/view/View;

    move-result-object v7

    .line 264
    invoke-virtual {v6}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getSearchBarView()Landroid/view/View;

    move-result-object v9

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v10, p2

    .line 262
    invoke-direct/range {v1 .. v12}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToCustomizationFromOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLjava/lang/Runnable;Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)Landroid/animation/AnimatorSet;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    goto :goto_0

    .line 267
    .end local v6    # "appsView":Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;
    .end local v12    # "cb":Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    .end local v23    # "customizationsContainerView":Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getCustomizationsView()Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    move-result-object v17

    .line 268
    .local v17, "toView":Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;
    new-instance v12, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$4;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;)V

    .line 279
    .restart local v12    # "cb":Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    sget-object v15, Lnet/oneplus/h2launcher/Workspace$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Workspace$State;

    .line 280
    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v16

    .line 281
    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->getContentView()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v21, p2

    move-object/from16 v22, v12

    .line 279
    invoke-direct/range {v13 .. v22}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)Landroid/animation/AnimatorSet;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method public startAnimationToFolders(Lnet/oneplus/h2launcher/Workspace$State;Z)V
    .locals 8
    .param p1, "fromWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "animated"    # Z

    .prologue
    .line 402
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getFoldersView()Lnet/oneplus/h2launcher/FoldersContainerView;

    move-result-object v4

    .line 403
    .local v4, "toView":Lnet/oneplus/h2launcher/FoldersContainerView;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/FoldersContainerView;->getRevealView()Landroid/view/View;

    move-result-object v3

    .line 404
    .local v3, "buttonView":Landroid/view/View;
    new-instance v7, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$8;

    invoke-direct {v7, p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$8;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;)V

    .line 414
    .local v7, "cb":Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    sget-object v2, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL_HIDDEN:Lnet/oneplus/h2launcher/Workspace$State;

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToFolderOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;Landroid/view/View;Lnet/oneplus/h2launcher/FoldersContainerView;ZILnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    .line 416
    return-void
.end method

.method public startAnimationToIconRearrangement(Lnet/oneplus/h2launcher/Workspace$State;Z)V
    .locals 10
    .param p1, "fromWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "animated"    # Z

    .prologue
    .line 365
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getIconRearrangementView()Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    move-result-object v4

    .line 366
    .local v4, "iconRearrangementView":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;
    new-instance v9, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$7;

    invoke-direct {v9, p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$7;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;)V

    .line 392
    .local v9, "cb":Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    sget-object v2, Lnet/oneplus/h2launcher/Workspace$State;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Workspace$State;

    .line 393
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->getRevealView()Landroid/view/View;

    move-result-object v3

    .line 394
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->getRevealView()Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v8, p2

    .line 392
    invoke-direct/range {v0 .. v9}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 395
    return-void
.end method

.method public startAnimationToShrunkenAllApps(Lnet/oneplus/h2launcher/Workspace$State;Z)V
    .locals 12
    .param p1, "fromWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "animated"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v4

    .line 291
    .local v4, "toView":Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;
    if-nez v4, :cond_0

    .line 292
    sget-object v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->TAG:Ljava/lang/String;

    const-string v1, "[startAnimationToShrunkenAllApps] appsView is null. Should not be here!"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getCustomizationsView()Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    move-result-object v10

    .line 297
    .local v10, "customizationsContainerView":Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->isFirstInitialized()Z

    move-result v11

    .line 298
    .local v11, "isFirstInitialized":Z
    if-eqz v11, :cond_1

    .line 299
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getAppsRecyclerView()Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 301
    :cond_1
    new-instance v9, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$5;

    invoke-direct {v9, p0, v4, v11}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$5;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;Z)V

    .line 328
    .local v9, "cb":Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    sget-object v2, Lnet/oneplus/h2launcher/Workspace$State;->SHRUNKEN_ALL_APPS:Lnet/oneplus/h2launcher/Workspace$State;

    .line 329
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v3

    .line 330
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getSearchBarView()Landroid/view/View;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v8, p2

    .line 328
    invoke-direct/range {v0 .. v9}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method public startAnimationToWallpapers(Lnet/oneplus/h2launcher/Workspace$State;ZIILandroid/content/Intent;)V
    .locals 10
    .param p1, "fromWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "animated"    # Z
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "data"    # Landroid/content/Intent;

    .prologue
    .line 339
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersView()Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    move-result-object v4

    .line 340
    .local v4, "toView":Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;
    new-instance v9, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$6;

    invoke-direct {v9, p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$6;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;)V

    .line 352
    .local v9, "cb":Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    if-eqz v4, :cond_0

    .line 353
    invoke-virtual {v4, p3, p4, p5}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->init(IILandroid/content/Intent;)V

    .line 354
    sget-object v2, Lnet/oneplus/h2launcher/Workspace$State;->WALLPAPERS:Lnet/oneplus/h2launcher/Workspace$State;

    .line 355
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getRevealView()Landroid/view/View;

    move-result-object v3

    .line 356
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getRevealView()Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v8, p2

    .line 354
    invoke-direct/range {v0 .. v9}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 358
    :cond_0
    return-void
.end method

.method public startAnimationToWidgets(Lnet/oneplus/h2launcher/Workspace$State;Z)V
    .locals 10
    .param p1, "fromWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "animated"    # Z

    .prologue
    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWidgetsView()Lnet/oneplus/h2launcher/widget/WidgetsContainerView;

    move-result-object v4

    .line 192
    .local v4, "toView":Lnet/oneplus/h2launcher/widget/WidgetsContainerView;
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWidgetsButton()Landroid/view/View;

    move-result-object v3

    .line 194
    .local v3, "buttonView":Landroid/view/View;
    new-instance v9, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$2;

    invoke-direct {v9, p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$2;-><init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;)V

    .line 200
    .local v9, "cb":Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    sget-object v2, Lnet/oneplus/h2launcher/Workspace$State;->OVERVIEW_HIDDEN:Lnet/oneplus/h2launcher/Workspace$State;

    .line 201
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->getContentView()Landroid/view/View;

    move-result-object v5

    .line 202
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v8, p2

    .line 200
    invoke-direct/range {v0 .. v9}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToOverlay(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 203
    return-void
.end method

.method public startAnimationToWorkspace(Lnet/oneplus/h2launcher/Launcher$State;Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/lang/Runnable;)V
    .locals 6
    .param p1, "fromState"    # Lnet/oneplus/h2launcher/Launcher$State;
    .param p2, "fromWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p3, "toWorkspaceState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p4, "toWorkspacePage"    # I
    .param p5, "animated"    # Z
    .param p6, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 429
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-eq p3, v0, :cond_0

    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->SPRING_LOADED:Lnet/oneplus/h2launcher/Workspace$State;

    if-eq p3, v0, :cond_0

    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->OVERVIEW:Lnet/oneplus/h2launcher/Workspace$State;

    if-eq p3, v0, :cond_0

    .line 432
    sget-object v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected call to startAnimationToWorkspace"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->TAG:Ljava/lang/String;

    const-string v1, "[startAnimationToWorkspace] fromState=%s, fromWorkspaceState=%s, toWorkspaceState=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->APPS:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne p1, v0, :cond_1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 439
    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromAllApps(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/lang/Runnable;)V

    .line 465
    :goto_0
    return-void

    .line 441
    :cond_1
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne p1, v0, :cond_2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 442
    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromCustomizations(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/lang/Runnable;)V

    goto :goto_0

    .line 444
    :cond_2
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->SHRUNKEN_ALLAPPS:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne p1, v0, :cond_3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 445
    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromCustomizations(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/lang/Runnable;)V

    goto :goto_0

    .line 447
    :cond_3
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->WALLPAPER:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne p1, v0, :cond_4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 448
    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromWallpaper(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/lang/Runnable;)V

    goto :goto_0

    .line 450
    :cond_4
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne p1, v0, :cond_5

    .line 451
    invoke-direct {p0, p2, p3, p4, p5}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromIconRearrangement(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZ)V

    goto :goto_0

    .line 453
    :cond_5
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->APPS_SPRING_LOADED:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne p1, v0, :cond_7

    .line 454
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isStandardLayout()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 455
    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromAllApps(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_6
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 458
    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromWidgets(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_7
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 462
    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromWidgets(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method startAnimationToWorkspace(ZLjava/lang/Runnable;)V
    .locals 1
    .param p1, "animated"    # Z
    .param p2, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 419
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    invoke-direct {p0, v0, p1, p2}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromFolders(Lnet/oneplus/h2launcher/Workspace$State;ZLjava/lang/Runnable;)V

    .line 421
    return-void
.end method
