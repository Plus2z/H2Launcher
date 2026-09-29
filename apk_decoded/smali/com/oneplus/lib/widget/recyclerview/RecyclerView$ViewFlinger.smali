.class Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3883
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3874
    invoke-static {}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2200()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 3878
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 3881
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 3884
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2200()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    .line 3885
    return-void
.end method

.method private computeScrollDuration(IIII)I
    .locals 14
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .prologue
    .line 4059
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4060
    .local v1, "absDx":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4061
    .local v2, "absDy":I
    if-le v1, v2, :cond_0

    const/4 v9, 0x1

    .line 4062
    .local v9, "horizontal":Z
    :goto_0
    mul-int v11, p3, p3

    mul-int v12, p4, p4

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v10, v12

    .line 4063
    .local v10, "velocity":I
    mul-int v11, p1, p1

    mul-int v12, p2, p2

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v4, v12

    .line 4064
    .local v4, "delta":I
    if-eqz v9, :cond_1

    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v3

    .line 4065
    .local v3, "containerSize":I
    :goto_1
    div-int/lit8 v8, v3, 0x2

    .line 4066
    .local v8, "halfContainerSize":I
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v13, v4

    mul-float/2addr v12, v13

    int-to-float v13, v3

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 4067
    .local v6, "distanceRatio":F
    int-to-float v11, v8

    int-to-float v12, v8

    .line 4068
    invoke-direct {p0, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v5, v11, v12

    .line 4071
    .local v5, "distance":F
    if-lez v10, :cond_2

    .line 4072
    const/high16 v11, 0x447a0000    # 1000.0f

    int-to-float v12, v10

    div-float v12, v5, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-int/lit8 v7, v11, 0x4

    .line 4077
    .end local v1    # "absDx":I
    .local v7, "duration":I
    :goto_2
    const/16 v11, 0x7d0

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    return v11

    .line 4061
    .end local v3    # "containerSize":I
    .end local v4    # "delta":I
    .end local v5    # "distance":F
    .end local v6    # "distanceRatio":F
    .end local v7    # "duration":I
    .end local v8    # "halfContainerSize":I
    .end local v9    # "horizontal":Z
    .end local v10    # "velocity":I
    .restart local v1    # "absDx":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 4064
    .restart local v4    # "delta":I
    .restart local v9    # "horizontal":Z
    .restart local v10    # "velocity":I
    :cond_1
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v3

    goto :goto_1

    .line 4074
    .restart local v3    # "containerSize":I
    .restart local v5    # "distance":F
    .restart local v6    # "distanceRatio":F
    .restart local v8    # "halfContainerSize":I
    :cond_2
    if-eqz v9, :cond_3

    .end local v1    # "absDx":I
    :goto_3
    int-to-float v0, v1

    .line 4075
    .local v0, "absDelta":F
    int-to-float v11, v3

    div-float v11, v0, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    const/high16 v12, 0x43960000    # 300.0f

    mul-float/2addr v11, v12

    float-to-int v7, v11

    .restart local v7    # "duration":I
    goto :goto_2

    .end local v0    # "absDelta":F
    .end local v7    # "duration":I
    .restart local v1    # "absDx":I
    :cond_3
    move v1, v2

    .line 4074
    goto :goto_3
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    .prologue
    .line 4016
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4017
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4018
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 4053
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 4054
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 4055
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private enableRunOnAnimationRequests()V
    .locals 1

    .prologue
    .line 4021
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4022
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    .line 4023
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4025
    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 9
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 4037
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    .line 4038
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4039
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 4041
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4042
    return-void
.end method

.method postOnAnimation()V
    .locals 1

    .prologue
    .line 4028
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    .line 4029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4034
    :goto_0
    return-void

    .line 4031
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4032
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 31

    .prologue
    .line 3889
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 3890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 3893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    .line 3894
    .local v17, "scroller":Landroid/widget/Scroller;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;

    move-object/from16 v19, v0

    .line 3895
    .local v19, "smoothScroller":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v28

    if-eqz v28, :cond_15

    .line 3896
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->getCurrX()I

    move-result v26

    .line 3897
    .local v26, "x":I
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->getCurrY()I

    move-result v27

    .line 3898
    .local v27, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingX:I

    move/from16 v28, v0

    sub-int v6, v26, v28

    .line 3899
    .local v6, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingY:I

    move/from16 v28, v0

    sub-int v7, v27, v28

    .line 3900
    .local v7, "dy":I
    const/4 v12, 0x0

    .line 3901
    .local v12, "hresult":I
    const/16 v25, 0x0

    .line 3902
    .local v25, "vresult":I
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 3903
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 3904
    const/4 v15, 0x0

    .local v15, "overscrollX":I
    const/16 v16, 0x0

    .line 3905
    .local v16, "overscrollY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v28

    if-eqz v28, :cond_5

    .line 3906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->eatRequestLayout()V

    .line 3907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 3908
    const-string v28, "RV Scroll"

    invoke-static/range {v28 .. v28}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3909
    if-eqz v6, :cond_0

    .line 3910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v6, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v12

    .line 3911
    sub-int v15, v6, v12

    .line 3913
    :cond_0
    if-eqz v7, :cond_1

    .line 3914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v7, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v25

    .line 3915
    sub-int v16, v7, v25

    .line 3917
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 3920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v5

    .line 3921
    .local v5, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v5, :cond_4

    .line 3922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 3923
    .local v24, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v11

    .line 3924
    .local v11, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v11, :cond_3

    iget-object v0, v11, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    .line 3925
    iget-object v0, v11, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    .line 3926
    .local v18, "shadowingView":Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 3927
    .local v14, "left":I
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v20

    .line 3928
    .local v20, "top":I
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v28

    move/from16 v0, v28

    if-ne v14, v0, :cond_2

    .line 3929
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v28

    move/from16 v0, v20

    move/from16 v1, v28

    if-eq v0, v1, :cond_3

    .line 3931
    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v28

    add-int v28, v28, v14

    .line 3932
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v29

    add-int v29, v29, v20

    .line 3930
    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 3921
    .end local v14    # "left":I
    .end local v18    # "shadowingView":Landroid/view/View;
    .end local v20    # "top":I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 3937
    .end local v5    # "count":I
    .end local v11    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v13    # "i":I
    .end local v24    # "view":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 3938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resumeRequestLayout(Z)V

    .line 3940
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v28

    if-nez v28, :cond_5

    .line 3941
    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v28

    if-eqz v28, :cond_5

    .line 3942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v4

    .line 3943
    .local v4, "adapterSize":I
    if-nez v4, :cond_18

    .line 3944
    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    .line 3953
    .end local v4    # "adapterSize":I
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_6

    .line 3954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->invalidate()V

    .line 3956
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getOverScrollMode()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    .line 3958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v0, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    .line 3960
    :cond_7
    if-nez v15, :cond_8

    if-eqz v16, :cond_e

    .line 3961
    :cond_8
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v21, v0

    .line 3963
    .local v21, "vel":I
    const/16 v22, 0x0

    .line 3964
    .local v22, "velX":I
    move/from16 v0, v26

    if-eq v15, v0, :cond_9

    .line 3965
    if-gez v15, :cond_1a

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v22, v0

    .line 3968
    :cond_9
    :goto_2
    const/16 v23, 0x0

    .line 3969
    .local v23, "velY":I
    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_a

    .line 3970
    if-gez v16, :cond_1c

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v23, v0

    .line 3973
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getOverScrollMode()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    .line 3975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->absorbGlows(II)V

    .line 3977
    :cond_b
    if-nez v22, :cond_c

    move/from16 v0, v26

    if-eq v15, v0, :cond_c

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->getFinalX()I

    move-result v28

    if-nez v28, :cond_e

    :cond_c
    if-nez v23, :cond_d

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_d

    .line 3978
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->getFinalY()I

    move-result v28

    if-nez v28, :cond_e

    .line 3979
    :cond_d
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3982
    .end local v21    # "vel":I
    .end local v22    # "velX":I
    .end local v23    # "velY":I
    :cond_e
    if-nez v12, :cond_f

    if-eqz v25, :cond_10

    .line 3983
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchOnScrolled(II)V

    .line 3986
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v28

    if-nez v28, :cond_11

    .line 3987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->invalidate()V

    .line 3990
    :cond_11
    if-eqz v7, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v28

    if-eqz v28, :cond_1e

    move/from16 v0, v25

    if-ne v0, v7, :cond_1e

    const/4 v10, 0x1

    .line 3992
    .local v10, "fullyConsumedVertical":Z
    :goto_4
    if-eqz v6, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v28

    if-eqz v28, :cond_1f

    if-ne v12, v6, :cond_1f

    const/4 v9, 0x1

    .line 3994
    .local v9, "fullyConsumedHorizontal":Z
    :goto_5
    if-nez v6, :cond_12

    if-eqz v7, :cond_13

    :cond_12
    if-nez v9, :cond_13

    if-eqz v10, :cond_20

    :cond_13
    const/4 v8, 0x1

    .line 3997
    .local v8, "fullyConsumedAny":Z
    :goto_6
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v28

    if-nez v28, :cond_14

    if-nez v8, :cond_21

    .line 3998
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    .line 4004
    .end local v6    # "dx":I
    .end local v7    # "dy":I
    .end local v8    # "fullyConsumedAny":Z
    .end local v9    # "fullyConsumedHorizontal":Z
    .end local v10    # "fullyConsumedVertical":Z
    .end local v12    # "hresult":I
    .end local v15    # "overscrollX":I
    .end local v16    # "overscrollY":I
    .end local v25    # "vresult":I
    .end local v26    # "x":I
    .end local v27    # "y":I
    :cond_15
    :goto_7
    if-eqz v19, :cond_17

    .line 4005
    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v28

    if-eqz v28, :cond_16

    .line 4006
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->access$2800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;II)V

    .line 4008
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    move/from16 v28, v0

    if-nez v28, :cond_17

    .line 4009
    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    .line 4012
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    .line 4013
    return-void

    .line 3945
    .restart local v4    # "adapterSize":I
    .restart local v6    # "dx":I
    .restart local v7    # "dy":I
    .restart local v12    # "hresult":I
    .restart local v15    # "overscrollX":I
    .restart local v16    # "overscrollY":I
    .restart local v25    # "vresult":I
    .restart local v26    # "x":I
    .restart local v27    # "y":I
    :cond_18
    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v28

    move/from16 v0, v28

    if-lt v0, v4, :cond_19

    .line 3946
    add-int/lit8 v28, v4, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 3947
    sub-int v28, v6, v15

    sub-int v29, v7, v16

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->access$2800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;II)V

    goto/16 :goto_1

    .line 3949
    :cond_19
    sub-int v28, v6, v15

    sub-int v29, v7, v16

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->access$2800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;II)V

    goto/16 :goto_1

    .line 3965
    .end local v4    # "adapterSize":I
    .restart local v21    # "vel":I
    .restart local v22    # "velX":I
    :cond_1a
    if-lez v15, :cond_1b

    move/from16 v22, v21

    goto/16 :goto_2

    :cond_1b
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 3970
    .restart local v23    # "velY":I
    :cond_1c
    if-lez v16, :cond_1d

    move/from16 v23, v21

    goto/16 :goto_3

    :cond_1d
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 3990
    .end local v21    # "vel":I
    .end local v22    # "velX":I
    .end local v23    # "velY":I
    :cond_1e
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 3992
    .restart local v10    # "fullyConsumedVertical":Z
    :cond_1f
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 3994
    .restart local v9    # "fullyConsumedHorizontal":Z
    :cond_20
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 4000
    .restart local v8    # "fullyConsumedAny":Z
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    goto :goto_7
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v0, 0x0

    .line 4045
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    .line 4046
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 4081
    invoke-static {}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2200()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 4082
    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .prologue
    .line 4049
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    .line 4050
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v1, 0x0

    .line 4085
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 4086
    iput-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4087
    new-instance v0, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    .line 4089
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    .line 4090
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4091
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 4092
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4093
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 4096
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4097
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 4098
    return-void
.end method
