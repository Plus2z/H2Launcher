.class public Lnet/oneplus/h2launcher/FoldersContainerView;
.super Lnet/oneplus/h2launcher/BaseContainerView;
.source "FoldersContainerView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final CONTENT_ANIM_START_DELAY:F = 50.0f

.field private static final CONTENT_ANIM_START_PROGRESS:F

.field private static final HEADER_CLOSE_ALPHA_SPEED_UP_FACTOR:F = 1.4f

.field private static final HEADER_CLOSE_ANIM_ALPHA_DURATION:F = 125.0f

.field private static final HEADER_CLOSE_ANIM_DURATION:F = 175.0f

.field private static final HEADER_CLOSE_ANIM_END_PROGRESS:F

.field private static final HEADER_OPEN_ANIM_DURATION:F = 175.0f

.field private static final HEADER_OPEN_ANIM_END_PROGRESS:F

.field private static final TAG:Ljava/lang/String;

.field private static sIndicatorCollapseScaleEnd:F

.field private static sIndicatorCollapseScaleMiddle:F

.field private static sIndicatorExpandScaleEnd:F

.field private static sIndicatorExpandScaleMiddle:F


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mFolder:Lnet/oneplus/h2launcher/Folder;

.field private final mFolderBottomPadding:I

.field private mFolderHeader:Landroid/view/ViewGroup;

.field private final mFolderHeaderTranslation:F

.field private mFolderIndicator:Landroid/view/View;

.field private mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

.field private final mFolderNameRect:Landroid/graphics/Rect;

.field private mFolderNameText:Landroid/widget/TextView;

.field private mFolderNameTextClickListener:Landroid/view/View$OnClickListener;

.field private final mFolderRect:Landroid/graphics/Rect;

.field private mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

.field private mIndicatorAnim:Landroid/animation/AnimatorSet;

.field private final mInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mLastProgress:F

.field private mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mProgress:F

.field private final mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x432f0000    # 175.0f

    .line 29
    const-class v3, Lnet/oneplus/h2launcher/FoldersContainerView;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lnet/oneplus/h2launcher/FoldersContainerView;->TAG:Ljava/lang/String;

    .line 44
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 46
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0f002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v1, v3

    .line 47
    .local v1, "folderTransitionTime":F
    sub-float v3, v1, v4

    div-float/2addr v3, v1

    sput v3, Lnet/oneplus/h2launcher/FoldersContainerView;->HEADER_OPEN_ANIM_END_PROGRESS:F

    .line 48
    div-float v3, v4, v1

    sput v3, Lnet/oneplus/h2launcher/FoldersContainerView;->HEADER_CLOSE_ANIM_END_PROGRESS:F

    .line 49
    const/high16 v3, 0x42480000    # 50.0f

    sub-float v3, v1, v3

    div-float/2addr v3, v1

    sput v3, Lnet/oneplus/h2launcher/FoldersContainerView;->CONTENT_ANIM_START_PROGRESS:F

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/FoldersContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/FoldersContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderNameRect:Landroid/graphics/Rect;

    .line 55
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderRect:Landroid/graphics/Rect;

    .line 56
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 67
    new-instance v4, Lnet/oneplus/h2launcher/FoldersContainerView$1;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/FoldersContainerView$1;-><init>(Lnet/oneplus/h2launcher/FoldersContainerView;)V

    iput-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderNameTextClickListener:Landroid/view/View$OnClickListener;

    .line 77
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mIndicatorAnim:Landroid/animation/AnimatorSet;

    .line 90
    invoke-static {p1}, Lnet/oneplus/h2launcher/Launcher;->getLauncher(Landroid/content/Context;)Lnet/oneplus/h2launcher/Launcher;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 91
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mTouchSlop:I

    .line 93
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 94
    .local v2, "resources":Landroid/content/res/Resources;
    const v4, 0x7f0c0250

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderHeaderTranslation:F

    .line 95
    invoke-static {p1}, Lnet/oneplus/h2launcher/Launcher;->getLauncher(Landroid/content/Context;)Lnet/oneplus/h2launcher/Launcher;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 96
    iput v6, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mProgress:F

    iput v6, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mLastProgress:F

    .line 98
    const/4 v4, 0x1

    invoke-static {p1, v4}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v4

    iget v3, v4, Landroid/graphics/Point;->x:I

    .line 99
    .local v3, "screenWidth":I
    const v4, 0x7f0c0256

    .line 100
    invoke-static {p1, v4}, Lnet/oneplus/h2launcher/Utilities;->getDimensionPixelNormalized(Landroid/content/Context;I)I

    move-result v1

    .line 101
    .local v1, "folderNameMarginH":I
    const v4, 0x7f0c0253

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v0, v4

    .line 102
    .local v0, "folderIndicatorW":F
    mul-int/lit8 v4, v1, 0x2

    sub-int v4, v3, v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    sput v4, Lnet/oneplus/h2launcher/FoldersContainerView;->sIndicatorExpandScaleEnd:F

    .line 103
    sget v4, Lnet/oneplus/h2launcher/FoldersContainerView;->sIndicatorExpandScaleEnd:F

    const/high16 v5, 0x41d80000    # 27.0f

    div-float/2addr v5, v0

    add-float/2addr v4, v5

    sput v4, Lnet/oneplus/h2launcher/FoldersContainerView;->sIndicatorExpandScaleMiddle:F

    .line 104
    sput v6, Lnet/oneplus/h2launcher/FoldersContainerView;->sIndicatorCollapseScaleEnd:F

    .line 105
    sget v4, Lnet/oneplus/h2launcher/FoldersContainerView;->sIndicatorCollapseScaleEnd:F

    const/high16 v5, 0x41a80000    # 21.0f

    div-float/2addr v5, v0

    sub-float/2addr v4, v5

    sput v4, Lnet/oneplus/h2launcher/FoldersContainerView;->sIndicatorCollapseScaleMiddle:F

    .line 107
    const v4, 0x7f0c0258

    invoke-static {p1, v4}, Lnet/oneplus/h2launcher/Utilities;->getDimensionPixelNormalized(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderBottomPadding:I

    .line 108
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/FoldersContainerView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/FoldersContainerView;

    .prologue
    .line 28
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderNameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/FoldersContainerView;)Lnet/oneplus/h2launcher/ExtendedEditText;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/FoldersContainerView;

    .prologue
    .line 28
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/FoldersContainerView;)Lnet/oneplus/h2launcher/Folder;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/FoldersContainerView;

    .prologue
    .line 28
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    return-object v0
.end method

