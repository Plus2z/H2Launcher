.class public abstract Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
.super Landroid/widget/LinearLayout;
.source "BaseCustomizationCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;,
        Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
    }
.end annotation


# static fields
.field protected static final CARD_COLLAPSED_FRACTION:F = 0.353125f

.field protected static final CARD_EXPANDED_FRACTION:F = 0.4859375f

.field private static final CUTOFF_THRESHOLD:F = 0.01f

.field protected static final DISABLED_VIEW_ALPHA:F = 0.26f

.field private static final DRAG_HELPER_SENSITIVITY:F = 2.0f


# instance fields
.field mCard:Landroid/view/View;

.field private mCardHeight:I

.field mContainer:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

.field mContent:Landroid/view/ViewGroup;

.field private mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

.field private mEnabled:Z

.field mHeaderShadow:Landroid/view/View;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsScrollableViewHandlingTouch:Z

.field private mIsUnableToDrag:Z

.field mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mPagePosition:F

.field private mPrevMotionY:F

.field private mScreenHeight:I

.field private mScrollableViewHelper:Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;

.field private mSlideOffset:F

.field private mSlideRange:I

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 61
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v11, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;

    invoke-direct {v11}, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;-><init>()V

    iput-object v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mScrollableViewHelper:Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;

    .line 43
    const/4 v11, 0x1

    iput-boolean v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mEnabled:Z

    .line 47
    const/4 v11, 0x0

    iput v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mPagePosition:F

    move-object v11, p1

    .line 63
    check-cast v11, Lnet/oneplus/h2launcher/Launcher;

    iput-object v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 64
    const v11, 0x7f04003b

    invoke-static {p1, v11, p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    const v11, 0x7f11007b

    invoke-virtual {p0, v11}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mTitle:Landroid/widget/TextView;

    .line 67
    const v11, 0x7f1100bc

    invoke-virtual {p0, v11}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mContent:Landroid/view/ViewGroup;

    .line 68
    iget-object v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mContent:Landroid/view/ViewGroup;

    if-eqz v11, :cond_0

    .line 69
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, "content":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v3, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v11, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .end local v2    # "content":Landroid/view/View;
    .end local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v11

    iget v6, v11, Landroid/graphics/Point;->y:I

    .line 76
    .local v6, "screenHeight":I
    const v11, 0x7f1100ca

    invoke-virtual {p0, v11}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mCard:Landroid/view/View;

    .line 77
    iget-object v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mCard:Landroid/view/View;

    if-eqz v11, :cond_2

    .line 78
    iget-object v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mCard:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 80
    const v11, 0x7f0e00bb

    invoke-virtual {p1, v11}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 81
    .local v1, "backgroundColor":I
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 84
    .end local v1    # "backgroundColor":I
    :cond_1
    iget-object v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mCard:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 85
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    int-to-float v11, v6

    const v12, 0x3ef8cccd

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 86
    int-to-float v11, v6

    const/high16 v12, -0x41f80000    # -0.1328125f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 89
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    const v11, 0x7f1100cc

    invoke-virtual {p0, v11}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mHeaderShadow:Landroid/view/View;

    .line 90
    iget-object v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mHeaderShadow:Landroid/view/View;

    if-eqz v11, :cond_3

    .line 91
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0e00bf

    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    move-result v9

    .line 92
    .local v9, "shadowColor":I
    const/4 v11, 0x2

    const/16 v12, 0x30

    invoke-static {v9, v11, v12}, Lnet/oneplus/h2launcher/util/ScrimUtil;->makeCubicGradientScrimDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 93
    .local v8, "shadow":Landroid/graphics/drawable/Drawable;
    iget-object v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mHeaderShadow:Landroid/view/View;

    invoke-virtual {v11, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    .end local v8    # "shadow":Landroid/graphics/drawable/Drawable;
    .end local v9    # "shadowColor":I
    :cond_3
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getScrollableView()Landroid/view/View;

    move-result-object v7

    .line 97
    .local v7, "scrollableView":Landroid/view/View;
    if-eqz v7, :cond_4

    .line 98
    iget-object v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mScrollableViewHelper:Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;

    new-instance v12, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$1;

    invoke-direct {v12, p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$1;-><init>(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)V

    invoke-virtual {v11, v7, v12}, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;->monitorTopScrolled(Landroid/view/View;Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollListener;)V

    .line 106
    :cond_4
    int-to-float v11, v6

    const v12, 0x3eb4cccd

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mCardHeight:I

    .line 107
    int-to-float v11, v6

    const/high16 v12, 0x3e080000    # 0.1328125f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mSlideRange:I

    .line 108
    const/high16 v11, 0x40000000    # 2.0f

    new-instance v12, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;-><init>(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$1;)V

    invoke-static {p0, v11, v12}, Lnet/oneplus/h2launcher/customizations/DragHelper;->create(Landroid/view/ViewGroup;FLnet/oneplus/h2launcher/customizations/DragHelper$Callback;)Lnet/oneplus/h2launcher/customizations/DragHelper;

    move-result-object v11

    iput-object v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    .line 110
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 111
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    iget-object v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Lnet/oneplus/h2launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 112
    .local v10, "wm":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 113
    iget v11, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v11, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mScreenHeight:I

    .line 114
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->setHeaderShadowVisible(Z)V

    return-void
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)F
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    .prologue
    .line 25
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mSlideOffset:F

    return v0
.end method

.method static synthetic access$202(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;F)F
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    .param p1, "x1"    # F

    .prologue
    .line 25
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mSlideOffset:F

    return p1
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;I)F
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->computeSlideOffset(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    .prologue
    .line 25
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->isSlideEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)F
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    .prologue
    .line 25
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mPagePosition:F

    return v0
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;F)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    .param p1, "x1"    # F

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->computePanelTopPosition(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)Lnet/oneplus/h2launcher/customizations/DragHelper;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    .prologue
    .line 25
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    return-object v0
.end method

