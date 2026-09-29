.class public Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;
.super Landroid/widget/FrameLayout;
.source "RecyclerFastScroller.java"


# static fields
.field private static final DEFAULT_AUTO_HIDE_DELAY:I = 0x5dc


# instance fields
.field mAnimatingIn:Z

.field mAnimator:Landroid/animation/AnimatorSet;

.field mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field mAppBarLayoutOffset:I

.field protected final mBar:Landroid/view/View;

.field private mBarColor:I

.field private mBarInset:I

.field mCoordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

.field protected final mHandle:Landroid/view/View;

.field private mHandleNormalColor:I

.field private mHandlePressedColor:I

.field final mHiddenTranslationX:I

.field private final mHide:Ljava/lang/Runnable;

.field private mHideDelay:I

.field private mHideOverride:Z

.field private mHidingEnabled:Z

.field private final mMinScrollHandleHeight:I

.field protected mOnTouchListener:Landroid/view/View$OnTouchListener;

.field mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field private mTouchTargetWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v7, 0x7f010089

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    sget-object v5, Lnet/oneplus/h2launcher/R$styleable;->RecyclerFastScroller:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    const v6, 0x7f01008a

    .line 79
    invoke-static {p1, v6}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScrollerUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v6

    .line 77
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBarColor:I

    .line 83
    invoke-static {p1, v7}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScrollerUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v5

    .line 81
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandleNormalColor:I

    .line 85
    const/4 v5, 0x2

    .line 87
    invoke-static {p1, v7}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScrollerUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v6

    .line 85
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandlePressedColor:I

    .line 89
    const/4 v5, 0x3

    const/high16 v6, 0x41c00000    # 24.0f

    .line 91
    invoke-static {p1, v6}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScrollerUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v6

    .line 89
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mTouchTargetWidth:I

    .line 93
    const/4 v5, 0x4

    const/16 v6, 0x5dc

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHideDelay:I

    .line 96
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHidingEnabled:Z

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {p1, v5}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScrollerUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v2

    .line 101
    .local v2, "fortyEightDp":I
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBar:Landroid/view/View;

    .line 104
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandle:Landroid/view/View;

    .line 105
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBar:Landroid/view/View;

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->addView(Landroid/view/View;)V

    .line 106
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->addView(Landroid/view/View;)V

    .line 108
    iget v5, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mTouchTargetWidth:I

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->setTouchTargetWidth(I)V

    .line 110
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mMinScrollHandleHeight:I

    .line 112
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScrollerUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v1

    .line 113
    .local v1, "eightDp":I
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBar:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    mul-int/2addr v3, v1

    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHiddenTranslationX:I

    .line 114
    new-instance v3, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$1;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$1;-><init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHide:Ljava/lang/Runnable;

    .line 133
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandle:Landroid/view/View;

    new-instance v4, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;-><init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHiddenTranslationX:I

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->setTranslationX(F)V

    .line 194
    return-void

    :cond_0
    move v3, v4

    .line 113
    goto :goto_0
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    .prologue
    .line 30
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHideOverride:Z

    return v0
.end method

.method private initRecyclerViewOnScrollListener()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$4;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$4;-><init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addOnScrollListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;)V

    .line 345
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$5;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$5;-><init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->registerAdapterDataObserver(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;)V

    .line 352
    return-void
.end method

