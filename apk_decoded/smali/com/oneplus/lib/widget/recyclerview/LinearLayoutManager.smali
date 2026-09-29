.class public Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ViewDropHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;,
        Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;,
        Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;,
        Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

.field private mLastStackFromEnd:Z

.field private mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

.field mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;-><init>()V

    .line 96
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    .line 103
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 110
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    .line 128
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    .line 138
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .line 156
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    .line 157
    invoke-virtual {p0, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setReverseLayout(Z)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;-><init>()V

    .line 96
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    .line 103
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 110
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    .line 116
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 122
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    .line 128
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    .line 138
    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .line 170
    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 171
    .local v0, "properties":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    .line 172
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setReverseLayout(Z)V

    .line 173
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 174
    return-void
.end method

.method private computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 6
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1064
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    :goto_0
    return v4

    .line 1067
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 1068
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    move v0, v3

    .line 1069
    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v4, v3

    .line 1070
    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1068
    invoke-static/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 7
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1053
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1057
    :goto_0
    return v4

    .line 1056
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 1057
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    move v0, v3

    .line 1058
    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v4, v3

    .line 1059
    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v4, p0

    .line 1057
    invoke-static/range {v0 .. v6}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;ZZ)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 6
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1075
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1079
    :goto_0
    return v4

    .line 1078
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 1079
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    move v0, v3

    .line 1080
    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v4, v3

    .line 1081
    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1079
    invoke-static/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4
    .param p1, "focusDirection"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/high16 v1, -0x80000000

    .line 1454
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1475
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v2

    .line 1458
    goto :goto_0

    .line 1460
    :sswitch_2
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1463
    :sswitch_3
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1466
    :sswitch_4
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1469
    :sswitch_5
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_2

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    .line 1454
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private findFirstReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 6
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 1571
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1527
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1528
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1531
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1509
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1510
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1513
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findLastReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 6
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 1575
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findReferenceChildClosestToEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 1549
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 1550
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findLastReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findReferenceChildClosestToStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 1566
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findLastReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 1567
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private fixLayoutEndGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I
    .locals 3
    .param p1, "endOffset"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .prologue
    .line 849
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v1, v2, p1

    .line 850
    .local v1, "gap":I
    const/4 v0, 0x0

    .line 851
    .local v0, "fixOffset":I
    if-lez v1, :cond_0

    .line 852
    neg-int v2, v1

    invoke-virtual {p0, v2, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v2

    neg-int v0, v2

    .line 857
    add-int/2addr p1, v0

    .line 858
    if-eqz p4, :cond_1

    .line 860
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v1, v2, p1

    .line 861
    if-lez v1, :cond_1

    .line 862
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    .line 863
    add-int v2, v1, v0

    .line 866
    :goto_0
    return v2

    .line 854
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 866
    goto :goto_0
.end method

.method private fixLayoutStartGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I
    .locals 4
    .param p1, "startOffset"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .prologue
    .line 874
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v1, p1, v2

    .line 875
    .local v1, "gap":I
    const/4 v0, 0x0

    .line 876
    .local v0, "fixOffset":I
    if-lez v1, :cond_0

    .line 878
    invoke-virtual {p0, v1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v2

    neg-int v0, v2

    .line 882
    add-int/2addr p1, v0

    .line 883
    if-eqz p4, :cond_1

    .line 885
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v1, p1, v2

    .line 886
    if-lez v1, :cond_1

    .line 887
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    .line 888
    sub-int v2, v0, v1

    .line 891
    :goto_0
    return v2

    .line 880
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 891
    goto :goto_0
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .prologue
    .line 1497
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .prologue
    .line 1487
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutForPredictiveAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;II)V
    .locals 13
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "startOffset"    # I
    .param p4, "endOffset"    # I

    .prologue
    .line 643
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v11

    if-nez v11, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v11

    if-nez v11, :cond_1

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    const/4 v8, 0x0

    .local v8, "scrapExtraStart":I
    const/4 v7, 0x0

    .line 649
    .local v7, "scrapExtraEnd":I
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v9

    .line 650
    .local v9, "scrapList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 651
    .local v10, "scrapSize":I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 652
    .local v3, "firstChildPos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v10, :cond_6

    .line 653
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 654
    .local v6, "scrap":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 652
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 657
    :cond_2
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    .line 658
    .local v5, "position":I
    if-ge v5, v3, :cond_3

    const/4 v11, 0x1

    :goto_3
    iget-boolean v12, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v11, v12, :cond_4

    const/4 v2, -0x1

    .line 660
    .local v2, "direction":I
    :goto_4
    const/4 v11, -0x1

    if-ne v2, v11, :cond_5

    .line 661
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-object v12, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    add-int/2addr v8, v11

    goto :goto_2

    .line 658
    .end local v2    # "direction":I
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    goto :goto_4

    .line 663
    .restart local v2    # "direction":I
    :cond_5
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-object v12, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    add-int/2addr v7, v11

    goto :goto_2

    .line 671
    .end local v2    # "direction":I
    .end local v5    # "position":I
    .end local v6    # "scrap":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_6
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput-object v9, v11, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 672
    if-lez v8, :cond_7

    .line 673
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 674
    .local v1, "anchor":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move/from16 v0, p3

    invoke-direct {p0, v11, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 675
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v8, v11, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 676
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput v12, v11, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 677
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {v11}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 678
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, p2, v12}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    .line 681
    .end local v1    # "anchor":Landroid/view/View;
    :cond_7
    if-lez v7, :cond_8

    .line 682
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 683
    .restart local v1    # "anchor":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move/from16 v0, p4

    invoke-direct {p0, v11, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 684
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v7, v11, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 685
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput v12, v11, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 686
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {v11}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 687
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, p2, v12}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    .line 689
    .end local v1    # "anchor":Landroid/view/View;
    :cond_8
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    goto/16 :goto_0
.end method

.method private logChildren()V
    .locals 5

    .prologue
    .line 1763
    const-string v2, "LinearLayoutManager"

    const-string v3, "internal representation of views on the screen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1765
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1766
    .local v0, "child":Landroid/view/View;
    const-string v2, "LinearLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", coord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1767
    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1766
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1769
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    const-string v2, "LinearLayoutManager"

    const-string v3, "=============="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    return-void
.end method

.method private recycleByLayoutState(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;)V
    .locals 2
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    .prologue
    .line 1298
    iget-boolean v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mRecycle:Z

    if-nez v0, :cond_0

    .line 1306
    :goto_0
    return-void

    .line 1301
    :cond_0
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1302
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleViewsFromEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1304
    :cond_1
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleViewsFromStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V

    goto :goto_0
.end method

.method private recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V
    .locals 1
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 1192
    if-ne p2, p3, :cond_1

    .line 1207
    :cond_0
    return-void

    .line 1198
    :cond_1
    if-le p3, p2, :cond_2

    .line 1199
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 1200
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->removeAndRecycleViewAt(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 1199
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1203
    .end local v0    # "i":I
    :cond_2
    move v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-le v0, p3, :cond_0

    .line 1204
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->removeAndRecycleViewAt(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 1203
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private recycleViewsFromEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "dt"    # I

    .prologue
    .line 1257
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 1258
    .local v1, "childCount":I
    if-gez p2, :cond_1

    .line 1284
    :cond_0
    :goto_0
    return-void

    .line 1265
    :cond_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEnd()I

    move-result v4

    sub-int v3, v4, p2

    .line 1266
    .local v3, "limit":I
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_3

    .line 1267
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 1268
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1269
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 1270
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 1267
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1275
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_0

    .line 1276
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1277
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_4

    .line 1278
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 1275
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method private recycleViewsFromStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "dt"    # I

    .prologue
    .line 1218
    if-gez p2, :cond_1

    .line 1245
    :cond_0
    :goto_0
    return-void

    .line 1226
    :cond_1
    move v3, p2

    .line 1227
    .local v3, "limit":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 1228
    .local v1, "childCount":I
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_3

    .line 1229
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_0

    .line 1230
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1231
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-le v4, v3, :cond_2

    .line 1232
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 1229
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1237
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_0

    .line 1238
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1239
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-le v4, v3, :cond_4

    .line 1240
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 1237
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 341
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateAnchorFromChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)Z
    .locals 7
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 722
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 755
    :cond_0
    :goto_0
    return v3

    .line 725
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 726
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-static {p3, v0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->access$000(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 727
    invoke-virtual {p3, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;)V

    move v3, v4

    .line 728
    goto :goto_0

    .line 730
    :cond_2
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v5, v6, :cond_0

    .line 733
    iget-boolean v5, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_5

    .line 734
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    .line 736
    .local v2, "referenceChild":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_0

    .line 737
    invoke-virtual {p3, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 740
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 742
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 743
    invoke-virtual {v5, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 744
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 745
    invoke-virtual {v5, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 746
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    if-ge v5, v6, :cond_6

    :cond_3
    move v1, v4

    .line 747
    .local v1, "notVisible":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 748
    iget-boolean v3, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 749
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 750
    :goto_3
    iput v3, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .end local v1    # "notVisible":Z
    :cond_4
    move v3, v4

    .line 753
    goto :goto_0

    .line 735
    .end local v2    # "referenceChild":Landroid/view/View;
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChildClosestToStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .restart local v2    # "referenceChild":Landroid/view/View;
    :cond_6
    move v1, v3

    .line 746
    goto :goto_2

    .line 749
    .restart local v1    # "notVisible":Z
    :cond_7
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 750
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    goto :goto_3
.end method

.method private updateAnchorFromPendingData(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)Z
    .locals 11
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .prologue
    const/4 v10, -0x1

    const/high16 v9, -0x80000000

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 763
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v5, v10, :cond_1

    :cond_0
    move v6, v7

    .line 841
    :goto_0
    return v6

    .line 767
    :cond_1
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v8

    if-lt v5, v8, :cond_3

    .line 768
    :cond_2
    iput v10, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    .line 769
    iput v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move v6, v7

    .line 773
    goto :goto_0

    .line 778
    :cond_3
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    iput v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 779
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 782
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iget-boolean v5, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 783
    iget-boolean v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_4

    .line 784
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr v5, v7

    iput v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 787
    :cond_4
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v5, v7

    iput v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 793
    :cond_5
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v5, v9, :cond_e

    .line 794
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 795
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_a

    .line 796
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    .line 797
    .local v1, "childSize":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v5

    if-le v1, v5, :cond_6

    .line 799
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto :goto_0

    .line 802
    :cond_6
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 803
    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int v4, v5, v8

    .line 804
    .local v4, "startGap":I
    if-gez v4, :cond_7

    .line 805
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    iput v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 806
    iput-boolean v7, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto/16 :goto_0

    .line 809
    :cond_7
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 810
    invoke-virtual {v7, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    sub-int v2, v5, v7

    .line 811
    .local v2, "endGap":I
    if-gez v2, :cond_8

    .line 812
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iput v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 813
    iput-boolean v6, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto/16 :goto_0

    .line 816
    :cond_8
    iget-boolean v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 817
    invoke-virtual {v5, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 818
    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpaceChange()I

    move-result v7

    add-int/2addr v5, v7

    .line 819
    :goto_1
    iput v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0

    .line 818
    :cond_9
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 819
    invoke-virtual {v5, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    goto :goto_1

    .line 821
    .end local v1    # "childSize":I
    .end local v2    # "endGap":I
    .end local v4    # "startGap":I
    :cond_a
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_c

    .line 823
    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 824
    .local v3, "pos":I
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    if-ge v5, v3, :cond_d

    move v5, v6

    :goto_2
    iget-boolean v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v5, v8, :cond_b

    move v7, v6

    :cond_b
    iput-boolean v7, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 827
    .end local v3    # "pos":I
    :cond_c
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto/16 :goto_0

    .restart local v3    # "pos":I
    :cond_d
    move v5, v7

    .line 824
    goto :goto_2

    .line 832
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "pos":I
    :cond_e
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 834
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_f

    .line 835
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v5, v7

    iput v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0

    .line 838
    :cond_f
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    iget v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v5, v7

    iput v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0
.end method

.method private updateAnchorInfoForLayout(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 1
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .prologue
    .line 694
    invoke-direct {p0, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateAnchorFromPendingData(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateAnchorFromChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    invoke-virtual {p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 711
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateLayoutState(IIZLcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 7
    .param p1, "layoutDirection"    # I
    .param p2, "requiredSpace"    # I
    .param p3, "canUseExistingSpace"    # Z
    .param p4, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 1119
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getExtraLayoutSpace(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v5

    iput v5, v4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1120
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p1, v4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 1122
    if-ne p1, v3, :cond_2

    .line 1123
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndPadding()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1125
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v0

    .line 1127
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_1

    :goto_0
    iput v2, v4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1129
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v4, v4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1130
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1132
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1133
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int v1, v2, v3

    .line 1145
    .local v1, "fastScrollSpace":I
    :goto_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p2, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1146
    if-eqz p3, :cond_0

    .line 1147
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1149
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v1, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1150
    return-void

    .end local v1    # "fastScrollSpace":I
    :cond_1
    move v2, v3

    .line 1127
    goto :goto_0

    .line 1136
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v0

    .line 1137
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1138
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_3

    :goto_2
    iput v3, v4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1140
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v4, v4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1141
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1142
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1143
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int v1, v2, v3

    .restart local v1    # "fastScrollSpace":I
    goto :goto_1

    .end local v1    # "fastScrollSpace":I
    :cond_3
    move v3, v2

    .line 1138
    goto :goto_2
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x1

    .line 899
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 900
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 902
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 903
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 904
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 905
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 906
    return-void

    :cond_0
    move v0, v1

    .line 900
    goto :goto_0
.end method

.method private updateLayoutStateToFillEnd(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .prologue
    .line 895
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 896
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v1, -0x1

    .line 913
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 914
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 915
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 917
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 918
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 919
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 921
    return-void

    :cond_0
    move v0, v1

    .line 915
    goto :goto_0
.end method

.method private updateLayoutStateToFillStart(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .prologue
    .line 909
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 910
    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1181
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1183
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 286
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 1034
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 1024
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 1044
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 6
    .param p1, "targetPosition"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 438
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 439
    const/4 v2, 0x0

    .line 446
    :goto_0
    return-object v2

    .line 441
    :cond_0
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 442
    .local v1, "firstChildPos":I
    if-ge p1, v1, :cond_1

    move v2, v3

    :cond_1
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v2, v4, :cond_2

    const/4 v0, -0x1

    .line 443
    .local v0, "direction":I
    :goto_1
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_3

    .line 444
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .end local v0    # "direction":I
    :cond_2
    move v0, v3

    .line 442
    goto :goto_1

    .line 446
    .restart local v0    # "direction":I
    :cond_3
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v2, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public computeVerticalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 1039
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 1029
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 1049
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method createLayoutState()Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;
    .locals 1

    .prologue
    .line 942
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;-><init>()V

    return-object v0
.end method

.method ensureLayoutState()V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    if-nez v0, :cond_0

    .line 929
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->createLayoutState()Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    if-nez v0, :cond_1

    .line 932
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->createOrientationHelper(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;I)Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 934
    :cond_1
    return-void
.end method

.method fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I
    .locals 7
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p4, "stopOnFocusable"    # Z

    .prologue
    const/high16 v6, -0x80000000

    .line 1322
    iget v2, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1323
    .local v2, "start":I
    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v3, v6, :cond_1

    .line 1325
    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v3, :cond_0

    .line 1326
    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1328
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleByLayoutState(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;)V

    .line 1330
    :cond_1
    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    add-int v1, v3, v4

    .line 1331
    .local v1, "remainingSpace":I
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;-><init>()V

    .line 1332
    .local v0, "layoutChunkResult":Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;
    :cond_2
    if-lez v1, :cond_3

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->hasMore(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1333
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1334
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->layoutChunk(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;)V

    .line 1335
    iget-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v3, :cond_4

    .line 1366
    :cond_3
    :goto_0
    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int v3, v2, v3

    return v3

    .line 1338
    :cond_4
    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1345
    iget-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v3, :cond_5

    .line 1346
    invoke-virtual {p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1347
    :cond_5
    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v3, v4

    iput v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1349
    iget v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v1, v3

    .line 1352
    :cond_6
    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v3, v6, :cond_8

    .line 1353
    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1354
    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v3, :cond_7

    .line 1355
    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1357
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleByLayoutState(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;)V

    .line 1359
    :cond_8
    if-eqz p4, :cond_2

    iget-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1644
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1645
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1627
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v1, v3, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1628
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1684
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1685
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1667
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1668
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 9
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z
    .param p4, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1690
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 1691
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    .line 1692
    .local v7, "start":I
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 1693
    .local v3, "end":I
    if-le p2, p1, :cond_1

    const/4 v5, 0x1

    .line 1694
    .local v5, "next":I
    :goto_0
    const/4 v6, 0x0

    .line 1695
    .local v6, "partiallyVisible":Landroid/view/View;
    move v4, p1

    .local v4, "i":I
    :goto_1
    if-eq v4, p2, :cond_4

    .line 1696
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1697
    .local v0, "child":Landroid/view/View;
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 1698
    .local v2, "childStart":I
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    .line 1699
    .local v1, "childEnd":I
    if-ge v2, v3, :cond_3

    if-le v1, v7, :cond_3

    .line 1700
    if-eqz p3, :cond_0

    .line 1701
    if-lt v2, v7, :cond_2

    if-gt v1, v3, :cond_2

    .line 1711
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childEnd":I
    .end local v2    # "childStart":I
    :cond_0
    :goto_2
    return-object v0

    .line 1693
    .end local v4    # "i":I
    .end local v5    # "next":I
    .end local v6    # "partiallyVisible":Landroid/view/View;
    :cond_1
    const/4 v5, -0x1

    goto :goto_0

    .line 1703
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childEnd":I
    .restart local v2    # "childStart":I
    .restart local v4    # "i":I
    .restart local v5    # "next":I
    .restart local v6    # "partiallyVisible":Landroid/view/View;
    :cond_2
    if-eqz p4, :cond_3

    if-nez v6, :cond_3

    .line 1704
    move-object v6, v0

    .line 1695
    :cond_3
    add-int/2addr v4, v5

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childEnd":I
    .end local v2    # "childStart":I
    :cond_4
    move-object v0, v6

    .line 1711
    goto :goto_2
.end method

.method findReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;III)Landroid/view/View;
    .locals 9
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .prologue
    .line 1581
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 1582
    const/4 v4, 0x0

    .line 1583
    .local v4, "invalidMatch":Landroid/view/View;
    const/4 v5, 0x0

    .line 1584
    .local v5, "outOfBoundsMatch":Landroid/view/View;
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 1585
    .local v1, "boundsStart":I
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 1586
    .local v0, "boundsEnd":I
    if-le p4, p3, :cond_1

    const/4 v2, 0x1

    .line 1587
    .local v2, "diff":I
    :goto_0
    move v3, p3

    .local v3, "i":I
    :goto_1
    if-eq v3, p4, :cond_4

    .line 1588
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1589
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 1590
    .local v6, "position":I
    if-ltz v6, :cond_0

    if-ge v6, p5, :cond_0

    .line 1591
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1592
    if-nez v4, :cond_0

    .line 1593
    move-object v4, v7

    .line 1587
    :cond_0
    :goto_2
    add-int/2addr v3, v2

    goto :goto_1

    .line 1586
    .end local v2    # "diff":I
    .end local v3    # "i":I
    .end local v6    # "position":I
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 1595
    .restart local v2    # "diff":I
    .restart local v3    # "i":I
    .restart local v6    # "position":I
    .restart local v7    # "view":Landroid/view/View;
    :cond_2
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    if-ge v8, v0, :cond_3

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1596
    invoke-virtual {v8, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    if-ge v8, v1, :cond_5

    .line 1597
    :cond_3
    if-nez v5, :cond_0

    .line 1598
    move-object v5, v7

    goto :goto_2

    .line 1605
    .end local v6    # "position":I
    .end local v7    # "view":Landroid/view/View;
    :cond_4
    if-eqz v5, :cond_6

    .end local v5    # "outOfBoundsMatch":Landroid/view/View;
    :goto_3
    move-object v7, v5

    :cond_5
    return-object v7

    .restart local v5    # "outOfBoundsMatch":Landroid/view/View;
    :cond_6
    move-object v5, v4

    goto :goto_3
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 387
    .local v1, "childCount":I
    if-nez v1, :cond_1

    .line 388
    const/4 v0, 0x0

    .line 399
    :cond_0
    :goto_0
    return-object v0

    .line 390
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 391
    .local v2, "firstChild":I
    sub-int v3, p1, v2

    .line 392
    .local v3, "viewPosition":I
    if-ltz v3, :cond_2

    if-ge v3, v1, :cond_2

    .line 393
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 394
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 399
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public generateDefaultLayoutParams()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 181
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getExtraLayoutSpace(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 415
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    .line 418
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getStackFromEnd()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    return v0
.end method

.method protected isLayoutRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 924
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1

    .prologue
    .line 1114
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method layoutChunk(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;)V
    .locals 11
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "layoutState"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;
    .param p4, "result"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;

    .prologue
    .line 1371
    invoke-virtual {p3, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->next(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v1

    .line 1372
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 1378
    const/4 v0, 0x1

    iput-boolean v0, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 1441
    :goto_0
    return-void

    .line 1381
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 1382
    .local v8, "params":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-object v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1383
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-ne v2, v0, :cond_4

    .line 1385
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->addView(Landroid/view/View;)V

    .line 1397
    :goto_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1398
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1400
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 1401
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1402
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int v9, v0, v2

    .line 1403
    .local v9, "right":I
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    sub-int v7, v9, v0

    .line 1408
    .local v7, "left":I
    :goto_3
    iget v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 1409
    iget v6, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1410
    .local v6, "bottom":I
    iget v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v2, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v10, v0, v2

    .line 1429
    .local v10, "top":I
    :goto_4
    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->leftMargin:I

    add-int v2, v7, v0

    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->topMargin:I

    add-int v3, v10, v0

    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->rightMargin:I

    sub-int v4, v9, v0

    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int v5, v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 1437
    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1438
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1440
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    goto :goto_0

    .line 1383
    .end local v6    # "bottom":I
    .end local v7    # "left":I
    .end local v9    # "right":I
    .end local v10    # "top":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1387
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1390
    :cond_5
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    const/4 v0, 0x1

    :goto_5
    if-ne v2, v0, :cond_7

    .line 1392
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_2

    .line 1390
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 1394
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto :goto_2

    .line 1405
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPaddingLeft()I

    move-result v7

    .line 1406
    .restart local v7    # "left":I
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v9, v7, v0

    .restart local v9    # "right":I
    goto :goto_3

    .line 1412
    :cond_9
    iget v10, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1413
    .restart local v10    # "top":I
    iget v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v2, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int v6, v0, v2

    .restart local v6    # "bottom":I
    goto :goto_4

    .line 1416
    .end local v6    # "bottom":I
    .end local v7    # "left":I
    .end local v9    # "right":I
    .end local v10    # "top":I
    :cond_a
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPaddingTop()I

    move-result v10

    .line 1417
    .restart local v10    # "top":I
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v6, v10, v0

    .line 1419
    .restart local v6    # "bottom":I
    iget v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    .line 1420
    iget v9, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1421
    .restart local v9    # "right":I
    iget v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v2, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v7, v0, v2

    .restart local v7    # "left":I
    goto :goto_4

    .line 1423
    .end local v7    # "left":I
    .end local v9    # "right":I
    :cond_b
    iget v7, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1424
    .restart local v7    # "left":I
    iget v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v2, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int v9, v0, v2

    .restart local v9    # "right":I
    goto :goto_4
.end method

.method onAnchorReady(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 0
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    .prologue
    .line 632
    return-void
.end method

.method public onDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "view"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .prologue
    .line 215
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 216
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->removeAndRecycleAllViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 218
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->clear()V

    .line 220
    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 10
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p4, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/high16 v7, -0x80000000

    const/4 v4, 0x0

    .line 1717
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1718
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    move-object v2, v4

    .line 1755
    :cond_0
    :goto_0
    return-object v2

    .line 1722
    :cond_1
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v0

    .line 1723
    .local v0, "layoutDir":I
    if-ne v0, v7, :cond_2

    move-object v2, v4

    .line 1724
    goto :goto_0

    .line 1726
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 1728
    if-ne v0, v8, :cond_3

    .line 1729
    invoke-direct {p0, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChildClosestToStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    .line 1733
    .local v3, "referenceChild":Landroid/view/View;
    :goto_1
    if-nez v3, :cond_4

    move-object v2, v4

    .line 1738
    goto :goto_0

    .line 1731
    .end local v3    # "referenceChild":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "referenceChild":Landroid/view/View;
    goto :goto_1

    .line 1740
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 1741
    const v5, 0x3ea8f5c3    # 0.33f

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 1742
    .local v1, "maxScroll":I
    invoke-direct {p0, v0, v1, v9, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutState(IIZLcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    .line 1743
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v7, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1744
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput-boolean v9, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1745
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v6, 0x1

    invoke-virtual {p0, p3, v5, p4, v6}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    .line 1747
    if-ne v0, v8, :cond_6

    .line 1748
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .line 1752
    .local v2, "nextFocus":Landroid/view/View;
    :goto_2
    if-eq v2, v3, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    move-object v2, v4

    .line 1753
    goto :goto_0

    .line 1750
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .restart local v2    # "nextFocus":Landroid/view/View;
    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 225
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 227
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 228
    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 229
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 231
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityRecord;
    :cond_0
    return-void
.end method

.method public onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 17
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 465
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    .line 466
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v14

    if-nez v14, :cond_1

    .line 467
    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->removeAndRecycleAllViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 620
    :goto_0
    return-void

    .line 471
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    invoke-virtual {v14}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 472
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iget v14, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorPosition:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    .line 475
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 476
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 478
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 480
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v14}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->reset()V

    .line 481
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    move/from16 v16, v0

    xor-int v15, v15, v16

    iput-boolean v15, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 483
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v14}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateAnchorInfoForLayout(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    .line 492
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getExtraLayoutSpace(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v6

    .line 495
    .local v6, "extra":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v14, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v14, :cond_8

    .line 496
    move v7, v6

    .line 497
    .local v7, "extraForEnd":I
    const/4 v8, 0x0

    .line 502
    .local v8, "extraForStart":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v14}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v14

    add-int/2addr v8, v14

    .line 503
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v14}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndPadding()I

    move-result v14

    add-int/2addr v7, v14

    .line 504
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v15, -0x80000000

    if-eq v14, v15, :cond_3

    .line 509
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    .line 510
    .local v5, "existing":Landroid/view/View;
    if-eqz v5, :cond_3

    .line 513
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v14, :cond_9

    .line 514
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v14}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 515
    invoke-virtual {v15, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v15

    sub-int v3, v14, v15

    .line 516
    .local v3, "current":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int v13, v3, v14

    .line 522
    .local v13, "upcomingOffset":I
    :goto_2
    if-lez v13, :cond_a

    .line 523
    add-int/2addr v8, v13

    .line 531
    .end local v3    # "current":I
    .end local v5    # "existing":Landroid/view/View;
    .end local v13    # "upcomingOffset":I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v14}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->onAnchorReady(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    .line 532
    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->detachAndScrapAttachedViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v15

    iput-boolean v15, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 534
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    iget-boolean v14, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v14, :cond_b

    .line 536
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v8, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 538
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    .line 539
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v12, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 540
    .local v12, "startOffset":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v9, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 541
    .local v9, "firstElement":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v14, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v14, :cond_4

    .line 542
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v14, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v7, v14

    .line 545
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v7, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 547
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v15, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iput v15, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 548
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    .line 549
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v4, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 551
    .local v4, "endOffset":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v14, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v14, :cond_5

    .line 553
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v8, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 554
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 555
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v8, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 556
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    .line 557
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v12, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 589
    .end local v9    # "firstElement":I
    :cond_5
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v14

    if-lez v14, :cond_6

    .line 593
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v14, v15

    if-eqz v14, :cond_d

    .line 594
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2, v14}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fixLayoutEndGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v10

    .line 595
    .local v10, "fixOffset":I
    add-int/2addr v12, v10

    .line 596
    add-int/2addr v4, v10

    .line 597
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v12, v1, v2, v14}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fixLayoutStartGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v10

    .line 598
    add-int/2addr v12, v10

    .line 599
    add-int/2addr v4, v10

    .line 609
    .end local v10    # "fixOffset":I
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12, v4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->layoutForPredictiveAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;II)V

    .line 610
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v14

    if-nez v14, :cond_7

    .line 611
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    .line 612
    const/high16 v14, -0x80000000

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 613
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v14}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->onLayoutComplete()V

    .line 615
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 616
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    goto/16 :goto_0

    .line 499
    .end local v4    # "endOffset":I
    .end local v7    # "extraForEnd":I
    .end local v8    # "extraForStart":I
    .end local v12    # "startOffset":I
    :cond_8
    move v8, v6

    .line 500
    .restart local v8    # "extraForStart":I
    const/4 v7, 0x0

    .restart local v7    # "extraForEnd":I
    goto/16 :goto_1

    .line 518
    .restart local v5    # "existing":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v14, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 519
    invoke-virtual {v15}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v15

    sub-int v3, v14, v15

    .line 520
    .restart local v3    # "current":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int v13, v14, v3

    .restart local v13    # "upcomingOffset":I
    goto/16 :goto_2

    .line 525
    :cond_a
    sub-int/2addr v7, v13

    goto/16 :goto_3

    .line 561
    .end local v3    # "current":I
    .end local v5    # "existing":Landroid/view/View;
    .end local v13    # "upcomingOffset":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v7, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 563
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    .line 564
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v4, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 565
    .restart local v4    # "endOffset":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v11, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 566
    .local v11, "lastElement":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v14, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v14, :cond_c

    .line 567
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v14, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v8, v14

    .line 570
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v8, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 572
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v15, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iput v15, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 573
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    .line 574
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v12, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    .line 576
    .restart local v12    # "startOffset":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v14, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v14, :cond_5

    .line 577
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v7, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 579
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 580
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v7, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    .line 582
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v4, v14, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    goto/16 :goto_4

    .line 601
    .end local v11    # "lastElement":I
    :cond_d
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v12, v1, v2, v14}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fixLayoutStartGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v10

    .line 602
    .restart local v10    # "fixOffset":I
    add-int/2addr v12, v10

    .line 603
    add-int/2addr v4, v10

    .line 604
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2, v14}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fixLayoutEndGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v10

    .line 605
    add-int/2addr v12, v10

    .line 606
    add-int/2addr v4, v10

    goto/16 :goto_5
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 262
    instance-of v0, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 263
    check-cast p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    .line 264
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->requestLayout()V

    .line 271
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 235
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v3, :cond_0

    .line 236
    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    invoke-direct {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;-><init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;)V

    .line 257
    :goto_0
    return-object v2

    .line 238
    :cond_0
    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    invoke-direct {v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;-><init>()V

    .line 239
    .local v2, "state":Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 241
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int v0, v3, v4

    .line 242
    .local v0, "didLayoutFromEnd":Z
    iput-boolean v0, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 243
    if-eqz v0, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 245
    .local v1, "refChild":Landroid/view/View;
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 246
    invoke-virtual {v4, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 247
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_0

    .line 249
    .end local v1    # "refChild":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 250
    .restart local v1    # "refChild":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 251
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 252
    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_0

    .line 255
    .end local v0    # "didLayoutFromEnd":Z
    .end local v1    # "refChild":Landroid/view/View;
    :cond_2
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->invalidateAnchor()V

    goto :goto_0
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 1832
    const-string v5, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1833
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 1834
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1835
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1836
    .local v1, "myPos":I
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1837
    .local v2, "targetPos":I
    if-ge v1, v2, :cond_0

    move v0, v3

    .line 1839
    .local v0, "dropDirection":I
    :goto_0
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_2

    .line 1840
    if-ne v0, v3, :cond_1

    .line 1841
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1842
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1843
    invoke-virtual {v4, p2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1844
    invoke-virtual {v5, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 1841
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1859
    :goto_1
    return-void

    .end local v0    # "dropDirection":I
    :cond_0
    move v0, v4

    .line 1837
    goto :goto_0

    .line 1846
    .restart local v0    # "dropDirection":I
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1847
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1848
    invoke-virtual {v4, p2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 1846
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 1851
    :cond_2
    if-ne v0, v4, :cond_3

    .line 1852
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, p2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 1854
    :cond_3
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1855
    invoke-virtual {v3, p2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 1856
    invoke-virtual {v4, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 1854
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1
.end method

.method scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 7
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1153
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_0

    if-nez p1, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return v4

    .line 1156
    :cond_1
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput-boolean v5, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1157
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    .line 1158
    if-lez p1, :cond_2

    move v3, v5

    .line 1159
    .local v3, "layoutDirection":I
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1160
    .local v0, "absDy":I
    invoke-direct {p0, v3, v0, v5, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutState(IIZLcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    .line 1161
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v2, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1162
    .local v2, "freeScroll":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p2, v5, p3, v4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v5

    add-int v1, v2, v5

    .line 1163
    .local v1, "consumed":I
    if-ltz v1, :cond_0

    .line 1169
    if-le v0, v1, :cond_3

    mul-int v4, v3, v1

    .line 1170
    .local v4, "scrolled":I
    :goto_2
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    neg-int v6, v4

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    .line 1174
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v4, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    goto :goto_0

    .line 1158
    .end local v0    # "absDy":I
    .end local v1    # "consumed":I
    .end local v2    # "freeScroll":I
    .end local v3    # "layoutDirection":I
    .end local v4    # "scrolled":I
    :cond_2
    const/4 v3, -0x1

    goto :goto_1

    .restart local v0    # "absDy":I
    .restart local v1    # "consumed":I
    .restart local v2    # "freeScroll":I
    .restart local v3    # "layoutDirection":I
    :cond_3
    move v4, p1

    .line 1169
    goto :goto_2
.end method

.method public scrollHorizontallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 2
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 1004
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1005
    const/4 v0, 0x0

    .line 1007
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 961
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    .line 962
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 963
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 966
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->requestLayout()V

    .line 967
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 989
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    .line 990
    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 991
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 994
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->requestLayout()V

    .line 995
    return-void
.end method

.method public scrollVerticallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 1016
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 1017
    const/4 v0, 0x0

    .line 1019
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 322
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 326
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_1

    .line 332
    :goto_0
    return-void

    .line 329
    :cond_1
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    .line 330
    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 331
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 0
    .param p1, "recycleChildrenOnDetach"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 211
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1
    .param p1, "reverseLayout"    # Z

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 374
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    .line 378
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1103
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1104
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1
    .param p1, "stackFromEnd"    # Z

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 294
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    .line 298
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public smoothScrollToPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 425
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$1;

    .line 426
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;Landroid/content/Context;)V

    .line 433
    .local v0, "linearSmoothScroller":Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->setTargetPosition(I)V

    .line 434
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->startSmoothScroll(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;)V

    .line 435
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method validateChildOrder()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1783
    const-string v8, "LinearLayoutManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "validating child count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v8, v6, :cond_1

    .line 1820
    :cond_0
    return-void

    .line 1787
    :cond_1
    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1788
    .local v2, "lastPos":I
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 1789
    .local v3, "lastScreenLoc":I
    iget-boolean v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_5

    .line 1790
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 1791
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1792
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 1793
    .local v4, "pos":I
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 1794
    .local v5, "screenLoc":I
    if-ge v4, v2, :cond_3

    .line 1795
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->logChildren()V

    .line 1796
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-ge v5, v3, :cond_2

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    move v6, v7

    goto :goto_1

    .line 1799
    :cond_3
    if-le v5, v3, :cond_4

    .line 1800
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->logChildren()V

    .line 1801
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "detected invalid location"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1790
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1805
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v4    # "pos":I
    .end local v5    # "screenLoc":I
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 1806
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1807
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 1808
    .restart local v4    # "pos":I
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 1809
    .restart local v5    # "screenLoc":I
    if-ge v4, v2, :cond_7

    .line 1810
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->logChildren()V

    .line 1811
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-ge v5, v3, :cond_6

    :goto_3
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    move v6, v7

    goto :goto_3

    .line 1814
    :cond_7
    if-ge v5, v3, :cond_8

    .line 1815
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->logChildren()V

    .line 1816
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "detected invalid location"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1805
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
