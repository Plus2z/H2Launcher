.class public Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionAnimation.java"


# static fields
.field static final BACKGROUND_FADE_OUT_DURATION:I = 0x15e

.field public static final SCROLL_TO_CURRENT_PAGE:I = -0x1

.field public static final TAG:Ljava/lang/String; = "WorkspaceStateTransitionAnimation"


# instance fields
.field mAllAppsTransitionTime:I

.field mCurrentScale:F

.field mLastChildCount:I

.field final mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field mNewAlphas:[F

.field mNewBackgroundAlphas:[F

.field mNewScale:F

.field mOldAlphas:[F

.field mOldBackgroundAlphas:[F

.field mOverlayTransitionTime:I

.field mOverviewModeShrinkFactor:F

.field mOverviewTransitionTime:I

.field mSpringLoadedShrinkFactor:F

.field mStateAnimator:Landroid/animation/AnimatorSet;

.field final mWorkspace:Lnet/oneplus/h2launcher/Workspace;

.field mWorkspaceFadeInAdjacentScreens:Z

.field mWorkspaceScrimAlpha:F

.field final mZoomInInterpolator:Lnet/oneplus/h2launcher/ZoomInInterpolator;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/Workspace;)V
    .locals 4
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "workspace"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v2, -0x1

    iput v2, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mLastChildCount:I

    .line 173
    new-instance v2, Lnet/oneplus/h2launcher/ZoomInInterpolator;

    invoke-direct {v2}, Lnet/oneplus/h2launcher/ZoomInInterpolator;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mZoomInInterpolator:Lnet/oneplus/h2launcher/ZoomInInterpolator;

    .line 184
    iput-object p1, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 185
    iput-object p2, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 187
    iget-object v2, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    .line 188
    .local v0, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 189
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0f0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mAllAppsTransitionTime:I

    .line 190
    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mOverviewTransitionTime:I

    .line 191
    const v2, 0x7f0f0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mOverlayTransitionTime:I

    .line 192
    const v2, 0x7f0f0014

    .line 193
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mSpringLoadedShrinkFactor:F

    .line 194
    const v2, 0x7f0f0011

    .line 195
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mOverviewModeShrinkFactor:F

    .line 196
    const v2, 0x7f0f003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspaceScrimAlpha:F

    .line 197
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DeviceProfile;->shouldFadeAdjacentWorkspaceScreensWhileTransitionAnimation()Z

    move-result v2

    iput-boolean v2, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspaceFadeInAdjacentScreens:Z

    .line 198
    return-void
.end method

.method private animateBackgroundGradient(Lnet/oneplus/h2launcher/TransitionStates;ZI)V
    .locals 7
    .param p1, "states"    # Lnet/oneplus/h2launcher/TransitionStates;
    .param p2, "animated"    # Z
    .param p3, "duration"    # I

    .prologue
    .line 543
    iget-object v4, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v1

    .line 544
    .local v1, "dragLayer":Lnet/oneplus/h2launcher/DragLayer;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/DragLayer;->getBackgroundAlpha()F

    move-result v3

    .line 545
    .local v3, "startAlpha":F
    iget-boolean v4, p1, Lnet/oneplus/h2launcher/TransitionStates;->stateIsNormal:Z

    if-nez v4, :cond_0

    iget-boolean v4, p1, Lnet/oneplus/h2launcher/TransitionStates;->stateIsNormalHidden:Z

    if-eqz v4, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 547
    .local v2, "finalAlpha":F
    :goto_0
    cmpl-float v4, v2, v3

    if-eqz v4, :cond_1

    .line 548
    if-eqz p2, :cond_3

    .line 551
    iget-object v4, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v2, v5, v6

    .line 552
    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 553
    .local v0, "bgFadeOutAnimation":Landroid/animation/ValueAnimator;
    new-instance v4, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$3;

    invoke-direct {v4, p0, v1}, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$3;-><init>(Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;Lnet/oneplus/h2launcher/DragLayer;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 560
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 561
    int-to-long v4, p3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 562
    iget-object v4, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 567
    .end local v0    # "bgFadeOutAnimation":Landroid/animation/ValueAnimator;
    :cond_1
    :goto_1
    return-void

    .line 545
    .end local v2    # "finalAlpha":F
    :cond_2
    iget v2, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspaceScrimAlpha:F

    goto :goto_0

    .line 564
    .restart local v2    # "finalAlpha":F
    :cond_3
    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/DragLayer;->setBackgroundAlpha(F)V

    goto :goto_1
.end method

.method private animateWorkspace(Lnet/oneplus/h2launcher/TransitionStates;IZILjava/util/HashMap;Z)V
    .locals 38
    .param p1, "states"    # Lnet/oneplus/h2launcher/TransitionStates;
    .param p2, "toPage"    # I
    .param p3, "animated"    # Z
    .param p4, "duration"    # I
    .param p6, "accessibilityEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/TransitionStates;",
            "IZI",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p5, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->reinitializeAnimationArrays()V

    .line 253
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->cancelAnimation()V

    .line 254
    if-eqz p3, :cond_0

    .line 255
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 258
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v6

    invoke-virtual {v3, v6}, Lnet/oneplus/h2launcher/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v36

    move-wide/from16 v0, v36

    invoke-virtual {v2, v0, v1}, Lnet/oneplus/h2launcher/Workspace;->getScreenWithId(J)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v11

    .line 259
    .local v11, "cellLayout":Lnet/oneplus/h2launcher/CellLayout;
    const/16 v28, 0x0

    .line 260
    .local v28, "isPageEmpty":Z
    if-eqz v11, :cond_1

    .line 261
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    if-nez v2, :cond_e

    const/16 v28, 0x1

    .line 265
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsSpringLoaded:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsOverview:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsCustomizations:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsIconRearrangement:Z

    if-eqz v2, :cond_f

    :cond_2
    const/high16 v17, 0x3f800000    # 1.0f

    .line 267
    .local v17, "finalBackgroundAlpha":F
    :goto_1
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsNormal:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsSpringLoaded:Z

    if-eqz v2, :cond_10

    :cond_3
    const/high16 v18, 0x3f800000    # 1.0f

    .line 269
    .local v18, "finalHotseatAndPageIndicatorAlpha":F
    :goto_2
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsOverview:Z

    if-eqz v2, :cond_11

    const/high16 v19, 0x3f800000    # 1.0f

    .line 270
    .local v19, "finalOverviewPanelAlpha":F
    :goto_3
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsOverview:Z

    if-eqz v2, :cond_12

    if-nez v28, :cond_12

    const/high16 v5, 0x3f800000    # 1.0f

    .line 271
    .local v5, "finalUtilsPanelAlpha":F
    :goto_4
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsOverview:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsOverviewHidden:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsCustomizations:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsShrunkenAllApps:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsWallpapers:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsIconRearrangement:Z

    if-eqz v2, :cond_13

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 273
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getOverviewModeTranslationY()I

    move-result v2

    int-to-float v0, v2

    move/from16 v21, v0

    .line 274
    .local v21, "finalWorkspaceTranslationY":F
    :goto_5
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsOverview:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsOverviewHidden:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsCustomizations:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsShrunkenAllApps:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsWallpapers:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsIconRearrangement:Z

    if-eqz v2, :cond_14

    .line 276
    :cond_5
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/oos/StyleManager;->showAllApps()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 277
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getSearchBarView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    move/from16 v20, v0

    .line 279
    .local v20, "finalShrunkenAllAppsTranslationY":F
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v12

    .line 280
    .local v12, "childCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->numCustomPages()I

    move-result v15

    .line 281
    .local v15, "customPageCount":I
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewScale:F

    .line 283
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsOverview:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsIconRearrangement:Z

    if-eqz v2, :cond_15

    .line 284
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->disableShelfScroll()V

    .line 289
    :cond_7
    :goto_7
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsNormal:Z

    if-nez v2, :cond_8

    .line 290
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsSpringLoaded:Z

    if-eqz v2, :cond_17

    .line 291
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mSpringLoadedShrinkFactor:F

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewScale:F

    .line 299
    :cond_8
    :goto_8
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_9

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getPageNearestToCenterOfScreen()I

    move-result p2

    .line 302
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mZoomInInterpolator:Lnet/oneplus/h2launcher/ZoomInInterpolator;

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1, v3}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(IILandroid/animation/TimeInterpolator;)V

    .line 304
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_9
    move/from16 v0, v24

    if-ge v0, v12, :cond_23

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lnet/oneplus/h2launcher/CellLayout;

    .line 306
    .local v13, "cl":Lnet/oneplus/h2launcher/CellLayout;
    move/from16 v0, v24

    move/from16 v1, p2

    if-ne v0, v1, :cond_19

    const/16 v27, 0x1

    .line 307
    .local v27, "isCurrentPage":Z
    :goto_a
    invoke-virtual {v13}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v26

    .line 309
    .local v26, "initialAlpha":F
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsNormalHidden:Z

    if-nez v2, :cond_a

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsOverviewHidden:Z

    if-nez v2, :cond_a

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsShrunkenAllApps:Z

    if-nez v2, :cond_a

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsWallpapers:Z

    if-eqz v2, :cond_1a

    .line 311
    :cond_a
    const/16 v16, 0x0

    .line 322
    .local v16, "finalAlpha":F
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->isSwitchingState()Z

    move-result v2

    if-nez v2, :cond_d

    .line 323
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->workspaceToAllApps:Z

    if-nez v2, :cond_b

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->allAppsToWorkspace:Z

    if-eqz v2, :cond_d

    .line 324
    :cond_b
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->allAppsToWorkspace:Z

    if-eqz v2, :cond_20

    if-eqz v27, :cond_20

    .line 325
    const/16 v26, 0x0

    .line 329
    :cond_c
    :goto_c
    move/from16 v0, v26

    invoke-virtual {v13, v0}, Lnet/oneplus/h2launcher/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 333
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mOldAlphas:[F

    aput v26, v2, v24

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewAlphas:[F

    aput v16, v2, v24

    .line 335
    if-eqz p3, :cond_22

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mOldBackgroundAlphas:[F

    invoke-virtual {v13}, Lnet/oneplus/h2launcher/CellLayout;->getBackgroundAlpha()F

    move-result v3

    aput v3, v2, v24

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewBackgroundAlphas:[F

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsCustomizations:Z

    if-eqz v2, :cond_21

    move/from16 v0, v24

    move/from16 v1, p2

    if-eq v0, v1, :cond_21

    const/4 v2, 0x0

    :goto_d
    aput v2, v3, v24

    .line 304
    :goto_e
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_9

    .line 261
    .end local v5    # "finalUtilsPanelAlpha":F
    .end local v12    # "childCount":I
    .end local v13    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    .end local v15    # "customPageCount":I
    .end local v16    # "finalAlpha":F
    .end local v17    # "finalBackgroundAlpha":F
    .end local v18    # "finalHotseatAndPageIndicatorAlpha":F
    .end local v19    # "finalOverviewPanelAlpha":F
    .end local v20    # "finalShrunkenAllAppsTranslationY":F
    .end local v21    # "finalWorkspaceTranslationY":F
    .end local v24    # "i":I
    .end local v26    # "initialAlpha":F
    .end local v27    # "isCurrentPage":Z
    :cond_e
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 265
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 267
    .restart local v17    # "finalBackgroundAlpha":F
    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 269
    .restart local v18    # "finalHotseatAndPageIndicatorAlpha":F
    :cond_11
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 270
    .restart local v19    # "finalOverviewPanelAlpha":F
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 273
    .restart local v5    # "finalUtilsPanelAlpha":F
    :cond_13
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 277
    .restart local v21    # "finalWorkspaceTranslationY":F
    :cond_14
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 285
    .restart local v12    # "childCount":I
    .restart local v15    # "customPageCount":I
    .restart local v20    # "finalShrunkenAllAppsTranslationY":F
    :cond_15
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->oldStateIsOverview:Z

    if-nez v2, :cond_16

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->oldStateIsIconRearrangement:Z

    if-eqz v2, :cond_7

    .line 286
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->enableShelfScroll()V

    goto/16 :goto_7

    .line 292
    :cond_17
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsOverview:Z

    if-nez v2, :cond_18

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsOverviewHidden:Z

    if-nez v2, :cond_18

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsCustomizations:Z

    if-nez v2, :cond_18

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsShrunkenAllApps:Z

    if-nez v2, :cond_18

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsWallpapers:Z

    if-nez v2, :cond_18

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsIconRearrangement:Z

    if-eqz v2, :cond_8

    .line 295
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mOverviewModeShrinkFactor:F

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewScale:F

    goto/16 :goto_8

    .line 306
    .restart local v13    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    .restart local v24    # "i":I
    :cond_19
    const/16 v27, 0x0

    goto/16 :goto_a

    .line 312
    .restart local v26    # "initialAlpha":F
    .restart local v27    # "isCurrentPage":Z
    :cond_1a
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsNormal:Z

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v2, :cond_1d

    .line 313
    move/from16 v0, v24

    move/from16 v1, p2

    if-eq v0, v1, :cond_1b

    move/from16 v0, v24

    if-ge v0, v15, :cond_1c

    :cond_1b
    const/high16 v16, 0x3f800000    # 1.0f

    .restart local v16    # "finalAlpha":F
    :goto_f
    goto/16 :goto_b

    .end local v16    # "finalAlpha":F
    :cond_1c
    const/16 v16, 0x0

    goto :goto_f

    .line 314
    :cond_1d
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsCustomizations:Z

    if-eqz v2, :cond_1f

    .line 315
    move/from16 v0, v24

    move/from16 v1, p2

    if-ne v0, v1, :cond_1e

    const/high16 v16, 0x3f800000    # 1.0f

    .restart local v16    # "finalAlpha":F
    :goto_10
    goto/16 :goto_b

    .end local v16    # "finalAlpha":F
    :cond_1e
    const/16 v16, 0x0

    goto :goto_10

    .line 317
    :cond_1f
    const/high16 v16, 0x3f800000    # 1.0f

    .restart local v16    # "finalAlpha":F
    goto/16 :goto_b

    .line 326
    :cond_20
    if-nez v27, :cond_c

    .line 327
    const/16 v16, 0x0

    move/from16 v26, v16

    goto/16 :goto_c

    :cond_21
    move/from16 v2, v17

    .line 337
    goto/16 :goto_d

    .line 340
    :cond_22
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lnet/oneplus/h2launcher/CellLayout;->setBackgroundAlpha(F)V

    .line 341
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lnet/oneplus/h2launcher/CellLayout;->setShortcutAndWidgetAlpha(F)V

    goto/16 :goto_e

    .line 345
    .end local v13    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    .end local v16    # "finalAlpha":F
    .end local v26    # "initialAlpha":F
    .end local v27    # "isCurrentPage":Z
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getOverviewPanel()Landroid/view/ViewGroup;

    move-result-object v7

    .line 346
    .local v7, "overviewPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getUtilsPanel()Landroid/view/ViewGroup;

    move-result-object v4

    .line 347
    .local v4, "utilsPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v22

    .line 348
    .local v22, "hotseat":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getPageIndicator()Lnet/oneplus/h2launcher/PageIndicator;

    move-result-object v31

    .line 349
    .local v31, "pageIndicator":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v8

    .line 350
    .local v8, "allAppsContainerView":Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;
    if-eqz p3, :cond_34

    .line 351
    new-instance v33, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    move-object/from16 v0, v33

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 352
    .local v33, "scale":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewScale:F

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->scaleX(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewScale:F

    .line 353
    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->scaleY(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v2

    .line 354
    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->translationY(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v2

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide/from16 v36, v0

    .line 355
    move-wide/from16 v0, v36

    invoke-virtual {v2, v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mZoomInInterpolator:Lnet/oneplus/h2launcher/ZoomInInterpolator;

    .line 356
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 359
    if-eqz v8, :cond_24

    .line 360
    new-instance v34, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-object/from16 v0, v34

    invoke-direct {v0, v8}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 361
    .local v34, "shrunkenAllApps":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewScale:F

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->scaleX(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewScale:F

    .line 362
    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->scaleY(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v2

    sub-float v3, v21, v20

    .line 363
    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->translationY(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v2

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide/from16 v36, v0

    .line 364
    move-wide/from16 v0, v36

    invoke-virtual {v2, v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mZoomInInterpolator:Lnet/oneplus/h2launcher/ZoomInInterpolator;

    .line 365
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 368
    .end local v34    # "shrunkenAllApps":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    :cond_24
    const/16 v25, 0x0

    .local v25, "index":I
    :goto_11
    move/from16 v0, v25

    if-ge v0, v12, :cond_2b

    .line 369
    move/from16 v24, v25

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lnet/oneplus/h2launcher/CellLayout;

    .line 371
    .restart local v13    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v13}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v14

    .line 372
    .local v14, "currentAlpha":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mOldAlphas:[F

    aget v2, v2, v24

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewAlphas:[F

    aget v2, v2, v24

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_26

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewBackgroundAlphas:[F

    aget v2, v2, v24

    invoke-virtual {v13, v2}, Lnet/oneplus/h2launcher/CellLayout;->setBackgroundAlpha(F)V

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewAlphas:[F

    aget v2, v2, v24

    invoke-virtual {v13, v2}, Lnet/oneplus/h2launcher/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 368
    :cond_25
    :goto_12
    add-int/lit8 v25, v25, 0x1

    goto :goto_11

    .line 376
    :cond_26
    if-eqz p5, :cond_27

    .line 377
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mOldAlphas:[F

    aget v2, v2, v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewAlphas:[F

    aget v3, v3, v24

    cmpl-float v2, v2, v3

    if-nez v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewAlphas:[F

    aget v2, v2, v24

    cmpl-float v2, v14, v2

    if-eqz v2, :cond_29

    .line 380
    :cond_28
    new-instance v9, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 381
    invoke-virtual {v13}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-direct {v9, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 382
    .local v9, "alphaAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewAlphas:[F

    aget v2, v2, v24

    invoke-virtual {v9, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v2

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide/from16 v36, v0

    .line 383
    move-wide/from16 v0, v36

    invoke-virtual {v2, v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mZoomInInterpolator:Lnet/oneplus/h2launcher/ZoomInInterpolator;

    .line 384
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewAlphas:[F

    aget v29, v2, v24

    .line 386
    .local v29, "newAlpha":F
    new-instance v2, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$1;

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v2, v0, v13, v1}, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$1;-><init>(Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;Lnet/oneplus/h2launcher/CellLayout;F)V

    invoke-virtual {v9, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 401
    .end local v9    # "alphaAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .end local v29    # "newAlpha":F
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mOldBackgroundAlphas:[F

    aget v2, v2, v24

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewBackgroundAlphas:[F

    aget v2, v2, v24

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_25

    .line 403
    :cond_2a
    const-string v2, "backgroundAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mOldBackgroundAlphas:[F

    move-object/from16 v36, v0

    aget v36, v36, v24

    aput v36, v3, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewBackgroundAlphas:[F

    move-object/from16 v36, v0

    aget v36, v36, v24

    aput v36, v3, v6

    invoke-static {v13, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 405
    .local v10, "bgAnim":Landroid/animation/ValueAnimator;
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v13, v2}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mZoomInInterpolator:Lnet/oneplus/h2launcher/ZoomInInterpolator;

    invoke-virtual {v10, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 407
    move/from16 v0, p4

    int-to-long v2, v0

    invoke-virtual {v10, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_12

    .line 413
    .end local v10    # "bgAnim":Landroid/animation/ValueAnimator;
    .end local v13    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    .end local v14    # "currentAlpha":F
    :cond_2b
    if-eqz v31, :cond_30

    .line 414
    new-instance v2, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-object/from16 v0, v31

    invoke-direct {v2, v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 415
    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->withLayer()Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v32

    .line 416
    .local v32, "pageIndicatorAlpha":Landroid/animation/Animator;
    new-instance v2, Lnet/oneplus/h2launcher/AlphaUpdateListener;

    move-object/from16 v0, v31

    move/from16 v1, p6

    invoke-direct {v2, v0, v1}, Lnet/oneplus/h2launcher/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 424
    :goto_13
    if-eqz v22, :cond_31

    .line 425
    new-instance v2, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 426
    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v23

    .line 427
    .local v23, "hotseatAlpha":Landroid/animation/Animator;
    new-instance v2, Lnet/oneplus/h2launcher/AlphaUpdateListener;

    move-object/from16 v0, v22

    move/from16 v1, p6

    invoke-direct {v2, v0, v1}, Lnet/oneplus/h2launcher/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 433
    :goto_14
    new-instance v2, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-direct {v2, v7}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 434
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v30

    .line 435
    .local v30, "overviewPanelAlpha":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    new-instance v2, Lnet/oneplus/h2launcher/AlphaUpdateListener;

    move/from16 v0, p6

    invoke-direct {v2, v7, v0}, Lnet/oneplus/h2launcher/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 438
    new-instance v2, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-direct {v2, v4}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 439
    invoke-virtual {v2, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v35

    .line 440
    .local v35, "utilsPanelAlpha":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    new-instance v2, Lnet/oneplus/h2launcher/AlphaUpdateListener;

    move/from16 v0, p6

    invoke-direct {v2, v4, v0}, Lnet/oneplus/h2launcher/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 445
    if-eqz v22, :cond_2c

    .line 446
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 448
    :cond_2c
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 449
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 450
    if-eqz p5, :cond_32

    .line 453
    if-eqz v22, :cond_2d

    .line 454
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_2d
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :goto_15
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->workspaceToOverview:Z

    if-eqz v2, :cond_33

    .line 465
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 466
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 467
    const/4 v2, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 468
    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 476
    :cond_2e
    :goto_16
    move/from16 v0, p4

    int-to-long v2, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 477
    move/from16 v0, p4

    int-to-long v2, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 478
    move/from16 v0, p4

    int-to-long v2, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 479
    move/from16 v0, p4

    int-to-long v2, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v36, v0

    new-instance v2, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$2;

    move-object/from16 v3, p0

    move/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation$2;-><init>(Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;Landroid/view/ViewGroup;FZLandroid/view/ViewGroup;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 531
    .end local v23    # "hotseatAlpha":Landroid/animation/Animator;
    .end local v30    # "overviewPanelAlpha":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .end local v32    # "pageIndicatorAlpha":Landroid/animation/Animator;
    .end local v33    # "scale":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .end local v35    # "utilsPanelAlpha":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    :cond_2f
    :goto_17
    return-void

    .line 420
    .restart local v33    # "scale":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    :cond_30
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v32

    .restart local v32    # "pageIndicatorAlpha":Landroid/animation/Animator;
    goto/16 :goto_13

    .line 430
    :cond_31
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v23

    .restart local v23    # "hotseatAlpha":Landroid/animation/Animator;
    goto/16 :goto_14

    .restart local v30    # "overviewPanelAlpha":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .restart local v35    # "utilsPanelAlpha":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    :cond_32
    move-object/from16 v2, v23

    .line 460
    check-cast v2, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->withLayer()Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 461
    invoke-virtual/range {v30 .. v30}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->withLayer()Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    goto/16 :goto_15

    .line 469
    :cond_33
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/TransitionStates;->overviewToWorkspace:Z

    if-eqz v2, :cond_2e

    .line 470
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 471
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 472
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 473
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_16

    .line 503
    .end local v23    # "hotseatAlpha":Landroid/animation/Animator;
    .end local v25    # "index":I
    .end local v30    # "overviewPanelAlpha":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .end local v32    # "pageIndicatorAlpha":Landroid/animation/Animator;
    .end local v33    # "scale":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .end local v35    # "utilsPanelAlpha":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    :cond_34
    const/16 v25, 0x0

    .restart local v25    # "index":I
    :goto_18
    move/from16 v0, v25

    if-ge v0, v12, :cond_35

    .line 504
    move/from16 v24, v25

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lnet/oneplus/h2launcher/CellLayout;

    .line 506
    .restart local v13    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewBackgroundAlphas:[F

    aget v2, v2, v24

    invoke-virtual {v13, v2}, Lnet/oneplus/h2launcher/CellLayout;->setBackgroundAlpha(F)V

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewAlphas:[F

    aget v2, v2, v24

    invoke-virtual {v13, v2}, Lnet/oneplus/h2launcher/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 503
    add-int/lit8 v25, v25, 0x1

    goto :goto_18

    .line 509
    .end local v13    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    :cond_35
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 510
    move/from16 v0, p6

    invoke-static {v7, v0}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 511
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 512
    move/from16 v0, p6

    invoke-static {v4, v0}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 513
    if-eqz v22, :cond_36

    .line 514
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 515
    move-object/from16 v0, v22

    move/from16 v1, p6

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 517
    :cond_36
    if-eqz v31, :cond_37

    .line 518
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 519
    move-object/from16 v0, v31

    move/from16 v1, p6

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 521
    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->updateCustomContentVisibility()V

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewScale:F

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Workspace;->setScaleX(F)V

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewScale:F

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Workspace;->setScaleY(F)V

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/Workspace;->setTranslationY(F)V

    .line 526
    if-eqz p6, :cond_2f

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2f

    .line 527
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x40

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto/16 :goto_17

    .line 405
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 420
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 430
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private cancelAnimation()V
    .locals 4

    .prologue
    .line 573
    iget-object v0, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 575
    iget-object v0, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 577
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 578
    return-void
.end method

.method private getAnimationDuration(Lnet/oneplus/h2launcher/TransitionStates;)I
    .locals 1
    .param p1, "states"    # Lnet/oneplus/h2launcher/TransitionStates;

    .prologue
    .line 234
    iget-boolean v0, p1, Lnet/oneplus/h2launcher/TransitionStates;->workspaceToAllApps:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lnet/oneplus/h2launcher/TransitionStates;->overviewToAllApps:Z

    if-eqz v0, :cond_1

    .line 235
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mAllAppsTransitionTime:I

    .line 239
    :goto_0
    return v0

    .line 236
    :cond_1
    iget-boolean v0, p1, Lnet/oneplus/h2launcher/TransitionStates;->workspaceToOverview:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lnet/oneplus/h2launcher/TransitionStates;->overviewToWorkspace:Z

    if-eqz v0, :cond_3

    .line 237
    :cond_2
    iget v0, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mOverviewTransitionTime:I

    goto :goto_0

    .line 239
    :cond_3
    iget v0, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mOverlayTransitionTime:I

    goto :goto_0
.end method

.method private reinitializeAnimationArrays()V
    .locals 2

    .prologue
    .line 221
    iget-object v1, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v0

    .line 222
    .local v0, "childCount":I
    iget v1, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mLastChildCount:I

    if-ne v1, v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 224
    :cond_0
    new-array v1, v0, [F

    iput-object v1, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mOldBackgroundAlphas:[F

    .line 225
    new-array v1, v0, [F

    iput-object v1, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mOldAlphas:[F

    .line 226
    new-array v1, v0, [F

    iput-object v1, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewBackgroundAlphas:[F

    .line 227
    new-array v1, v0, [F

    iput-object v1, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewAlphas:[F

    goto :goto_0
.end method


# virtual methods
.method public getAnimationToState(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/util/HashMap;)Landroid/animation/AnimatorSet;
    .locals 8
    .param p1, "fromState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "toState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p3, "toPage"    # I
    .param p4, "animated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/Workspace$State;",
            "Lnet/oneplus/h2launcher/Workspace$State;",
            "IZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 202
    .local p5, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const-string v2, "accessibility"

    .line 203
    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityManager;

    .line 204
    .local v7, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    .line 205
    .local v6, "accessibilityEnabled":Z
    new-instance v1, Lnet/oneplus/h2launcher/TransitionStates;

    invoke-direct {v1, p1, p2}, Lnet/oneplus/h2launcher/TransitionStates;-><init>(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;)V

    .line 206
    .local v1, "states":Lnet/oneplus/h2launcher/TransitionStates;
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->getAnimationDuration(Lnet/oneplus/h2launcher/TransitionStates;)I

    move-result v4

    .local v4, "workspaceDuration":I
    move-object v0, p0

    move v2, p3

    move v3, p4

    move-object v5, p5

    .line 207
    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->animateWorkspace(Lnet/oneplus/h2launcher/TransitionStates;IZILjava/util/HashMap;Z)V

    .line 209
    const/16 v0, 0x15e

    invoke-direct {p0, v1, p4, v0}, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->animateBackgroundGradient(Lnet/oneplus/h2launcher/TransitionStates;ZI)V

    .line 210
    iget-object v0, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getFinalScale()F
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->mNewScale:F

    return v0
.end method
