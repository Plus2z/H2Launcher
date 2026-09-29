.class public Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;
.super Lnet/oneplus/h2launcher/customizations/BaseCardContainer;
.source "CustomizationsContainerView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

.field private mCustomizationCellLayoutAnimator:Landroid/animation/ValueAnimator;

.field private mCustomizationCellLayoutPivotY:F

.field private mCustomizationCellLayoutScale:F

.field private mCustomizationCellLayoutSize:Landroid/util/Size;

.field private mNormalCellLayoutSize:Landroid/util/Size;

.field private mSearchBarPreviewAnimator:Landroid/view/ViewPropertyAnimator;

.field private mSearchBarPreviewContainerAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

.field private final mSearchBarPreviewMarginTopFix:I

.field private mShrinkScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayoutPivotY:F

    .line 59
    check-cast p1, Lnet/oneplus/h2launcher/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 62
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewMarginTopFix:I

    .line 64
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;
    .param p1, "x1"    # Landroid/widget/FrameLayout;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->setupSearchBarPreviewContainer(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;IIFLandroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # F
    .param p4, "x4"    # Landroid/graphics/Rect;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->updateCustomizationCellLayout(IIFLandroid/graphics/Rect;)V

    return-void
.end method

.method private getCustomizationCellLayoutSize()Landroid/util/Size;
    .locals 8

    .prologue
    .line 375
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/oos/StyleManager;->showSearchBarInOptions()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 376
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->getNormalCellLayoutSize()Landroid/util/Size;

    move-result-object v3

    .local v3, "size":Landroid/util/Size;
    if-eqz v3, :cond_0

    .line 377
    const v1, 0x7f0c004c

    .line 378
    .local v1, "id":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 379
    .local v2, "quickSearchBarHeight":I
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    .local v4, "width":I
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    add-int v0, v5, v2

    .line 380
    .local v0, "height":I
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v4, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayoutSize:Landroid/util/Size;

    .line 382
    .end local v0    # "height":I
    .end local v1    # "id":I
    .end local v2    # "quickSearchBarHeight":I
    .end local v3    # "size":Landroid/util/Size;
    .end local v4    # "width":I
    :cond_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayoutSize:Landroid/util/Size;

    return-object v5
.end method

.method private getNormalCellLayoutSize()Landroid/util/Size;
    .locals 6

    .prologue
    .line 360
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mNormalCellLayoutSize:Landroid/util/Size;

    if-nez v3, :cond_0

    .line 362
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v2

    .local v2, "workspace":Lnet/oneplus/h2launcher/Workspace;
    if-eqz v2, :cond_0

    .line 363
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v1

    .line 364
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 365
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v3, :cond_0

    .line 366
    new-instance v3, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mNormalCellLayoutSize:Landroid/util/Size;

    .line 370
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mNormalCellLayoutSize:Landroid/util/Size;

    return-object v3
.end method

