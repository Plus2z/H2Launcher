.class public Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;
.super Lcom/oneplus/lib/design/widget/HeaderBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;,
        Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/design/widget/HeaderBehavior",
        "<",
        "Lcom/oneplus/lib/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0x258


# instance fields
.field private mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetAnimator:Landroid/animation/ValueAnimator;

.field private mOffsetDelta:I

.field private mOffsetToChildIndexOnLayout:I

.field private mOffsetToChildIndexOnLayoutIsMinHeight:Z

.field private mOffsetToChildIndexOnLayoutPerc:F

.field private mOnDragCallback:Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;

.field private mSkipNestedPreScroll:Z

.field private mWasNestedFlung:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 796
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;-><init>()V

    .line 789
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 796
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 799
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 789
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 800
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;

    .prologue
    .line 762
    iget v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    return v0
.end method

.method private animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V
    .locals 5
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "offset"    # I
    .param p4, "velocity"    # F

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v3

    sub-int/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 925
    .local v0, "distance":I
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 926
    const/4 v3, 0x0

    cmpl-float v3, p4, v3

    if-lez v3, :cond_0

    .line 927
    const/high16 v3, 0x447a0000    # 1000.0f

    int-to-float v4, v0

    div-float/2addr v4, p4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v2, v3, 0x3

    .line 933
    .local v2, "duration":I
    :goto_0
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetWithDuration(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;II)V

    .line 934
    return-void

    .line 929
    .end local v2    # "duration":I
    :cond_0
    int-to-float v3, v0

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 930
    .local v1, "distanceRatio":F
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v1

    const/high16 v4, 0x43160000    # 150.0f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .restart local v2    # "duration":I
    goto :goto_0
.end method

