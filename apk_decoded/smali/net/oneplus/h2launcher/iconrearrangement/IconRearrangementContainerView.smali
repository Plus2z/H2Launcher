.class public Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;
.super Lnet/oneplus/h2launcher/BaseContainerView;
.source "IconRearrangementContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final MILLISECONDS_PER_INCH:F = 125.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAccessibilityEnabled:Z

.field private mContent:Landroid/view/View;

.field private mIconRearrangementPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

.field private mIconRearrangementPanelAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

.field mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field protected mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    sget-object v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->INVISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mAccessibilityEnabled:Z

    .line 70
    check-cast p1, Lnet/oneplus/h2launcher/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mIconRearrangementPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    return-object v0
.end method


# virtual methods
.method public animateToState(Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;I)Z
    .locals 7
    .param p1, "newState"    # Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;
    .param p2, "duration"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 135
    iget-object v5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    if-ne v5, p1, :cond_0

    .line 136
    sget-object v3, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip animation since new state ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is the same as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "current state ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v3, 0x0

    .line 169
    :goto_0
    return v3

    .line 140
    :cond_0
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    .line 142
    iget-object v5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    sget-object v6, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->INVISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    if-ne v5, v6, :cond_2

    .line 143
    iget-object v5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getIconRearrangementHelper()Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->exitIconRearrangement()V

    .line 150
    :goto_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "accessibility"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 151
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mAccessibilityEnabled:Z

    .line 153
    iget-object v5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mIconRearrangementPanelAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->cancel()V

    .line 154
    iget-object v5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mIconRearrangementPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    if-eqz v5, :cond_1

    .line 155
    iget-object v5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    sget-object v6, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    if-ne v5, v6, :cond_3

    move v2, v3

    .line 156
    .local v2, "startAlpha":F
    :goto_2
    iget-object v5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    sget-object v6, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    if-ne v5, v6, :cond_4

    move v1, v4

    .line 157
    .local v1, "endAlpha":F
    :goto_3
    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    if-lez p2, :cond_5

    .line 159
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mIconRearrangementPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v3, v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->setAlpha(F)V

    .line 160
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mIconRearrangementPanelAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v3, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->withLayer()Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, p2

    .line 161
    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 169
    .end local v1    # "endAlpha":F
    .end local v2    # "startAlpha":F
    :cond_1
    :goto_4
    const/4 v3, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "am":Landroid/view/accessibility/AccessibilityManager;
    :cond_2
    iget-object v5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getIconRearrangementHelper()Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->enterIconRearrangement()V

    goto :goto_1

    .restart local v0    # "am":Landroid/view/accessibility/AccessibilityManager;
    :cond_3
    move v2, v4

    .line 155
    goto :goto_2

    .restart local v2    # "startAlpha":F
    :cond_4
    move v1, v3

    .line 156
    goto :goto_3

    .line 163
    .restart local v1    # "endAlpha":F
    :cond_5
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mIconRearrangementPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v3, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->setAlpha(F)V

    .line 164
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mIconRearrangementPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    iget-boolean v4, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mAccessibilityEnabled:Z

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_4
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getIconRearrangementPanel()Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mIconRearrangementPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    return-object v0
.end method

.method public getRevealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 113
    const v0, 0x7f11013b

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Lnet/oneplus/h2launcher/BaseContainerView;->onFinishInflate()V

    .line 79
    const v0, 0x7f1100bc

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mContent:Landroid/view/View;

    .line 81
    const v0, 0x7f11013c

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mIconRearrangementPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    .line 82
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mIconRearrangementPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mIconRearrangementPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mIconRearrangementPanelAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 84
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mIconRearrangementPanelAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mIconRearrangementPanelAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    new-instance v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView$1;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 101
    :cond_0
    return-void
.end method

.method protected onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "searchBarBounds"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 130
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mIconRearrangementPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 131
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mContainerBoundsInset:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 132
    return-void
.end method

.method public scrollToTop()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method