.method private updateBarColorAndInset()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 299
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBarColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBarInset:I

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 304
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 305
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 306
    return-void

    .line 302
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBarColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBarInset:I

    move v2, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private updateHandleColorsAndInset()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 280
    new-instance v7, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 282
    .local v7, "drawable":Landroid/graphics/drawable/StateListDrawable;
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    sget-object v6, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandlePressedColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBarInset:I

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v7, v6, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 285
    sget-object v6, Landroid/view/View;->EMPTY_STATE_SET:[I

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandleNormalColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBarInset:I

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v7, v6, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 293
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 294
    return-void

    .line 288
    :cond_0
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandlePressedColor:I

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget v5, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBarInset:I

    move v4, v3

    move v6, v3

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v7, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 290
    sget-object v0, Landroid/view/View;->EMPTY_STATE_SET:[I

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandleNormalColor:I

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget v5, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBarInset:I

    move v4, v3

    move v6, v3

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v7, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public attachAppBarLayout(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 2
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "appBarLayout"    # Landroid/support/design/widget/AppBarLayout;

    .prologue
    .line 314
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mCoordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    .line 315
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    .line 317
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$3;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$3;-><init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 330
    return-void
.end method

.method public attachRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 309
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 310
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->initRecyclerViewOnScrollListener()V

    .line 311
    return-void
.end method

.method public getBarColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 218
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBarColor:I

    return v0
.end method

.method public getHandleNormalColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 208
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandleNormalColor:I

    return v0
.end method

.method public getHandlePressedColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 198
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandlePressedColor:I

    return v0
.end method

.method public getHideDelay()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHideDelay:I

    return v0
.end method

.method public getTouchTargetWidth()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mTouchTargetWidth:I

    return v0
.end method

.method public isHidingEnabled()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHidingEnabled:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 407
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 409
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->computeVerticalScrollOffset()I

    move-result v6

    iget v7, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAppBarLayoutOffset:I

    add-int v3, v6, v7

    .line 410
    .local v3, "scrollOffset":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->computeVerticalScrollRange()I

    move-result v7

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-nez v6, :cond_1

    const/4 v6, 0x0

    :goto_0
    add-int/2addr v6, v7

    iget-object v7, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 411
    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingBottom()I

    move-result v7

    add-int v4, v6, v7

    .line 413
    .local v4, "verticalScrollRange":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBar:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 414
    .local v0, "barHeight":I
    int-to-float v6, v3

    sub-int v7, v4, v0

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 416
    .local v2, "ratio":F
    int-to-float v6, v0

    int-to-float v7, v4

    div-float/2addr v6, v7

    int-to-float v7, v0

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 417
    .local v1, "calculatedHandleHeight":I
    iget v6, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mMinScrollHandleHeight:I

    if-ge v1, v6, :cond_0

    .line 418
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mMinScrollHandleHeight:I

    .line 421
    :cond_0
    if-lt v1, v0, :cond_2

    .line 422
    iget v6, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHiddenTranslationX:I

    int-to-float v6, v6

    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->setTranslationX(F)V

    .line 423
    const/4 v6, 0x1

    iput-boolean v6, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHideOverride:Z

    .line 432
    :goto_1
    return-void

    .line 410
    .end local v0    # "barHeight":I
    .end local v1    # "calculatedHandleHeight":I
    .end local v2    # "ratio":F
    .end local v4    # "verticalScrollRange":I
    :cond_1
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v6}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v6

    goto :goto_0

    .line 427
    .restart local v0    # "barHeight":I
    .restart local v1    # "calculatedHandleHeight":I
    .restart local v2    # "ratio":F
    .restart local v4    # "verticalScrollRange":I
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHideOverride:Z

    .line 429
    sub-int v6, v0, v1

    int-to-float v6, v6

    mul-float v5, v2, v6

    .line 431
    .local v5, "y":F
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandle:Landroid/view/View;

    iget-object v7, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    float-to-int v8, v5

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    float-to-int v10, v5

    add-int/2addr v10, v1

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method postAutoHide()V
    .locals 4

    .prologue
    .line 399
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHidingEnabled:Z

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 401
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHide:Ljava/lang/Runnable;

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHideDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 403
    :cond_0
    return-void
.end method

.method public setBarColor(I)V
    .locals 0
    .param p1, "scrollBarColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 225
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBarColor:I

    .line 226
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->updateBarColorAndInset()V

    .line 227
    return-void
.end method

.method public setHandleNormalColor(I)V
    .locals 0
    .param p1, "colorNormal"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 212
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandleNormalColor:I

    .line 213
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->updateHandleColorsAndInset()V

    .line 214
    return-void
.end method

.method public setHandlePressedColor(I)V
    .locals 0
    .param p1, "colorPressed"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 202
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandlePressedColor:I

    .line 203
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->updateHandleColorsAndInset()V

    .line 204
    return-void
.end method

.method public setHideDelay(I)V
    .locals 0
    .param p1, "hideDelay"    # I

    .prologue
    .line 237
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHideDelay:I

    .line 238
    return-void
.end method

.method public setHidingEnabled(Z)V
    .locals 0
    .param p1, "hidingEnabled"    # Z

    .prologue
    .line 273
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHidingEnabled:Z

    .line 274
    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->postAutoHide()V

    .line 277
    :cond_0
    return-void
.end method

.method public setOnHandleTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 333
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 334
    return-void
.end method

.method public setTouchTargetWidth(I)V
    .locals 6
    .param p1, "touchTargetWidth"    # I

    .prologue
    const v5, 0x800005

    const/4 v4, -0x1

    .line 248
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mTouchTargetWidth:I

    .line 250
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScrollerUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v0

    .line 251
    .local v0, "eightDp":I
    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mTouchTargetWidth:I

    sub-int/2addr v2, v0

    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBarInset:I

    .line 253
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScrollerUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v1

    .line 254
    .local v1, "fortyEightDp":I
    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mTouchTargetWidth:I

    if-le v2, v1, :cond_0

    .line 255
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Touch target width cannot be larger than 48dp!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBar:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, p1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandle:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, p1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->updateHandleColorsAndInset()V

    .line 262
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->updateBarColorAndInset()V

    .line 263
    return-void
.end method

.method public show(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 360
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->requestLayout()V

    .line 362
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;-><init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;Z)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->post(Ljava/lang/Runnable;)Z

    .line 396
    return-void
.end method

.method updateRvScroll(I)V
    .locals 3
    .param p1, "dY"    # I

    .prologue
    .line 435
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandle:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 437
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollBy(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
