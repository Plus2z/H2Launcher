.class public abstract Lnet/oneplus/h2launcher/customizations/BaseCardContainer;
.super Lnet/oneplus/h2launcher/BaseContainerView;
.source "BaseCardContainer.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;,
        Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;
    }
.end annotation


# static fields
.field protected static final CUSTOMIZATION_CARD_SLIDE_SHRINK_FACTOR:F = 0.25f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAccessibilityEnabled:Z

.field mActionBar:Landroid/view/View;

.field private mActionBarAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

.field private mCardAnimator:Landroid/animation/ValueAnimator;

.field mContainerView:Landroid/view/View;

.field mContent:Landroid/view/View;

.field mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mNavigationBarDimColor:I

.field protected mNavigationBarHeight:I

.field private mNonClickableRegion:Landroid/graphics/Rect;

.field mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

.field private mPagerAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

.field mPagerIndicator:Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;

.field private mPagerIndicatorAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

.field mRevealView:Landroid/view/View;

.field private mSaveCustomizationTasks:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;

.field mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

.field mSearchBarPreviewDefault:Landroid/view/View;

.field mSearchBarPreviewTransparent:Landroid/view/View;

.field protected mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    sget-object v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->INVISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    .line 34
    iput v1, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mNavigationBarHeight:I

    .line 35
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mAccessibilityEnabled:Z

    .line 65
    check-cast p1, Lnet/oneplus/h2launcher/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 66
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e035c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mNavigationBarDimColor:I

    .line 67
    return-void
.end method

.method static synthetic access$002(Lnet/oneplus/h2launcher/customizations/BaseCardContainer;Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;)Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/BaseCardContainer;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;

    .prologue
    .line 30
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mSaveCustomizationTasks:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;

    return-object p1
.end method


