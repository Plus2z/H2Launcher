.class Lnet/oneplus/h2launcher/DragController$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/DragController;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/DragController;)V
    .locals 0

    .prologue
    .line 1041
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;->this$0:Lnet/oneplus/h2launcher/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1042
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1045
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;->this$0:Lnet/oneplus/h2launcher/DragController;

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragController;->mDragScroller:Lnet/oneplus/h2launcher/DragScroller;

    if-eqz v0, :cond_0

    .line 1046
    iget v0, p0, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_1

    .line 1047
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;->this$0:Lnet/oneplus/h2launcher/DragController;

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragController;->mDragScroller:Lnet/oneplus/h2launcher/DragScroller;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/DragScroller;->scrollLeft()V

    .line 1051
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;->this$0:Lnet/oneplus/h2launcher/DragController;

    iput v2, v0, Lnet/oneplus/h2launcher/DragController;->mScrollState:I

    .line 1052
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;->this$0:Lnet/oneplus/h2launcher/DragController;

    iput v2, v0, Lnet/oneplus/h2launcher/DragController;->mDistanceSinceScroll:I

    .line 1053
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;->this$0:Lnet/oneplus/h2launcher/DragController;

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragController;->mDragScroller:Lnet/oneplus/h2launcher/DragScroller;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/DragScroller;->onExitScrollArea()Z

    .line 1054
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;->this$0:Lnet/oneplus/h2launcher/DragController;

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragLayer;->onExitScrollArea()V

    .line 1056
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;->this$0:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;->this$0:Lnet/oneplus/h2launcher/DragController;

    iget-object v1, p0, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;->this$0:Lnet/oneplus/h2launcher/DragController;

    iget-object v1, v1, Lnet/oneplus/h2launcher/DragController;->mLastTouch:[I

    aget v1, v1, v2

    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;->this$0:Lnet/oneplus/h2launcher/DragController;

    iget-object v2, v2, Lnet/oneplus/h2launcher/DragController;->mLastTouch:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/DragController;->checkScrollState(II)V

    .line 1061
    :cond_0
    return-void

    .line 1049
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;->this$0:Lnet/oneplus/h2launcher/DragController;

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragController;->mDragScroller:Lnet/oneplus/h2launcher/DragScroller;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/DragScroller;->scrollRight()V

    goto :goto_0
.end method

.method setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 1064
    iput p1, p0, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;->mDirection:I

    .line 1065
    return-void
.end method
