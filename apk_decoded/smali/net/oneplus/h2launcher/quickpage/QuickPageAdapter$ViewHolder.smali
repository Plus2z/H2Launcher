.class Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractDraggableItemViewHolder;
.source "QuickPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field activePointerId:I

.field card:Lcom/oneplus/lib/widget/cardview/CardView;

.field container:Lnet/oneplus/h2launcher/quickpage/widget/SpringFrameLayout;

.field contentHolder:Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;

.field dismissButton:Landroid/view/View;

.field dragHandle:Landroid/view/View;

.field dragHandleDrawable:Landroid/view/View;

.field dragHandleTouchable:Landroid/view/View;

.field handleMinHeight:I

.field handleParams:Landroid/widget/FrameLayout$LayoutParams;

.field holderParams:Landroid/widget/FrameLayout$LayoutParams;

.field initialHandleHeight:F

.field initialHolderHeight:F

.field initialY:F

.field isAnimating:Z

.field isResizing:Z

.field item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

.field position:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;Landroid/view/View;)V
    .locals 3
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 118
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .line 119
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractDraggableItemViewHolder;-><init>(Landroid/view/View;)V

    .line 109
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->initialY:F

    .line 110
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->initialHolderHeight:F

    .line 111
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->initialHandleHeight:F

    .line 113
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->isResizing:Z

    .line 114
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->isAnimating:Z

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->activePointerId:I

    move-object v0, p2

    .line 121
    check-cast v0, Lnet/oneplus/h2launcher/quickpage/widget/SpringFrameLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->container:Lnet/oneplus/h2launcher/quickpage/widget/SpringFrameLayout;

    .line 122
    const v0, 0x7f1100ca

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/cardview/CardView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->card:Lcom/oneplus/lib/widget/cardview/CardView;

    .line 123
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->card:Lcom/oneplus/lib/widget/cardview/CardView;

    if-eqz v0, :cond_0

    .line 124
    const v0, 0x7f1101db

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->contentHolder:Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;

    .line 125
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->contentHolder:Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->contentHolder:Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;

    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->setTouchGuardManager(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;)V

    .line 130
    :cond_0
    const v0, 0x7f1101dd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandle:Landroid/view/View;

    .line 131
    const v0, 0x7f1101de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandleDrawable:Landroid/view/View;

    .line 132
    const v0, 0x7f1101df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandleTouchable:Landroid/view/View;

    .line 133
    const v0, 0x7f1101e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dismissButton:Landroid/view/View;

    .line 134
    return-void
.end method


