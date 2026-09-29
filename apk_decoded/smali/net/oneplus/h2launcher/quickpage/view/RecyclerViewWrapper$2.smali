.class Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;
.source "RecyclerViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDy:F

.field mLastDy:F

.field signDy:F

.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    .prologue
    const/4 v0, 0x0

    .line 120
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;-><init>()V

    .line 122
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->mDy:F

    .line 123
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->mLastDy:F

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V
    .locals 16
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 136
    if-nez p2, :cond_b

    .line 137
    const/4 v6, 0x0

    .line 138
    .local v6, "reachTop":Z
    const/4 v5, 0x0

    .line 139
    .local v5, "reachBottom":Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v10

    check-cast v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    .line 140
    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    .line 141
    .local v3, "firstVisibleItem":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getChildCount()I

    move-result v9

    .line 142
    .local v9, "visibleItemCount":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getItemCount()I

    move-result v7

    .line 144
    .local v7, "totalItemCount":I
    if-nez v3, :cond_0

    .line 145
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-virtual {v10, v3}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 146
    .local v2, "firstView":Landroid/view/View;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    if-ltz v10, :cond_7

    const/4 v6, 0x1

    .line 149
    .end local v2    # "firstView":Landroid/view/View;
    :cond_0
    :goto_0
    add-int v10, v3, v9

    if-ne v10, v7, :cond_1

    .line 150
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    add-int/lit8 v11, v9, -0x1

    invoke-virtual {v10, v11}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 151
    .local v4, "lastView":Landroid/view/View;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-virtual {v11}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getHeight()I

    move-result v11

    if-gt v10, v11, :cond_8

    if-lt v7, v9, :cond_8

    const/4 v5, 0x1

    .line 155
    .end local v4    # "lastView":Landroid/view/View;
    :cond_1
    :goto_1
    if-nez v6, :cond_2

    if-nez v5, :cond_2

    .line 156
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSpringAnimating:Z

    .line 159
    :cond_2
    if-nez v6, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->mLastDy:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->mDy:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-static {v10}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->access$100(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Z

    move-result v10

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-static {v10}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->access$200(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 161
    move-object/from16 v0, p0

    iget v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->mDy:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41f00000    # 30.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_9

    .line 162
    move-object/from16 v0, p0

    iget v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->mDy:F

    move-object/from16 v0, p0

    iget v11, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->mLastDy:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->mDy:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 167
    .local v8, "val":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-static {v10}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->access$300(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->signDy:F

    mul-float/2addr v11, v8

    float-to-double v12, v11

    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v12, v14

    invoke-virtual {v10, v12, v13}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->setCurrentValue(D)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-result-object v10

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v12, v13}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->setEndValue(D)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 170
    .end local v8    # "val":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-static {v10}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->access$400(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->isLongPressing()Z

    move-result v10

    if-nez v10, :cond_5

    .line 171
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    iget-boolean v10, v10, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSpringAnimating:Z

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-static {v10}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->access$300(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-result-object v10

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->getCurrentValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_a

    .line 172
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-static {v10}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->access$000(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_5

    .line 173
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-static {v10}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->access$000(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-static {v11}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->access$500(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Ljava/lang/Runnable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_5
    :goto_3
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->mLastDy:F

    .line 184
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->mDy:F

    .line 185
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->access$202(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;Z)Z

    .line 191
    .end local v3    # "firstVisibleItem":I
    .end local v5    # "reachBottom":Z
    .end local v6    # "reachTop":Z
    .end local v7    # "totalItemCount":I
    .end local v9    # "visibleItemCount":I
    :cond_6
    :goto_4
    return-void

    .line 146
    .restart local v2    # "firstView":Landroid/view/View;
    .restart local v3    # "firstVisibleItem":I
    .restart local v5    # "reachBottom":Z
    .restart local v6    # "reachTop":Z
    .restart local v7    # "totalItemCount":I
    .restart local v9    # "visibleItemCount":I
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 151
    .end local v2    # "firstView":Landroid/view/View;
    .restart local v4    # "lastView":Landroid/view/View;
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 164
    .end local v4    # "lastView":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->mDy:F

    move-object/from16 v0, p0

    iget v11, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->mLastDy:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->mDy:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v8, v10, v11

    .restart local v8    # "val":F
    goto/16 :goto_2

    .line 178
    .end local v8    # "val":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-static {v10}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->access$500(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 187
    .end local v3    # "firstVisibleItem":I
    .end local v5    # "reachBottom":Z
    .end local v6    # "reachTop":Z
    .end local v7    # "totalItemCount":I
    .end local v9    # "visibleItemCount":I
    :cond_b
    const/4 v10, 0x2

    move/from16 v0, p2

    if-ne v0, v10, :cond_6

    .line 188
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-static {v10}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->access$000(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 189
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSpringAnimating:Z

    goto :goto_4
.end method

.method public onScrolled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;->onScrolled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    .line 128
    neg-int v0, p3

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->signDy:F

    .line 129
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->mDy:F

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->mLastDy:F

    .line 130
    neg-int v0, p3

    int-to-float v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;->mDy:F

    .line 132
    return-void
.end method
