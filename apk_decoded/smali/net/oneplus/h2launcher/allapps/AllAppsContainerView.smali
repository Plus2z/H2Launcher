.class public Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;
.super Lnet/oneplus/h2launcher/BaseContainerView;
.source "AllAppsContainerView.java"

# interfaces
.implements Lnet/oneplus/h2launcher/DragSource;
.implements Lnet/oneplus/h2launcher/LauncherTransitionable;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;


# static fields
.field private static final MAX_NUM_MERGES_PHONE:I = 0x2

.field private static final MIN_ROWS_IN_MERGED_SECTION_PHONE:I = 0x3


# instance fields
.field private mAdapter:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

.field mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

.field mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

.field private final mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

.field mContainerView:Landroid/view/View;

.field mContent:Landroid/view/View;

.field private final mContentBounds:Landroid/graphics/Rect;

.field private mFirstInitialized:Z

.field private final mIconLastTouchPos:Landroid/graphics/Point;

.field private mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

.field mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mNumAppsPerRow:I

.field private mNumPredictedAppsPerRow:I

.field private mRecyclerViewTopBottomPadding:I

.field mRevealView:Landroid/view/View;

.field private mSearchBarContainerView:Landroid/view/ViewGroup;

.field mSearchBarController:Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;

.field private mSearchBarView:Landroid/view/View;

.field private mSearchClickListener:Landroid/view/View$OnClickListener;

.field private mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