.method private animateOffsetWithDuration(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;II)V
    .locals 4
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "offset"    # I
    .param p4, "duration"    # I

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 939
    .local v0, "currentOffset":I
    if-ne v0, p3, :cond_1

    .line 940
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    .line 947
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 948
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 949
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;-><init>(Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 960
    :goto_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/16 v2, 0x258

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 961
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 962
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 957
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1
.end method

.method private static checkFlag(II)Z
    .locals 1
    .param p0, "flags"    # I
    .param p1, "check"    # I

    .prologue
    .line 1018
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAppBarChildOnOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)Landroid/view/View;
    .locals 5
    .param p0, "layout"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p1, "offset"    # I

    .prologue
    .line 1274
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1275
    .local v0, "absOffset":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v3

    .local v3, "z":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1276
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1277
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v0, v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v0, v4, :cond_0

    .line 1281
    .end local v1    # "child":Landroid/view/View;
    :goto_1
    return-object v1

    .line 1275
    .restart local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1281
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getChildIndexOnOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)I
    .locals 5
    .param p1, "abl"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p2, "offset"    # I

    .prologue
    .line 966
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 967
    invoke-virtual {p1, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 968
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v4, p2

    if-gt v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    neg-int v4, p2

    if-lt v3, v4, :cond_0

    .line 972
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 966
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 972
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private interpolateOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)I
    .locals 13
    .param p1, "layout"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p2, "offset"    # I

    .prologue
    .line 1176
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1178
    .local v0, "absOffset":I
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v9

    .local v9, "z":I
    :goto_0
    if-ge v5, v9, :cond_2

    .line 1179
    invoke-virtual {p1, v5}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1180
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    .line 1181
    .local v2, "childLp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    .line 1183
    .local v7, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v0, v10, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v0, v10, :cond_3

    .line 1184
    if-eqz v7, :cond_2

    .line 1185
    const/4 v3, 0x0

    .line 1186
    .local v3, "childScrollableHeight":I
    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v4

    .line 1187
    .local v4, "flags":I
    and-int/lit8 v10, v4, 0x1

    if-eqz v10, :cond_0

    .line 1189
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    iget v11, v2, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v2, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 1192
    and-int/lit8 v10, v4, 0x2

    if-eqz v10, :cond_0

    .line 1195
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v3, v10

    .line 1199
    :cond_0
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1200
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result v10

    sub-int/2addr v3, v10

    .line 1203
    :cond_1
    if-lez v3, :cond_2

    .line 1204
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v8, v0, v10

    .line 1205
    .local v8, "offsetForView":I
    int-to-float v10, v3

    int-to-float v11, v8

    int-to-float v12, v3

    div-float/2addr v11, v12

    .line 1206
    invoke-interface {v7, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v10, v11

    .line 1205
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1209
    .local v6, "interpolatedDiff":I
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    add-int/2addr v11, v6

    mul-int p2, v10, v11

    .line 1219
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childLp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    .end local v3    # "childScrollableHeight":I
    .end local v4    # "flags":I
    .end local v6    # "interpolatedDiff":I
    .end local v7    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v8    # "offsetForView":I
    .end local p2    # "offset":I
    :cond_2
    return p2

    .line 1178
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childLp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    .restart local v7    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local p2    # "offset":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private shouldJumpElevationState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)Z
    .locals 8
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "layout"    # Lcom/oneplus/lib/design/widget/AppBarLayout;

    .prologue
    const/4 v6, 0x0

    .line 1259
    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    .line 1260
    .local v1, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 1261
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1263
    .local v2, "dependency":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1264
    .local v4, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1266
    .local v0, "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    instance-of v7, v0, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;

    if-eqz v7, :cond_1

    .line 1267
    check-cast v0, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;

    .end local v0    # "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->getOverlayTop()I

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    .line 1270
    .end local v2    # "dependency":Landroid/view/View;
    .end local v4    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :cond_0
    return v6

    .line 1260
    .restart local v0    # "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .restart local v2    # "dependency":Landroid/view/View;
    .restart local v4    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private snapToChildIfNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V
    .locals 11
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "abl"    # Lcom/oneplus/lib/design/widget/AppBarLayout;

    .prologue
    .line 976
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v3

    .line 977
    .local v3, "offset":I
    invoke-direct {p0, p2, v3}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getChildIndexOnOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)I

    move-result v5

    .line 978
    .local v5, "offsetChildIndex":I
    if-ltz v5, :cond_2

    .line 979
    invoke-virtual {p2, v5}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 980
    .local v4, "offsetChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    .line 981
    .local v1, "lp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v0

    .line 983
    .local v0, "flags":I
    and-int/lit8 v9, v0, 0x11

    const/16 v10, 0x11

    if-ne v9, v10, :cond_2

    .line 985
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    neg-int v8, v9

    .line 986
    .local v8, "snapTop":I
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    neg-int v7, v9

    .line 988
    .local v7, "snapBottom":I
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v5, v9, :cond_0

    .line 990
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result v9

    add-int/2addr v7, v9

    .line 993
    :cond_0
    const/4 v9, 0x2

    invoke-static {v0, v9}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->checkFlag(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 995
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    add-int/2addr v7, v9

    .line 1008
    :cond_1
    :goto_0
    add-int v9, v7, v8

    div-int/lit8 v9, v9, 0x2

    if-ge v3, v9, :cond_5

    move v2, v7

    .line 1012
    .local v2, "newOffset":I
    :goto_1
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v9

    neg-int v9, v9

    const/4 v10, 0x0

    invoke-static {v2, v9, v10}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v9

    const/4 v10, 0x0

    .line 1011
    invoke-direct {p0, p1, p2, v9, v10}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    .line 1015
    .end local v0    # "flags":I
    .end local v1    # "lp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    .end local v2    # "newOffset":I
    .end local v4    # "offsetChild":Landroid/view/View;
    .end local v7    # "snapBottom":I
    .end local v8    # "snapTop":I
    :cond_2
    return-void

    .line 996
    .restart local v0    # "flags":I
    .restart local v1    # "lp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    .restart local v4    # "offsetChild":Landroid/view/View;
    .restart local v7    # "snapBottom":I
    .restart local v8    # "snapTop":I
    :cond_3
    const/4 v9, 0x5

    invoke-static {v0, v9}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->checkFlag(II)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1000
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    add-int v6, v7, v9

    .line 1001
    .local v6, "seam":I
    if-ge v3, v6, :cond_4

    .line 1002
    move v8, v6

    goto :goto_0

    .line 1004
    :cond_4
    move v7, v6

    goto :goto_0

    .end local v6    # "seam":I
    :cond_5
    move v2, v8

    .line 1008
    goto :goto_1
.end method

.method private updateAppBarLayoutDrawableState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;II)V
    .locals 11
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "layout"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "offset"    # I
    .param p4, "direction"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1224
    invoke-static {p2, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getAppBarChildOnOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)Landroid/view/View;

    move-result-object v1

    .line 1225
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1226
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    .line 1227
    .local v2, "childLp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v4

    .line 1228
    .local v4, "flags":I
    const/4 v3, 0x0

    .line 1230
    .local v3, "collapsed":Z
    and-int/lit8 v8, v4, 0x1

    if-eqz v8, :cond_0

    .line 1231
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    .line 1233
    .local v5, "minHeight":I
    if-lez p4, :cond_3

    and-int/lit8 v8, v4, 0xc

    if-eqz v8, :cond_3

    .line 1237
    neg-int v8, p3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result v10

    sub-int/2addr v9, v10

    if-lt v8, v9, :cond_2

    move v3, v6

    .line 1245
    .end local v5    # "minHeight":I
    :cond_0
    :goto_0
    invoke-virtual {p2, v3}, Lcom/oneplus/lib/design/widget/AppBarLayout;->setCollapsedState(Z)Z

    move-result v0

    .line 1247
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    .line 1248
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->shouldJumpElevationState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1251
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->jumpDrawablesToCurrentState()V

    .line 1254
    .end local v0    # "changed":Z
    .end local v2    # "childLp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    .end local v3    # "collapsed":Z
    .end local v4    # "flags":I
    :cond_1
    return-void

    .restart local v2    # "childLp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    .restart local v3    # "collapsed":Z
    .restart local v4    # "flags":I
    .restart local v5    # "minHeight":I
    :cond_2
    move v3, v7

    .line 1237
    goto :goto_0

    .line 1238
    :cond_3
    and-int/lit8 v8, v4, 0x2

    if-eqz v8, :cond_0

    .line 1241
    neg-int v8, p3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result v10

    sub-int/2addr v9, v10

    if-lt v8, v9, :cond_4

    move v3, v6

    :goto_1
    goto :goto_0

    :cond_4
    move v3, v7

    goto :goto_1
