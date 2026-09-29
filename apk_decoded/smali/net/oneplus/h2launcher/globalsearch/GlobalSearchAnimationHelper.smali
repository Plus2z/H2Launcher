.class public Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;
.super Ljava/lang/Object;
.source "GlobalSearchAnimationHelper.java"


# static fields
.field private static final CARD_BACKGROUND_ENTER_ANIMATION_DURATION:J = 0xe1L

.field private static final CONTAINER_ENTER_ANIMATION_DURATION:J = 0x113L

.field private static final ENTER_ANIMATION_DELAY_1:J = 0x4bL

.field private static final ENTER_ANIMATION_DELAY_2:J = 0x41L

.field private static final EXIT_ANIMATION_DURATION:J = 0x12cL

.field private static final ROTATE_ANIMATION_DURATION:J = 0x12cL

.field private static final SEARCH_CONTAINER_MASK_ALPHA:F = 0.78f

.field private static final SEARCH_INPUT_ENTER_ANIMATION_DURATION:J = 0x190L

.field private static final SEARCH_RESULT_ANIMATION_DURATION:J = 0x12cL

.field private static final T9_KEYBOARD_ENTER_ANIMATION_DURATION:J = 0x12cL

.field private static final TAG:Ljava/lang/String;

.field private static final Y_VELOCITY_THRESHOLD:J = 0xc8L

.field private static sKeyboardInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAppsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

.field private mAppsSearchHistoryTitleView:Landroid/widget/TextView;

.field private mContactsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

.field private mContactsSearchHistoryTitleView:Landroid/widget/TextView;

.field private mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

.field private mKeyboardContainer:Landroid/view/View;

.field private mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

.field private mKeyboardShowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mResultHeight:I

.field private mRotateObjectAnimator:Landroid/animation/ObjectAnimator;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSearchContainer:Landroid/view/View;

.field private mSearchContainerMask:Landroid/view/View;

.field private mSearchContainerMaskAnimator:Landroid/animation/ValueAnimator;

.field private mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSearchHistoryAppBackground:Landroid/view/View;

.field private mSearchHistoryAppBackgroundEnterAnimator:Landroid/animation/ValueAnimator;

.field private mSearchHistoryAppContainer:Landroid/view/View;

.field private mSearchHistoryAppContentEnterAnimator:Landroid/animation/ValueAnimator;

.field private mSearchHistoryAppEnterAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSearchHistoryAppTitleEnterAnimator:Landroid/animation/ValueAnimator;

.field private mSearchHistoryContactBackground:Landroid/view/View;

.field private mSearchHistoryContactBackgroundEnterAnimator:Landroid/animation/ValueAnimator;

.field private mSearchHistoryContactContainer:Landroid/view/View;

.field private mSearchHistoryContactContentEnterAnimator:Landroid/animation/ValueAnimator;

.field private mSearchHistoryContactEnterAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSearchHistoryContactTitleEnterAnimator:Landroid/animation/ValueAnimator;

.field private mSearchHistoryContainer:Landroid/view/View;

.field private mSearchHistoryContainerAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mSearchHistoryContainerAnimationOffset:I

.field private mSearchHistoryContainerExitAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mSearchHistoryContainerExitYAnimator:Landroid/animation/ObjectAnimator;

.field private mSearchHistoryContainerYAnimator:Landroid/animation/ObjectAnimator;

.field private mSearchHistoryExitAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSearchHistoryTranslationY:I

.field private mSearchInputAreaHeight:I

.field private mSearchInputContainer:Landroid/view/View;

.field private mSearchInputContainerAnimator:Landroid/animation/ValueAnimator;

.field private mSearchInputHeight:I

.field private mSearchInputTextField:Landroid/widget/EditText;

.field private mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field private mSearchResultContainerAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mSearchResultContainerExitAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mSearchResultContainerExitYAnimator:Landroid/animation/ObjectAnimator;

.field private mSearchResultContainerMarginTop:I

.field private mSearchResultExitAnimatorSet:Landroid/animation/AnimatorSet;

.field private mT9KeyboardHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    const-class v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->sKeyboardInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputHeight:I

    .line 65
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainerAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 66
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 67
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerYAnimator:Landroid/animation/ObjectAnimator;

    .line 68
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainerExitAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 69
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainerExitYAnimator:Landroid/animation/ObjectAnimator;

    .line 70
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerExitAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 71
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerExitYAnimator:Landroid/animation/ObjectAnimator;

    .line 72
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mRotateObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 73
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 74
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 75
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainerAnimator:Landroid/animation/ValueAnimator;

    .line 76
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchContainerMaskAnimator:Landroid/animation/ValueAnimator;

    .line 83
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 84
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 85
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    .line 86
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    .line 87
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultExitAnimatorSet:Landroid/animation/AnimatorSet;

    .line 88
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryExitAnimatorSet:Landroid/animation/AnimatorSet;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputAreaHeight:I

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryTranslationY:I

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerAnimationOffset:I

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mT9KeyboardHeight:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainerMarginTop:I

    .line 103
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchContainerMask:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mContactsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    return-object v0
.end method