.method private animateFolderIndicator(Z)V
    .locals 13
    .param p1, "expand"    # Z

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 347
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 348
    .local v0, "scaleX0":F
    if-eqz p1, :cond_0

    sget v1, Lnet/oneplus/h2launcher/FoldersContainerView;->sIndicatorExpandScaleMiddle:F

    .line 349
    .local v1, "scaleX1":F
    :goto_0
    if-eqz p1, :cond_1

    sget v2, Lnet/oneplus/h2launcher/FoldersContainerView;->sIndicatorExpandScaleEnd:F

    .line 350
    .local v2, "scaleX2":F
    :goto_1
    if-eqz p1, :cond_2

    const/high16 v3, 0x40000000    # 2.0f

    .line 351
    .local v3, "scaleY":F
    :goto_2
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mIndicatorAnim:Landroid/animation/AnimatorSet;

    new-array v5, v12, [Landroid/animation/Animator;

    iget-object v6, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderIndicator:Landroid/view/View;

    const-string v7, "scaleX"

    new-array v8, v12, [F

    aput v0, v8, v10

    aput v1, v8, v11

    .line 352
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xaf

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderIndicator:Landroid/view/View;

    const-string v7, "scaleX"

    new-array v8, v12, [F

    aput v1, v8, v10

    aput v2, v8, v11

    .line 353
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x7d

    .line 354
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    .line 351
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 356
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mIndicatorAnim:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderIndicator:Landroid/view/View;

    const-string v6, "scaleY"

    new-array v7, v11, [F

    aput v3, v7, v10

    .line 357
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 356
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 359
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mIndicatorAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 360
    return-void

    .line 348
    .end local v1    # "scaleX1":F
    .end local v2    # "scaleX2":F
    .end local v3    # "scaleY":F
    :cond_0
    sget v1, Lnet/oneplus/h2launcher/FoldersContainerView;->sIndicatorCollapseScaleMiddle:F

    goto :goto_0

    .line 349
    .restart local v1    # "scaleX1":F
    :cond_1
    sget v2, Lnet/oneplus/h2launcher/FoldersContainerView;->sIndicatorCollapseScaleEnd:F

    goto :goto_1

    .line 350
    .restart local v2    # "scaleX2":F
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2
.end method

.method private applyInterpolation(F)F
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 419
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getFoldersController()Lnet/oneplus/h2launcher/FoldersTransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FoldersTransitionController;->isTransitioning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    .end local p1    # "progress":F
    :goto_0
    return p1

    .line 419
    .restart local p1    # "progress":F
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 420
    invoke-virtual {v0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    goto :goto_0
.end method

.method private calFolderContentProgress()F
    .locals 2

    .prologue
    .line 410
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->isClosingOrDraggingFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->calFolderHeaderProgress()F

    move-result v0

    .line 414
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mProgress:F

    sget v1, Lnet/oneplus/h2launcher/FoldersContainerView;->CONTENT_ANIM_START_PROGRESS:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mProgress:F

    sget v1, Lnet/oneplus/h2launcher/FoldersContainerView;->CONTENT_ANIM_START_PROGRESS:F

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private calFolderHeaderProgress()F
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 399
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->isClosingOrDraggingFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    iget v1, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mProgress:F

    sget v2, Lnet/oneplus/h2launcher/FoldersContainerView;->HEADER_CLOSE_ANIM_END_PROGRESS:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 403
    :goto_0
    return v0

    .line 400
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mProgress:F

    sget v1, Lnet/oneplus/h2launcher/FoldersContainerView;->HEADER_CLOSE_ANIM_END_PROGRESS:F

    div-float/2addr v0, v1

    goto :goto_0

    .line 403
    :cond_1
    iget v1, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mProgress:F

    sget v2, Lnet/oneplus/h2launcher/FoldersContainerView;->HEADER_OPEN_ANIM_END_PROGRESS:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v1, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mProgress:F

    sget v2, Lnet/oneplus/h2launcher/FoldersContainerView;->HEADER_OPEN_ANIM_END_PROGRESS:F

    sub-float/2addr v1, v2

    sget v2, Lnet/oneplus/h2launcher/FoldersContainerView;->HEADER_OPEN_ANIM_END_PROGRESS:F

    sub-float/2addr v0, v2

    div-float v0, v1, v0

    goto :goto_0
.end method

.method private isClickEvent(FF)Z
    .locals 1
    .param p1, "xDiff"    # F
    .param p2, "yDiff"    # F

    .prologue
    .line 324
    iget v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mTouchSlop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mTouchSlop:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isClosingOrDraggingFolder()Z
    .locals 2

    .prologue
    .line 424
    iget v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mLastProgress:F

    iget v1, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mProgress:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getFoldersController()Lnet/oneplus/h2launcher/FoldersTransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FoldersTransitionController;->isTransitioning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEventOverBlankArea(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 311
    iget-object v5, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 320
    :cond_1
    :goto_0
    return v3

    .line 315
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 316
    .local v2, "y":I
    iget-object v5, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    iget-object v6, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderNameRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/ExtendedEditText;->getHitRect(Landroid/graphics/Rect;)V

    .line 317
    iget-object v5, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    iget-object v6, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/Folder;->getHitRect(Landroid/graphics/Rect;)V

    .line 318
    iget-object v5, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderNameRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-lt v2, v5, :cond_3

    iget-object v5, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderNameRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-le v2, v5, :cond_5

    iget-object v5, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderRect:Landroid/graphics/Rect;

    .line 319
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_3
    move v0, v3

    .line 320
    .local v0, "eventOverBlankArea":Z
    :goto_1
    if-eqz v0, :cond_4

    int-to-float v5, v1

    iget v6, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mDownX:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    int-to-float v6, v2

    iget v7, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mDownY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-direct {p0, v5, v6}, Lnet/oneplus/h2launcher/FoldersContainerView;->isClickEvent(FF)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_4
    move v3, v4

    goto :goto_0

    .end local v0    # "eventOverBlankArea":Z
    :cond_5
    move v0, v4

    .line 319
    goto :goto_1
.end method

.method private layoutFolderScrollBar(Landroid/content/Context;Landroid/view/View;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scrollbar"    # Landroid/view/View;

    .prologue
    const v10, 0x7f0c025b

    .line 204
    const/4 v8, 0x1

    invoke-static {p1, v8}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v8

    iget v4, v8, Landroid/graphics/Point;->x:I

    .line 205
    .local v4, "screenWidth":I
    const v8, 0x7f0c0261

    invoke-static {p1, v8}, Lnet/oneplus/h2launcher/Utilities;->getDimensionPixelNormalized(Landroid/content/Context;I)I

    move-result v1

    .line 206
    .local v1, "folderWidth":I
    const v8, 0x7f0c0251

    invoke-static {p1, v8}, Lnet/oneplus/h2launcher/Utilities;->getDimensionPixelNormalized(Landroid/content/Context;I)I

    move-result v0

    .line 207
    .local v0, "folderHeight":I
    invoke-static {p1, v10}, Lnet/oneplus/h2launcher/Utilities;->getDimensionPixelNormalized(Landroid/content/Context;I)I

    move-result v7

    .line 209
    .local v7, "scrollbarMarginV":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c025a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 211
    .local v6, "scrollbarMarginEnd":I
    mul-int/lit8 v8, v7, 0x2

    sub-int v5, v0, v8

    .line 212
    .local v5, "scrollbarHeight":I
    sub-int v8, v4, v1

    div-int/lit8 v8, v8, 0x2

    add-int v2, v8, v6

    .line 214
    .local v2, "marginEnd":I
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 215
    .local v3, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 216
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 217
    invoke-static {p1, v10}, Lnet/oneplus/h2launcher/Utilities;->getDimensionPixelNormalized(Landroid/content/Context;I)I

    move-result v8

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 219
    iget-object v8, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-virtual {v8, v3}, Lnet/oneplus/h2launcher/FolderScrollBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    return-void
.end method

.method private setFolderContentTranslationAndAlpha()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 385
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->calFolderHeaderProgress()F

    move-result v2

    .line 386
    .local v2, "progress":F
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/FoldersContainerView;->applyInterpolation(F)F

    move-result v1

    .line 387
    .local v1, "interpolation":F
    iget v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderHeaderTranslation:F

    mul-float v3, v1, v4

    .line 388
    .local v3, "translation":F
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->isClosingOrDraggingFolder()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x3fb33333    # 1.4f

    mul-float/2addr v4, v2

    sub-float v0, v5, v4

    .line 390
    .local v0, "alpha":F
    :goto_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v4, v3}, Lnet/oneplus/h2launcher/Folder;->setTranslationY(F)V

    .line 391
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/Folder;->setAlpha(F)V

    .line 392
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-virtual {v4, v3}, Lnet/oneplus/h2launcher/FolderScrollBar;->setTranslationY(F)V

    .line 393
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/FolderScrollBar;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 394
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/FolderScrollBar;->setAlpha(F)V

    .line 396
    :cond_0
    return-void

    .line 388
    .end local v0    # "alpha":F
    :cond_1
    sub-float v0, v5, v2

    goto :goto_0
.end method

.method private setFolderHeaderTranslationAndAlpha()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 373
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->calFolderHeaderProgress()F

    move-result v2

    .line 374
    .local v2, "progress":F
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/FoldersContainerView;->applyInterpolation(F)F

    move-result v1

    .line 375
    .local v1, "interpolation":F
    iget v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderHeaderTranslation:F

    mul-float v3, v1, v4

    .line 376
    .local v3, "translation":F
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->isClosingOrDraggingFolder()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x3fb33333    # 1.4f

    mul-float/2addr v4, v2

    sub-float v0, v5, v4

    .line 378
    .local v0, "alpha":F
    :goto_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderNameText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 379
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderNameText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 380
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderIndicator:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 381
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderIndicator:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 382
    return-void

    .line 376
    .end local v0    # "alpha":F
    :cond_0
    sub-float v0, v5, v2

    goto :goto_0
.end method


# virtual methods
.method public addFolder(Lnet/oneplus/h2launcher/Folder;)V
    .locals 8
    .param p1, "folder"    # Lnet/oneplus/h2launcher/Folder;

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    sget-object v5, Lnet/oneplus/h2launcher/FoldersContainerView;->TAG:Ljava/lang/String;

    const-string v6, "addFolder# folder is null"

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 232
    .local v3, "vp":Landroid/view/ViewParent;
    if-eqz v3, :cond_1

    .line 233
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "vp":Landroid/view/ViewParent;
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 237
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->removeFolder()V

    .line 240
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 241
    .local v0, "context":Landroid/content/Context;
    const v5, 0x7f0c0261

    invoke-static {v0, v5}, Lnet/oneplus/h2launcher/Utilities;->getDimensionPixelNormalized(Landroid/content/Context;I)I

    move-result v4

    .line 242
    .local v4, "width":I
    const/4 v1, -0x2

    .line 243
    .local v1, "height":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 244
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 245
    const/16 v5, 0xe

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 246
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->getContentView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v5, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderHeader:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 250
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x2

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Folder;->getId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 251
    iget-object v5, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderHeader:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iput-object p1, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    .line 254
    iget-object v5, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    iget-object v6, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    iget-object v7, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderNameText:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v7}, Lnet/oneplus/h2launcher/Folder;->bindFolderName(Lnet/oneplus/h2launcher/ExtendedEditText;Landroid/widget/TextView;)V

    .line 257
    iget-object v5, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-virtual {p1, v5}, Lnet/oneplus/h2launcher/Folder;->setFolderScrollBar(Lnet/oneplus/h2launcher/FolderScrollBar;)V

    .line 258
    iget-object v5, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/FolderScrollBar;->notifyFolderOpen()V

    .line 261
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/FoldersContainerView;->setProgress(F)V

    goto :goto_0
.end method

.method public adjustMarginForIconRearrangeMode(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    .line 436
    invoke-static {p1}, Lnet/oneplus/h2launcher/Launcher;->getLauncher(Landroid/content/Context;)Lnet/oneplus/h2launcher/Launcher;

    move-result-object v1

    .line 437
    .local v1, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-nez v1, :cond_0

    .line 465
    :goto_0
    return-void

    .line 441
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 442
    .local v0, "content":Landroid/view/View;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 443
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 444
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 445
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 446
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v5

    .line 447
    .local v5, "workspace":Lnet/oneplus/h2launcher/Workspace;
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 448
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Workspace;->getPaddingBottom()I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 449
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Workspace;->getPaddingLeft()I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 450
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Workspace;->getPaddingRight()I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 451
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 452
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    iget v9, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderBottomPadding:I

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Workspace;->getInsets()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    .line 451
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 453
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Workspace;->getScaleX()F

    move-result v4

    .line 454
    .local v4, "scale":F
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/FoldersContainerView;->setScaleX(F)V

    .line 455
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/FoldersContainerView;->setScaleY(F)V

    .line 456
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Workspace;->getOverviewModeTranslationY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/FoldersContainerView;->setTranslationY(F)V

    goto :goto_0

    .line 458
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "scale":F
    .end local v5    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    :cond_1
    const/4 v6, 0x0

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 459
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 460
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    iget v9, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderBottomPadding:I

    .line 459
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 461
    invoke-virtual {p0, v10}, Lnet/oneplus/h2launcher/FoldersContainerView;->setScaleX(F)V

    .line 462
    invoke-virtual {p0, v10}, Lnet/oneplus/h2launcher/FoldersContainerView;->setScaleY(F)V

    .line 463
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/FoldersContainerView;->setTranslationY(F)V

    goto/16 :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 432
    const v0, 0x7f11011f

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FoldersContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFolder()Lnet/oneplus/h2launcher/Folder;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    return-object v0
.end method

.method public getFolderScrollBar()Lnet/oneplus/h2launcher/FolderScrollBar;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    return-object v0
.end method

.method public getRevealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 428
    const v0, 0x7f11011e

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FoldersContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    .line 138
    invoke-super {p0}, Lnet/oneplus/h2launcher/BaseContainerView;->onFinishInflate()V

    .line 140
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 142
    .local v1, "context":Landroid/content/Context;
    const v4, 0x7f110120

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/FoldersContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderHeader:Landroid/view/ViewGroup;

    .line 143
    const v4, 0x7f0c0256

    invoke-static {v1, v4}, Lnet/oneplus/h2launcher/Utilities;->getDimensionPixelNormalized(Landroid/content/Context;I)I

    move-result v2

    .line 145
    .local v2, "folderHeaderMarginH":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 146
    .local v3, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 147
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 149
    const v4, 0x7f110123

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/FoldersContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderIndicator:Landroid/view/View;

    .line 150
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderIndicator:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotX(F)V

    .line 152
    const v4, 0x7f110124

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/FoldersContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/FolderScrollBar;

    iput-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    .line 153
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-direct {p0, v1, v4}, Lnet/oneplus/h2launcher/FoldersContainerView;->layoutFolderScrollBar(Landroid/content/Context;Landroid/view/View;)V

    .line 155
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderHeader:Landroid/view/ViewGroup;

    const v5, 0x7f110121

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/ExtendedEditText;

    iput-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    .line 156
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    new-instance v5, Lnet/oneplus/h2launcher/FoldersContainerView$2;

    invoke-direct {v5, p0}, Lnet/oneplus/h2launcher/FoldersContainerView$2;-><init>(Lnet/oneplus/h2launcher/FoldersContainerView;)V

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/ExtendedEditText;->setOnBackKeyListener(Lnet/oneplus/h2launcher/ExtendedEditText$OnBackKeyListener;)V

    .line 165
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual {v4, p0}, Lnet/oneplus/h2launcher/ExtendedEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 166
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ExtendedEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 167
    .restart local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ExtendedEditText;->getPaddingLeft()I

    move-result v4

    neg-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 168
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ExtendedEditText;->getPaddingRight()I

    move-result v4

    neg-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 170
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderHeader:Landroid/view/ViewGroup;

    const v5, 0x7f110122

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderNameText:Landroid/widget/TextView;

    .line 171
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderNameText:Landroid/widget/TextView;

    iget-object v5, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderNameTextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    sget-boolean v4, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-nez v4, :cond_0

    .line 176
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    new-instance v5, Lnet/oneplus/h2launcher/FoldersContainerView$3;

    invoke-direct {v5, p0}, Lnet/oneplus/h2launcher/FoldersContainerView$3;-><init>(Lnet/oneplus/h2launcher/FoldersContainerView;)V

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/ExtendedEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 194
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/ExtendedEditText;->setSelectAllOnFocus(Z)V

    .line 195
    iget-object v4, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    iget-object v5, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/ExtendedEditText;->getInputType()I

    move-result v5

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    or-int/lit16 v5, v5, 0x2000

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/ExtendedEditText;->setInputType(I)V

    .line 198
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    iget v7, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderBottomPadding:I

    .line 199
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 201
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    if-nez v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    if-ne p1, v0, :cond_0

    .line 334
    if-eqz p2, :cond_2

    .line 335
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->startEditingFolderName()V

    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/FoldersContainerView;->animateFolderIndicator(Z)V

    goto :goto_0

    .line 338
    :cond_2
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/FoldersContainerView;->animateFolderIndicator(Z)V

    .line 339
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ExtendedEditText;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->dismissEditingName()V

    .line 341
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderNameText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->isFoldersViewVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/BaseContainerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 293
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mDownX:F

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mDownY:F

    goto :goto_0

    .line 297
    :pswitch_1
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/FoldersContainerView;->isEventOverBlankArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    goto :goto_0

    .line 302
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "searchBarBounds"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 132
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 133
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mContainerBoundsInset:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 134
    return-void
.end method

.method public removeFolder()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    .line 272
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderScrollBar;->dismissScrollBar()V

    .line 275
    :cond_1
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 9
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v8, 0x0

    .line 112
    instance-of v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_0

    move-object v3, p1

    .line 114
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 115
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 118
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-lez v6, :cond_0

    .line 119
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, "content":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .local v2, "l":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 121
    .local v5, "t":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 122
    .local v4, "r":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v0, v6, v7

    .line 123
    .local v0, "b":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->getContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2, v5, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 124
    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 127
    .end local v0    # "b":I
    .end local v1    # "content":Landroid/view/View;
    .end local v2    # "l":I
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "r":I
    .end local v5    # "t":I
    :cond_0
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/BaseContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 364
    iget v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mProgress:F

    iput v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mLastProgress:F

    .line 365
    iput p1, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mProgress:F

    .line 366
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView;->mFolder:Lnet/oneplus/h2launcher/Folder;

    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->setFolderHeaderTranslationAndAlpha()V

    .line 368
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->setFolderContentTranslationAndAlpha()V

    .line 370
    :cond_0
    return-void
.end method
