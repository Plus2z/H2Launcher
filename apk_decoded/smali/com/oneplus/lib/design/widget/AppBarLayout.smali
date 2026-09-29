.class public Lcom/oneplus/lib/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"


# annotations
.annotation runtime Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;,
        Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;,
        Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;,
        Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field static final PENDING_ACTION_COLLAPSED:I = 0x2

.field static final PENDING_ACTION_EXPANDED:I = 0x1

.field static final PENDING_ACTION_NONE:I


# instance fields
.field private mCollapsed:Z

.field private mCollapsible:Z

.field private mDownPreScrollRange:I

.field private mDownScrollRange:I

.field private mHaveChildWithInterpolator:Z

.field private mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAction:I

.field private final mTmpStatesArray:[I

.field private mTotalScrollRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v4, 0x15

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    iput v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 136
    iput v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 137
    iput v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mDownScrollRange:I

    .line 141
    iput v3, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mPendingAction:I

    .line 150
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mTmpStatesArray:[I

    .line 158
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->setOrientation(I)V

    .line 162
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_0

    .line 165
    invoke-static {p0}, Lcom/oneplus/lib/design/widget/ViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 169
    sget v1, Lcom/oneplus/commonctrl/R$style;->Widget_Design_AppBarLayout:I

    invoke-static {p0, p2, v3, v1}, Lcom/oneplus/lib/design/widget/ViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 173
    :cond_0
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OpAppBarLayout:[I

    sget v2, Lcom/oneplus/commonctrl/R$style;->Widget_Design_AppBarLayout:I

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpAppBarLayout_android_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 176
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpAppBarLayout_opExpanded:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpAppBarLayout_opExpanded:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 179
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_2

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpAppBarLayout_android_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpAppBarLayout_android_elevation:I

    .line 181
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 180
    invoke-static {p0, v1}, Lcom/oneplus/lib/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 183
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    new-instance v1, Lcom/oneplus/lib/design/widget/AppBarLayout$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$1;-><init>(Lcom/oneplus/lib/design/widget/AppBarLayout;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 193
    return-void
.end method

.method private invalidateScrollRanges()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 261
    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 262
    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 263
    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mDownScrollRange:I

    .line 264
    return-void
.end method

.method private setCollapsibleState(Z)Z
    .locals 1
    .param p1, "collapsible"    # Z

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mCollapsible:Z

    if-eq v0, p1, :cond_0

    .line 516
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mCollapsible:Z

    .line 517
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->refreshDrawableState()V

    .line 518
    const/4 v0, 0x1

    .line 520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCollapsible()V
    .locals 4

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "haveCollapsibleChild":Z
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 251
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->isCollapsible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    const/4 v0, 0x1

    .line 256
    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->setCollapsibleState(Z)Z

    .line 257
    return-void

    .line 250
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addOnOffsetChangedListener(Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    .line 206
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 311
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    return v0
.end method

.method dispatchOffsetUpdates(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 466
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 467
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 468
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 469
    .local v1, "listener":Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;
    if-eqz v1, :cond_0

    .line 470
    invoke-interface {v1, p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;->onOffsetChanged(Lcom/oneplus/lib/design/widget/AppBarLayout;I)V

    .line 467
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    .end local v0    # "i":I
    .end local v1    # "listener":Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;
    .end local v2    # "z":I
    :cond_1
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->generateDefaultLayoutParams()Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->generateDefaultLayoutParams()Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    .locals 3

    .prologue
    .line 316
    new-instance v0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 321
    new-instance v0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 326
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 327
    new-instance v0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 331
    :goto_0
    return-object v0

    .line 328
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 329
    new-instance v0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 331
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method getDownNestedPreScrollRange()I
    .locals 8

    .prologue
    .line 390
    iget v6, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mDownPreScrollRange:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 392
    iget v6, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 422
    :goto_0
    return v6

    .line 395
    :cond_0
    const/4 v5, 0x0

    .line 396
    .local v5, "range":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 397
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 398
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    .line 399
    .local v4, "lp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 400
    .local v1, "childHeight":I
    iget v2, v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 402
    .local v2, "flags":I
    and-int/lit8 v6, v2, 0x5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4

    .line 404
    iget v6, v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v7, v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 406
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_2

    .line 408
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    .line 396
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 409
    :cond_2
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_3

    .line 411
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v6

    sub-int v6, v1, v6

    add-int/2addr v5, v6

    goto :goto_2

    .line 414
    :cond_3
    add-int/2addr v5, v1

    goto :goto_2

    .line 416
    :cond_4
    if-lez v5, :cond_1

    .line 422
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "flags":I
    .end local v4    # "lp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    :cond_5
    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mDownPreScrollRange:I

    goto :goto_0
.end method

.method getDownNestedScrollRange()I
    .locals 9

    .prologue
    .line 429
    iget v7, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mDownScrollRange:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 431
    iget v7, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mDownScrollRange:I

    .line 460
    :goto_0
    return v7

    .line 434
    :cond_0
    const/4 v5, 0x0

    .line 435
    .local v5, "range":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    .local v6, "z":I
    :goto_1
    if-ge v3, v6, :cond_1

    .line 436
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 437
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    .line 438
    .local v4, "lp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 439
    .local v1, "childHeight":I
    iget v7, v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v8, v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 441
    iget v2, v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 443
    .local v2, "flags":I
    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_1

    .line 445
    add-int/2addr v5, v1

    .line 447
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_2

    .line 451
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v5, v7

    .line 460
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "flags":I
    .end local v4    # "lp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    :cond_1
    const/4 v7, 0x0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mDownScrollRange:I

    goto :goto_0

    .line 435
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childHeight":I
    .restart local v2    # "flags":I
    .restart local v4    # "lp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .locals 5

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result v3

    .line 478
    .local v3, "topInset":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    .line 479
    .local v2, "minHeight":I
    if-eqz v2, :cond_0

    .line 481
    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v3

    .line 494
    :goto_0
    return v4

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    .line 486
    .local v0, "childCount":I
    const/4 v4, 0x1

    if-lt v0, v4, :cond_1

    add-int/lit8 v4, v0, -0x1

    .line 487
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 488
    .local v1, "lastChildMinHeight":I
    :goto_1
    if-eqz v1, :cond_2

    .line 489
    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v3

    goto :goto_0

    .line 487
    .end local v1    # "lastChildMinHeight":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 494
    .restart local v1    # "lastChildMinHeight":I
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    goto :goto_0
.end method

.method getPendingAction()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mPendingAction:I

    return v0
.end method

.method public getTargetElevation()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method final getTopInset()I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    .prologue
    .line 344
    iget v7, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mTotalScrollRange:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 345
    iget v7, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 372
    :goto_0
    return v7

    .line 348
    :cond_0
    const/4 v5, 0x0

    .line 349
    .local v5, "range":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    .local v6, "z":I
    :goto_1
    if-ge v3, v6, :cond_1

    .line 350
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 351
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    .line 352
    .local v4, "lp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 353
    .local v1, "childHeight":I
    iget v2, v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 355
    .local v2, "flags":I
    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_1

    .line 357
    iget v7, v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v1

    iget v8, v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 359
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_2

    .line 363
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v5, v7

    .line 372
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "flags":I
    .end local v4    # "lp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result v8

    sub-int v8, v5, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mTotalScrollRange:I

    goto :goto_0

    .line 349
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childHeight":I
    .restart local v2    # "flags":I
    .restart local v4    # "lp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method getUpNestedPreScrollRange()I
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method hasChildWithInterpolator()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    return v0
.end method

.method hasScrollableChildren()Z
    .locals 1

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 4
    .param p1, "extraSpace"    # I

    .prologue
    .line 499
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mTmpStatesArray:[I

    .line 500
    .local v0, "extraStates":[I
    array-length v2, v0

    add-int/2addr v2, p1

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 502
    .local v1, "states":[I
    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mCollapsible:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/oneplus/commonctrl/R$attr;->op_state_collapsible:I

    :goto_0
    aput v2, v0, v3

    .line 503
    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mCollapsible:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mCollapsed:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/oneplus/commonctrl/R$attr;->op_state_collapsed:I

    :goto_1
    aput v2, v0, v3

    .line 506
    invoke-static {v1, v0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object v2

    return-object v2

    .line 502
    :cond_0
    sget v2, Lcom/oneplus/commonctrl/R$attr;->op_state_collapsible:I

    neg-int v2, v2

    goto :goto_0

    .line 503
    :cond_1
    sget v2, Lcom/oneplus/commonctrl/R$attr;->op_state_collapsed:I

    neg-int v2, v2

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 230
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 231
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 233
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    .line 234
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    .local v4, "z":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 235
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 236
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    .line 237
    .local v1, "childLp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 239
    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v3, :cond_1

    .line 240
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    .line 245
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    .end local v3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->updateCollapsible()V

    .line 246
    return-void

    .line 234
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childLp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    .restart local v3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 224
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 225
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 226
    return-void
.end method

.method onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 576
    const/4 v0, 0x0

    .line 578
    .local v0, "newInsets":Landroid/support/v4/view/WindowInsetsCompat;
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    move-object v0, p1

    .line 584
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Lcom/oneplus/lib/design/widget/Utils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 585
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 586
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 589
    :cond_1
    return-object p1
.end method

.method public removeOnOffsetChangedListener(Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 220
    :cond_0
    return-void
.end method

.method resetPendingAction()V
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mPendingAction:I

    .line 568
    return-void
.end method

.method setCollapsedState(Z)Z
    .locals 1
    .param p1, "collapsed"    # Z

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mCollapsed:Z

    if-eq v0, p1, :cond_0

    .line 530
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mCollapsed:Z

    .line 531
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->refreshDrawableState()V

    .line 532
    const/4 v0, 0x1

    .line 534
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 288
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 289
    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 2
    .param p1, "expanded"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 304
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x4

    :goto_1
    or-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mPendingAction:I

    .line 306
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->requestLayout()V

    .line 307
    return-void

    .line 304
    :cond_0
    const/4 v0, 0x2

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 268
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 273
    return-void
.end method

.method public setTargetElevation(F)V
    .locals 2
    .param p1, "elevation"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 547
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 548
    invoke-static {p0, p1}, Lcom/oneplus/lib/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 550
    :cond_0
    return-void
.end method