.end method


# virtual methods
.method bridge synthetic canDragView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 762
    check-cast p1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->canDragView(Lcom/oneplus/lib/design/widget/AppBarLayout;)Z

    move-result v0

    return v0
.end method

.method canDragView(Lcom/oneplus/lib/design/widget/AppBarLayout;)Z
    .locals 3
    .param p1, "view"    # Lcom/oneplus/lib/design/widget/AppBarLayout;

    .prologue
    const/4 v1, 0x1

    .line 1092
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;

    if-eqz v2, :cond_1

    .line 1094
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;->canDrag(Lcom/oneplus/lib/design/widget/AppBarLayout;)Z

    move-result v1

    .line 1105
    :cond_0
    :goto_0
    return v1

    .line 1098
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 1100
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1101
    .local v0, "scrollingView":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    .line 1102
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .locals 1

    .prologue
    .line 762
    invoke-super {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getLeftAndRightOffset()I

    move-result v0

    return v0
.end method

.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 762
    check-cast p1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getMaxDragOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;)I

    move-result v0

    return v0
.end method

.method getMaxDragOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;)I
    .locals 1
    .param p1, "view"    # Lcom/oneplus/lib/design/widget/AppBarLayout;

    .prologue
    .line 1117
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 762
    check-cast p1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getScrollRangeForDragFling(Lcom/oneplus/lib/design/widget/AppBarLayout;)I

    move-result v0

    return v0
.end method

.method getScrollRangeForDragFling(Lcom/oneplus/lib/design/widget/AppBarLayout;)I
    .locals 1
    .param p1, "view"    # Lcom/oneplus/lib/design/widget/AppBarLayout;

    .prologue
    .line 1122
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 1

    .prologue
    .line 762
    invoke-super {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 2

    .prologue
    .line 1286
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    add-int/2addr v0, v1

    return v0
.end method

.method isOffsetAnimatorRunning()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method bridge synthetic onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 762
    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V

    return-void
.end method

.method onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V
    .locals 0
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "layout"    # Lcom/oneplus/lib/design/widget/AppBarLayout;

    .prologue
    .line 1112
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V

    .line 1113
    return-void
.end method

.method public bridge synthetic onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 762
    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;I)Z

    move-result v0

    return v0
.end method

