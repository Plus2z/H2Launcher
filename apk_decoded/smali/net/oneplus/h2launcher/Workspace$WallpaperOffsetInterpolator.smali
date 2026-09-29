.class Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperOffsetInterpolator"
.end annotation


# instance fields
.field private final ANIMATION_DURATION:I

.field private final MIN_PARALLAX_PAGE_SPAN:I

.field mAnimating:Z

.field mAnimationObject:Lnet/oneplus/h2launcher/Workspace$AnimationObject;

.field mChoreographer:Landroid/view/Choreographer;

.field mCurrentOffset:F

.field mFinalOffset:F

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFrameTimeNanos:J

.field mNumScreens:I

.field mWaitingForUpdate:Z

.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/Workspace;)V
    .locals 2
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 1579
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1565
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    .line 1566
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    .line 1572
    const/16 v0, 0xfa

    iput v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->ANIMATION_DURATION:I

    .line 1574
    const/4 v0, 0x3

    iput v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->MIN_PARALLAX_PAGE_SPAN:I

    .line 1580
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mChoreographer:Landroid/view/Choreographer;

    .line 1581
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1582
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$AnimationObject;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/Workspace$AnimationObject;-><init>(Lnet/oneplus/h2launcher/Workspace;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mAnimationObject:Lnet/oneplus/h2launcher/Workspace$AnimationObject;

    .line 1583
    return-void
.end method

.method private animateToFinal()V
    .locals 4

    .prologue
    .line 1738
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mAnimating:Z

    .line 1739
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$AnimationObject;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/Workspace$AnimationObject;-><init>(Lnet/oneplus/h2launcher/Workspace;)V

    .line 1740
    .local v0, "newAnimationObject":Lnet/oneplus/h2launcher/Workspace$AnimationObject;
    iget v1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    iput v1, v0, Lnet/oneplus/h2launcher/Workspace$AnimationObject;->mAnimationStartOffset:F

    .line 1741
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lnet/oneplus/h2launcher/Workspace$AnimationObject;->mAnimationStartTime:J

    .line 1742
    iput-object v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mAnimationObject:Lnet/oneplus/h2launcher/Workspace$AnimationObject;

    .line 1743
    return-void
.end method

.method private getNumScreensExcludingEmptyAndCustom()I
    .locals 3

    .prologue
    .line 1719
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v1

    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->numEmptyScreensToIgnore()I

    move-result v2

    sub-int v0, v1, v2

    .line 1720
    .local v0, "numScrollingPages":I
    return v0
.end method

.method private numEmptyScreensToIgnore()I
    .locals 2

    .prologue
    .line 1710
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v0

    .line 1711
    .local v0, "numScrollingPages":I
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->hasExtraEmptyScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1712
    const/4 v1, 0x1

    .line 1714
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private numEmptyTempEnmptyScreen()I
    .locals 8

    .prologue
    .line 1692
    const/4 v0, 0x0

    .line 1693
    .local v0, "emptyScreen":I
    new-instance v3, Lnet/oneplus/h2launcher/TransitionStates;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnet/oneplus/h2launcher/TransitionStates;-><init>(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;)V

    .line 1694
    .local v3, "states":Lnet/oneplus/h2launcher/TransitionStates;
    iget-boolean v4, v3, Lnet/oneplus/h2launcher/TransitionStates;->stateIsOverview:Z

    if-nez v4, :cond_0

    iget-boolean v4, v3, Lnet/oneplus/h2launcher/TransitionStates;->stateIsIconRearrangement:Z

    if-eqz v4, :cond_2

    .line 1695
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1696
    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v4, v1}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/CellLayout;

    .line 1697
    .local v2, "layout":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v2, :cond_1

    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v4, v2}, Lnet/oneplus/h2launcher/Workspace;->getIdForScreen(Lnet/oneplus/h2launcher/CellLayout;)J

    move-result-wide v4

    const-wide/16 v6, -0xc9

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 1698
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 1699
    add-int/lit8 v0, v0, 0x1

    .line 1695
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1706
    .end local v1    # "i":I
    .end local v2    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    :cond_2
    return v0
.end method

.method private scheduleUpdate()V
    .locals 1

    .prologue
    .line 1767
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    if-nez v0, :cond_0

    .line 1768
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    .line 1771
    :cond_0
    return-void
.end method

.method private setWallpaperOffsetSteps()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1747
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget v1, v1, Lnet/oneplus/h2launcher/Workspace;->mNumPagesForWallpaperParallax:I

    int-to-float v1, v1

    div-float v0, v2, v1

    .line 1748
    .local v0, "xOffset":F
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget v1, v1, Lnet/oneplus/h2launcher/Workspace;->mLastSetWallpaperOffsetSteps:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 1749
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1, v0, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 1750
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput v0, v1, Lnet/oneplus/h2launcher/Workspace;->mLastSetWallpaperOffsetSteps:F

    .line 1752
    :cond_0
    return-void