.method private getSearchBarPreviewTarget(Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;)Landroid/view/View;
    .locals 2
    .param p1, "searchBarStyle"    # Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    .prologue
    .line 386
    sget-object v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$7;->$SwitchMap$net$oneplus$h2launcher$config$PreferencesHelper$SearchBarStyle:[I

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 392
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 388
    :pswitch_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewDefault:Landroid/view/View;

    goto :goto_0

    .line 390
    :pswitch_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewTransparent:Landroid/view/View;

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupSearchBarPreviewContainer(Landroid/widget/FrameLayout;)V
    .locals 8
    .param p1, "searchBarPreviewContainer"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v7, 0x0

    .line 396
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    .line 397
    new-instance v4, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    invoke-direct {v4, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainerAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 398
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainerAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 399
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainerAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    new-instance v5, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$6;

    invoke-direct {v5, p0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$6;-><init>(Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;)V

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 415
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 416
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    const v5, 0x7f1101ad

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewDefault:Landroid/view/View;

    .line 418
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    const v5, 0x7f1101ae

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewTransparent:Landroid/view/View;

    .line 421
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 422
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    .line 423
    .local v0, "isRtl":Z
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v4

    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 424
    .local v1, "padding":Landroid/graphics/Rect;
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5, v7, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 426
    const v4, 0x7f0f0011

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 428
    .local v3, "shrinkPercentage":I
    int-to-float v4, v3

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    iput v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mShrinkScale:F

    .line 429
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    iget v5, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mShrinkScale:F

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 430
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    iget v5, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mShrinkScale:F

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 432
    .end local v0    # "isRtl":Z
    .end local v1    # "padding":Landroid/graphics/Rect;
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "shrinkPercentage":I
    :cond_0
    return-void
.end method

.method private updateCustomizationCellLayout(IIFLandroid/graphics/Rect;)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "translationY"    # F
    .param p4, "paddings"    # Landroid/graphics/Rect;

    .prologue
    .line 350
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/CellLayout;->setFixedSize(II)V

    .line 352
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0, p3}, Lnet/oneplus/h2launcher/CellLayout;->setTranslationY(F)V

    .line 353
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    iget v1, p4, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    iget v3, p4, Landroid/graphics/Rect;->right:I

    iget v4, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/oneplus/h2launcher/CellLayout;->setPadding(IIII)V

    .line 355
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->requestLayout()V

    .line 357
    :cond_0
    return-void
.end method


# virtual methods
.method public animateToPreview(Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;)V
    .locals 1
    .param p1, "searchBarStyle"    # Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    .prologue
    .line 304
    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->animateToPreview(Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;I)V

    .line 305
    return-void
.end method

.method public animateToPreview(Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;I)V
    .locals 8
    .param p1, "searchBarStyle"    # Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;
    .param p2, "duration"    # I

    .prologue
    .line 312
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    if-nez v4, :cond_1

    .line 313
    sget-object v4, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->TAG:Ljava/lang/String;

    const-string v5, "Search bar preview container is null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    .line 318
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 319
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 320
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 321
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 318
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 325
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->getSearchBarPreviewTarget(Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;)Landroid/view/View;

    move-result-object v3

    .line 326
    .local v3, "searchBarPreview":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 327
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 328
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v4, :cond_4

    .line 329
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 331
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 332
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewAnimator:Landroid/view/ViewPropertyAnimator;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 333
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$5;

    invoke-direct {v5, p0, v3}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$5;-><init>(Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;Landroid/view/View;)V

    .line 334
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 344
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-long v6, p2

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public animateToState(Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;I)Z
    .locals 28
    .param p1, "newState"    # Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;
    .param p2, "duration"    # I

    .prologue
    .line 207
    invoke-super/range {p0 .. p2}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->animateToState(Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;I)Z

    move-result v22

    if-nez v22, :cond_0

    .line 208
    const/16 v22, 0x0

    .line 297
    :goto_0
    return v22

    .line 212
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainerAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainerAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->cancel()V

    .line 215
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    move-object/from16 v22, v0

    sget-object v23, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    const/16 v16, 0x0

    .line 217
    .local v16, "startAlpha":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    move-object/from16 v22, v0

    sget-object v23, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_4

    const/high16 v5, 0x3f800000    # 1.0f

    .line 218
    .local v5, "endAlpha":F
    :goto_2
    move/from16 v0, v16

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v22

    if-eqz v22, :cond_2

    .line 219
    if-lez p2, :cond_5

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainerAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->withLayer()Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v22

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 222
    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/animation/Animator;->start()V

    .line 230
    .end local v5    # "endAlpha":F
    .end local v16    # "startAlpha":F
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v21

    .line 231
    .local v21, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lnet/oneplus/h2launcher/Workspace;->getIdForScreen(Lnet/oneplus/h2launcher/CellLayout;)J

    move-result-wide v14

    .line 233
    .local v14, "screenId":J
    invoke-static {}, Lnet/oneplus/h2launcher/Workspace;->getCustomContentScreenId()J

    move-result-wide v22

    cmp-long v22, v14, v22

    if-nez v22, :cond_6

    .line 234
    sget-object v22, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "animateToState current page : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", has custom content : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 235
    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", screen id : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 234
    invoke-static/range {v22 .. v23}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 216
    .end local v14    # "screenId":J
    .end local v21    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    :cond_3
    const/high16 v16, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 217
    .restart local v16    # "startAlpha":F
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 224
    .restart local v5    # "endAlpha":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mAccessibilityEnabled:Z

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto/16 :goto_3

    .line 241
    .end local v5    # "endAlpha":F
    .end local v16    # "startAlpha":F
    .restart local v14    # "screenId":J
    .restart local v21    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayoutAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayoutAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/animation/ValueAnimator;->cancel()V

    .line 244
    :cond_7
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->getNormalCellLayoutSize()Landroid/util/Size;

    move-result-object v12

    .line 245
    .local v12, "normalSize":Landroid/util/Size;
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->getCustomizationCellLayoutSize()Landroid/util/Size;

    move-result-object v4

    .line 246
    .local v4, "customizationSize":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    move-object/from16 v22, v0

    sget-object v23, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_a

    move-object/from16 v19, v12

    .line 247
    .local v19, "startSize":Landroid/util/Size;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    move-object/from16 v22, v0

    sget-object v23, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_b

    move-object v8, v4

    .line 248
    .local v8, "endSize":Landroid/util/Size;
    :goto_5
    if-eqz v19, :cond_8

    if-eqz v8, :cond_8

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 249
    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v17

    .line 250
    .local v17, "startHeight":I
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v10

    .line 251
    .local v10, "endWidth":I
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 253
    .local v6, "endHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lnet/oneplus/h2launcher/CellLayout;->getPivotY()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayoutPivotY:F

    .line 254
    if-lez p2, :cond_c

    .line 255
    sub-int v22, v6, v17

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 256
    .local v11, "heightOffset":I
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v17, v22, v23

    const/16 v23, 0x1

    aput v6, v22, v23

    invoke-static/range {v22 .. v22}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayoutAnimator:Landroid/animation/ValueAnimator;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayoutAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v22, v0

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayoutAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v22, v0

    new-instance v23, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v10}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$4;-><init>(Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;II)V

    invoke-virtual/range {v22 .. v23}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayoutAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/animation/ValueAnimator;->start()V

    .line 276
    .end local v6    # "endHeight":I
    .end local v10    # "endWidth":I
    .end local v11    # "heightOffset":I
    .end local v17    # "startHeight":I
    :cond_8
    :goto_6
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lnet/oneplus/h2launcher/oos/StyleManager;->getWorkspaceScreenScaleInOptions()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayoutScale:F

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    move-object/from16 v22, v0

    sget-object v23, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_d

    const/high16 v18, 0x3f800000    # 1.0f

    .line 278
    .local v18, "startScale":F
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    move-object/from16 v22, v0

    sget-object v23, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v7, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayoutScale:F

    .line 279
    .local v7, "endScale":F
    :goto_8
    const-string v13, "workspace_screen_options_translation_y"

    .line 280
    .local v13, "resKey":Ljava/lang/String;
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lnet/oneplus/h2launcher/oos/StyleManager;->getResourceId(Ljava/lang/String;)I

    move-result v20

    .line 281
    .local v20, "translationYDimenResId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    move-object/from16 v22, v0

    sget-object v23, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 282
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 283
    .local v9, "endTranslationY":I
    :goto_9
    cmpl-float v22, v18, v7

    if-eqz v22, :cond_9

    .line 284
    if-lez p2, :cond_10

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lnet/oneplus/h2launcher/CellLayout;->setPivotY(F)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lnet/oneplus/h2launcher/CellLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v22

    .line 287
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v22

    int-to-float v0, v9

    move/from16 v23, v0

    .line 288
    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v22

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 289
    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 297
    :cond_9
    :goto_a
    const/16 v22, 0x1

    goto/16 :goto_0

    .end local v7    # "endScale":F
    .end local v8    # "endSize":Landroid/util/Size;
    .end local v9    # "endTranslationY":I
    .end local v13    # "resKey":Ljava/lang/String;
    .end local v18    # "startScale":F
    .end local v19    # "startSize":Landroid/util/Size;
    .end local v20    # "translationYDimenResId":I
    :cond_a
    move-object/from16 v19, v4

    .line 246
    goto/16 :goto_4

    .restart local v19    # "startSize":Landroid/util/Size;
    :cond_b
    move-object v8, v12

    .line 247
    goto/16 :goto_5

    .line 272
    .restart local v6    # "endHeight":I
    .restart local v8    # "endSize":Landroid/util/Size;
    .restart local v10    # "endWidth":I
    .restart local v17    # "startHeight":I
    :cond_c
    const/16 v22, 0x0

    new-instance v23, Landroid/graphics/Rect;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v23 .. v27}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v10, v6, v1, v2}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->updateCustomizationCellLayout(IIFLandroid/graphics/Rect;)V

    goto/16 :goto_6

    .line 277
    .end local v6    # "endHeight":I
    .end local v10    # "endWidth":I
    .end local v17    # "startHeight":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayoutScale:F

    move/from16 v18, v0

    goto/16 :goto_7

    .line 278
    .restart local v18    # "startScale":F
    :cond_e
    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_8

    .line 282
    .restart local v7    # "endScale":F
    .restart local v13    # "resKey":Ljava/lang/String;
    .restart local v20    # "translationYDimenResId":I
    :cond_f
    const/4 v9, 0x0

    goto :goto_9

    .line 291
    .restart local v9    # "endTranslationY":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lnet/oneplus/h2launcher/CellLayout;->setPivotY(F)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lnet/oneplus/h2launcher/CellLayout;->setScaleX(F)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lnet/oneplus/h2launcher/CellLayout;->setScaleY(F)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v22, v0

    int-to-float v0, v9

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lnet/oneplus/h2launcher/CellLayout;->setTranslationY(F)V

    goto :goto_a