# virtual methods
.method public actionUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandleTouchable:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 316
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 317
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->setMoveEventsEnabled(Z)V

    .line 320
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->updateItemHeight()V

    .line 321
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->onItemResizeFinished()V

    .line 322
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->isResizing:Z

    .line 323
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->initialY:F

    .line 325
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$400(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$400(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;

    move-result-object v1

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->position:I

    invoke-interface {v1, v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;->onItemResizeFinished(I)V

    .line 330
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 331
    .local v0, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getViewType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 344
    :goto_0
    const-string v1, "tile_height"

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .line 345
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 348
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v1

    const-string v2, "launcher.shelf"

    invoke-virtual {v1, v2, v0}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/util/Map;)V

    .line 351
    :cond_1
    return-void

    .line 333
    :pswitch_0
    const-string v1, "fa_board_size"

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .line 334
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 338
    :pswitch_1
    const-string v1, "fc_board_size"

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .line 340
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 309
    const/4 v8, 0x0

    :goto_0
    return v8

    .line 140
    :sswitch_0
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$100(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->isResizing:Z

    if-eqz v8, :cond_1

    .line 141
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 207
    :cond_2
    :goto_1
    const/4 v8, 0x1

    goto :goto_0

    .line 146
    :pswitch_0
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dismissButton:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 147
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->activePointerId:I

    .line 148
    const/4 v8, 0x1

    goto :goto_0

    .line 150
    :pswitch_1
    const/4 v8, 0x1

    goto :goto_0

    .line 153
    :pswitch_2
    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->activePointerId:I

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 154
    .local v7, "pointerIndex":I
    if-gez v7, :cond_3

    .line 155
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error processing scroll; pointer index for id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->activePointerId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v8, 0x0

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v0, v8

    .line 161
    .local v0, "currentX":I
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v1, v8

    .line 163
    .local v1, "currentY":I
    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    if-ge v0, v8, :cond_2

    if-lez v1, :cond_2

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 165
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dismissButton:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 167
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dismissButton:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dismissButton:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandle:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandleDrawable:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandleTouchable:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->setEditing(Z)V

    .line 174
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "onPerformAction delete item=%s , position=%d "

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .line 175
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->position:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 174
    invoke-static {v8, v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$300(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-result-object v8

    iget v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->position:I

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->removeItem(I)V

    .line 178
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    iget v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->position:I

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->notifyItemRemoved(I)V

    .line 180
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$400(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 181
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$400(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;

    move-result-object v8

    iget v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->position:I

    invoke-interface {v8, v9}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;->onItemRemoved(I)V

    .line 185
    :cond_4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v5, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getViewType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 187
    const-string v8, "widget_remove"

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .line 188
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    .line 187
    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v8, "widget_count"

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .line 190
    invoke-virtual {v9}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->getWidgetCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 189
    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :goto_2
    const-string v8, "tile_count"

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .line 197
    invoke-static {v9}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$500(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 196
    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 200
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v8

    const-string v9, "launcher.shelf"

    .line 201
    invoke-virtual {v8, v9, v5}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 192
    :cond_5
    const-string v8, "board_remove"

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .line 193
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    .line 192
    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 211
    .end local v0    # "currentX":I
    .end local v1    # "currentY":I
    .end local v5    # "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "pointerIndex":I
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    .line 301
    :cond_6
    :goto_3
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 213
    :pswitch_3
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandleTouchable:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 214
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->setMoveEventsEnabled(Z)V

    .line 215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->initialY:F

    .line 218
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->contentHolder:Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->holderParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 219
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->holderParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-gez v8, :cond_7

    .line 220
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->holderParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->contentHolder:Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->getMeasuredHeight()I

    move-result v9

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 222
    :cond_7
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->holderParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v8, v8

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->initialHolderHeight:F

    .line 224
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandle:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->handleParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 225
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->handleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v9}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$600(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->holderParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v8, v9, :cond_8

    .line 227
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->handleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->holderParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v10, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v10}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$600(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 229
    :cond_8
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getMinHeight()I

    move-result v8

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v9}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$600(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->handleMinHeight:I

    .line 230
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->handleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v8, v8

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->initialHandleHeight:F

    .line 231
    const/4 v8, 0x1

    iput-boolean v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->isResizing:Z

    goto/16 :goto_3

    .line 234
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->initialY:F

    sub-float v2, v8, v9

    .line 235
    .local v2, "deltaY":F
    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->initialHolderHeight:F

    add-float/2addr v8, v2

    float-to-int v4, v8

    .line 236
    .local v4, "holderHeight":I
    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->initialHandleHeight:F

    add-float/2addr v8, v2

    float-to-int v3, v8

    .line 238
    .local v3, "handleHeight":I
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getMinHeight()I

    move-result v8

    if-lt v4, v8, :cond_a

    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .line 239
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getMaxHeight()I

    move-result v8

    if-gt v4, v8, :cond_a

    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .line 240
    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$600(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I

    move-result v8

    add-int/2addr v8, v4

    if-gt v8, v3, :cond_a

    .line 242
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->holderParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 243
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->handleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->holderParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v10, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v10}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$600(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 244
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->contentHolder:Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->requestLayout()V

    .line 245
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandle:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->requestLayout()V

    .line 246
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    invoke-virtual {v8, v4}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->onItemResizeProgress(I)V

    .line 290
    :cond_9
    :goto_4
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$400(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 291
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$400(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;

    move-result-object v8

    iget v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->position:I

    iget-object v10, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v8, v9, v10}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;->onItemResized(ILandroid/view/View;)V

    goto/16 :goto_3

    .line 247
    :cond_a
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getMaxHeight()I

    move-result v8

    if-gt v4, v8, :cond_b

    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .line 248
    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$600(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I

    move-result v8

    sub-int v8, v3, v8

    if-gt v8, v4, :cond_b

    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->handleMinHeight:I

    if-lt v3, v8, :cond_b

    .line 251
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->holderParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getMinHeight()I

    move-result v9

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 252
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->contentHolder:Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->requestLayout()V

    .line 253
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->handleParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 254
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandle:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->requestLayout()V

    goto :goto_4

    .line 256
    :cond_b
    iget v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->handleMinHeight:I

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getMaxHeight()I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v6, v8, 0x2

    .line 257
    .local v6, "middle":I
    if-ge v3, v6, :cond_c

    .line 258
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->handleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->handleMinHeight:I

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 265
    :goto_5
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandle:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->requestLayout()V

    .line 268
    iget-boolean v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->isAnimating:Z

    if-nez v8, :cond_9

    .line 269
    const/4 v8, 0x1

    iput-boolean v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->isAnimating:Z

    .line 271
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandleDrawable:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/high16 v9, 0x3fc00000    # 1.5f

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/high16 v9, 0x3fc00000    # 1.5f

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 272
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .line 273
    invoke-static {v9}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$700(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 274
    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder$1;

    invoke-direct {v9, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder$1;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;)V

    .line 275
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_4

    .line 260
    :cond_c
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->holderParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getMaxHeight()I

    move-result v9

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 261
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->contentHolder:Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->requestLayout()V

    .line 263
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->handleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getMaxHeight()I

    move-result v9

    iget-object v10, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v10}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$600(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_5

    .line 296
    .end local v2    # "deltaY":F
    .end local v3    # "handleHeight":I
    .end local v4    # "holderHeight":I
    .end local v6    # "middle":I
    :pswitch_5
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->actionUp()V

    goto/16 :goto_3

    .line 305
    :sswitch_2
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$100(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$800(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I

    move-result v8

    iget v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->position:I

    if-ne v8, v9, :cond_d

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 138
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1100ca -> :sswitch_2
        0x7f1101df -> :sswitch_1
        0x7f1101e0 -> :sswitch_0
    .end sparse-switch

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 211
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method setContent(Lnet/oneplus/h2launcher/quickpage/QuickPageItem;I)V
    .locals 9
    .param p1, "item"    # Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    .param p2, "position"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 354
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .line 355
    iput p2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->position:I

    .line 357
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getViewType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 358
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->card:Lcom/oneplus/lib/widget/cardview/CardView;

    invoke-virtual {v4, v6}, Lcom/oneplus/lib/widget/cardview/CardView;->setCardBackgroundColor(I)V

    .line 359
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->card:Lcom/oneplus/lib/widget/cardview/CardView;

    invoke-virtual {v4, v7}, Lcom/oneplus/lib/widget/cardview/CardView;->setRadius(F)V

    .line 360
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->card:Lcom/oneplus/lib/widget/cardview/CardView;

    invoke-virtual {v4, v7}, Lcom/oneplus/lib/widget/cardview/CardView;->setCardElevation(F)V

    .line 364
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->contentHolder:Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->removeAllViews()V

    .line 365
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getParent()Landroid/view/View;

    move-result-object v0

    .line 366
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 367
    .local v1, "contentParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 368
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 370
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->contentHolder:Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;

    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->addView(Landroid/view/View;)V

    .line 371
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->contentHolder:Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, -0x2

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 373
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->onItemViewAttached()V

    .line 375
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getView()Landroid/view/View;

    move-result-object v2

    .line 376
    .local v2, "contentView":Landroid/view/View;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getEmptyView()Landroid/view/View;

    move-result-object v3

    .line 377
    .local v3, "emptyView":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 378
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 379
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 380
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 388
    :cond_2
    :goto_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->contentHolder:Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;

    invoke-virtual {v4, p1}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->setTag(Ljava/lang/Object;)V

    .line 390
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->updateItemEditableLayout()V

    .line 391
    return-void

    .line 382
    :cond_3
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 383
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method updateItemEditableLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 394
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->contentHolder:Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v6}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$100(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->setEditable(Z)V

    .line 396
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    iget v6, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->position:I

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->isItemEditable(I)Z

    move-result v0

    .line 397
    .local v0, "isRemovable":Z
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    iget v6, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->position:I

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$900(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .line 398
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getViewType()I

    move-result v5

    if-ne v5, v3, :cond_0

    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .line 399
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->hasScrollableContent()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->isVerticalResizable()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v4

    .line 401
    .local v1, "isResizable":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 402
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->card:Lcom/oneplus/lib/widget/cardview/CardView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/cardview/CardView;->setCardElevation(F)V

    .line 403
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dismissButton:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dismissButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 413
    :goto_1
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->isResizing:Z

    if-eqz v5, :cond_1

    .line 415
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->updateItemHeight()V

    .line 416
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->isResizing:Z

    .line 419
    :cond_1
    if-eqz v1, :cond_6

    .line 420
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    iget v6, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->position:I

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->isItemEditable(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 421
    .local v2, "visibility":I
    :goto_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandle:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 422
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandleDrawable:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandleTouchable:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandleTouchable:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 425
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandleTouchable:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 433
    .end local v2    # "visibility":I
    :goto_3
    return-void

    .end local v1    # "isResizable":Z
    :cond_2
    move v1, v2

    .line 399
    goto :goto_0

    .line 406
    .restart local v1    # "isResizable":Z
    :cond_3
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->getItemViewType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    .line 407
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->card:Lcom/oneplus/lib/widget/cardview/CardView;

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v6}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$1000(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/cardview/CardView;->setCardElevation(F)V

    .line 409
    :cond_4
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dismissButton:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dismissButton:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    :cond_5
    move v2, v3

    .line 420
    goto :goto_2

    .line 427
    :cond_6
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandle:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandleDrawable:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandleTouchable:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandleTouchable:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    .line 431
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandleTouchable:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_3
.end method

.method updateItemHeight()V
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->holderParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->item:Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->holderParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getStandardHeight(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 437
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->contentHolder:Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->requestLayout()V

    .line 438
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->handleParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 439
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->dragHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 440
    return-void
.end method