.method static synthetic access$1200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mContactsSearchHistoryTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    return-object v0
.end method

.method static synthetic access$1500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1600(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppEnterAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactEnterAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/Launcher;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    return-object v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mAppsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    return-object v0
.end method

.method static synthetic access$800(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mAppsSearchHistoryTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactBackground:Landroid/view/View;

    return-object v0
.end method

.method private dumpInitGlobalSearchAnimationError()V
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "start dump initGlobalSearchAnimation error"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    if-nez v0, :cond_0

    .line 149
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "initGlobalSearchAnimation mLauncher = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    if-nez v0, :cond_1

    .line 152
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "initGlobalSearchAnimation mGlobalSearchView = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardContainer:Landroid/view/View;

    if-nez v0, :cond_2

    .line 155
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "initGlobalSearchAnimation mKeyboardContainer = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainer:Landroid/view/View;

    if-nez v0, :cond_3

    .line 158
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "initGlobalSearchAnimation mSearchInputContainer = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchContainer:Landroid/view/View;

    if-nez v0, :cond_4

    .line 161
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "initGlobalSearchAnimation mSearchContainer = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchContainerMask:Landroid/view/View;

    if-nez v0, :cond_5

    .line 164
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "initGlobalSearchAnimation mSearchContainerMask = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_5
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-nez v0, :cond_6

    .line 167
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "initGlobalSearchAnimation mSearchResultContainer = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_6
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainer:Landroid/view/View;

    if-nez v0, :cond_7

    .line 170
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "initGlobalSearchAnimation mSearchHistoryContainer = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_7
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppBackground:Landroid/view/View;

    if-nez v0, :cond_8

    .line 173
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "initGlobalSearchAnimation mSearchHistoryAppBackground = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_8
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactBackground:Landroid/view/View;

    if-nez v0, :cond_9

    .line 176
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "initGlobalSearchAnimation mSearchHistoryContactBackground = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_9
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppContainer:Landroid/view/View;

    if-nez v0, :cond_a

    .line 179
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "initGlobalSearchAnimation mSearchHistoryAppContainer = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_a
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactContainer:Landroid/view/View;

    if-nez v0, :cond_b

    .line 182
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "initGlobalSearchAnimation mSearchHistoryContactContainer = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_b
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mAppsSearchHistoryTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_c

    .line 185
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "initGlobalSearchAnimation mAppsSearchHistoryTitleView = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_c
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mContactsSearchHistoryTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_d

    .line 188
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "initGlobalSearchAnimation mContactsSearchHistoryTitleView = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_d
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mAppsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    if-nez v0, :cond_e

    .line 191
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "initGlobalSearchAnimation mAppsSearchHistoryGridView = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_e
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mContactsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    if-nez v0, :cond_f

    .line 194
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "initGlobalSearchAnimation mContactsSearchHistoryGridView = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_f
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputTextField:Landroid/widget/EditText;

    if-nez v0, :cond_10

    .line 197
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "initGlobalSearchAnimation mSearchInputTextField = null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_10
    return-void
.end method

.method private initGlobalSearchAnimation()Z
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 111
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputHeight:I

    .line 113
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchContainer()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchContainer:Landroid/view/View;

    .line 115
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchContainerMask()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchContainerMask:Landroid/view/View;

    .line 116
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchInputContainer()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainer:Landroid/view/View;

    .line 117
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchInputTextField()Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputTextField:Landroid/widget/EditText;

    .line 118
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchResultContainer()Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 119
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchHistoryContainer()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainer:Landroid/view/View;

    .line 120
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchHistoryAppBackground()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppBackground:Landroid/view/View;

    .line 121
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchHistoryAppContainer()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppContainer:Landroid/view/View;

    .line 122
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchHistoryContactBackground()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactBackground:Landroid/view/View;

    .line 123
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchHistoryContactContainer()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactContainer:Landroid/view/View;

    .line 124
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getAppsSearchHistoryTitleView()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mAppsSearchHistoryTitleView:Landroid/widget/TextView;

    .line 125
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getContactsSearchHistoryTitleView()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mContactsSearchHistoryTitleView:Landroid/widget/TextView;

    .line 126
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getAppsSearchHistoryGridView()Landroid/widget/GridView;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mAppsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    .line 127
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getContactsSearchHistoryGridView()Landroid/widget/GridView;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mContactsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    .line 128
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getKeyboardContainer()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardContainer:Landroid/view/View;

    .line 132
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchContainerMask:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputTextField:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppBackground:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactBackground:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mAppsSearchHistoryTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mContactsSearchHistoryTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mAppsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mContactsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 140
    .local v0, "result":Z
    :goto_0
    if-nez v0, :cond_1

    .line 141
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->dumpInitGlobalSearchAnimationError()V

    .line 143
    :cond_1
    return v0

    .line 132
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public T9KeyboardIsAnimating()Z
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 895
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelAnimator()V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainerAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 856
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppEnterAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 860
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactEnterAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 861
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 864
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 865
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 868
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 869
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 872
    :cond_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultExitAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    .line 873
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 876
    :cond_5
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryExitAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_6

    .line 877
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 880
    :cond_6
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerYAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    .line 881
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerYAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 884
    :cond_7
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_8

    .line 885
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 888
    :cond_8
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_9

    .line 889
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 891
    :cond_9
    return-void
.end method

.method public enterWithAnimation()V
    .locals 12

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 202
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->initGlobalSearchAnimation()Z

    move-result v3

    if-nez v3, :cond_0

    .line 483
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->setInSearchMode()V

    .line 206
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v3, v8}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setIsInAnimationFinish(Z)V

    .line 207
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardContainer:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    .line 210
    .local v0, "keyboardContainer":Landroid/view/ViewGroup;
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->runKeyboardAnimation(Landroid/view/ViewGroup;)V

    .line 212
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainer:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 213
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainer:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setAlpha(F)V

    .line 214
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchHistoryAppConrainerHeight()I

    move-result v1

    .line 215
    .local v1, "searchHistoryAppContainerHeight":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchHistoryContactConrainerHeight()I

    move-result v2

    .line 217
    .local v2, "searchHistoryContactContainerHeight":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppBackground:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactBackground:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 219
    if-lez v1, :cond_1

    .line 220
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppContainer:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :cond_1
    if-lez v2, :cond_2

    .line 223
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactContainer:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :cond_2
    new-array v3, v10, [F

    iget v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputAreaHeight:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v9

    aput v7, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainerAnimator:Landroid/animation/ValueAnimator;

    .line 227
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainerAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3dcccccd    # 0.1f

    invoke-direct {v4, v5, v7, v6, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 228
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainerAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 229
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainerAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;

    invoke-direct {v4, p0, v1, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;II)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 260
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainerAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$2;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$2;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 270
    new-array v3, v10, [F

    iget v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerAnimationOffset:I

    int-to-float v4, v4

    aput v4, v3, v9

    aput v7, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppBackgroundEnterAnimator:Landroid/animation/ValueAnimator;

    .line 271
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppBackgroundEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v4, v5, v7, v6, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 272
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppBackgroundEnterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xe1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 273
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppBackgroundEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$3;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$3;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 288
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppBackgroundEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$4;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$4;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 298
    new-array v3, v10, [F

    iget v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerAnimationOffset:I

    int-to-float v4, v4

    aput v4, v3, v9

    aput v7, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppTitleEnterAnimator:Landroid/animation/ValueAnimator;

    .line 299
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppTitleEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v4, v5, v7, v6, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 300
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppTitleEnterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x113

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 301
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppTitleEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$5;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$5;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 314
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppTitleEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$6;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$6;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 324
    new-array v3, v10, [F

    iget v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerAnimationOffset:I

    int-to-float v4, v4

    aput v4, v3, v9

    aput v7, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppContentEnterAnimator:Landroid/animation/ValueAnimator;

    .line 325
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppContentEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v4, v5, v7, v6, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 326
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppContentEnterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x41

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 327
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppContentEnterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x113

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 328
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppContentEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$7;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$7;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 341
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppContentEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$8;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$8;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 351
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 352
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppEnterAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppBackgroundEnterAnimator:Landroid/animation/ValueAnimator;

    aput-object v5, v4, v9

    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppTitleEnterAnimator:Landroid/animation/ValueAnimator;

    aput-object v5, v4, v8

    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppContentEnterAnimator:Landroid/animation/ValueAnimator;

    aput-object v5, v4, v10

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 353
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppEnterAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x4b

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 354
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppEnterAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$9;

    invoke-direct {v4, p0, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$9;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;I)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 375
    new-array v3, v10, [F

    iget v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerAnimationOffset:I

    int-to-float v4, v4

    aput v4, v3, v9

    aput v7, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactBackgroundEnterAnimator:Landroid/animation/ValueAnimator;

    .line 376
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactBackgroundEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v4, v5, v7, v6, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 377
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactBackgroundEnterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xe1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 378
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactBackgroundEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$10;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$10;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 393
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactBackgroundEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$11;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$11;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 403
    new-array v3, v10, [F

    iget v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerAnimationOffset:I

    int-to-float v4, v4

    aput v4, v3, v9

    aput v7, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactTitleEnterAnimator:Landroid/animation/ValueAnimator;

    .line 404
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactTitleEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v4, v5, v7, v6, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 405
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactTitleEnterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x113

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 406
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactTitleEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$12;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$12;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 419
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactTitleEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$13;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$13;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 429
    new-array v3, v10, [F

    iget v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerAnimationOffset:I

    int-to-float v4, v4

    aput v4, v3, v9

    aput v7, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactContentEnterAnimator:Landroid/animation/ValueAnimator;

    .line 430
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactContentEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v4, v5, v7, v6, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 431
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactContentEnterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x41

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 432
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactContentEnterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x113

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 433
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactContentEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$14;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$14;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 446
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactContentEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$15;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$15;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 456
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 457
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactEnterAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactBackgroundEnterAnimator:Landroid/animation/ValueAnimator;

    aput-object v5, v4, v9

    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactTitleEnterAnimator:Landroid/animation/ValueAnimator;

    aput-object v5, v4, v8

    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactContentEnterAnimator:Landroid/animation/ValueAnimator;

    aput-object v5, v4, v10

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 458
    if-gtz v1, :cond_3

    .line 459
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactEnterAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x4b

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 463
    :goto_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactEnterAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$16;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$16;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 482
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 461
    :cond_3
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactEnterAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x8c

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto :goto_1
.end method

.method public exitWithAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const v7, 0x3f666666    # 0.9f

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 665
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->initGlobalSearchAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->isInSearchMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 666
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    if-eqz v0, :cond_1

    .line 667
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getState()Lnet/oneplus/h2launcher/Launcher$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :goto_0
    return-void

    .line 669
    :cond_1
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "Launcher is null !"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->setOutSearchMode()V

    .line 675
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 676
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setIsInAnimationFinish(Z)V

    .line 679
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainer:Landroid/view/View;

    const-string v1, "translationY"

    new-array v2, v6, [F

    aput v8, v2, v5

    iget v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputAreaHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v9

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainerAnimator:Landroid/animation/ValueAnimator;

    .line 680
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainerAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v7, v8, v7, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 681
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainerAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 682
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainerAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$23;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$23;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 703
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainerAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$24;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$24;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 710
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 713
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainerExitAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 714
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const-string v1, "y"

    new-array v2, v6, [F

    iget v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainerMarginTop:I

    int-to-float v3, v3

    aput v3, v2, v5

    iget v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainerMarginTop:I

    iget v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputAreaHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v2, v9

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainerExitYAnimator:Landroid/animation/ObjectAnimator;

    .line 715
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultExitAnimatorSet:Landroid/animation/AnimatorSet;

    .line 716
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainerExitAlphaAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainerExitYAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v9

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 717
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v7, v8, v7, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 718
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultExitAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 719
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$25;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$25;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 731
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 734
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainer:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerExitAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 735
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainer:Landroid/view/View;

    const-string v1, "y"

    new-array v2, v6, [F

    aput v8, v2, v5

    iget v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputAreaHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v9

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerExitYAnimator:Landroid/animation/ObjectAnimator;

    .line 736
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryExitAnimatorSet:Landroid/animation/AnimatorSet;

    .line 737
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerExitAlphaAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerExitYAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v9

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 738
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v7, v8, v7, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 739
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryExitAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 740
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$26;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$26;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 751
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 754
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardContainer:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->runKeyboardDismissAnimation(Landroid/view/ViewGroup;)V

    goto/16 :goto_0

    .line 713
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 734
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public exitWithoutAnimation()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 801
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->initGlobalSearchAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->setOutSearchMode()V

    .line 806
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setIsInAnimationFinish(Z)V

    .line 807
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->clearAnimation()V

    .line 808
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->smoothScrollToPosition(I)V

    .line 809
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setVisibility(I)V

    .line 810
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 811
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 812
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 813
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 814
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputTextField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearAnimation()V

    .line 815
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputTextField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->clearAnimation()V

    .line 817
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setTranslationY(F)V

    .line 818
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 820
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 822
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 823
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/DragLayer;->setVisibility(I)V

    .line 824
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/DragLayer;->setAlpha(F)V

    .line 825
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/Workspace;->setVisibility(I)V

    .line 826
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/Workspace;->setAlpha(F)V

    .line 827
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/Launcher;->setLauncherViewAlpha(F)V

    .line 828
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setLayoutBottomMarginByResource(I)V

    .line 830
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchHistoryScrollView()Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;->smoothScrollTo(II)V

    .line 831
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setShowAllAppSearchResult(Z)V

    .line 832
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setShowAllContactSearchResult(Z)V

    .line 833
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 834
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 835
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getAlertDialog()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 836
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getAlertDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 838
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 839
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 841
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchInputTextField()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 842
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchInputTextField()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 843
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchInputTextField()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 845
    :cond_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getOnGlobalLayoutListener()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getOnGlobalLayoutListener()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 847
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainerAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchInputContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    .line 900
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    .line 901
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppEnterAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAppEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 902
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactEnterAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContactEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 903
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultExitAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultExitAnimatorSet:Landroid/animation/AnimatorSet;

    .line 904
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_5
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryExitAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryExitAnimatorSet:Landroid/animation/AnimatorSet;

    .line 905
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_6
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mRotateObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mRotateObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 906
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 907
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 908
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runKeyboardAnimation(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "keyboardContainer"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x2

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v0, "keyboardAnimators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSoftwareKeyboardHeight()I

    move-result v1

    .line 596
    .local v1, "softwareKeyboardHeight":I
    const-string v2, "translationY"

    new-array v3, v6, [F

    const/4 v4, 0x0

    iget v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mT9KeyboardHeight:I

    sub-int/2addr v5, v1

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    neg-int v5, v1

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    const-string v2, "alpha"

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 599
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 600
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardShowAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v3, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->sKeyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 601
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 602
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardShowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;

    invoke-direct {v3, p0, p1, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$21;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;Landroid/view/ViewGroup;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 632
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->isT9Search()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setLayoutBottomMarginByKeyboardHeight(I)V

    .line 634
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 640
    :goto_0
    return-void

    .line 636
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 637
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 638
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setupIMEInputSearch()V

    goto :goto_0

    .line 597
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public runKeyboardDismissAnimation(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "keyboardContainer"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 758
    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 759
    .local v1, "keyboard":Landroid/view/ViewGroup;
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSoftwareKeyboardHeight()I

    move-result v2

    .line 760
    .local v2, "softwareKeyboardHeight":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 761
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const-string v3, "translationY"

    new-array v4, v7, [F

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    sub-int/2addr v5, v2

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    const-string v3, "alpha"

    new-array v4, v7, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 764
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 765
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v4, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->sKeyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 766
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 767
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$27;

    invoke-direct {v4, p0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$27;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;Landroid/view/ViewGroup;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 793
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->isT9Search()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 794
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 798
    :goto_0
    return-void

    .line 796
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0
.end method

.method public runRotateAnimation(Landroid/view/View;FF)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startAngle"    # F
    .param p3, "endAngle"    # F

    .prologue
    .line 643
    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mRotateObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 644
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 645
    .local v0, "easeInOutInterpolator":Landroid/animation/TimeInterpolator;
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mRotateObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 646
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mRotateObjectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 648
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mRotateObjectAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$22;

    invoke-direct {v2, p0, p1, p3}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$22;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;Landroid/view/View;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 661
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mRotateObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 662
    return-void
.end method

.method public runSearchResultAnimation(Z)V
    .locals 9
    .param p1, "showSearchResult"    # Z

    .prologue
    const/4 v8, 0x1

    const v7, 0x3ecccccd    # 0.4f

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 486
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchResultConrainerHeight()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mResultHeight:I

    .line 488
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 491
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 495
    :cond_1
    if-eqz p1, :cond_2

    .line 496
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainer:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 497
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    .line 498
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v8, [Landroid/animation/Animator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerAlphaAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 499
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v7, v6, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 500
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 501
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$17;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$17;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 521
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainerAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 522
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    .line 523
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v8, [Landroid/animation/Animator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainerAlphaAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 524
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v7, v6, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 525
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 526
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$18;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$18;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 589
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 590
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 591
    return-void

    .line 544
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchHistoryScrollView()Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainer:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 546
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    .line 547
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v8, [Landroid/animation/Animator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryContainerAlphaAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 548
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v7, v6, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 549
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 550
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchHistoryAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$19;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$19;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 566
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainerAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 567
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    .line 568
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v8, [Landroid/animation/Animator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultContainerAlphaAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 569
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v7, v6, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 570
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 571
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mSearchResultAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$20;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$20;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 496
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 521
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 545
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 566
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setGlobalSearchView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    check-cast p1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .line 107
    return-void
.end method