.end method

.method getActionBarId()I
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f1100e1

    return v0
.end method

.method getActionBarTitleId()I
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f0b0048

    return v0
.end method

.method getContainerViewId()I
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f1100e0

    return v0
.end method

.method getPagerId()I
    .locals 1

    .prologue
    .line 88
    const v0, 0x7f1100e3

    return v0
.end method

.method getPagerIndicatorId()I
    .locals 1

    .prologue
    .line 93
    const v0, 0x7f1100e4

    return v0
.end method

.method getRevealViewId()I
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f1100df

    return v0
.end method

.method getSaveCustomizations()Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$1;-><init>(Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;)V

    return-object v0
.end method

.method onCardSlided(F)V
    .locals 5
    .param p1, "slideOffset"    # F

    .prologue
    const/high16 v4, 0x3e800000    # 0.25f

    .line 98
    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v4, p1

    sub-float v1, v2, v3

    .line 99
    .local v1, "scale":F
    iget v2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayoutScale:F

    mul-float/2addr v1, v2

    .line 100
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->setPivotY(F)V

    .line 102
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/CellLayout;->setScaleX(F)V

    .line 103
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/CellLayout;->setScaleY(F)V

    .line 106
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mShrinkScale:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float v0, v2, v3

    .line 109
    .local v0, "offsetY":F
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mShrinkScale:F

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 110
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mShrinkScale:F

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 111
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    neg-float v3, v0

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 113
    .end local v0    # "offsetY":F
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 171
    invoke-super {p0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->onFinishInflate()V

    .line 173
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/oos/StyleManager;->showSearchBarInOptions()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    const v3, 0x7f1100e2

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 175
    .local v2, "stub":Landroid/view/ViewStub;
    if-eqz v2, :cond_0

    .line 176
    new-instance v3, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$2;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$2;-><init>(Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 183
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 187
    .end local v2    # "stub":Landroid/view/ViewStub;
    :cond_0
    const v3, 0x7f11001e

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 188
    .local v0, "backButton":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 189
    new-instance v3, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$3;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$3;-><init>(Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_1
    const v3, 0x7f1100de

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 198
    .local v1, "saveButton":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 199
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->setupCustomizationsButton()V

    .line 203
    return-void
.end method

.method public onLeavingCardContainer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 145
    invoke-super {p0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->onLeavingCardContainer()V

    .line 146
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayoutPivotY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    iget v1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayoutPivotY:F

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->setPivotY(F)V

    .line 148
    iput v2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mCustomizationCellLayoutPivotY:F

    .line 150
    :cond_0
    return-void
.end method

.method protected onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "searchBarBounds"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 157
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    .line 159
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 160
    .local v0, "searchBarParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mNavigationBarHeight:I

    if-eqz v1, :cond_1

    .line 161
    iget v1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mNavigationBarHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mShrinkScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 162
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewMarginTopFix:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 167
    .end local v0    # "searchBarParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 164
    .restart local v0    # "searchBarParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method