.method static synthetic access$800(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    .prologue
    .line 25
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getSlideRange()I

    move-result v0

    return v0
.end method

.method private computePanelTopPosition(F)I
    .locals 3
    .param p1, "slideOffset"    # F

    .prologue
    .line 483
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getSlideRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 485
    .local v0, "slidePixelOffset":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mCardHeight:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1
.end method

.method private computeSlideOffset(I)F
    .locals 3
    .param p1, "topPosition"    # I

    .prologue
    .line 490
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->computePanelTopPosition(F)I

    move-result v0

    .line 494
    .local v0, "topBoundCollapsed":I
    sub-int v1, v0, p1

    int-to-float v1, v1

    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getSlideRange()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    return v1
.end method

.method public static getCollapsedHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const v1, 0x3eb4cccd

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getSlideRange()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mSlideRange:I

    return v0
.end method

.method private isSlideEnabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 419
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getScrollableView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v3

    .line 423
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getBottommostViewInScrollableView()Landroid/view/View;

    move-result-object v1

    .line 424
    .local v1, "lastVisibleView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 428
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 429
    .local v2, "loc":[I
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 430
    aget v5, v2, v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v0, v5, v6

    .line 431
    .local v0, "bottomOnScreen":I
    iget v5, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mSlideOffset:F

    cmpl-float v5, v5, v7

    if-nez v5, :cond_2

    iget v5, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mScreenHeight:I

    if-gt v0, v5, :cond_3

    :cond_2
    iget v5, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mSlideOffset:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method private isViewUnder(Landroid/view/View;II)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 435
    if-nez p1, :cond_0

    .line 443
    :goto_0
    return v5

    .line 436
    :cond_0
    new-array v3, v6, [I

    .line 437
    .local v3, "viewLocation":[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 438
    new-array v0, v6, [I

    .line 439
    .local v0, "parentLocation":[I
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getLocationOnScreen([I)V

    .line 440
    aget v6, v0, v5

    add-int v1, v6, p2

    .line 441
    .local v1, "screenX":I
    aget v6, v0, v4

    add-int v2, v6, p3

    .line 442
    .local v2, "screenY":I
    aget v6, v3, v5

    if-lt v1, v6, :cond_1

    aget v6, v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v1, v6, :cond_1

    aget v6, v3, v4

    if-lt v2, v6, :cond_1

    aget v6, v3, v4

    .line 443
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_1

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method private setHeaderShadowVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 447
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 448
    .local v0, "alpha":F
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mHeaderShadow:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mHeaderShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mHeaderShadow:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 451
    :cond_0
    return-void

    .line 447
    .end local v0    # "alpha":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/DragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->postInvalidateOnAnimation()V

    .line 297
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 208
    .local v0, "action":I
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->isSlideEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mIsUnableToDrag:Z

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/customizations/DragHelper;->cancel()V

    .line 210
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 289
    :goto_0
    return v6

    .line 213
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 215
    .local v5, "y":F
    if-nez v0, :cond_3

    .line 216
    iput-boolean v9, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mIsScrollableViewHandlingTouch:Z

    .line 217
    iput v5, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mPrevMotionY:F

    .line 289
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 218
    :cond_3
    const/4 v6, 0x2

    if-ne v0, v6, :cond_a

    .line 219
    iget v6, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mPrevMotionY:F

    sub-float v1, v5, v6

    .line 220
    .local v1, "dy":F
    iput v5, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mPrevMotionY:F

    .line 224
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getScrollableView()Landroid/view/View;

    move-result-object v6

    iget v7, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mInitialMotionX:F

    float-to-int v7, v7

    iget v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mInitialMotionY:F

    float-to-int v8, v8

    invoke-direct {p0, v6, v7, v8}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->isViewUnder(Landroid/view/View;II)Z

    move-result v6

    if-nez v6, :cond_4

    .line 225
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 229
    :cond_4
    cmpl-float v6, v1, v11

    if-lez v6, :cond_7

    .line 232
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mScrollableViewHelper:Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;

    .line 233
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getScrollableView()Landroid/view/View;

    move-result-object v7

    .line 232
    invoke-virtual {v6, v7, v10}, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;->getScrollableViewScrollPosition(Landroid/view/View;Z)I

    move-result v3

    .line 234
    .local v3, "scrollableDistanceToTop":I
    if-lez v3, :cond_5

    .line 235
    iput-boolean v10, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mIsScrollableViewHandlingTouch:Z

    .line 236
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 242
    :cond_5
    iget-boolean v6, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mIsScrollableViewHandlingTouch:Z

    if-eqz v6, :cond_6

    .line 244
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 245
    .local v4, "up":Landroid/view/MotionEvent;
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 246
    invoke-super {p0, v4}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 247
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 251
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 254
    .end local v4    # "up":Landroid/view/MotionEvent;
    :cond_6
    iput-boolean v9, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mIsScrollableViewHandlingTouch:Z

    .line 255
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 256
    .end local v3    # "scrollableDistanceToTop":I
    :cond_7
    cmpg-float v6, v1, v11

    if-gez v6, :cond_2

    .line 259
    iget v6, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mSlideOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_8

    .line 260
    iput-boolean v9, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mIsScrollableViewHandlingTouch:Z

    .line 261
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 267
    :cond_8
    iget-boolean v6, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mIsScrollableViewHandlingTouch:Z

    if-nez v6, :cond_9

    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/customizations/DragHelper;->isDragging()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 268
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/customizations/DragHelper;->cancel()V

    .line 269
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mScrollableViewHelper:Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;

    .line 270
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getScrollableView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;->getScrollableViewScrollPosition(Landroid/view/View;Z)I

    move-result v2

    .line 271
    .local v2, "scrollableDistanceToBottom":I
    if-lez v2, :cond_9

    .line 272
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 276
    .end local v2    # "scrollableDistanceToBottom":I
    :cond_9
    iput-boolean v10, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mIsScrollableViewHandlingTouch:Z

    .line 277
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0

    .line 279
    .end local v1    # "dy":F
    :cond_a
    if-ne v0, v10, :cond_2

    .line 283
    iget-boolean v6, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mIsScrollableViewHandlingTouch:Z

    if-eqz v6, :cond_2

    .line 284
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    invoke-virtual {v6, v9}, Lnet/oneplus/h2launcher/customizations/DragHelper;->setDragState(I)V

    goto/16 :goto_1
.end method

.method protected getBottommostViewInScrollableView()Landroid/view/View;
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCardContainer()Lnet/oneplus/h2launcher/customizations/BaseCardContainer;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mContainer:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    return-object v0
.end method

.method protected abstract getContentView()Landroid/view/View;
.end method

.method protected abstract getSaveCustomizationTask()Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
.end method

.method protected getScrollableView()Landroid/view/View;
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSlideOffset()F
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mSlideOffset:F

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 131
    iget-boolean v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mEnabled:Z

    if-nez v8, :cond_0

    .line 178
    :goto_0
    return v6

    .line 135
    :cond_0
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    if-nez v8, :cond_1

    .line 136
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 139
    :cond_1
    iget-boolean v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mIsScrollableViewHandlingTouch:Z

    if-eqz v8, :cond_2

    .line 140
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/customizations/DragHelper;->cancel()V

    move v6, v7

    .line 141
    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 145
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 146
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 147
    .local v5, "y":F
    iget v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mInitialMotionX:F

    sub-float v8, v4, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 148
    .local v1, "adx":F
    iget v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mInitialMotionY:F

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 149
    .local v2, "ady":F
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/customizations/DragHelper;->getTouchSlop()I

    move-result v3

    .line 151
    .local v3, "dragSlop":I
    packed-switch v0, :pswitch_data_0

    .line 178
    :cond_3
    :goto_1
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    invoke-virtual {v6, p1}, Lnet/oneplus/h2launcher/customizations/DragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 153
    :pswitch_0
    iput-boolean v7, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mIsUnableToDrag:Z

    .line 154
    iput v4, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mInitialMotionX:F

    .line 155
    iput v5, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mInitialMotionY:F

    goto :goto_1

    .line 159
    :pswitch_1
    int-to-float v8, v3

    cmpl-float v8, v2, v8

    if-lez v8, :cond_4

    cmpl-float v8, v1, v2

    if-gtz v8, :cond_5

    :cond_4
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mCard:Landroid/view/View;

    iget v9, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mInitialMotionX:F

    float-to-int v9, v9

    iget v10, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mInitialMotionY:F

    float-to-int v10, v10

    .line 160
    invoke-direct {p0, v8, v9, v10}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->isViewUnder(Landroid/view/View;II)Z

    move-result v8

    if-nez v8, :cond_3

    .line 161
    :cond_5
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/customizations/DragHelper;->cancel()V

    .line 162
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mIsUnableToDrag:Z

    move v6, v7

    .line 163
    goto :goto_0

    .line 172
    :pswitch_2
    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/customizations/DragHelper;->isDragging()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 173
    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    invoke-virtual {v7, p1}, Lnet/oneplus/h2launcher/customizations/DragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLeavingCustomization()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/DragHelper;->stopSettling()V

    .line 351
    return-void
.end method

.method protected onLeftCustomization()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method protected onPageIdle()V
    .locals 3

    .prologue
    .line 385
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->isSlideEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    iget v1, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mSlideOffset:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 387
    .local v0, "targetSlideOffset":F
    :goto_0
    iget v1, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mSlideOffset:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->smoothSlideTo(F)V

    .line 391
    .end local v0    # "targetSlideOffset":F
    :cond_0
    return-void

    .line 386
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPageScrolled(F)V
    .locals 4
    .param p1, "position"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 370
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mPagePosition:F

    .line 371
    move v0, p1

    .line 372
    .local v0, "clampedPosition":F
    const v2, 0x3c23d70a    # 0.01f

    add-float/2addr v2, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 373
    const/high16 v0, 0x3f800000    # 1.0f

    .line 375
    :cond_0
    sub-float v1, v3, v0

    .line 376
    .local v1, "slideOffset":F
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->isSlideEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mSlideOffset:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 377
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->slideTo(F)V

    .line 379
    :cond_1
    return-void
.end method

.method protected onShowCustomization()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 183
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mEnabled:Z

    if-nez v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v1

    .line 187
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mContainer:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->isSlideEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    if-nez v2, :cond_3

    .line 192
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 196
    :cond_3
    :try_start_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/customizations/DragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract reloadCustomizationSettings()V
.end method

.method public setCardContainer(Lnet/oneplus/h2launcher/customizations/BaseCardContainer;)V
    .locals 0
    .param p1, "container"    # Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    .prologue
    .line 411
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mContainer:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    .line 412
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mEnabled:Z

    .line 127
    return-void
.end method

.method protected setSlideOffset(F)V
    .locals 0
    .param p1, "slideOffset"    # F

    .prologue
    .line 343
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mSlideOffset:F

    .line 344
    return-void
.end method

.method protected setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 404
    return-void
.end method

.method slideTo(F)V
    .locals 3
    .param p1, "slideOffset"    # F

    .prologue
    .line 459
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->isSlideEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->computePanelTopPosition(F)I

    move-result v0

    .line 463
    .local v0, "top":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mCard:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lnet/oneplus/h2launcher/customizations/DragHelper;->slideTo(Landroid/view/View;I)V

    goto :goto_0
.end method

.method smoothSlideTo(F)V
    .locals 2
    .param p1, "slideOffset"    # F

    .prologue
    .line 472
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->isSlideEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->computePanelTopPosition(F)I

    move-result v0

    .line 477
    .local v0, "top":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->mDragHelper:Lnet/oneplus/h2launcher/customizations/DragHelper;

    invoke-virtual {v1, p0, v0}, Lnet/oneplus/h2launcher/customizations/DragHelper;->smoothSlideViewTo(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->postInvalidateOnAnimation()V

    goto :goto_0
.end method

.method protected trimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 395
    return-void
.end method