.field private mSectionNamesMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, -0x1

    .line 189
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mContentBounds:Landroid/graphics/Rect;

    .line 166
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    .line 168
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mIconLastTouchPos:Landroid/graphics/Point;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mFirstInitialized:Z

    .line 172
    new-instance v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView$1;-><init>(Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchClickListener:Landroid/view/View$OnClickListener;

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .local v6, "res":Landroid/content/res/Resources;
    move-object v0, p1

    .line 192
    check-cast v0, Lnet/oneplus/h2launcher/Launcher;

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 193
    const v0, 0x7f0c0162

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSectionNamesMargin:I

    .line 194
    new-instance v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    .line 195
    new-instance v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object v3, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;-><init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAdapter:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    .line 196
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAdapter:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->setAdapter(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;)V

    .line 197
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAdapter:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->getLayoutManager()Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 198
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAdapter:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 199
    const v0, 0x7f0c01cc

    .line 200
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mRecyclerViewTopBottomPadding:I

    .line 202
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 203
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 204
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 632
    iget-object v9, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v3

    .line 633
    .local v3, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 634
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 636
    .local v8, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 673
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v9, 0x0

    :goto_1
    return v9

    .line 638
    :pswitch_1
    iget-object v9, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 640
    new-instance v5, Landroid/graphics/Rect;

    iget-object v9, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mContentBounds:Landroid/graphics/Rect;

    invoke-direct {v5, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 641
    .local v5, "tmpRect":Landroid/graphics/Rect;
    iget v9, v3, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsIconSizePx:I

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->inset(II)V

    .line 642
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, v5, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, v5, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    .line 643
    :cond_1
    iget-object v9, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 644
    const/4 v9, 0x1

    goto :goto_1

    .line 648
    .end local v5    # "tmpRect":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_3

    .line 649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    .line 650
    :cond_3
    iget-object v9, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 651
    const/4 v9, 0x1

    goto :goto_1

    .line 656
    :pswitch_2
    iget-object v9, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    const/4 v10, -0x1

    if-le v9, v10, :cond_4

    .line 657
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 658
    .local v6, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    sub-float v1, v9, v10

    .line 659
    .local v1, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget-object v10, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    sub-float v2, v9, v10

    .line 660
    .local v2, "dy":F
    float-to-double v10, v1

    float-to-double v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v0, v10

    .line 661
    .local v0, "distance":F
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v0, v9

    if-gez v9, :cond_4

    .line 663
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/Launcher;

    .line 664
    .local v4, "launcher":Lnet/oneplus/h2launcher/Launcher;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(Z)V

    .line 665
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 670
    .end local v0    # "distance":F
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v4    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    .end local v6    # "viewConfig":Landroid/view/ViewConfiguration;
    :cond_4
    :pswitch_3
    iget-object v9, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0

    .line 636
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateNumAppsPerRow(Lnet/oneplus/h2launcher/DeviceProfile;)V
    .locals 5
    .param p1, "grid"    # Lnet/oneplus/h2launcher/DeviceProfile;

    .prologue
    .line 393
    iget v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    iget v3, p1, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsNumCols:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mNumPredictedAppsPerRow:I

    iget v3, p1, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsNumPredictiveCols:I

    if-eq v2, v3, :cond_2

    .line 395
    :cond_0
    iget v2, p1, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsNumCols:I

    iput v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    .line 396
    iget v2, p1, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsNumPredictiveCols:I

    iput v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mNumPredictedAppsPerRow:I

    .line 400
    iget v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSectionNamesMargin:I

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Lnet/oneplus/h2launcher/DeviceProfile;->isPhone:Z

    if-nez v2, :cond_3

    :cond_1
    const/4 v1, 0x1

    .line 401
    .local v1, "mergeSectionsFully":Z
    :goto_0
    if-eqz v1, :cond_4

    new-instance v0, Lnet/oneplus/h2launcher/allapps/FullMergeAlgorithm;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/allapps/FullMergeAlgorithm;-><init>()V

    .line 406
    .local v0, "mergeAlgorithm":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$MergeAlgorithm;
    :goto_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    iget v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    invoke-virtual {v2, p1, v3}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->setNumAppsPerRow(Lnet/oneplus/h2launcher/DeviceProfile;I)V

    .line 407
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAdapter:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->setNumAppsPerRow(I)V

    .line 408
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    iget v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    iget v4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mNumPredictedAppsPerRow:I

    invoke-virtual {v2, v3, v4, v0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->setNumAppsPerRow(IILnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$MergeAlgorithm;)V

    .line 410
    .end local v0    # "mergeAlgorithm":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$MergeAlgorithm;
    .end local v1    # "mergeSectionsFully":Z
    :cond_2
    return-void

    .line 400
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 401
    .restart local v1    # "mergeSectionsFully":Z
    :cond_4
    new-instance v0, Lnet/oneplus/h2launcher/allapps/SimpleSectionMergeAlgorithm;

    iget v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 403
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Lnet/oneplus/h2launcher/allapps/SimpleSectionMergeAlgorithm;-><init>(III)V

    goto :goto_1
.end method


# virtual methods
.method public addApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/AppInfo;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->addApps(Ljava/util/List;)V

    .line 225
    return-void
.end method

.method public clearSearchResult()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)V

    .line 688
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->onSearchResultsChanged()V

    .line 691
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 692
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 693
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 694
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 477
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarController:Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;->isSearchFieldFocused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 478
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 479
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 480
    .local v2, "unicodeChar":I
    if-lez v2, :cond_1

    .line 481
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 482
    .local v1, "isKeyNotWhitespace":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 483
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 484
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 483
    invoke-virtual {v3, p0, v4, v5, p1}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 485
    .local v0, "gotKey":Z
    if-eqz v0, :cond_0

    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 486
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarController:Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;->focusSearchField()V

    .line 491
    .end local v0    # "gotKey":Z
    .end local v1    # "isKeyNotWhitespace":Z
    .end local v2    # "unicodeChar":I
    :cond_0
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/BaseContainerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 481
    .restart local v2    # "unicodeChar":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableScrollBar(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 709
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->enableScrollBar(Z)V

    .line 710
    return-void
.end method

.method public getAdapter()Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAdapter:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    return-object v0
.end method

.method public getApps()Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    return-object v0
.end method

.method public getAppsRecyclerView()Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mContainerView:Landroid/view/View;

    return-object v0
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 3

    .prologue
    .line 557
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    .line 558
    .local v0, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    iget v1, v0, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v1, v1

    iget v2, v0, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    return v1
.end method

.method public getRevealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mRevealView:Landroid/view/View;

    return-object v0
.end method

.method public getSearchBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarView:Landroid/view/View;

    return-object v0
.end method

.method public isFirstInitialized()Z
    .locals 1

    .prologue
    .line 701
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mFirstInitialized:Z

    return v0
.end method

.method public newDefaultAppSearchController()Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;
    .locals 3

    .prologue
    .line 304
    new-instance v0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    invoke-direct {v0, v1, p0, v2}, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;)V

    return-object v0
.end method

.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "newBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 354
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/Launcher;->updateOverlayBounds(Landroid/graphics/Rect;)V

    .line 355
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lnet/oneplus/h2launcher/DropTarget$DragObject;ZZ)V
    .locals 10
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;
    .param p3, "isFlingToDelete"    # Z
    .param p4, "success"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 572
    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    iget-object v7, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v7

    if-eq p1, v7, :cond_1

    instance-of v7, p1, Lnet/oneplus/h2launcher/DeleteDropTarget;

    if-nez v7, :cond_1

    instance-of v7, p1, Lnet/oneplus/h2launcher/Folder;

    if-nez v7, :cond_1

    .line 576
    :cond_0
    iget-object v7, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/16 v8, 0x12c

    invoke-virtual {v7, v5, v8, v9}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 579
    :cond_1
    iget-object v7, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7, v6}, Lnet/oneplus/h2launcher/Launcher;->unlockScreenOrientation(Z)V

    .line 583
    if-nez p4, :cond_4

    .line 584
    const/4 v3, 0x0

    .line 585
    .local v3, "showOutOfSpaceMessage":Z
    instance-of v7, p1, Lnet/oneplus/h2launcher/Workspace;

    if-eqz v7, :cond_2

    .line 586
    iget-object v7, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getCurrentWorkspaceScreen()I

    move-result v0

    .local v0, "currentScreen":I
    move-object v4, p1

    .line 587
    check-cast v4, Lnet/oneplus/h2launcher/Workspace;

    .line 588
    .local v4, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/CellLayout;

    .line 589
    .local v2, "layout":Lnet/oneplus/h2launcher/CellLayout;
    iget-object v1, p2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lnet/oneplus/h2launcher/ItemInfo;

    .line 590
    .local v1, "itemInfo":Lnet/oneplus/h2launcher/ItemInfo;
    if-eqz v2, :cond_2

    .line 591
    iget v7, v1, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    iget v8, v1, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    .line 592
    invoke-virtual {v2, v9, v7, v8}, Lnet/oneplus/h2launcher/CellLayout;->findCellForSpan([III)Z

    move-result v7

    if-nez v7, :cond_5

    move v3, v5

    .line 595
    .end local v0    # "currentScreen":I
    .end local v1    # "itemInfo":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v2    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    .end local v4    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 596
    iget-object v5, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/Launcher;->showOutOfSpaceMessage(Z)V

    .line 599
    :cond_3
    iput-boolean v6, p2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 601
    .end local v3    # "showOutOfSpaceMessage":Z
    :cond_4
    return-void

    .restart local v0    # "currentScreen":I
    .restart local v1    # "itemInfo":Lnet/oneplus/h2launcher/ItemInfo;
    .restart local v2    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    .restart local v3    # "showOutOfSpaceMessage":Z
    .restart local v4    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    :cond_5
    move v3, v6

    .line 592
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 318
    invoke-super {p0}, Lnet/oneplus/h2launcher/BaseContainerView;->onFinishInflate()V

    .line 319
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    .line 320
    .local v1, "isRtl":Z
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAdapter:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->setRtl(Z)V

    .line 321
    const v2, 0x7f1100bc

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mContent:Landroid/view/View;

    .line 325
    new-instance v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView$2;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView$2;-><init>(Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;)V

    .line 333
    .local v0, "focusProxyListener":Landroid/view/View$OnFocusChangeListener;
    const v2, 0x7f1100bb

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    .line 334
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 335
    const v2, 0x7f1100be

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mContainerView:Landroid/view/View;

    .line 336
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mContainerView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 337
    const v2, 0x7f1100bd

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mRevealView:Landroid/view/View;

    .line 340
    const v2, 0x7f1100bf

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    iput-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    .line 341
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->setApps(Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;)V

    .line 342
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 343
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAdapter:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 344
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->setHasFixedSize(Z)V

    .line 345
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    if-eqz v2, :cond_0

    .line 346
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 349
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->updateBackgroundAndPaddings()V

    .line 350
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 4

    .prologue
    .line 564
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v1, 0x1

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 566
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->unlockScreenOrientation(Z)V

    .line 567
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLauncherTransitionEnd(Lnet/oneplus/h2launcher/Launcher;ZZ)V
    .locals 1
    .param p1, "l"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 620
    if-eqz p3, :cond_0

    .line 622
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarController:Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;->reset()V

    .line 623
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->reset()V

    .line 625
    :cond_0
    return-void
.end method

.method public onLauncherTransitionPrepare(Lnet/oneplus/h2launcher/Launcher;ZZ)V
    .locals 0
    .param p1, "l"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 606
    return-void
.end method

.method public onLauncherTransitionStart(Lnet/oneplus/h2launcher/Launcher;ZZ)V
    .locals 0
    .param p1, "l"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 611
    return-void
.end method

.method public onLauncherTransitionStep(Lnet/oneplus/h2launcher/Launcher;F)V
    .locals 0
    .param p1, "l"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "t"    # F

    .prologue
    .line 616
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 520
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 532
    :cond_0
    :goto_0
    return v2

    .line 522
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 523
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mIconLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {v0, p1, v1, p0, v2}, Lnet/oneplus/h2launcher/Workspace;->beginDragShared(Landroid/view/View;Landroid/graphics/Point;Lnet/oneplus/h2launcher/DragSource;Z)V

    .line 530
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->enterSpringLoadedDragMode()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 359
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mContentBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mContentPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mContentPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 360
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mContentPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 361
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iget-object v7, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mContentPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    .line 359
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 364
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 366
    .local v0, "availableWidth":I
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v1

    .line 367
    .local v1, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->updateNumAppsPerRow(Lnet/oneplus/h2launcher/DeviceProfile;)V

    .line 369
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/BaseContainerView;->onMeasure(II)V

    .line 370
    return-void

    .line 365
    .end local v0    # "availableWidth":I
    .end local v1    # "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/util/ComponentKey;>;"
    if-eqz p2, :cond_0

    .line 679
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)V

    .line 680
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAdapter:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->setLastSearchQuery(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->onSearchResultsChanged()V

    .line 683
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 508
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 514
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 511
    :pswitch_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mIconLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 16
    .param p1, "searchBarBounds"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 419
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v11

    .line 422
    .local v11, "isRtl":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const v3, 0x7f0e029d

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Launcher;->getColor(I)I

    move-result v7

    .line 423
    .local v7, "backgroundColor":I
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const v3, 0x7f0201a7

    .line 424
    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 426
    .local v1, "background":Landroid/graphics/drawable/InsetDrawable;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 427
    .local v9, "bgPadding":Landroid/graphics/Rect;
    invoke-virtual {v1, v9}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 428
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v7, v2}, Landroid/graphics/drawable/InsetDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mContainerView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 430
    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 431
    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 432
    .local v10, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v7, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mRevealView:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 435
    .end local v10    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v2, v9}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->updateBackgroundPadding(Landroid/graphics/Rect;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAdapter:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v2, v9}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->updateBackgroundPadding(Landroid/graphics/Rect;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mContent:Landroid/view/View;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mContainerView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 446
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSectionNamesMargin:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getMaxScrollbarWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 447
    .local v14, "startInset":I
    move-object/from16 v0, p0

    iget v15, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mRecyclerViewTopBottomPadding:I

    .line 448
    .local v15, "topBottomPadding":I
    if-eqz v11, :cond_3

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getMaxScrollbarWidth()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v14

    invoke-virtual {v2, v3, v15, v4, v15}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->setPadding(IIII)V

    .line 457
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 458
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 459
    .local v8, "backgroundPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 461
    .local v13, "searchBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 462
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v7, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 464
    .end local v13    # "searchBackground":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    .line 465
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 466
    .local v12, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 467
    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 468
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    .line 471
    .end local v8    # "backgroundPadding":Landroid/graphics/Rect;
    .end local v12    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    return-void

    .line 452
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v14

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    .line 453
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getMaxScrollbarWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 452
    invoke-virtual {v2, v3, v15, v4, v15}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public removeApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/AppInfo;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->removeApps(Ljava/util/List;)V

    .line 239
    return-void
.end method

.method public scrollToTop()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->scrollToTop()V

    .line 266
    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/AppInfo;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->setApps(Ljava/util/List;)V

    .line 218
    return-void
.end method

.method public setFirstInitialized(Z)V
    .locals 0
    .param p1, "firstInitialized"    # Z

    .prologue
    .line 705
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mFirstInitialized:Z

    .line 706
    return-void
.end method

.method public setPredictedApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/util/ComponentKey;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->setPredictedApps(Ljava/util/List;)V

    .line 211
    return-void
.end method

.method public setSearchBarController(Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;)V
    .locals 3
    .param p1, "searchController"    # Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;

    .prologue
    .line 245
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarController:Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;

    if-eqz v1, :cond_0

    .line 246
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Expected search bar controller to only be set once"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_0
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarController:Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;

    .line 249
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarController:Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;

    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v1, v2, p0}, Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;->initialize(Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;)V

    .line 252
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;->getView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, "searchBarView":Landroid/view/View;
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 254
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 255
    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarView:Landroid/view/View;

    .line 256
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->setHasSearchBar()V

    .line 258
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->updateBackgroundAndPaddings()V

    .line 259
    return-void
