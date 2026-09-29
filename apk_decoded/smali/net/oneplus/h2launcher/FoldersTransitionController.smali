.class public Lnet/oneplus/h2launcher/FoldersTransitionController;
.super Ljava/lang/Object;
.source "FoldersTransitionController.java"

# interfaces
.implements Lnet/oneplus/h2launcher/util/TouchController;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/FoldersTransitionController$State;
    }
.end annotation


# static fields
.field private static final PARALLAX_COEFFICIENT:F = 0.125f

.field private static final SINGLE_FRAME_MS:I = 0x10

.field private static final TAG:Ljava/lang/String;

.field private static final WORKSPACE_ANIM_DURATION:F = 175.0f


# instance fields
.field private mAnimationDuration:J

.field private mContainerVelocity:F

.field private mCurrentAnimation:Landroid/animation/AnimatorSet;

.field private final mDetector:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;

.field private final mFoldersScrimAlpha:F

.field private mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

.field private mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mNoIntercept:Z

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mProgress:F

.field private mShiftRange:F

.field private mShiftStart:F

.field private mWorkspace:Lnet/oneplus/h2launcher/Workspace;

.field private final mWorkspaceEndProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lnet/oneplus/h2launcher/FoldersTransitionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/FoldersTransitionController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v2, v4, v4, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    move-object v2, p1

    .line 41
    check-cast v2, Lnet/oneplus/h2launcher/Launcher;

    iput-object v2, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 42
    iput v5, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mProgress:F

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x7f0f003b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iput v2, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mFoldersScrimAlpha:F

    .line 47
    const v2, 0x7f0f002e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v1, v2

    .line 48
    .local v1, "totalAnimDuration":F
    const/high16 v2, 0x432f0000    # 175.0f

    sub-float v2, v1, v2

    div-float/2addr v2, v1

    iput v2, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mWorkspaceEndProgress:F

    .line 50
    new-instance v2, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;

    iget-object v3, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {v2, v3}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mDetector:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;

    .line 51
    iget-object v2, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mDetector:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;

    invoke-virtual {v2, p0}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->setListener(Lnet/oneplus/h2launcher/allapps/VerticalPullDetector$Listener;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/FoldersTransitionController;)Lnet/oneplus/h2launcher/FoldersContainerView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/FoldersTransitionController;

    .prologue
    .line 19
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    return-object v0
.end method

.method private calculateDuration(FF)V
    .locals 5
    .param p1, "velocity"    # F
    .param p2, "disp"    # F

    .prologue
    .line 103
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 104
    .local v1, "velocityDivisor":F
    const v2, 0x3e4ccccd    # 0.2f

    iget v3, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mShiftRange:F

    div-float v3, p2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 105
    .local v0, "travelDistance":F
    const/high16 v2, 0x432f0000    # 175.0f

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, 0x44960000    # 1200.0f

    div-float/2addr v4, v1

    mul-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-long v2, v2

    iput-wide v2, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mAnimationDuration:J

    .line 106
    return-void
.end method

.method private prepare()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->isFoldersViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lnet/oneplus/h2launcher/FoldersTransitionController;->TAG:Ljava/lang/String;

    const-string v1, "prepare# show folders view"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FoldersContainerView;->setVisibility(I)V

    .line 186
    :cond_0
    return-void
.end method


