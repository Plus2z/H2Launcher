.class public Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;
.super Lnet/oneplus/h2launcher/customizations/BaseCardContainer;
.source "WallpapersContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sWallpaperBackgroundColor:I

.field private static final sWallpaperTaskTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsSavingWallpaper:Z

.field private mOnWallpaperSavedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveWallpaperTask:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

.field private mWallpaperBackground:Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

.field private mWallpaperBackgroundAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

.field private mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

.field private mWallpaperPreviewAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

.field private mWallpaperPreviewTitleAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

.field private mWallpaperPreviewTitles:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-class v0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput v0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->sWallpaperBackgroundColor:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->sWallpaperTaskTags:Ljava/util/List;

    .line 68
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->sWallpaperTaskTags:Ljava/util/List;

    const-class v1, Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->sWallpaperTaskTags:Ljava/util/List;

    const-class v1, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mOnWallpaperSavedCallbacks:Ljava/util/List;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mIsSavingWallpaper:Z

    .line 82
    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 52
    sput p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->sWallpaperBackgroundColor:I

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    .prologue
    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mOnWallpaperSavedCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->sWallpaperTaskTags:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    .prologue
    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewTitles:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)Lnet/oneplus/h2launcher/customizations/WallpaperBackground;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    .prologue
    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperBackground:Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    return-object v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    .prologue
    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    return-object v0
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    .prologue
    .line 52
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mIsSavingWallpaper:Z

    return v0
.end method