.method public onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;I)Z
    .locals 8
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "abl"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "layoutDirection"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1045
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v2

    .line 1047
    .local v2, "handled":Z
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getPendingAction()I

    move-result v4

    .line 1048
    .local v4, "pendingAction":I
    if-eqz v4, :cond_5

    .line 1049
    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    .line 1050
    .local v0, "animate":Z
    :goto_0
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_3

    .line 1051
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v6

    neg-int v3, v6

    .line 1052
    .local v3, "offset":I
    if-eqz v0, :cond_2

    .line 1053
    invoke-direct {p0, p1, p2, v3, v7}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    .line 1076
    .end local v0    # "animate":Z
    .end local v3    # "offset":I
    :cond_0
    :goto_1
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->resetPendingAction()V

    .line 1077
    const/4 v6, -0x1

    iput v6, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 1082
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v6

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7, v5}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v5

    .line 1081
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    .line 1085
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/oneplus/lib/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    .line 1087
    return v2

    :cond_1
    move v0, v5

    .line 1049
    goto :goto_0

    .line 1055
    .restart local v0    # "animate":Z
    .restart local v3    # "offset":I
    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_1

    .line 1057
    .end local v3    # "offset":I
    :cond_3
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_0

    .line 1058
    if-eqz v0, :cond_4

    .line 1059
    invoke-direct {p0, p1, p2, v5, v7}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    goto :goto_1

    .line 1061
    :cond_4
    invoke-virtual {p0, p1, p2, v5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_1

    .line 1064
    .end local v0    # "animate":Z
    :cond_5
    iget v6, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    if-ltz v6, :cond_0

    .line 1065
    iget v6, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    invoke-virtual {p2, v6}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1066
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    neg-int v3, v6

    .line 1067
    .restart local v3    # "offset":I
    iget-boolean v6, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v6, :cond_6

    .line 1068
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    .line 1072
    :goto_2
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    goto :goto_1

    .line 1070
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_2
.end method

.method public bridge synthetic onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 7

    .prologue
    .line 762
    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IIII)Z

    move-result v0

    return v0
.end method

.method public onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IIII)Z
    .locals 7
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I

    .prologue
    const/4 v2, 0x0

    .line 1025
    .line 1026
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1027
    .local v6, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget v0, v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1033
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    .line 1032
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 1034
    const/4 v0, 0x1

    .line 1038
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onNestedFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 7

    .prologue
    .line 762
    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onNestedFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z
    .locals 8
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "consumed"    # Z

    .prologue
    .line 876
    const/4 v6, 0x0

    .line 878
    .local v6, "flung":Z
    if-nez p6, :cond_1

    .line 880
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v3, v0

    const/4 v4, 0x0

    neg-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->fling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    move-result v6

    .line 907
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mWasNestedFlung:Z

    .line 908
    return v6

    .line 885
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p5, v0

    if-gez v0, :cond_2

    .line 887
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    .line 888
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v1

    add-int v7, v0, v1

    .line 889
    .local v7, "targetScroll":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-ge v0, v7, :cond_0

    .line 892
    invoke-direct {p0, p1, p2, v7, p5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    .line 893
    const/4 v6, 0x1

    goto :goto_0

    .line 897
    .end local v7    # "targetScroll":I
    :cond_2
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v7, v0

    .line 898
    .restart local v7    # "targetScroll":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 901
    invoke-direct {p0, p1, p2, v7, p5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    .line 902
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onNestedPreScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 7

    .prologue
    .line 762
    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onNestedPreScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedPreScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;II[I)V
    .locals 7
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I

    .prologue
    .line 825
    if-eqz p5, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    if-nez v0, :cond_0

    .line 827
    if-gez p5, :cond_1

    .line 829
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v4, v0

    .line 830
    .local v4, "min":I
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v0

    add-int v5, v4, v0

    .line 836
    .local v5, "max":I
    :goto_0
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->scroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    aput v0, p6, v6

    .line 838
    .end local v4    # "min":I
    .end local v5    # "max":I
    :cond_0
    return-void

    .line 833
    :cond_1
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v4, v0

    .line 834
    .restart local v4    # "min":I
    const/4 v5, 0x0

    .restart local v5    # "max":I
    goto :goto_0
.end method

.method public bridge synthetic onNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8

    .prologue
    .line 762
    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;IIII)V
    .locals 6
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I

    .prologue
    const/4 v5, 0x0

    .line 844
    if-gez p7, :cond_0

    .line 848
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    .line 847
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->scroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 850
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    .line 855
    :goto_0
    return-void

    .line 853
    :cond_0
    iput-boolean v5, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    goto :goto_0
.end method

.method public bridge synthetic onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 762
    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "appBarLayout"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1316
    instance-of v1, p3, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 1317
    check-cast v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;

    .line 1318
    .local v0, "ss":Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, p1, p2, v1}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1319
    iget v1, v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    iput v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 1320
    iget v1, v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    iput v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    .line 1321
    iget-boolean v1, v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    .line 1326
    .end local v0    # "ss":Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;
    :goto_0
    return-void

    .line 1323
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1324
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    goto :goto_0
.end method

