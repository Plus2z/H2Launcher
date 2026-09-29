.class Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;
.super Ljava/lang/Object;
.source "RecyclerFastScroller.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mInitialBarHeight:F

.field private mLastAppBarLayoutOffset:I

.field private mLastPressedYAdjustedToInitial:F

.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    .prologue
    .line 133
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 140
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 143
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_2

    .line 144
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandle:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 145
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->stopScroll()V

    .line 147
    const/4 v9, 0x0

    .line 148
    .local v9, "nestedScrollAxis":I
    or-int/lit8 v9, v9, 0x2

    .line 150
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->startNestedScroll(I)Z

    .line 152
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->mInitialBarHeight:F

    .line 153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v2, v2, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v2, v2, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->mLastPressedYAdjustedToInitial:F

    .line 154
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAppBarLayoutOffset:I

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->mLastAppBarLayoutOffset:I

    .line 189
    .end local v9    # "nestedScrollAxis":I
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 155
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 156
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v2, v2, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v2, v2, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float v10, v1, v2

    .line 157
    .local v10, "newHandlePressedY":F
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 158
    .local v7, "barHeight":I
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->mInitialBarHeight:F

    int-to-float v2, v7

    sub-float/2addr v1, v2

    add-float v11, v10, v1

    .line 161
    .local v11, "newHandlePressedYAdjustedToInitial":F
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->mLastPressedYAdjustedToInitial:F

    sub-float v8, v11, v1

    .line 164
    .local v8, "deltaPressedYFromLastAdjustedToInitial":F
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->mInitialBarHeight:F

    div-float v2, v8, v1

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 165
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->computeVerticalScrollRange()I

    move-result v3

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    add-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v5, v1

    .line 167
    .local v5, "dY":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mCoordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_3

    .line 168
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 169
    .local v12, "params":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$Behavior;

    .line 170
    .local v0, "behavior":Landroid/support/design/widget/AppBarLayout$Behavior;
    if-eqz v0, :cond_3

    .line 171
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mCoordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v2, v2, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    const/4 v4, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [I

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[I)V

    .line 176
    .end local v0    # "behavior":Landroid/support/design/widget/AppBarLayout$Behavior;
    .end local v12    # "params":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_3
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->mLastAppBarLayoutOffset:I

    add-int/2addr v2, v5

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget v3, v3, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAppBarLayoutOffset:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->updateRvScroll(I)V

    .line 178
    iput v11, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->mLastPressedYAdjustedToInitial:F

    .line 179
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAppBarLayoutOffset:I

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->mLastAppBarLayoutOffset:I

    goto/16 :goto_0

    .line 165
    .end local v5    # "dY":I
    :cond_4
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    goto :goto_1

    .line 180
    .end local v7    # "barHeight":I
    .end local v8    # "deltaPressedYFromLastAdjustedToInitial":F
    .end local v10    # "newHandlePressedY":F
    .end local v11    # "newHandlePressedYAdjustedToInitial":F
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 181
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->mLastPressedYAdjustedToInitial:F

    .line 183
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->stopNestedScroll()V

    .line 185
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mHandle:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 186
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->postAutoHide()V

    goto/16 :goto_0
.end method
