.class Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$ClockGestureDetector;
.super Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;
.source "ClockViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClockGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;Lnet/oneplus/h2launcher/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;
    .param p2, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 278
    iput-object p1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$ClockGestureDetector;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    .line 279
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    .line 280
    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 295
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$ClockGestureDetector;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-static {v0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->access$300(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/Workspace;->performHapticFeedback(II)Z

    .line 297
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$ClockGestureDetector;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-static {v0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->access$300(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/Launcher;->showOverviewMode(Z)V

    .line 298
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 284
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$ClockGestureDetector;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    iget-object v0, v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$ClockGestureDetector;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    iget v3, v3, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mSlop:F

    invoke-static {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->pointInRect(Landroid/graphics/Rect;FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$ClockGestureDetector;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-static {v1}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->access$600(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$ClockGestureDetector;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    iget v1, v1, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$ClockGestureDetector;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-static {v1}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->access$700(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$ClockGestureDetector;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    iget v1, v1, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->mSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 287
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$ClockGestureDetector;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->startClockActivity()V

    .line 288
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
