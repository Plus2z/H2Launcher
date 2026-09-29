.class public Lcom/oneplus/lib/widget/listview/OPListView;
.super Landroid/widget/ListView;
.source "OPListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "OPListView"


# instance fields
.field private mAnimRunning:Z

.field private mAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mDelAniSet:Landroid/animation/AnimatorSet;

.field private mDelAnimationFlag:Z

.field private mDelOriViewTopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelPosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

.field private mDisableTouchEvent:Z

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

.field private mDividerHeight:I

.field private mFooterDividersEnabled:Z

.field private mHeaderDividersEnabled:Z

.field private mInDeleteAnimation:Z

.field private mIsClipToPadding:Z

.field private mIsDisableAnimation:Z

.field private mNowViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOriBelowLeftCount:I

.field private mOriCurDeleteCount:I

.field private mOriCurLeftCount:I

.field private mOriFirstPosition:I

.field private mOriLastPage:Z

.field private mOriUpperDeleteCount:I

.field mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/listview/OPListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/listview/OPListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/listview/OPListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    iput v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    .line 35
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsDisableAnimation:Z

    .line 41
    iput-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    .line 42
    iput-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    .line 43
    iput-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    .line 44
    iput-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    .line 45
    iput-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    .line 52
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3f99999a    # 1.2f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mTempRect:Landroid/graphics/Rect;

    .line 100
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mHeaderDividersEnabled:Z

    .line 101
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mFooterDividersEnabled:Z

    .line 102
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsClipToPadding:Z

    .line 291
    iput-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    .line 320
    new-instance v0, Lcom/oneplus/lib/widget/listview/OPListView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/listview/OPListView$1;-><init>(Lcom/oneplus/lib/widget/listview/OPListView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/listview/OPListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    return p1
.end method

.method static synthetic access$202(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mInDeleteAnimation:Z

    return p1
.end method

.method static synthetic access$302(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getAnimator(ILandroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 8
    .param p1, "index"    # I
    .param p2, "child"    # Landroid/view/View;
    .param p3, "startValue"    # F

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 330
    const-string v3, "y"

    new-array v4, v4, [F

    aput p3, v4, v6

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 331
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v6

    invoke-static {p2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 332
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :goto_0
    return-object v0

    .line 334
    .end local v2    # "y":Landroid/animation/PropertyValuesHolder;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 335
    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 336
    .local v1, "pvhArray":[Landroid/animation/PropertyValuesHolder;
    aget-object v2, v1, v6

    .line 337
    .restart local v2    # "y":Landroid/animation/PropertyValuesHolder;
    new-array v3, v4, [F

    aput p3, v3, v6

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 338
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getDividerType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    if-nez v0, :cond_0

    .line 305
    const/4 v0, -0x1

    .line 308
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/listview/IOPDividerController;->getDividerType(I)I

    move-result v0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x0

    .line 77
    sget-object v3, Lcom/oneplus/commonctrl/R$styleable;->OPListView:[I

    sget v4, Lcom/oneplus/commonctrl/R$attr;->OPListViewStyle:I

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPListView_android_divider:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 80
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPListView_android_background:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 82
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_0
    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/listview/OPListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->listview_divider_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    .line 91
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/listview/OPListView;->setOverScrollMode(I)V

    .line 93
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x106000d

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-super {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/listview/OPListView;->setDividerHeight(I)V

    .line 95
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/listview/OPListView;->setFooterDividersEnabled(Z)V

    .line 96
    return-void
.end method

.method private isClipToPadding()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsClipToPadding:Z

    return v0
.end method

.method private setDelViewLocation()V
    .locals 21

    .prologue
    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v12

    .line 597
    .local v12, "nowFirstPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v10

    .line 598
    .local v10, "nowCurChildCount":I
    const/4 v13, 0x0

    .line 599
    .local v13, "nowLastPage":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getLastVisiblePosition()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/widget/ListAdapter;->getCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 600
    const/4 v13, 0x1

    .line 602
    :cond_0
    const/4 v11, 0x0

    .line 603
    .local v11, "nowFirstPage":Z
    if-nez v12, :cond_1

    .line 604
    const/4 v11, 0x1

    .line 606
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getTop()I

    move-result v17

    .line 607
    .local v17, "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getBottom()I

    move-result v2

    .line 609
    .local v2, "bottom":I
    const/4 v3, 0x0

    .line 610
    .local v3, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v4

    .line 611
    .local v4, "childCount":I
    const/4 v7, 0x0

    .line 612
    .local v7, "height":I
    const/4 v6, 0x0

    .line 614
    .local v6, "diff":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 615
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    .line 619
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_4

    .line 620
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    if-nez v8, :cond_2

    if-eqz v3, :cond_2

    .line 623
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 619
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 617
    .end local v8    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 626
    .restart local v8    # "i":I
    :cond_4
    const/4 v5, 0x1

    .line 627
    .local v5, "childIndex":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriLastPage:Z

    move/from16 v18, v0

    if-nez v18, :cond_12

    .line 628
    if-nez v13, :cond_8

    .line 629
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 630
    const-string v18, "OPListView"

    const-string v19, "DeleteAnimation Case 1"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    sub-int v6, v18, v19

    .line 733
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_1a

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0x1

    mul-int v19, v19, v7

    add-int v19, v19, v2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 632
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    .line 633
    const-string v18, "OPListView"

    const-string v19, "DeleteAnimation Case 3 "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 636
    :cond_7
    const-string v18, "OPListView"

    const-string v19, "DeleteAnimation Case 2 "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v8, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_5

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 637
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 642
    :cond_8
    if-nez v11, :cond_d

    .line 643
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 644
    const-string v18, "OPListView"

    const-string v19, "DeleteAnimation Case 4 "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :goto_5
    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriBelowLeftCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_10

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0x1

    mul-int v19, v19, v7

    add-int v19, v19, v2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 646
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    move/from16 v18, v0

    if-nez v18, :cond_b

    .line 647
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    .line 648
    const-string v18, "OPListView"

    const-string v19, "DeleteAnimation Case 9 "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 650
    :cond_a
    const-string v18, "OPListView"

    const-string v19, "DeleteAnimation Case 10 "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 653
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_c

    .line 654
    const-string v18, "OPListView"

    const-string v19, "DeleteAnimation Case 5 "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 656
    :cond_c
    const-string v18, "OPListView"

    const-string v19, "DeleteAnimation Case 6 "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 661
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    move/from16 v18, v0

    if-nez v18, :cond_e

    .line 662
    const-string v18, "OPListView"

    const-string v19, "DeleteAnimation Case 11 "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 664
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    .line 665
    const-string v18, "OPListView"

    const-string v19, "DeleteAnimation Case 7 "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 667
    :cond_f
    const-string v18, "OPListView"

    const-string v19, "DeleteAnimation Case 8 "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 679
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    sub-int v6, v18, v10

    .line 680
    const/4 v8, 0x0

    :goto_7
    if-ge v8, v6, :cond_11

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 680
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 685
    :cond_11
    const/4 v5, 0x1

    .line 686
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-le v10, v0, :cond_5

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    neg-int v0, v7

    move/from16 v20, v0

    mul-int v20, v20, v5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 688
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 692
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    move/from16 v18, v0

    if-nez v18, :cond_15

    .line 693
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    move/from16 v18, v0

    if-nez v18, :cond_14

    .line 724
    :cond_13
    :goto_9
    const/4 v5, 0x1

    .line 725
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-le v10, v0, :cond_5

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    neg-int v0, v7

    move/from16 v20, v0

    mul-int v20, v20, v5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 727
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 696
    :cond_14
    const-string v18, "OPListView"

    const-string v19, "DeleteAnimation Case 14 "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 699
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    move/from16 v18, v0

    if-nez v18, :cond_17

    .line 700
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_16

    .line 701
    const-string v18, "OPListView"

    const-string v19, "DeleteAnimation Case 12 "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    goto :goto_9

    .line 704
    :cond_16
    const-string v18, "OPListView"

    const-string v19, "DeleteAnimation Case 13 "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v8, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_13

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 705
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 710
    :cond_17
    if-nez v11, :cond_19

    .line 711
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_18

    .line 713
    const-string v18, "OPListView"

    const-string v19, "DeleteAnimation Case 15 "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 715
    :cond_18
    const-string v18, "OPListView"

    const-string v19, "DeleteAnimation Case 16 "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 718
    :cond_19
    const-string v18, "OPListView"

    const-string v19, "DeleteAnimation Case 17 "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 738
    :cond_1a
    const/4 v9, 0x0

    .line 739
    .local v9, "invertCount":I
    add-int/lit8 v8, v4, -0x1

    :goto_c
    if-ltz v8, :cond_1d

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 739
    :cond_1b
    :goto_d
    add-int/lit8 v8, v8, -0x1

    goto :goto_c

    .line 743
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_1b

    .line 744
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 749
    :cond_1d
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v9, v0, :cond_1f

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 751
    .local v16, "tmpViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 752
    .local v14, "tmpOriTopList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 754
    const/4 v15, 0x0

    .line 755
    .local v15, "tmpPos":I
    const/4 v8, 0x0

    :goto_e
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_1f

    .line 756
    if-ge v8, v9, :cond_1e

    .line 757
    sub-int v18, v9, v8

    add-int/lit8 v15, v18, -0x1

    .line 761
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 759
    :cond_1e
    move v15, v8

    goto :goto_f

    .line 765
    .end local v14    # "tmpOriTopList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v15    # "tmpPos":I
    .end local v16    # "tmpViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1f
    return-void
.end method

.method private shouldDrawDivider(I)Z
    .locals 3
    .param p1, "childIndex"    # I

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, p1, v2

    .line 313
    .local v1, "positionInAdapter":I
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerType(I)I

    move-result v0

    .line 314
    .local v0, "dividerType":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private startDelDropAnimation()V
    .locals 8

    .prologue
    .line 551
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    .line 552
    invoke-direct {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->setDelViewLocation()V

    .line 554
    const/16 v3, 0xc8

    .line 555
    .local v3, "minDuration":I
    const/16 v4, 0xc8

    .line 556
    .local v4, "time":I
    const/4 v1, 0x0

    .line 558
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 559
    iget-object v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "child":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 563
    .restart local v1    # "child":Landroid/view/View;
    const/16 v4, 0xc8

    .line 565
    iget-object v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v2, v1, v5}, Lcom/oneplus/lib/widget/listview/OPListView;->getAnimator(ILandroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 566
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 568
    iget-object v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 569
    iget-object v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 570
    iget-object v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 558
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 573
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/oneplus/lib/widget/listview/OPListView$3;

    invoke-direct {v6, p0}, Lcom/oneplus/lib/widget/listview/OPListView$3;-><init>(Lcom/oneplus/lib/widget/listview/OPListView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 591
    iget-object v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 592
    return-void
.end method

.method private startDelGoneAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 485
    iput-boolean v8, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    .line 487
    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 488
    .local v4, "size":I
    if-nez v4, :cond_1

    .line 489
    iput-boolean v8, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    .line 490
    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    if-eqz v6, :cond_0

    .line 491
    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v6}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    .line 493
    :cond_0
    iput-boolean v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    .line 546
    :goto_0
    return-void

    .line 499
    :cond_1
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    .line 500
    const/16 v5, 0xc8

    .line 504
    .local v5, "time":I
    const-string v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 506
    .local v3, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 507
    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 508
    .local v1, "child":Landroid/view/View;
    new-array v6, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v6, v9

    invoke-static {v1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 509
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 510
    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 511
    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 512
    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-array v7, v8, [Landroid/animation/Animator;

    aput-object v0, v7, v9

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 515
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/oneplus/lib/widget/listview/OPListView$2;

    invoke-direct {v7, p0}, Lcom/oneplus/lib/widget/listview/OPListView$2;-><init>(Lcom/oneplus/lib/widget/listview/OPListView;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 545
    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 504
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 114
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getOverscrollHeader()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 117
    .local v28, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getOverscrollFooter()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    .line 118
    .local v27, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v28, :cond_9

    const/4 v10, 0x1

    .line 119
    .local v10, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v27, :cond_a

    const/4 v9, 0x1

    .line 120
    .local v9, "drawOverscrollFooter":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v34

    if-eqz v34, :cond_b

    const/4 v8, 0x1

    .line 122
    .local v8, "drawDividers":Z
    :goto_2
    if-nez v8, :cond_0

    if-nez v10, :cond_0

    if-eqz v9, :cond_1a

    .line 124
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mTempRect:Landroid/graphics/Rect;

    .line 125
    .local v5, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getPaddingLeft()I

    move-result v34

    move/from16 v0, v34

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getRight()I

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getLeft()I

    move-result v35

    sub-int v34, v34, v35

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getPaddingRight()I

    move-result v35

    sub-int v34, v34, v35

    move/from16 v0, v34

    iput v0, v5, Landroid/graphics/Rect;->right:I

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v7

    .line 129
    .local v7, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getHeaderViewsCount()I

    move-result v16

    .line 130
    .local v16, "headerCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getCount()I

    move-result v23

    .line 131
    .local v23, "itemCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFooterViewsCount()I

    move-result v34

    sub-int v15, v23, v34

    .line 132
    .local v15, "footerLimit":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mHeaderDividersEnabled:Z

    move/from16 v17, v0

    .line 133
    .local v17, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mFooterDividersEnabled:Z

    .line 134
    .local v14, "footerDividers":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v13

    .line 135
    .local v13, "first":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 141
    .local v3, "adapter":Landroid/widget/ListAdapter;
    const/4 v12, 0x0

    .line 142
    .local v12, "effectivePaddingTop":I
    const/4 v11, 0x0

    .line 143
    .local v11, "effectivePaddingBottom":I
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->isClipToPadding()Z

    move-result v34

    if-eqz v34, :cond_1

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getListPaddingTop()I

    move-result v12

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getListPaddingBottom()I

    move-result v11

    .line 148
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getBottom()I

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getTop()I

    move-result v35

    sub-int v34, v34, v35

    sub-int v34, v34, v11

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getScrollY()I

    move-result v35

    add-int v25, v34, v35

    .line 149
    .local v25, "listBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->isStackFromBottom()Z

    move-result v34

    if-nez v34, :cond_f

    .line 150
    const/4 v4, 0x0

    .line 153
    .local v4, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getScrollY()I

    move-result v30

    .line 154
    .local v30, "scrollY":I
    if-lez v7, :cond_2

    if-gez v30, :cond_2

    .line 155
    if-eqz v8, :cond_2

    .line 156
    const/16 v34, 0x0

    move/from16 v0, v34

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v34

    move/from16 v0, v34

    neg-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 158
    const/16 v34, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-virtual {v0, v1, v5, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 162
    :cond_2
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3
    move/from16 v0, v18

    if-ge v0, v7, :cond_1a

    .line 163
    add-int v24, v13, v18

    .line 164
    .local v24, "itemIndex":I
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_c

    const/16 v21, 0x1

    .line 165
    .local v21, "isHeader":Z
    :goto_4
    move/from16 v0, v24

    if-lt v0, v15, :cond_d

    const/16 v20, 0x1

    .line 166
    .local v20, "isFooter":Z
    :goto_5
    if-nez v17, :cond_3

    if-nez v21, :cond_8

    :cond_3
    if-nez v14, :cond_4

    if-nez v20, :cond_8

    .line 167
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 168
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 169
    add-int/lit8 v34, v7, -0x1

    move/from16 v0, v18

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    const/16 v22, 0x1

    .line 171
    .local v22, "isLastItem":Z
    :goto_6
    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/listview/OPListView;->shouldDrawDivider(I)Z

    move-result v34

    if-eqz v34, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v34

    if-lez v34, :cond_8

    move/from16 v0, v25

    if-ge v4, v0, :cond_8

    if-eqz v9, :cond_5

    if-nez v22, :cond_8

    .line 172
    :cond_5
    add-int/lit8 v26, v24, 0x1

    .line 176
    .local v26, "nextIndex":I
    if-nez v17, :cond_6

    if-nez v21, :cond_8

    move/from16 v0, v26

    move/from16 v1, v16

    if-lt v0, v1, :cond_8

    :cond_6
    if-nez v22, :cond_7

    if-nez v14, :cond_7

    if-nez v20, :cond_8

    move/from16 v0, v26

    if-ge v0, v15, :cond_8

    .line 179
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v34

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v33, v0

    .line 180
    .local v33, "translationOffsetY":I
    add-int v34, v4, v33

    move/from16 v0, v34

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v34

    add-int v34, v34, v4

    add-int v34, v34, v33

    move/from16 v0, v34

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 182
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v5, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 162
    .end local v6    # "child":Landroid/view/View;
    .end local v22    # "isLastItem":Z
    .end local v26    # "nextIndex":I
    .end local v33    # "translationOffsetY":I
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 118
    .end local v3    # "adapter":Landroid/widget/ListAdapter;
    .end local v4    # "bottom":I
    .end local v5    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "count":I
    .end local v8    # "drawDividers":Z
    .end local v9    # "drawOverscrollFooter":Z
    .end local v10    # "drawOverscrollHeader":Z
    .end local v11    # "effectivePaddingBottom":I
    .end local v12    # "effectivePaddingTop":I
    .end local v13    # "first":I
    .end local v14    # "footerDividers":Z
    .end local v15    # "footerLimit":I
    .end local v16    # "headerCount":I
    .end local v17    # "headerDividers":Z
    .end local v18    # "i":I
    .end local v20    # "isFooter":Z
    .end local v21    # "isHeader":Z
    .end local v23    # "itemCount":I
    .end local v24    # "itemIndex":I
    .end local v25    # "listBottom":I
    .end local v30    # "scrollY":I
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 119
    .restart local v10    # "drawOverscrollHeader":Z
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 120
    .restart local v9    # "drawOverscrollFooter":Z
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 164
    .restart local v3    # "adapter":Landroid/widget/ListAdapter;
    .restart local v4    # "bottom":I
    .restart local v5    # "bounds":Landroid/graphics/Rect;
    .restart local v7    # "count":I
    .restart local v8    # "drawDividers":Z
    .restart local v11    # "effectivePaddingBottom":I
    .restart local v12    # "effectivePaddingTop":I
    .restart local v13    # "first":I
    .restart local v14    # "footerDividers":Z
    .restart local v15    # "footerLimit":I
    .restart local v16    # "headerCount":I
    .restart local v17    # "headerDividers":Z
    .restart local v18    # "i":I
    .restart local v23    # "itemCount":I
    .restart local v24    # "itemIndex":I
    .restart local v25    # "listBottom":I
    .restart local v30    # "scrollY":I
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 165
    .restart local v21    # "isHeader":Z
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 169
    .restart local v6    # "child":Landroid/view/View;
    .restart local v20    # "isFooter":Z
    :cond_e
    const/16 v22, 0x0

    goto :goto_6

    .line 190
    .end local v4    # "bottom":I
    .end local v6    # "child":Landroid/view/View;
    .end local v18    # "i":I
    .end local v20    # "isFooter":Z
    .end local v21    # "isHeader":Z
    .end local v24    # "itemIndex":I
    .end local v30    # "scrollY":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getScrollY()I

    move-result v30

    .line 191
    .restart local v30    # "scrollY":I
    if-eqz v10, :cond_15

    const/16 v31, 0x1

    .line 193
    .local v31, "start":I
    :goto_7
    move/from16 v18, v31

    .restart local v18    # "i":I
    :goto_8
    move/from16 v0, v18

    if-ge v0, v7, :cond_19

    .line 194
    add-int v24, v13, v18

    .line 195
    .restart local v24    # "itemIndex":I
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_16

    const/16 v21, 0x1

    .line 196
    .restart local v21    # "isHeader":Z
    :goto_9
    move/from16 v0, v24

    if-lt v0, v15, :cond_17

    const/16 v20, 0x1

    .line 197
    .restart local v20    # "isFooter":Z
    :goto_a
    if-nez v17, :cond_10

    if-nez v21, :cond_14

    :cond_10
    if-nez v14, :cond_11

    if-nez v20, :cond_14

    .line 198
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 199
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v32

    .line 200
    .local v32, "top":I
    if-eqz v8, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/listview/OPListView;->shouldDrawDivider(I)Z

    move-result v34

    if-eqz v34, :cond_14

    move/from16 v0, v32

    if-le v0, v12, :cond_14

    .line 201
    move/from16 v0, v18

    move/from16 v1, v31

    if-ne v0, v1, :cond_18

    const/16 v19, 0x1

    .line 202
    .local v19, "isFirstItem":Z
    :goto_b
    add-int/lit8 v29, v24, -0x1

    .line 206
    .local v29, "previousIndex":I
    if-nez v17, :cond_12

    if-nez v21, :cond_14

    move/from16 v0, v29

    move/from16 v1, v16

    if-lt v0, v1, :cond_14

    :cond_12
    if-nez v19, :cond_13

    if-nez v14, :cond_13

    if-nez v20, :cond_14

    move/from16 v0, v29

    if-ge v0, v15, :cond_14

    .line 208
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v34

    sub-int v34, v32, v34

    move/from16 v0, v34

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 209
    move/from16 v0, v32

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 214
    add-int/lit8 v34, v18, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-virtual {v0, v1, v5, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 193
    .end local v6    # "child":Landroid/view/View;
    .end local v19    # "isFirstItem":Z
    .end local v29    # "previousIndex":I
    .end local v32    # "top":I
    :cond_14
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 191
    .end local v18    # "i":I
    .end local v20    # "isFooter":Z
    .end local v21    # "isHeader":Z
    .end local v24    # "itemIndex":I
    .end local v31    # "start":I
    :cond_15
    const/16 v31, 0x0

    goto :goto_7

    .line 195
    .restart local v18    # "i":I
    .restart local v24    # "itemIndex":I
    .restart local v31    # "start":I
    :cond_16
    const/16 v21, 0x0

    goto :goto_9

    .line 196
    .restart local v21    # "isHeader":Z
    :cond_17
    const/16 v20, 0x0

    goto :goto_a

    .line 201
    .restart local v6    # "child":Landroid/view/View;
    .restart local v20    # "isFooter":Z
    .restart local v32    # "top":I
    :cond_18
    const/16 v19, 0x0

    goto :goto_b

    .line 220
    .end local v6    # "child":Landroid/view/View;
    .end local v20    # "isFooter":Z
    .end local v21    # "isHeader":Z
    .end local v24    # "itemIndex":I
    .end local v32    # "top":I
    :cond_19
    if-lez v7, :cond_1a

    if-lez v30, :cond_1a

    .line 221
    if-eqz v8, :cond_1a

    .line 222
    move/from16 v0, v25

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v34

    add-int v34, v34, v25

    move/from16 v0, v34

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 224
    const/16 v34, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-virtual {v0, v1, v5, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 232
    .end local v3    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "count":I
    .end local v11    # "effectivePaddingBottom":I
    .end local v12    # "effectivePaddingTop":I
    .end local v13    # "first":I
    .end local v14    # "footerDividers":Z
    .end local v15    # "footerLimit":I
    .end local v16    # "headerCount":I
    .end local v17    # "headerDividers":Z
    .end local v18    # "i":I
    .end local v23    # "itemCount":I
    .end local v25    # "listBottom":I
    .end local v30    # "scrollY":I
    .end local v31    # "start":I
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1b

    .line 233
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    .line 234
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->startDelDropAnimation()V

    .line 236
    :cond_1b
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 274
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v3

    add-int v2, p3, v3

    .line 275
    .local v2, "positionInAdapter":I
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerType(I)I

    move-result v1

    .line 276
    .local v1, "dividerType":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    if-eqz v3, :cond_0

    .line 277
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 279
    const/4 v3, 0x0

    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 280
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getWidth()I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->right:I

    .line 287
    :cond_0
    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 288
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 289
    return-void

    .line 281
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 283
    const/16 v3, 0x64

    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 284
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x20

    iput v3, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    return v0
.end method

.method public isDeleteAnimationEnabled()Z
    .locals 1

    .prologue
    .line 771
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsDisableAnimation:Z

    return v0
.end method

.method public setClipToPadding(Z)V
    .locals 0
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 266
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsClipToPadding:Z

    .line 267
    return-void
.end method

.method public setDelPositionsList(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "deleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 370
    if-nez p1, :cond_0

    .line 371
    iput-boolean v11, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    .line 372
    new-instance v9, Ljava/security/InvalidParameterException;

    const-string v10, "The input parameter d is null!"

    invoke-direct {v9, v10}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 374
    :cond_0
    iget-boolean v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    if-ne v9, v12, :cond_2

    .line 375
    iput-boolean v11, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    .line 482
    :cond_1
    :goto_0
    return-void

    .line 378
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->isDeleteAnimationEnabled()Z

    move-result v9

    if-nez v9, :cond_4

    .line 379
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    if-eqz v9, :cond_3

    .line 380
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v9}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    .line 381
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v9}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationStart()V

    .line 382
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v9}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationEnd()V

    .line 384
    :cond_3
    iput-boolean v11, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    goto :goto_0

    .line 388
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 389
    .local v6, "listLength":I
    if-nez v6, :cond_5

    .line 390
    iput-boolean v11, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    goto :goto_0

    .line 394
    :cond_5
    iput-boolean v12, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    .line 395
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    if-eqz v9, :cond_6

    .line 396
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v9}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationStart()V

    .line 398
    :cond_6
    iput-boolean v12, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mInDeleteAnimation:Z

    .line 399
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v9

    iput v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    .line 400
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v2

    .line 402
    .local v2, "childCount":I
    iget v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/2addr v10, v6

    if-ne v9, v10, :cond_7

    .line 403
    iput-boolean v12, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriLastPage:Z

    .line 408
    :goto_1
    iput v11, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    .line 409
    iput v11, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    .line 411
    iput v11, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    .line 412
    iput v11, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriBelowLeftCount:I

    .line 414
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    if-nez v9, :cond_8

    .line 415
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    .line 419
    :goto_2
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    if-nez v9, :cond_9

    .line 420
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    .line 424
    :goto_3
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    if-nez v9, :cond_a

    .line 425
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    .line 430
    :goto_4
    const/4 v3, 0x0

    .line 431
    .local v3, "delPos":I
    const/4 v0, 0x0

    .line 432
    .local v0, "belowDeleteCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v6, :cond_d

    .line 433
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 434
    iget v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    if-ge v3, v9, :cond_b

    .line 435
    iget v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    .line 432
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 405
    .end local v0    # "belowDeleteCount":I
    .end local v3    # "delPos":I
    .end local v4    # "i":I
    :cond_7
    iput-boolean v11, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriLastPage:Z

    goto :goto_1

    .line 417
    :cond_8
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 422
    :cond_9
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 427
    :cond_a
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    .line 436
    .restart local v0    # "belowDeleteCount":I
    .restart local v3    # "delPos":I
    .restart local v4    # "i":I
    :cond_b
    iget v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    add-int/2addr v9, v2

    if-ge v3, v9, :cond_c

    .line 437
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    iget v10, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    sub-int v10, v3, v10

    invoke-virtual {p0, v10}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    goto :goto_6

    .line 441
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 445
    :cond_d
    const/4 v5, 0x0

    .line 447
    .local v5, "isDel":Z
    iget v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-gtz v9, :cond_e

    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_f

    .line 448
    :cond_e
    const/4 v5, 0x1

    .line 450
    :cond_f
    const/4 v7, 0x0

    .line 451
    .local v7, "pos":I
    if-nez v5, :cond_10

    .line 452
    iput-boolean v11, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    .line 453
    iput-boolean v11, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mInDeleteAnimation:Z

    .line 454
    iput-boolean v11, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    .line 455
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    if-eqz v9, :cond_1

    .line 456
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v9}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    .line 457
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v9}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationEnd()V

    goto/16 :goto_0

    .line 460
    :cond_10
    const/4 v1, 0x0

    .line 461
    .local v1, "child":Landroid/view/View;
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 462
    .local v8, "size":I
    const/4 v4, 0x0

    :goto_7
    if-ge v4, v2, :cond_13

    .line 463
    if-lez v8, :cond_12

    .line 464
    iget v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    add-int v7, v9, v4

    .line 465
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 466
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 467
    if-eqz v1, :cond_11

    .line 468
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_11
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 471
    :cond_12
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 472
    if-eqz v1, :cond_11

    .line 473
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 477
    :cond_13
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v9

    iget v10, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    .line 478
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getLastVisiblePosition()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v0

    iput v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriBelowLeftCount:I

    .line 480
    invoke-direct {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->startDelGoneAnimation()V

    goto/16 :goto_0
.end method

.method public setDeleteAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 768
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsDisableAnimation:Z

    .line 769
    return-void
.end method

.method public setDeleteAnimationListener(Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    .line 367
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 250
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->requestLayout()V

    .line 251
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->invalidate()V

    .line 252
    return-void
.end method

.method public setDividerController(Lcom/oneplus/lib/widget/listview/IOPDividerController;)V
    .locals 0
    .param p1, "dividerController"    # Lcom/oneplus/lib/widget/listview/IOPDividerController;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    .line 301
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mFooterDividersEnabled:Z

    .line 110
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mHeaderDividersEnabled:Z

    .line 106
    return-void
.end method
