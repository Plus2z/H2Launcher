.class public Lnet/oneplus/h2launcher/SearchDropTargetBar;
.super Landroid/widget/FrameLayout;
.source "SearchDropTargetBar.java"

# interfaces
.implements Lnet/oneplus/h2launcher/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/SearchDropTargetBar$State;
    }
.end annotation


# static fields
.field private static DEFAULT_DRAG_FADE_DURATION:I

.field private static final sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field mAccessibilityEnabled:Z

.field private mDeferOnDragEnd:Z

.field private mDeleteDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

.field mDropTargetBar:Landroid/view/View;

.field private mDropTargetBarAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

.field private mEditDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

.field private mInfoDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

.field mQSB:Landroid/view/View;

.field mQSBOverlay:Landroid/view/View;

.field private mQSBSearchBarAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

.field private mQSBSearchBarOverlayAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

.field private mState:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

.field private mUninstallDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0xaf

    sput v0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->DEFAULT_DRAG_FADE_DURATION:I

    .line 67
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/SearchDropTargetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    sget-object v0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->SEARCH_BAR:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    iput-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mState:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    .line 75
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDeferOnDragEnd:Z

    .line 76
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mAccessibilityEnabled:Z

    .line 90
    return-void
.end method

.method private animateViewAlpha(Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;Landroid/view/View;FI)V
    .locals 4
    .param p1, "animator"    # Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "alpha"    # F
    .param p4, "duration"    # I

    .prologue
    .line 237
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->cancel()V

    .line 242
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    if-lez p4, :cond_2

    .line 244
    invoke-virtual {p1, p3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->withLayer()Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 247
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mAccessibilityEnabled:Z

    invoke-static {p2, v0}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method


# virtual methods
.method public animateToState(Lnet/oneplus/h2launcher/SearchDropTargetBar$State;I)V
    .locals 5
    .param p1, "newState"    # Lnet/oneplus/h2launcher/SearchDropTargetBar$State;
    .param p2, "duration"    # I

    .prologue
    .line 207
    iget-object v2, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mState:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    if-ne v2, p1, :cond_0

    sget-object v2, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->INVISIBLE:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    if-ne p1, v2, :cond_2

    if-nez p2, :cond_2

    .line 208
    :cond_0
    iput-object p1, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mState:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    .line 212
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 213
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mAccessibilityEnabled:Z

    .line 214
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 215
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->isSearchBarStyleTransparent(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 216
    iget-object v2, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSBSearchBarOverlayAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v3, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSBOverlay:Landroid/view/View;

    .line 217
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->getSearchBarAlpha()F

    move-result v4

    .line 216
    invoke-direct {p0, v2, v3, v4, p2}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->animateViewAlpha(Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;Landroid/view/View;FI)V

    .line 220
    iget-object v2, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSB:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 221
    iget-object v3, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSB:Landroid/view/View;

    sget-object v2, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->SEARCH_BAR:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    if-ne p1, v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :cond_1
    :goto_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDropTargetBarAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v3, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->getDropTargetBarAlpha()F

    move-result v4

    invoke-direct {p0, v2, v3, v4, p2}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->animateViewAlpha(Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;Landroid/view/View;FI)V

    .line 230
    .end local v0    # "am":Landroid/view/accessibility/AccessibilityManager;
    .end local v1    # "context":Landroid/content/Context;
    :cond_2
    return-void

    .line 221
    .restart local v0    # "am":Landroid/view/accessibility/AccessibilityManager;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    .line 224
    :cond_4
    iget-object v2, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSBSearchBarAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v3, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSB:Landroid/view/View;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->getSearchBarAlpha()F

    move-result v4

    invoke-direct {p0, v2, v3, v4, p2}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->animateViewAlpha(Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;Landroid/view/View;FI)V

    goto :goto_1
.end method

.method public deferOnDragEnd()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDeferOnDragEnd:Z

    .line 266
    return-void
.end method

.method public enableAccessibleDrag(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 301
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSB:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSB:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mInfoDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->enableAccessibleDrag(Z)V

    .line 305
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDeleteDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->enableAccessibleDrag(Z)V

    .line 306
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mEditDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->enableAccessibleDrag(Z)V

    .line 307
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mUninstallDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->enableAccessibleDrag(Z)V

    .line 308
    return-void

    .line 302
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSearchBarBounds()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 285
    iget-object v2, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSB:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 286
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 287
    .local v0, "pos":[I
    iget-object v2, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSB:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 289
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 290
    .local v1, "rect":Landroid/graphics/Rect;
    aget v2, v0, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 291
    aget v2, v0, v4

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 292
    aget v2, v0, v3

    iget-object v3, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSB:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 293
    aget v2, v0, v4

    iget-object v3, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSB:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 296
    .end local v0    # "pos":[I
    .end local v1    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDragEnd()V
    .locals 2

    .prologue
    .line 270
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDeferOnDragEnd:Z

    if-nez v0, :cond_1

    .line 271
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->showSearchBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->SEARCH_BAR:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    sget v1, Lnet/oneplus/h2launcher/SearchDropTargetBar;->DEFAULT_DRAG_FADE_DURATION:I

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->animateToState(Lnet/oneplus/h2launcher/SearchDropTargetBar$State;I)V

    .line 279
    :goto_0
    return-void

    .line 274
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->INVISIBLE:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    sget v1, Lnet/oneplus/h2launcher/SearchDropTargetBar;->DEFAULT_DRAG_FADE_DURATION:I

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->animateToState(Lnet/oneplus/h2launcher/SearchDropTargetBar$State;I)V

    goto :goto_0

    .line 277
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDeferOnDragEnd:Z

    goto :goto_0
.end method

.method public onDragStart(Lnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "source"    # Lnet/oneplus/h2launcher/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    .line 257
    sget-object v0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->DROP_TARGET:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    sget v1, Lnet/oneplus/h2launcher/SearchDropTargetBar;->DEFAULT_DRAG_FADE_DURATION:I

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->animateToState(Lnet/oneplus/h2launcher/SearchDropTargetBar$State;I)V

    .line 258
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 117
    const v0, 0x7f1101b0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const v1, 0x7f1101b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/ButtonDropTarget;

    iput-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mInfoDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    .line 119
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const v1, 0x7f1101b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/ButtonDropTarget;

    iput-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mEditDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    .line 120
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const v1, 0x7f1101b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/ButtonDropTarget;

    iput-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDeleteDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    .line 121
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const v1, 0x7f1101b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/ButtonDropTarget;

    iput-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mUninstallDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    .line 123
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mInfoDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->setSearchDropTargetBar(Lnet/oneplus/h2launcher/SearchDropTargetBar;)V

    .line 124
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mEditDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->setSearchDropTargetBar(Lnet/oneplus/h2launcher/SearchDropTargetBar;)V

    .line 125
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDeleteDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->setSearchDropTargetBar(Lnet/oneplus/h2launcher/SearchDropTargetBar;)V

    .line 126
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mUninstallDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->setSearchDropTargetBar(Lnet/oneplus/h2launcher/SearchDropTargetBar;)V

    .line 129
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 130
    new-instance v0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v1, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDropTargetBarAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 131
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDropTargetBarAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    sget-object v1, Lnet/oneplus/h2launcher/SearchDropTargetBar;->sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 132
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDropTargetBarAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    new-instance v1, Lnet/oneplus/h2launcher/SearchDropTargetBar$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/SearchDropTargetBar$1;-><init>(Lnet/oneplus/h2launcher/SearchDropTargetBar;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 146
    return-void
.end method

.method public setQsbSearchBar(Landroid/view/View;)V
    .locals 2
    .param p1, "qsb"    # Landroid/view/View;

    .prologue
    .line 149
    iput-object p1, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSB:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSB:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v1, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSB:Landroid/view/View;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSBSearchBarAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 153
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSBSearchBarAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    sget-object v1, Lnet/oneplus/h2launcher/SearchDropTargetBar;->sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSBSearchBarAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    new-instance v1, Lnet/oneplus/h2launcher/SearchDropTargetBar$2;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/SearchDropTargetBar$2;-><init>(Lnet/oneplus/h2launcher/SearchDropTargetBar;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSBSearchBarAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    goto :goto_0
.end method

.method public setQsbSearchBarOverlay(Landroid/view/View;)V
    .locals 2
    .param p1, "qsbOverlay"    # Landroid/view/View;

    .prologue
    .line 176
    iput-object p1, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSBOverlay:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSBOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v1, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSBOverlay:Landroid/view/View;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSBSearchBarOverlayAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 180
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSBSearchBarOverlayAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    sget-object v1, Lnet/oneplus/h2launcher/SearchDropTargetBar;->sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSBSearchBarOverlayAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    new-instance v1, Lnet/oneplus/h2launcher/SearchDropTargetBar$3;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/SearchDropTargetBar$3;-><init>(Lnet/oneplus/h2launcher/SearchDropTargetBar;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mQSBSearchBarOverlayAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    goto :goto_0
.end method

.method public setup(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/DragController;)V
    .locals 1
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "dragController"    # Lnet/oneplus/h2launcher/DragController;

    .prologue
    .line 93
    invoke-virtual {p2, p0}, Lnet/oneplus/h2launcher/DragController;->addDragListener(Lnet/oneplus/h2launcher/DragController$DragListener;)V

    .line 94
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDeleteDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lnet/oneplus/h2launcher/DragController;->setFlingToDeleteDropTarget(Lnet/oneplus/h2launcher/DropTarget;)V

    .line 96
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mInfoDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lnet/oneplus/h2launcher/DragController;->addDragListener(Lnet/oneplus/h2launcher/DragController$DragListener;)V

    .line 97
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mEditDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lnet/oneplus/h2launcher/DragController;->addDragListener(Lnet/oneplus/h2launcher/DragController$DragListener;)V

    .line 98
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDeleteDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lnet/oneplus/h2launcher/DragController;->addDragListener(Lnet/oneplus/h2launcher/DragController$DragListener;)V

    .line 99
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mUninstallDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lnet/oneplus/h2launcher/DragController;->addDragListener(Lnet/oneplus/h2launcher/DragController$DragListener;)V

    .line 101
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mInfoDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lnet/oneplus/h2launcher/DragController;->addDropTarget(Lnet/oneplus/h2launcher/DropTarget;)V

    .line 102
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mEditDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lnet/oneplus/h2launcher/DragController;->addDropTarget(Lnet/oneplus/h2launcher/DropTarget;)V

    .line 103
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDeleteDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lnet/oneplus/h2launcher/DragController;->addDropTarget(Lnet/oneplus/h2launcher/DropTarget;)V

    .line 104
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mUninstallDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lnet/oneplus/h2launcher/DragController;->addDropTarget(Lnet/oneplus/h2launcher/DropTarget;)V

    .line 106
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mInfoDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->setLauncher(Lnet/oneplus/h2launcher/Launcher;)V

    .line 107
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mEditDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->setLauncher(Lnet/oneplus/h2launcher/Launcher;)V

    .line 108
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDeleteDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->setLauncher(Lnet/oneplus/h2launcher/Launcher;)V

    .line 109
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mUninstallDropTarget:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->setLauncher(Lnet/oneplus/h2launcher/Launcher;)V

    .line 110
    return-void
.end method
