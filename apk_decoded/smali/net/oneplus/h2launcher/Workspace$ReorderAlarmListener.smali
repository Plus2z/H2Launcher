.class Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lnet/oneplus/h2launcher/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReorderAlarmListener"
.end annotation


# instance fields
.field child:Landroid/view/View;

.field dragView:Lnet/oneplus/h2launcher/DragView;

.field dragViewCenter:[F

.field minSpanX:I

.field minSpanY:I

.field spanX:I

.field spanY:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/Workspace;[FIIIILnet/oneplus/h2launcher/DragView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;
    .param p2, "dragViewCenter"    # [F
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "dragView"    # Lnet/oneplus/h2launcher/DragView;
    .param p8, "child"    # Landroid/view/View;

    .prologue
    .line 3681
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3682
    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->dragViewCenter:[F

    .line 3683
    iput p3, p0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->minSpanX:I

    .line 3684
    iput p4, p0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->minSpanY:I

    .line 3685
    iput p5, p0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->spanX:I

    .line 3686
    iput p6, p0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->spanY:I

    .line 3687
    iput-object p8, p0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    .line 3688
    iput-object p7, p0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->dragView:Lnet/oneplus/h2launcher/DragView;

    .line 3689
    return-void
.end method


# virtual methods
.method public onAlarm(Lnet/oneplus/h2launcher/Alarm;)V
    .locals 23
    .param p1, "alarm"    # Lnet/oneplus/h2launcher/Alarm;

    .prologue
    .line 3692
    const/4 v1, 0x2

    new-array v10, v1, [I

    .line 3693
    .local v10, "resultSpan":[I
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v3, v3, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->minSpanX:I

    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->minSpanY:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v6, v6, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v7, v7, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    invoke-virtual/range {v1 .. v7}, Lnet/oneplus/h2launcher/Workspace;->findNearestArea(IIIILnet/oneplus/h2launcher/CellLayout;[I)[I

    move-result-object v1

    iput-object v1, v8, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    .line 3696
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, v1, Lnet/oneplus/h2launcher/Workspace;->mLastReorderX:I

    .line 3697
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iput v2, v1, Lnet/oneplus/h2launcher/Workspace;->mLastReorderY:I

    .line 3699
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v3, v3, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->minSpanX:I

    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->minSpanY:I

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->spanX:I

    move-object/from16 v0, p0

    iget v7, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v9, v9, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v11, 0x1

    invoke-virtual/range {v1 .. v11}, Lnet/oneplus/h2launcher/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v1

    iput-object v1, v12, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    .line 3703
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ltz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-gez v1, :cond_2

    .line 3704
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->revertTempState()V

    .line 3709
    :goto_0
    const/4 v1, 0x0

    aget v1, v10, v1

    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->spanX:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget v1, v10, v1

    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->spanY:I

    if-eq v1, v2, :cond_3

    :cond_1
    const/16 v20, 0x1

    .line 3710
    .local v20, "resize":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v11, v1, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v13, v1, Lnet/oneplus/h2launcher/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v15, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v2, 0x0

    aget v16, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v2, 0x1

    aget v17, v1, v2

    const/4 v1, 0x0

    aget v18, v10, v1

    const/4 v1, 0x1

    aget v19, v10, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->dragView:Lnet/oneplus/h2launcher/DragView;

    .line 3713
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v22

    .line 3710
    invoke-virtual/range {v11 .. v22}, Lnet/oneplus/h2launcher/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 3714
    return-void

    .line 3706
    .end local v20    # "resize":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/Workspace;->setDragMode(I)V

    goto :goto_0

    .line 3709
    :cond_3
    const/16 v20, 0x0

    goto :goto_1
.end method