.method public bridge synthetic onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 762
    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)Landroid/os/Parcelable;
    .locals 9
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "abl"    # Lcom/oneplus/lib/design/widget/AppBarLayout;

    .prologue
    .line 1291
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v5

    .line 1292
    .local v5, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v3

    .line 1295
    .local v3, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1296
    invoke-virtual {p2, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1297
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v6, v7, v3

    .line 1299
    .local v6, "visBottom":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v7, v3

    if-gtz v7, :cond_1

    if-ltz v6, :cond_1

    .line 1300
    new-instance v4, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-direct {v4, v5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1301
    .local v4, "ss":Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;
    iput v2, v4, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    .line 1303
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result v8

    add-int/2addr v7, v8

    if-ne v6, v7, :cond_0

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v4, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    .line 1304
    int-to-float v7, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, v4, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    .line 1310
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ss":Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;
    .end local v6    # "visBottom":I
    :goto_2
    return-object v4

    .line 1303
    .restart local v0    # "child":Landroid/view/View;
    .restart local v4    # "ss":Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;
    .restart local v6    # "visBottom":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 1295
    .end local v4    # "ss":Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "visBottom":I
    :cond_2
    move-object v4, v5

    .line 1310
    goto :goto_2
.end method

.method public bridge synthetic onStartNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 762
    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onStartNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onStartNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z
    .locals 3
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I

    .prologue
    .line 807
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_1

    .line 808
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->hasScrollableChildren()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 809
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 811
    .local v0, "started":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 813
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 817
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 819
    return v0

    .line 809
    .end local v0    # "started":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onStopNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 762
    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onStopNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;)V

    return-void
.end method

.method public onStopNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;)V
    .locals 2
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "abl"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "target"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 860
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mWasNestedFlung:Z

    if-nez v0, :cond_0

    .line 862
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V

    .line 866
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    .line 867
    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mWasNestedFlung:Z

    .line 869
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 870
    return-void
.end method

.method public setDragCallback(Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 917
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;

    .line 918
    return-void
.end method

.method bridge synthetic setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 6

    .prologue
    .line 762
    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;III)I

    move-result v0

    return v0
.end method

.method setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;III)I
    .locals 5
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "appBarLayout"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "newOffset"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I

    .prologue
    .line 1128
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v1

    .line 1129
    .local v1, "curOffset":I
    const/4 v0, 0x0

    .line 1131
    .local v0, "consumed":I
    if-eqz p4, :cond_4

    if-lt v1, p4, :cond_4

    if-gt v1, p5, :cond_4

    .line 1134
    invoke-static {p3, p4, p5}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p3

    .line 1135
    if-eq v1, p3, :cond_1

    .line 1136
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1137
    invoke-direct {p0, p2, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->interpolateOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)I

    move-result v2

    .line 1140
    .local v2, "interpolatedOffset":I
    :goto_0
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    move-result v3

    .line 1143
    .local v3, "offsetChanged":Z
    sub-int v0, v1, p3

    .line 1145
    sub-int v4, p3, v2

    iput v4, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    .line 1147
    if-nez v3, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1152
    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 1156
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/oneplus/lib/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    .line 1159
    if-ge p3, v1, :cond_3

    const/4 v4, -0x1

    :goto_1
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->updateAppBarLayoutDrawableState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;II)V

    .line 1167
    .end local v2    # "interpolatedOffset":I
    .end local v3    # "offsetChanged":Z
    :cond_1
    :goto_2
    return v0

    :cond_2
    move v2, p3

    .line 1137
    goto :goto_0

    .line 1159
    .restart local v2    # "interpolatedOffset":I
    .restart local v3    # "offsetChanged":Z
    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    .line 1164
    .end local v2    # "interpolatedOffset":I
    .end local v3    # "offsetChanged":Z
    :cond_4
    const/4 v4, 0x0

    iput v4, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    goto :goto_2
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 1

    .prologue
    .line 762
    invoke-super {p0, p1}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->setLeftAndRightOffset(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 1

    .prologue
    .line 762
    invoke-super {p0, p1}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    move-result v0

    return v0
.end method