# virtual methods
.method public animateToFolders(Landroid/animation/AnimatorSet;J)Z
    .locals 8
    .param p1, "animationOut"    # Landroid/animation/AnimatorSet;
    .param p2, "duration"    # J

    .prologue
    const/4 v7, 0x0

    .line 109
    const/4 v2, 0x1

    .line 110
    .local v2, "shouldPost":Z
    iget-object v3, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mDetector:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->isIdleState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    iput-wide p2, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mAnimationDuration:J

    .line 112
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FoldersTransitionController;->prepare()V

    .line 121
    :goto_0
    const-string v3, "progress"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mProgress:F

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v7, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 122
    .local v0, "driftAndAlpha":Landroid/animation/ObjectAnimator;
    iget-wide v4, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mAnimationDuration:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 123
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 124
    new-instance v3, Lnet/oneplus/h2launcher/FoldersTransitionController$1;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/FoldersTransitionController$1;-><init>(Lnet/oneplus/h2launcher/FoldersTransitionController;)V

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 140
    iput-object p1, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 141
    return v2

    .line 114
    .end local v0    # "driftAndAlpha":Landroid/animation/ObjectAnimator;
    :cond_0
    iget v3, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mProgress:F

    iget v4, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mContainerVelocity:F

    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v4, v5

    iget v5, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mShiftRange:F

    div-float/2addr v4, v5

    add-float v1, v3, v4

    .line 115
    .local v1, "nextFrameProgress":F
    cmpl-float v3, v1, v7

    if-ltz v3, :cond_1

    .line 116
    iput v1, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mProgress:F

    .line 118
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public animateToWorkspace(Landroid/animation/AnimatorSet;J)Z
    .locals 8
    .param p1, "animationOut"    # Landroid/animation/AnimatorSet;
    .param p2, "duration"    # J

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 145
    const/4 v2, 0x1

    .line 146
    .local v2, "shouldPost":Z
    iget-object v3, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mDetector:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->isIdleState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FoldersTransitionController;->prepare()V

    .line 148
    iput-wide p2, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mAnimationDuration:J

    .line 157
    :goto_0
    const-string v3, "progress"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mProgress:F

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v7, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 158
    .local v0, "driftAndAlpha":Landroid/animation/ObjectAnimator;
    iget-wide v4, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mAnimationDuration:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 159
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 160
    new-instance v3, Lnet/oneplus/h2launcher/FoldersTransitionController$2;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/FoldersTransitionController$2;-><init>(Lnet/oneplus/h2launcher/FoldersTransitionController;)V

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 173
    iput-object p1, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 174
    return v2

    .line 150
    .end local v0    # "driftAndAlpha":Landroid/animation/ObjectAnimator;
    :cond_0
    iget v3, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mProgress:F

    iget v4, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mContainerVelocity:F

    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v4, v5

    iget v5, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mShiftRange:F

    div-float/2addr v4, v5

    add-float v1, v3, v4

    .line 151
    .local v1, "nextFrameProgress":F
    cmpg-float v3, v1, v7

    if-gtz v3, :cond_1

    .line 152
    iput v1, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mProgress:F

    .line 154
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public endAnimation(Lnet/oneplus/h2launcher/FoldersTransitionController$State;)V
    .locals 2
    .param p1, "state"    # Lnet/oneplus/h2launcher/FoldersTransitionController$State;

    .prologue
    .line 189
    sget-object v0, Lnet/oneplus/h2launcher/FoldersTransitionController$State;->FOLDER:Lnet/oneplus/h2launcher/FoldersTransitionController$State;

    if-ne p1, v0, :cond_0

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FoldersTransitionController;->setProgress(F)V

    .line 199
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mDetector:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->finishedScrolling()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 201
    return-void

    .line 192
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/FoldersTransitionController;->TAG:Ljava/lang/String;

    const-string v1, "endAnimation# dismiss folders view"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FoldersContainerView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    .line 195
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FoldersTransitionController;->setProgress(F)V

    .line 196
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FoldersContainerView;->removeFolder()V

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransitioning()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mDetector:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->isDraggingOrSettling()Z

    move-result v0

    return v0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 268
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mNoIntercept:Z

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "currentFolder":Lnet/oneplus/h2launcher/Folder;
    iget-object v3, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    if-eqz v3, :cond_0

    .line 271
    iget-object v3, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/FoldersContainerView;->getCurrentFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v0

    .line 273
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->isFoldersViewVisible()Z

    move-result v3

    if-nez v3, :cond_2

    .line 274
    sget-object v3, Lnet/oneplus/h2launcher/FoldersTransitionController;->TAG:Ljava/lang/String;

    const-string v4, "onInterceptTouchEvent# not in folders mode"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mNoIntercept:Z

    .line 297
    .end local v0    # "currentFolder":Lnet/oneplus/h2launcher/Folder;
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mNoIntercept:Z

    if-eqz v3, :cond_6

    .line 303
    :goto_1
    return v2

    .line 276
    .restart local v0    # "currentFolder":Lnet/oneplus/h2launcher/Folder;
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->isFoldersViewVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 277
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->isScrolledToTop()Z

    move-result v3

    if-nez v3, :cond_3

    .line 278
    sget-object v3, Lnet/oneplus/h2launcher/FoldersTransitionController;->TAG:Ljava/lang/String;

    const-string v4, "onInterceptTouchEvent# folders mode but can\'t scroll the container"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mNoIntercept:Z

    goto :goto_0

    .line 280
    :cond_3
    iget-object v3, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->isFoldersViewVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 281
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 282
    sget-object v3, Lnet/oneplus/h2launcher/FoldersTransitionController;->TAG:Ljava/lang/String;

    const-string v4, "onInterceptTouchEvent# editing folder name"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mNoIntercept:Z

    goto :goto_0

    .line 287
    :cond_4
    const/4 v1, 0x0

    .line 288
    .local v1, "directionsToDetectScroll":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mDetector:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->isIdleState()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 289
    iget-object v3, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->isFoldersViewVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 290
    or-int/lit8 v1, v1, 0x2

    .line 293
    :cond_5
    iget-object v3, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mDetector:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;

    invoke-virtual {v3, v1, v2}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->setDetectableScrollConditions(IZ)V

    goto :goto_0

    .line 300
    .end local v0    # "currentFolder":Lnet/oneplus/h2launcher/Folder;
    .end local v1    # "directionsToDetectScroll":I
    :cond_6
    iget-object v2, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->isFoldersViewVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 301
    iget-object v2, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mDetector:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;

    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 303
    :cond_7
    iget-object v2, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mDetector:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->isDraggingOrSettling()Z

    move-result v2

    goto :goto_1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 262
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->isFoldersViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mDetector:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrag(FF)Z
    .locals 4
    .param p1, "displacement"    # F
    .param p2, "velocity"    # F

    .prologue
    .line 223
    iget-object v1, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    if-nez v1, :cond_0

    .line 224
    const/4 v1, 0x0

    .line 231
    :goto_0
    return v1

    .line 227
    :cond_0
    iput p2, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mContainerVelocity:F

    .line 229
    const/4 v1, 0x0

    iget v2, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mShiftStart:F

    iget v3, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mShiftRange:F

    div-float v3, p1, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 230
    .local v0, "progress":F
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FoldersTransitionController;->setProgress(F)V

    .line 231
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onDragEnd(FZ)V
    .locals 5
    .param p1, "velocity"    # F
    .param p2, "fling"    # Z

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 236
    sget-object v0, Lnet/oneplus/h2launcher/FoldersTransitionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragEnd# launcher state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getState()Lnet/oneplus/h2launcher/Launcher$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 241
    :cond_0
    if-eqz p2, :cond_2

    .line 242
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 243
    iget v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mShiftRange:F

    iget v1, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mProgress:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/FoldersTransitionController;->calculateDuration(FF)V

    .line 244
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/Launcher;->showFoldersView(Z)V

    goto :goto_0

    .line 246
    :cond_1
    iget v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mShiftRange:F

    iget v1, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mProgress:F

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/FoldersTransitionController;->calculateDuration(FF)V

    .line 247
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    goto :goto_0

    .line 250
    :cond_2
    iget v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mProgress:F

    const v1, 0x3ea8f5c3    # 0.33f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 251
    iget v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mShiftRange:F

    iget v1, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mProgress:F

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/FoldersTransitionController;->calculateDuration(FF)V

    .line 252
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    goto :goto_0

    .line 254
    :cond_3
    iget v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mShiftRange:F

    iget v1, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mProgress:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/FoldersTransitionController;->calculateDuration(FF)V

    .line 255
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/Launcher;->showFoldersView(Z)V

    goto :goto_0
