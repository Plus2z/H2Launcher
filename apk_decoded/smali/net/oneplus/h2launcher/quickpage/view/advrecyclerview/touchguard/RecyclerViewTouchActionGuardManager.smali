.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;
.super Ljava/lang/Object;
.source "RecyclerViewTouchActionGuardManager.java"


# static fields
.field private static final LOCAL_LOGD:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "ARVTouchActionGuardMgr"


# instance fields
.field private mDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

.field private mEnableMoveEvents:Z

.field private mEnableScrolling:Z

.field private mEnabled:Z

.field private mGuarding:Z

.field private mInitialTouchY:I

.field private mInterceptScrollingWhileAnimationRunning:Z

.field private mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

.field private mItemInteractionStarted:Z

.field private mLastTouchY:I

.field private mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mEnableScrolling:Z

    .line 48
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mEnableMoveEvents:Z

    .line 57
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager$1;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    .line 73
    return-void
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mLastTouchY:I

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mInitialTouchY:I

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mGuarding:Z

    .line 203
    return-void
.end method

.method private handleActionMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 175
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mGuarding:Z

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mLastTouchY:I

    .line 178
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mLastTouchY:I

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mInitialTouchY:I

    sub-int v0, v1, v2

    .line 180
    .local v0, "distance":I
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mInterceptScrollingWhileAnimationRunning:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mTouchSlop:I

    if-le v1, v2, :cond_0

    .line 181
    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->isAnimationRunning(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mGuarding:Z

    .line 186
    .end local v0    # "distance":I
    :cond_0
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mGuarding:Z

    return v1
.end method

.method private handleActionUpOrCancel()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mGuarding:Z

    .line 196
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mInitialTouchY:I

    .line 197
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mLastTouchY:I

    .line 198
    return-void
.end method

.method private static isAnimationRunning(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 2
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getItemAnimator()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 191
    .local v0, "itemAnimator":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public attachRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 2
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 90
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Accessing released object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView instance has already been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 99
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addOnItemTouchListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;)V

    .line 101
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mTouchSlop:I

    .line 102
    return-void
.end method

.method public hasItemInteractionStarted()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mItemInteractionStarted:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mEnabled:Z

    return v0
.end method

.method public isInterceptScrollingWhileAnimationRunning()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mInterceptScrollingWhileAnimationRunning:Z

    return v0
.end method

.method public isReleased()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onInterceptTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mEnableMoveEvents:Z

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 152
    :cond_0
    :goto_0
    return v1

    .line 127
    :cond_1
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mEnableScrolling:Z

    if-eqz v2, :cond_0

    .line 131
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 137
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_0
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 140
    :pswitch_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->handleActionUpOrCancel()V

    goto :goto_0

    .line 148
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->handleActionMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method onTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 156
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mEnabled:Z

    if-nez v1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 166
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 169
    :pswitch_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->handleActionUpOrCancel()V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeOnItemTouchListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;)V

    .line 121
    :cond_0
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mInternalUseOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    .line 122
    iput-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 123
    return-void
.end method

.method public setDragDropManager(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;)V
    .locals 0
    .param p1, "dragDropManager"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    .prologue
    .line 109
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    .line 110
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 212
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mEnabled:Z

    if-ne v0, p1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mEnabled:Z

    .line 217
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mEnabled:Z

    if-nez v0, :cond_0

    .line 218
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->handleActionUpOrCancel()V

    goto :goto_0
.end method

.method public setInterceptVerticalScrollingWhileAnimationRunning(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mInterceptScrollingWhileAnimationRunning:Z

    .line 259
    return-void
.end method

.method public setItemInteractionStarted(Z)V
    .locals 0
    .param p1, "itemInteractionStarted"    # Z

    .prologue
    .line 285
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mItemInteractionStarted:Z

    .line 286
    return-void
.end method

.method public setMoveEventsEnabled(Z)V
    .locals 0
    .param p1, "moveEventsEnabled"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mEnableMoveEvents:Z

    .line 241
    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 2
    .param p1, "scrollingEnabled"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mEnableScrolling:Z

    .line 230
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mEnableScrolling:Z

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->setScrollingEnabled(Z)V

    .line 231
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->mDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->cancelDrag()V

    .line 232
    return-void
.end method