# virtual methods
.method public animateToState(Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;I)Z
    .locals 12
    .param p1, "newState"    # Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;
    .param p2, "duration"    # I

    .prologue
    .line 211
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    if-ne v8, p1, :cond_0

    .line 212
    sget-object v8, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skip animation since new state ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") is the same as "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "current state ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v8, 0x0

    .line 310
    :goto_0
    return v8

    .line 216
    :cond_0
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    .line 218
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    sget-object v9, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->INVISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    if-ne v8, v9, :cond_7

    .line 219
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->onLeavingCardContainer()V

    .line 226
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "accessibility"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 227
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v8

    iput-boolean v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mAccessibilityEnabled:Z

    .line 230
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBarAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->cancel()V

    .line 231
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBar:Landroid/view/View;

    if-eqz v8, :cond_2

    .line 232
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    sget-object v9, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    if-ne v8, v9, :cond_8

    const/4 v6, 0x0

    .line 233
    .local v6, "startAlpha":F
    :goto_2
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    sget-object v9, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    if-ne v8, v9, :cond_9

    const/high16 v2, 0x3f800000    # 1.0f

    .line 234
    .local v2, "endAlpha":F
    :goto_3
    invoke-static {v6, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_2

    .line 235
    if-lez p2, :cond_a

    .line 236
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBar:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setAlpha(F)V

    .line 237
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBarAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v8, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->withLayer()Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v8

    int-to-long v10, p2

    invoke-virtual {v8, v10, v11}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    .line 246
    .end local v2    # "endAlpha":F
    .end local v6    # "startAlpha":F
    :cond_2
    :goto_4
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->cancel()V

    .line 247
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    if-eqz v8, :cond_3

    .line 248
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getHeight()I

    move-result v5

    .line 249
    .local v5, "pagerHeight":I
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    sget-object v9, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    if-ne v8, v9, :cond_b

    move v7, v5

    .line 250
    .local v7, "startTranslationY":I
    :goto_5
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    sget-object v9, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    if-ne v8, v9, :cond_c

    const/4 v3, 0x0

    .line 251
    .local v3, "endTranslationY":I
    :goto_6
    int-to-float v8, v7

    int-to-float v9, v3

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_3

    .line 252
    if-lez p2, :cond_d

    .line 253
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    int-to-float v9, v7

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->setTranslationY(F)V

    .line 254
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    new-instance v9, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$3;

    invoke-direct {v9, p0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$3;-><init>(Lnet/oneplus/h2launcher/customizations/BaseCardContainer;)V

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 262
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    int-to-float v9, v3

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->translationY(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->withLayer()Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v8

    int-to-long v10, p2

    .line 263
    invoke-virtual {v8, v10, v11}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    .line 271
    .end local v3    # "endTranslationY":I
    .end local v5    # "pagerHeight":I
    .end local v7    # "startTranslationY":I
    :cond_3
    :goto_7
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerIndicator:Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    .line 272
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerIndicatorAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->cancel()V

    .line 273
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    sget-object v9, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    if-ne v8, v9, :cond_e

    const/4 v6, 0x0

    .line 274
    .restart local v6    # "startAlpha":F
    :goto_8
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    sget-object v9, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    if-ne v8, v9, :cond_f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 275
    .restart local v2    # "endAlpha":F
    :goto_9
    invoke-static {v6, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_4

    .line 276
    if-lez p2, :cond_10

    .line 277
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerIndicator:Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;

    invoke-virtual {v8, v6}, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->setAlpha(F)V

    .line 278
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerIndicatorAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v8, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->withLayer()Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v8

    int-to-long v10, p2

    invoke-virtual {v8, v10, v11}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    .line 287
    .end local v2    # "endAlpha":F
    .end local v6    # "startAlpha":F
    :cond_4
    :goto_a
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    sget-object v9, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->INVISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    if-eqz v8, :cond_6

    .line 288
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mCardAnimator:Landroid/animation/ValueAnimator;

    if-eqz v8, :cond_5

    .line 289
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mCardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->cancel()V

    .line 291
    :cond_5
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getCurrentCustomizationCard()Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    move-result-object v1

    .line 292
    .local v1, "card":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getSlideOffset()F

    move-result v4

    .line 293
    .local v4, "initialSlideOffset":F
    const/4 v8, 0x0

    cmpl-float v8, v4, v8

    if-eqz v8, :cond_6

    .line 294
    if-lez p2, :cond_11

    .line 295
    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v4, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    iput-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mCardAnimator:Landroid/animation/ValueAnimator;

    .line 296
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mCardAnimator:Landroid/animation/ValueAnimator;

    int-to-long v10, p2

    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 297
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mCardAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$4;

    invoke-direct {v9, p0, v1}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$4;-><init>(Lnet/oneplus/h2launcher/customizations/BaseCardContainer;Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 303
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mCardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    .line 310
    .end local v1    # "card":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    .end local v4    # "initialSlideOffset":F
    :cond_6
    :goto_b
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 220
    .end local v0    # "am":Landroid/view/accessibility/AccessibilityManager;
    :cond_7
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    sget-object v9, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    if-ne v8, v9, :cond_1

    .line 221
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->onShowingCardContainer()V

    goto/16 :goto_1

    .line 232
    .restart local v0    # "am":Landroid/view/accessibility/AccessibilityManager;
    :cond_8
    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 233
    .restart local v6    # "startAlpha":F
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 239
    .restart local v2    # "endAlpha":F
    :cond_a
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBar:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setAlpha(F)V

    .line 240
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBar:Landroid/view/View;

    iget-boolean v9, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mAccessibilityEnabled:Z

    invoke-static {v8, v9}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto/16 :goto_4

    .line 249
    .end local v2    # "endAlpha":F
    .end local v6    # "startAlpha":F
    .restart local v5    # "pagerHeight":I
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_5

    .restart local v7    # "startTranslationY":I
    :cond_c
    move v3, v5

    .line 250
    goto/16 :goto_6

    .line 265
    .restart local v3    # "endTranslationY":I
    :cond_d
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    int-to-float v9, v3

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->setTranslationY(F)V

    goto/16 :goto_7

    .line 273
    .end local v3    # "endTranslationY":I
    .end local v5    # "pagerHeight":I
    .end local v7    # "startTranslationY":I
    :cond_e
    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_8

    .line 274
    .restart local v6    # "startAlpha":F
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 280
    .restart local v2    # "endAlpha":F
    :cond_10
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerIndicator:Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;

    invoke-virtual {v8, v2}, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->setAlpha(F)V

    .line 281
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerIndicator:Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;

    iget-boolean v9, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mAccessibilityEnabled:Z

    invoke-static {v8, v9}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto/16 :goto_a

    .line 305
    .end local v2    # "endAlpha":F
    .end local v6    # "startAlpha":F
    .restart local v1    # "card":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    .restart local v4    # "initialSlideOffset":F
    :cond_11
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->slideTo(F)V

    goto :goto_b
.end method

.method abstract getActionBarId()I
.end method

.method abstract getActionBarTitleId()I
.end method

.method abstract getContainerViewId()I
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mContainerView:Landroid/view/View;

    return-object v0
.end method

.method public getCustomizationPager()Lnet/oneplus/h2launcher/customizations/BaseViewPager;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    return-object v0
.end method

.method public getPager()Lnet/oneplus/h2launcher/customizations/BaseViewPager;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    return-object v0
.end method

.method abstract getPagerId()I
.end method

.method abstract getPagerIndicatorId()I
.end method

.method public getPreviewRegion()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mNonClickableRegion:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mNonClickableRegion:Landroid/graphics/Rect;

    .line 326
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBar:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mNonClickableRegion:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 328
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mNonClickableRegion:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getTop()I

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getMinCardTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 330
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mNonClickableRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getRevealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mRevealView:Landroid/view/View;

    return-object v0
.end method

.method abstract getRevealViewId()I
.end method

.method abstract getSaveCustomizations()Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    sget-object v1, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract onCardSlided(F)V
.end method

.method protected onFinishInflate()V
    .locals 10

    .prologue
    .line 99
    invoke-super {p0}, Lnet/oneplus/h2launcher/BaseContainerView;->onFinishInflate()V

    .line 101
    const v4, 0x7f1100bc

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mContent:Landroid/view/View;

    .line 102
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->getContainerViewId()I

    move-result v4

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mContainerView:Landroid/view/View;

    .line 103
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->getRevealViewId()I

    move-result v4

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mRevealView:Landroid/view/View;

    .line 104
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->getActionBarId()I

    move-result v0

    .line 105
    .local v0, "actionBarId":I
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBar:Landroid/view/View;

    .line 106
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBar:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 107
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBar:Landroid/view/View;

    const v5, 0x7f11007b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 108
    .local v3, "title":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 109
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->getActionBarTitleId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 112
    .end local v3    # "title":Landroid/widget/TextView;
    :cond_0
    new-instance v4, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBar:Landroid/view/View;

    invoke-direct {v4, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBarAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 113
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBarAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBarAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    new-instance v5, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$1;

    invoke-direct {v5, p0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$1;-><init>(Lnet/oneplus/h2launcher/customizations/BaseCardContainer;)V

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 130
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->getPagerId()I

    move-result v4

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    .line 131
    new-instance v4, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-direct {v4, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 132
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e5c28f6    # 0.215f

    const v7, 0x3f1c28f6    # 0.61f

    const v8, 0x3eb5c28f    # 0.355f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 134
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v4

    iget v2, v4, Landroid/graphics/Point;->y:I

    .line 135
    .local v2, "screenHeight":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 136
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    int-to-float v4, v2

    const v5, 0x3ef8cccd

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 138
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->getPagerIndicatorId()I

    move-result v4

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerIndicator:Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;

    .line 139
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerIndicator:Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;

    if-eqz v4, :cond_1

    .line 140
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerIndicator:Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 141
    new-instance v4, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerIndicator:Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;

    invoke-direct {v4, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerIndicatorAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 142
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerIndicatorAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    new-instance v5, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$2;

    invoke-direct {v5, p0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$2;-><init>(Lnet/oneplus/h2launcher/customizations/BaseCardContainer;)V

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    :cond_1
    return-void
.end method

.method public onLeavingCardContainer()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->notifyLeavingCustomizations()V

    .line 345
    return-void
.end method

.method public onLeftCardContainer()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->notifyLeftCustomizations()V

    .line 364
    return-void
.end method

.method public onShowingCardContainer()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->notifyShowCustomizations()V

    .line 338
    return-void
.end method

.method public onSystemLowMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->notifySystemOnLowMemory(I)V

    .line 373
    return-void
.end method

.method protected onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "searchBarBounds"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 87
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mContainerBoundsInset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mNavigationBarHeight:I

    .line 95
    return-void
.end method

.method public reloadCustomizations()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->reloadCustomizations()V

    .line 197
    :cond_0
    return-void
.end method

.method public resetPageToZero()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-virtual {v0, v1, v1}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->setCurrentItem(IZ)V

    .line 188
    :cond_0
    return-void
.end method

.method public saveCustomizations()V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mSaveCustomizationTasks:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->isTaskUnfinished(Landroid/os/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    sget-object v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->TAG:Ljava/lang/String;

    const-string v1, "saveCustomizations# tasks are still running so skip this call."

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->getSaveCustomizations()Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mSaveCustomizationTasks:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;

    .line 356
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mSaveCustomizationTasks:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