.end method

.method public onDragStart(Z)V
    .locals 3
    .param p1, "start"    # Z

    .prologue
    .line 213
    sget-object v0, Lnet/oneplus/h2launcher/FoldersTransitionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragStart# launcher state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getState()Lnet/oneplus/h2launcher/Launcher$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mProgress:F

    iput v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mShiftStart:F

    .line 216
    if-eqz p1, :cond_0

    .line 217
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FoldersTransitionController;->prepare()V

    .line 219
    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 206
    instance-of v0, p1, Lnet/oneplus/h2launcher/FoldersContainerView;

    if-eqz v0, :cond_0

    .line 207
    sub-int v0, p5, p3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mShiftRange:F

    .line 209
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 14
    .param p1, "progress"    # F
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 66
    iget v4, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mProgress:F

    .line 67
    .local v4, "oldProgress":F
    iget v9, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mProgress:F

    iget v10, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mShiftRange:F

    mul-float v6, v9, v10

    .line 68
    .local v6, "shiftPrevious":F
    iput p1, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mProgress:F

    .line 70
    iget v9, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mWorkspaceEndProgress:F

    cmpg-float v9, p1, v9

    if-gez v9, :cond_2

    move v7, v8

    .line 72
    .local v7, "workspaceProgress":F
    :goto_0
    invoke-static {v7, v8, v11}, Lnet/oneplus/h2launcher/Utilities;->boundToRange(FFF)F

    move-result v1

    .line 73
    .local v1, "boundedProgress":F
    iget-object v9, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v3

    .line 75
    .local v3, "interpolation":F
    const/high16 v9, 0x437f0000    # 255.0f

    iget v10, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mFoldersScrimAlpha:F

    mul-float/2addr v9, v10

    sub-float v10, v11, v3

    mul-float/2addr v9, v10

    float-to-int v0, v9

    .line 76
    .local v0, "alpha":I
    invoke-static {v0, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 77
    .local v2, "color":I
    iget-object v9, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 78
    iget-object v9, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/FoldersContainerView;->getContentView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 82
    :goto_1
    iget-object v9, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    invoke-virtual {v9, p1}, Lnet/oneplus/h2launcher/FoldersContainerView;->setProgress(F)V

    .line 84
    iget v9, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mShiftRange:F

    mul-float v5, v3, v9

    .line 85
    .local v5, "shiftCurrent":F
    iget-object v9, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget-object v10, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mDetector:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->isDraggingState()Z

    move-result v10

    invoke-virtual {v9, v8, v3, v10}, Lnet/oneplus/h2launcher/Workspace;->setWorkspaceYTranslationAndAlpha(FFZ)V

    .line 87
    iget-object v9, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mDetector:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->isDraggingState()Z

    move-result v9

    if-nez v9, :cond_0

    .line 88
    iget-object v9, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mDetector:Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;

    sub-float v10, v5, v6

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 88
    invoke-virtual {v9, v10, v12, v13}, Lnet/oneplus/h2launcher/allapps/VerticalPullDetector;->computeVelocity(FJ)F

    move-result v9

    iput v9, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mContainerVelocity:F

    .line 92
    :cond_0
    iget-object v9, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v9

    if-nez v9, :cond_1

    .line 93
    invoke-static {p1, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_4

    iget v9, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mProgress:F

    invoke-static {v4, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-eqz v9, :cond_4

    .line 94
    iget-object v8, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->showFolderTutorial()V

    .line 99
    :cond_1
    :goto_2
    return-void

    .line 70
    .end local v0    # "alpha":I
    .end local v1    # "boundedProgress":F
    .end local v2    # "color":I
    .end local v3    # "interpolation":F
    .end local v5    # "shiftCurrent":F
    .end local v7    # "workspaceProgress":F
    :cond_2
    iget v9, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mWorkspaceEndProgress:F

    sub-float v9, p1, v9

    iget v10, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mWorkspaceEndProgress:F

    sub-float v10, v11, v10

    div-float v7, v9, v10

    goto :goto_0

    .line 80
    .restart local v0    # "alpha":I
    .restart local v1    # "boundedProgress":F
    .restart local v2    # "color":I
    .restart local v3    # "interpolation":F
    .restart local v7    # "workspaceProgress":F
    :cond_3
    iget-object v9, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    invoke-virtual {v9, v2}, Lnet/oneplus/h2launcher/FoldersContainerView;->setBackgroundColor(I)V

    goto :goto_1

    .line 95
    .restart local v5    # "shiftCurrent":F
    :cond_4
    invoke-static {v4, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_1

    iget v8, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mProgress:F

    invoke-static {v4, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_1

    .line 96
    iget-object v8, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->dismissFolderTutorial()V

    goto :goto_2
.end method

.method public setupViews(Lnet/oneplus/h2launcher/FoldersContainerView;Lnet/oneplus/h2launcher/Workspace;)V
    .locals 1
    .param p1, "foldersView"    # Lnet/oneplus/h2launcher/FoldersContainerView;
    .param p2, "workspace"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 55
    iput-object p1, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    .line 56
    iput-object p2, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 57
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 58
    return-void
.end method