.end method

.method public startAppsSearch()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarController:Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mSearchBarController:Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;->focusSearchField()V

    .line 314
    :cond_0
    return-void
.end method

.method public supportsAppInfoDropTarget()Z
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x1

    return v0
.end method

.method public supportsDeleteDropTarget()Z
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method public supportsEditDropTarget()Z
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x1

    return v0
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x1

    return v0
.end method

.method public updateAllAppsEntries(Lnet/oneplus/h2launcher/AssetCache;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "updateLabels"    # Z

    .prologue
    .line 374
    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    .line 375
    .local v1, "applications":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 376
    .local v3, "itemIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 377
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 378
    .local v0, "adapterItem":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lnet/oneplus/h2launcher/AppInfo;

    .line 379
    .local v2, "info":Lnet/oneplus/h2launcher/AppInfo;
    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    iget-object v4, v2, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 380
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 381
    :cond_1
    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/AppInfo;->updateIcon(Lnet/oneplus/h2launcher/AssetCache;)V

    .line 382
    if-eqz p3, :cond_0

    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/AppInfo;->updateLabel(Lnet/oneplus/h2launcher/AssetCache;)V

    goto :goto_0

    .line 385
    .end local v0    # "adapterItem":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .end local v2    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :cond_2
    return-void
.end method

.method public updateAllAppsFromCustomizations()V
    .locals 2

    .prologue
    .line 388
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    .line 389
    .local v0, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->updateNumAppsPerRow(Lnet/oneplus/h2launcher/DeviceProfile;)V

    .line 390
    return-void
.end method

.method public updateApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/AppInfo;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->updateApps(Ljava/util/List;)V

    .line 232
    return-void
.end method