.end method

.method private updateOffset(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    .line 1594
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 1595
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    .line 1596
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Workspace;->mWindowToken:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    .line 1598
    :try_start_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->setWallpaperOffsetSteps()V

    .line 1599
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Workspace;->mWindowToken:Landroid/os/IBinder;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v3, v3, Lnet/oneplus/h2launcher/Workspace;->mWallpaperOffset:Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;

    .line 1600
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    .line 1599
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1606
    :cond_1
    :goto_0
    return-void

    .line 1601
    :catch_0
    move-exception v0

    .line 1602
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error updating wallpaper offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .locals 13

    .prologue
    .line 1639
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->getNumScreensExcludingEmptyAndCustom()I

    move-result v5

    .line 1641
    .local v5, "numScrollingPages":I
    iget-object v10, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-boolean v10, v10, Lnet/oneplus/h2launcher/Workspace;->mWallpaperIsLiveWallpaper:Z

    if-eqz v10, :cond_0

    .line 1642
    add-int/lit8 v7, v5, -0x1

    .line 1650
    .local v7, "parallaxPageSpan":I
    :goto_0
    iget-object v10, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput v7, v10, Lnet/oneplus/h2launcher/Workspace;->mNumPagesForWallpaperParallax:I

    .line 1651
    iget-object v10, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v10

    const/4 v11, 0x1

    if-gt v10, v11, :cond_3

    .line 1652
    iget-object v10, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-boolean v10, v10, Lnet/oneplus/h2launcher/Workspace;->mIsRtl:Z

    if-eqz v10, :cond_2

    .line 1653
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    iget-object v12, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget v12, v12, Lnet/oneplus/h2launcher/Workspace;->mNumPagesForWallpaperParallax:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    .line 1687
    :goto_1
    return v10

    .line 1644
    .end local v7    # "parallaxPageSpan":I
    :cond_0
    iget-object v10, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-boolean v10, v10, Lnet/oneplus/h2launcher/Workspace;->mIsRtl:Z

    if-eqz v10, :cond_1

    .line 1645
    add-int/lit8 v7, v5, -0x1

    .restart local v7    # "parallaxPageSpan":I
    goto :goto_0

    .line 1647
    .end local v7    # "parallaxPageSpan":I
    :cond_1
    const/4 v10, 0x3

    add-int/lit8 v11, v5, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "parallaxPageSpan":I
    goto :goto_0

    .line 1655
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 1659
    :cond_3
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->numEmptyScreensToIgnore()I

    move-result v1

    .line 1660
    .local v1, "emptyExtraPages":I
    iget-object v10, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/Workspace;->numCustomPages()I

    move-result v2

    .line 1662
    .local v2, "firstIndex":I
    iget-object v10, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int v4, v10, v1

    .line 1663
    .local v4, "lastIndex":I
    iget-object v10, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-boolean v10, v10, Lnet/oneplus/h2launcher/Workspace;->mIsRtl:Z

    if-eqz v10, :cond_4

    .line 1664
    move v9, v2

    .line 1665
    .local v9, "temp":I
    move v2, v4

    .line 1666
    move v4, v9

    .line 1669
    .end local v9    # "temp":I
    :cond_4
    iget-object v10, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v10, v2}, Lnet/oneplus/h2launcher/Workspace;->getScrollForPage(I)I

    move-result v3

    .line 1670
    .local v3, "firstPageScrollX":I
    iget-object v10, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v10, v4}, Lnet/oneplus/h2launcher/Workspace;->getScrollForPage(I)I

    move-result v10

    sub-int v8, v10, v3

    .line 1671
    .local v8, "scrollRange":I
    if-nez v8, :cond_5

    .line 1672
    const/4 v10, 0x0

    goto :goto_1

    .line 1676
    :cond_5
    iget-object v10, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    .line 1677
    invoke-virtual {v10}, Lnet/oneplus/h2launcher/Workspace;->getScrollX()I

    move-result v10

    sub-int/2addr v10, v3

    iget-object v11, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lnet/oneplus/h2launcher/Workspace;->getLayoutTransitionOffsetForPage(I)I

    move-result v11

    sub-int v0, v10, v11

    .line 1678
    .local v0, "adjustedScroll":I
    const/high16 v10, 0x3f800000    # 1.0f

    int-to-float v11, v0

    int-to-float v12, v8

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1679
    .local v6, "offset":F
    const/4 v10, 0x0

    invoke-static {v10, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1683
    iget-object v10, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-boolean v10, v10, Lnet/oneplus/h2launcher/Workspace;->mWallpaperIsLiveWallpaper:Z

    if-nez v10, :cond_6

    const/4 v10, 0x3

    if-ge v5, v10, :cond_6

    iget-object v10, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-boolean v10, v10, Lnet/oneplus/h2launcher/Workspace;->mIsRtl:Z

    if-eqz v10, :cond_6

    .line 1685
    sub-int v10, v7, v5

    add-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    mul-float/2addr v10, v6

    int-to-float v11, v7

    div-float/2addr v10, v11

    goto :goto_1

    .line 1687
    :cond_6
    add-int/lit8 v10, v5, -0x1

    int-to-float v10, v10

    mul-float/2addr v10, v6

    int-to-float v11, v7

    div-float/2addr v10, v11

    goto :goto_1
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 15

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const v14, 0x33d6bf95    # 1.0E-7f

    .line 1609
    iget v1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    .line 1610
    .local v1, "oldOffset":F
    iget-boolean v6, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mAnimating:Z

    if-eqz v6, :cond_3

    .line 1611
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mAnimationObject:Lnet/oneplus/h2launcher/Workspace$AnimationObject;

    .line 1612
    .local v0, "currentAnimationObject":Lnet/oneplus/h2launcher/Workspace$AnimationObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v0, Lnet/oneplus/h2launcher/Workspace$AnimationObject;->mAnimationStartTime:J

    sub-long v2, v10, v12

    .line 1613
    .local v2, "durationSinceAnimation":J
    long-to-float v6, v2

    const/high16 v9, 0x437a0000    # 250.0f

    div-float v4, v6, v9

    .line 1614
    .local v4, "t0":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v6

    if-lez v6, :cond_0

    .line 1615
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1617
    :cond_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 1619
    .local v5, "t1":F
    iget v6, v0, Lnet/oneplus/h2launcher/Workspace$AnimationObject;->mAnimationStartOffset:F

    iget v9, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    iget v10, v0, Lnet/oneplus/h2launcher/Workspace$AnimationObject;->mAnimationStartOffset:F

    sub-float/2addr v9, v10

    mul-float/2addr v9, v5

    add-float/2addr v6, v9

    iput v6, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    .line 1621
    const-wide/16 v10, 0xfa

    cmp-long v6, v2, v10

    if-gez v6, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mAnimating:Z

    .line 1626
    .end local v0    # "currentAnimationObject":Lnet/oneplus/h2launcher/Workspace$AnimationObject;
    .end local v2    # "durationSinceAnimation":J
    .end local v4    # "t0":F
    .end local v5    # "t1":F
    :goto_1
    iget v6, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    iget v9, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    sub-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v14

    if-lez v6, :cond_1

    .line 1627
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->scheduleUpdate()V

    .line 1629
    :cond_1
    iget v6, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v14

    if-lez v6, :cond_4

    .line 1632
    :goto_2
    return v7

    .restart local v0    # "currentAnimationObject":Lnet/oneplus/h2launcher/Workspace$AnimationObject;
    .restart local v2    # "durationSinceAnimation":J
    .restart local v4    # "t0":F
    .restart local v5    # "t1":F
    :cond_2
    move v6, v8

    .line 1621
    goto :goto_0

    .line 1623
    .end local v0    # "currentAnimationObject":Lnet/oneplus/h2launcher/Workspace$AnimationObject;
    .end local v2    # "durationSinceAnimation":J
    .end local v4    # "t0":F
    .end local v5    # "t1":F
    :cond_3
    iget v6, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    iput v6, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    goto :goto_1

    :cond_4
    move v7, v8

    .line 1632
    goto :goto_2
.end method

.method public doFrame(J)V
    .locals 3
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 1587
    iget-wide v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mLastFrameTimeNanos:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 1588
    iput-wide p1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mLastFrameTimeNanos:J

    .line 1589
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->updateOffset(Z)V

    .line 1591
    :cond_0
    return-void
.end method

.method public getCurrX()F
    .locals 1

    .prologue
    .line 1730
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    return v0
.end method

.method public getFinalX()F
    .locals 1

    .prologue
    .line 1734
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    return v0
.end method

.method public jumpToFinal()V
    .locals 1

    .prologue
    .line 1774
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    iput v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    .line 1775
    return-void
.end method

.method public setFinalX(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 1755
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->scheduleUpdate()V

    .line 1756
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    .line 1757
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->getNumScreensExcludingEmptyAndCustom()I

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mNumScreens:I

    if-eq v0, v1, :cond_1

    .line 1758
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mNumScreens:I

    if-lez v0, :cond_0

    .line 1760
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->animateToFinal()V

    .line 1762
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->getNumScreensExcludingEmptyAndCustom()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mNumScreens:I

    .line 1764
    :cond_1
    return-void
.end method

.method public syncWithScroll()V
    .locals 2

    .prologue
    .line 1724
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->wallpaperOffsetForCurrentScroll()F

    move-result v0

    .line 1725
    .local v0, "offset":F
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Workspace;->mWallpaperOffset:Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V

    .line 1726
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->updateOffset(Z)V

    .line 1727
    return-void
.end method
