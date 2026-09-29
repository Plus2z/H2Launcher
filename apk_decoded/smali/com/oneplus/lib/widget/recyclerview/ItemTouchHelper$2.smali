.class Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 287
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v5}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$400(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/GestureDetector;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 291
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 292
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 293
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    .line 294
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v5, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    .line 295
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v5, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    .line 296
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v5}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$500(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V

    .line 297
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v5, v5, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-nez v5, :cond_1

    .line 298
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v5, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$600(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;)Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    move-result-object v1

    .line 299
    .local v1, "animation":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    if-eqz v1, :cond_1

    .line 300
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v6, v5, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    iget v7, v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    .line 301
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v6, v5, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    iget v7, v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    .line 302
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v6, v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-static {v5, v6, v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$700(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)I

    .line 303
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v5, v5, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v6, v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v6, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 304
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v5, v5, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v6

    iget-object v7, v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->clearView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 306
    :cond_0
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v6, v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget v7, v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-static {v5, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$800(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 307
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v6, v6, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedFlags:I

    invoke-static {v5, p2, v6, v4}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$900(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 324
    .end local v1    # "animation":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v5}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 325
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v5}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 327
    :cond_2
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v5, v5, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v5, :cond_6

    :goto_1
    return v3

    .line 310
    :cond_3
    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    if-ne v0, v3, :cond_5

    .line 311
    :cond_4
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iput v6, v5, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    .line 312
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$800(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 313
    :cond_5
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v5, v5, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    if-eq v5, v6, :cond_1

    .line 316
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v5, v5, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 320
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 321
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v5, v0, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1000(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z

    goto :goto_0

    .end local v2    # "index":I
    :cond_6
    move v3, v4

    .line 327
    goto :goto_1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 395
    if-nez p1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$800(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v9, 0x3e8

    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 332
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$400(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/GestureDetector;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 337
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 338
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 340
    :cond_0
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v6, v6, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    if-ne v6, v8, :cond_2

    .line 391
    :cond_1
    :goto_0
    return-void

    .line 343
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 344
    .local v0, "action":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v6, v6, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 345
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_3

    .line 346
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v6, v0, p2, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1000(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z

    .line 348
    :cond_3
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v5, v6, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 349
    .local v5, "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v5, :cond_1

    .line 352
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 366
    :pswitch_1
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 367
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .line 368
    invoke-static {v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMaxFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v9, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 370
    :cond_4
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    const/4 v7, 0x0

    invoke-static {v6, v7, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$800(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 371
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iput v8, v6, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    goto :goto_0

    .line 355
    :pswitch_2
    if-ltz v1, :cond_1

    .line 356
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedFlags:I

    invoke-static {v6, p2, v7, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$900(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 357
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v6, v5}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 358
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$200(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 359
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$200(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 360
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->invalidate()V

    goto :goto_0

    .line 374
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 375
    .local v4, "pointerIndex":I
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 376
    .local v3, "pointerId":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v6, v6, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    if-ne v3, v6, :cond_1

    .line 377
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 378
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .line 380
    invoke-static {v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMaxFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    .line 379
    invoke-virtual {v6, v9, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 384
    :cond_5
    if-nez v4, :cond_6

    const/4 v2, 0x1

    .line 385
    .local v2, "newPointerIndex":I
    :cond_6
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    .line 386
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedFlags:I

    invoke-static {v6, p2, v7, v4}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$900(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    goto/16 :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