.method static synthetic access$702(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mIsSavingWallpaper:Z

    return p1
.end method

.method private getWallpaperTasks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v2, "wallpaperTasks":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;>;"
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    if-nez v3, :cond_1

    .line 442
    :cond_0
    return-object v2

    .line 435
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    .line 436
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->gatherSaveCustomizationTasks()Ljava/util/List;

    move-result-object v1

    .line 437
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;

    .line 438
    .local v0, "task":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
    sget-object v4, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->sWallpaperTaskTags:Ljava/util/List;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 439
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private layoutWallpaperPreview()V
    .locals 8

    .prologue
    .line 313
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 314
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0c00e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 315
    .local v3, "previewWidth":I
    int-to-float v5, v3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/Utilities;->getScreenAspectRatio(Landroid/content/Context;Z)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v1, v5

    .line 316
    .local v1, "previewHeight":I
    const v5, 0x7f0c00e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 317
    .local v2, "previewMargin":I
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    .line 318
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 319
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v1

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 320
    return-void
.end method

.method protected static updateWallpaperBackground(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p0, "preview"    # Landroid/graphics/Bitmap;
    .param p1, "animated"    # Z

    .prologue
    .line 92
    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 116
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method


# virtual methods
.method public animateToState(Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;I)Z
    .locals 7
    .param p1, "newState"    # Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;
    .param p2, "duration"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 324
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->animateToState(Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;I)Z

    move-result v1

    .line 325
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 326
    const/4 v3, 0x0

    .line 367
    :goto_0
    return v3

    .line 329
    :cond_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperBackgroundAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->cancel()V

    .line 330
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->cancel()V

    .line 331
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperBackground:Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    if-eqz v5, :cond_2

    .line 332
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    sget-object v6, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    if-ne v5, v6, :cond_3

    move v2, v3

    .line 333
    .local v2, "startAlpha":F
    :goto_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    sget-object v6, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    if-ne v5, v6, :cond_4

    move v0, v4

    .line 334
    .local v0, "endAlpha":F
    :goto_2
    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    if-lez p2, :cond_5

    .line 336
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperBackground:Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    invoke-virtual {v3, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;->setAlpha(F)V

    .line 337
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperBackgroundAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->withLayer()Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    .line 338
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 339
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-virtual {v3, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setAlpha(F)V

    .line 340
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->withLayer()Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    .line 341
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 350
    :cond_1
    :goto_3
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewTitles:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewTitles:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewTitleAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->cancel()V

    .line 352
    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    if-lez p2, :cond_6

    .line 354
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewTitles:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 355
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewTitleAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->withLayer()Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, p2

    .line 356
    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    .line 357
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 367
    .end local v0    # "endAlpha":F
    .end local v2    # "startAlpha":F
    :cond_2
    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 332
    goto :goto_1

    .restart local v2    # "startAlpha":F
    :cond_4
    move v0, v3

    .line 333
    goto :goto_2

    .line 343
    .restart local v0    # "endAlpha":F
    :cond_5
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperBackground:Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;->setAlpha(F)V

    .line 344
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setAlpha(F)V

    .line 345
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperBackground:Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    iget-boolean v4, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mAccessibilityEnabled:Z

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 346
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    iget-boolean v4, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mAccessibilityEnabled:Z

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_3

    .line 359
    :cond_6
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewTitles:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 360
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewTitles:Landroid/view/View;

    iget-boolean v4, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mAccessibilityEnabled:Z

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_4
.end method

.method getActionBarId()I
    .locals 1

    .prologue
    .line 131
    const v0, 0x7f1101ea

    return v0
.end method

.method getActionBarTitleId()I
    .locals 1

    .prologue
    .line 136
    const v0, 0x7f0b00cd

    return v0
.end method

.method getContainerViewId()I
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f1101e9

    return v0
.end method

.method public bridge synthetic getPager()Lnet/oneplus/h2launcher/customizations/BaseViewPager;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getPager()Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    move-result-object v0

    return-object v0
.end method

.method public getPager()Lnet/oneplus/h2launcher/customizations/WallpaperPager;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    check-cast v0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    return-object v0
.end method

.method getPagerId()I
    .locals 1

    .prologue
    .line 141
    const v0, 0x7f1101ef

    return v0
.end method

.method getPagerIndicatorId()I
    .locals 1

    .prologue
    .line 146
    const v0, 0x7f1101f0

    return v0
.end method

.method getRevealViewId()I
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f1101e8

    return v0
.end method

.method getSaveCustomizations()Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$2;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$2;-><init>(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)V

    return-object v0
.end method

.method public getWallpaperBackground()Lnet/oneplus/h2launcher/customizations/WallpaperBackground;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperBackground:Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    return-object v0
.end method

.method public getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    return-object v0
.end method

.method public init(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 371
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    instance-of v0, v0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    check-cast v0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-virtual {v0, v1, p1, p2, p3}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->init(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;IILandroid/content/Intent;)V

    .line 374
    :cond_0
    return-void
.end method

.method onCardSlided(F)V
    .locals 1
    .param p1, "slideOffset"    # F

    .prologue
    .line 151
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setSlideOffset(F)V

    .line 154
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 224
    invoke-super {p0}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->onFinishInflate()V

    .line 226
    const v2, 0x7f110127

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    iput-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperBackground:Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    .line 227
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperBackground:Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    if-eqz v2, :cond_1

    .line 228
    sget v2, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->sWallpaperBackgroundColor:I

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperBackground:Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    sget v3, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->sWallpaperBackgroundColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;->setColor(IZ)V

    .line 232
    :cond_0
    new-instance v2, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperBackground:Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    invoke-direct {v2, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperBackgroundAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 233
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperBackgroundAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    new-instance v3, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$4;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$4;-><init>(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)V

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 251
    :cond_1
    const v2, 0x7f1101eb

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    iput-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    .line 252
    const v2, 0x7f1101ec

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewTitles:Landroid/view/View;

    .line 253
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    if-eqz v2, :cond_2

    .line 254
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->layoutWallpaperPreview()V

    .line 255
    new-instance v2, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-direct {v2, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 256
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    new-instance v3, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$5;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$5;-><init>(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)V

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 274
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewTitles:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 275
    new-instance v2, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewTitles:Landroid/view/View;

    invoke-direct {v2, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewTitleAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 276
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewTitleAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    new-instance v3, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$6;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$6;-><init>(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)V

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 294
    :cond_3
    const v2, 0x7f11001e

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 295
    .local v0, "backButton":Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 296
    new-instance v2, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$7;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$7;-><init>(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    :cond_4
    const v2, 0x7f1100de

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 305
    .local v1, "saveButton":Landroid/widget/TextView;
    if-eqz v1, :cond_5

    .line 306
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    :cond_5
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->setupWallpapersButton()V

    .line 310
    return-void
.end method

.method protected onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "searchBarBounds"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 196
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewTitles:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewTitles:Landroid/view/View;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewTitleAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 198
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewTitleAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    new-instance v1, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$3;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$3;-><init>(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 215
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreviewTitles:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setPreviewTitles(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getCurrentPage()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->selectPage(IZ)V

    .line 220
    :cond_0
    return-void
.end method

.method public onWallpaperSaved(I)V
    .locals 1
    .param p1, "screen"    # I

    .prologue
    .line 405
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mIsSavingWallpaper:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mSaveWallpaperTask:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mSaveWallpaperTask:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->access$600(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;I)V

    .line 408
    :cond_0
    return-void
.end method

.method public saveWallpaperCustomizations()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 390
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getWallpaperTasks()Ljava/util/List;

    move-result-object v1

    .line 391
    .local v1, "wallpaperTasks":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 392
    .local v0, "hasWallpaperTasks":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mIsSavingWallpaper:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mOnWallpaperSavedCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    new-instance v4, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    invoke-direct {v4, p0, p0, v1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;-><init>(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;Landroid/view/View;Ljava/util/List;)V

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mSaveWallpaperTask:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    .line 394
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mSaveWallpaperTask:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 395
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mIsSavingWallpaper:Z

    .line 397
    :cond_0
    return-void

    .end local v0    # "hasWallpaperTasks":Z
    :cond_1
    move v0, v3

    .line 391
    goto :goto_0
.end method

.method public waitUntilWallpaperSaved(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 421
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mIsSavingWallpaper:Z

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mOnWallpaperSavedCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    const/4 v0, 0x1

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
