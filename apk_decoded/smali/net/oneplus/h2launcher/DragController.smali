.class public Lnet/oneplus/h2launcher/DragController;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Lnet/oneplus/h2launcher/util/TouchController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/DragController$ScrollRunnable;,
        Lnet/oneplus/h2launcher/DragController$DragListener;
    }
.end annotation


# static fields
.field public static DRAG_ACTION_COPY:I = 0x0

.field public static DRAG_ACTION_MOVE:I = 0x0

.field private static final MAX_FLING_DEGREES:F = 35.0f

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field public static final RESCROLL_DELAY:I = 0x384

.field public static final SCROLL_DELAY:I = 0x1f4

.field static final SCROLL_LEFT:I = 0x0

.field static final SCROLL_NONE:I = -0x1

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Launcher.DragController"


# instance fields
.field private final TWO_FINGER_SCROLL_NONE_SCROLL_X:I

.field private final TWO_FINGER_SCROLL_THRESHOLD:I

.field private final mCoordinatesTemp:[I

.field mDistanceSinceScroll:I

.field private mDragLayerRect:Landroid/graphics/Rect;

.field private mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

.field mDragScroller:Lnet/oneplus/h2launcher/DragScroller;

.field private mDragging:Z

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mFlingToDeleteDropTarget:Lnet/oneplus/h2launcher/DropTarget;

.field protected mFlingToDeleteThresholdVelocity:I

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAccessibleDrag:Z

.field private final mIsRtl:Z

.field private mLastDropTarget:Lnet/oneplus/h2launcher/DropTarget;

.field mLastTouch:[I

.field mLastTouchUpTime:J

.field mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mMoveTarget:Landroid/view/View;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lnet/oneplus/h2launcher/DragController$ScrollRunnable;

.field mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mScrollZone:I

.field private mSecondDownX:F

.field private mSecondPointIndex:I

.field private mSecondStartScrollX:F

.field private mTmpPoint:[I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput v0, Lnet/oneplus/h2launcher/DragController;->DRAG_ACTION_MOVE:I

    .line 60
    const/4 v0, 0x1

    sput v0, Lnet/oneplus/h2launcher/DragController;->DRAG_ACTION_COPY:I

    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 6
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 81
    new-array v2, v5, [I

    iput-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mCoordinatesTemp:[I

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mListeners:Ljava/util/ArrayList;

    .line 132
    iput v4, p0, Lnet/oneplus/h2launcher/DragController;->mScrollState:I

    .line 133
    new-instance v2, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;-><init>(Lnet/oneplus/h2launcher/DragController;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mScrollRunnable:Lnet/oneplus/h2launcher/DragController$ScrollRunnable;

    .line 139
    new-array v2, v5, [I

    iput-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mLastTouch:[I

    .line 140
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lnet/oneplus/h2launcher/DragController;->mLastTouchUpTime:J

    .line 141
    iput v4, p0, Lnet/oneplus/h2launcher/DragController;->mDistanceSinceScroll:I

    .line 143
    new-array v2, v5, [I

    iput-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mTmpPoint:[I

    .line 144
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    .line 149
    const/4 v2, -0x1

    iput v2, p0, Lnet/oneplus/h2launcher/DragController;->TWO_FINGER_SCROLL_NONE_SCROLL_X:I

    .line 150
    const/16 v2, 0x96

    iput v2, p0, Lnet/oneplus/h2launcher/DragController;->TWO_FINGER_SCROLL_THRESHOLD:I

    .line 152
    const/4 v2, 0x0

    iput v2, p0, Lnet/oneplus/h2launcher/DragController;->mSecondDownX:F

    .line 153
    iput v4, p0, Lnet/oneplus/h2launcher/DragController;->mSecondPointIndex:I

    .line 154
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lnet/oneplus/h2launcher/DragController;->mSecondStartScrollX:F

    .line 182
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 183
    .local v1, "r":Landroid/content/res/Resources;
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 184
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mHandler:Landroid/os/Handler;

    .line 185
    const v2, 0x7f0c0172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/DragController;->mScrollZone:I

    .line 186
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 188
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 189
    .local v0, "density":F
    const v2, 0x7f0f0012

    .line 190
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lnet/oneplus/h2launcher/DragController;->mFlingToDeleteThresholdVelocity:I

    .line 191
    invoke-static {v1}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    iput-boolean v2, p0, Lnet/oneplus/h2launcher/DragController;->mIsRtl:Z

    .line 192
    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1014
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1015
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1017
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1018
    return-void
.end method

.method private checkTouchMove(Lnet/oneplus/h2launcher/DropTarget;)V
    .locals 2
    .param p1, "dropTarget"    # Lnet/oneplus/h2launcher/DropTarget;

    .prologue
    .line 576
    if-eqz p1, :cond_3

    .line 577
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mLastDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    if-eq v0, p1, :cond_1

    .line 578
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mLastDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mLastDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    iget-object v1, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/DropTarget;->onDragExit(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 581
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lnet/oneplus/h2launcher/DropTarget;->onDragEnter(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 583
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lnet/oneplus/h2launcher/DropTarget;->onDragOver(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 589
    :cond_2
    :goto_0
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragController;->mLastDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    .line 590
    return-void

    .line 585
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mLastDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    if-eqz v0, :cond_2

    .line 586
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mLastDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    iget-object v1, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/DropTarget;->onDragExit(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    goto :goto_0
.end method

.method private clearScrollRunnable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 541
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/oneplus/h2launcher/DragController;->mScrollRunnable:Lnet/oneplus/h2launcher/DragController$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 542
    iget v0, p0, Lnet/oneplus/h2launcher/DragController;->mScrollState:I

    if-ne v0, v2, :cond_0

    .line 543
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/DragController;->mScrollState:I

    .line 544
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mScrollRunnable:Lnet/oneplus/h2launcher/DragController$ScrollRunnable;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;->setDirection(I)V

    .line 545
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mDragScroller:Lnet/oneplus/h2launcher/DragScroller;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/DragScroller;->onExitScrollArea()Z

    .line 546
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragLayer;->onExitScrollArea()V

    .line 548
    :cond_0
    return-void
.end method

.method private drop(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 927
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragController;->mCoordinatesTemp:[I

    .line 928
    .local v1, "coordinates":[I
    float-to-int v3, p1

    float-to-int v4, p2

    invoke-direct {p0, v3, v4, v1}, Lnet/oneplus/h2launcher/DragController;->findDropTarget(II[I)Lnet/oneplus/h2launcher/DropTarget;

    move-result-object v2

    .line 930
    .local v2, "dropTarget":Lnet/oneplus/h2launcher/DropTarget;
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    aget v4, v1, v5

    iput v4, v3, Lnet/oneplus/h2launcher/DropTarget$DragObject;->x:I

    .line 931
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    aget v4, v1, v6

    iput v4, v3, Lnet/oneplus/h2launcher/DropTarget$DragObject;->y:I

    .line 932
    const/4 v0, 0x0

    .line 933
    .local v0, "accepted":Z
    if-eqz v2, :cond_0

    .line 934
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iput-boolean v6, v3, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragComplete:Z

    .line 935
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lnet/oneplus/h2launcher/DropTarget;->onDragExit(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 936
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lnet/oneplus/h2launcher/DropTarget;->acceptDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 937
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lnet/oneplus/h2launcher/DropTarget;->onDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 938
    const/4 v0, 0x1

    .line 941
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iget-object v3, v3, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    check-cast v2, Landroid/view/View;

    .end local v2    # "dropTarget":Lnet/oneplus/h2launcher/DropTarget;
    iget-object v4, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-interface {v3, v2, v4, v5, v0}, Lnet/oneplus/h2launcher/DragSource;->onDropCompleted(Landroid/view/View;Lnet/oneplus/h2launcher/DropTarget$DragObject;ZZ)V

    .line 942
    return-void
.end method

.method private dropOnFlingToDeleteTarget(FFLandroid/graphics/PointF;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "vel"    # Landroid/graphics/PointF;

    .prologue
    const/4 v5, 0x1

    .line 900
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragController;->mCoordinatesTemp:[I

    .line 902
    .local v1, "coordinates":[I
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    const/4 v3, 0x0

    aget v3, v1, v3

    iput v3, v2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->x:I

    .line 903
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    aget v3, v1, v5

    iput v3, v2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->y:I

    .line 907
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mLastDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mFlingToDeleteDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    iget-object v3, p0, Lnet/oneplus/h2launcher/DragController;->mLastDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    if-eq v2, v3, :cond_0

    .line 908
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mLastDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    iget-object v3, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lnet/oneplus/h2launcher/DropTarget;->onDragExit(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 912
    :cond_0
    const/4 v0, 0x0

    .line 913
    .local v0, "accepted":Z
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mFlingToDeleteDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    iget-object v3, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lnet/oneplus/h2launcher/DropTarget;->onDragEnter(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 916
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iput-boolean v5, v2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragComplete:Z

    .line 917
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mFlingToDeleteDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    iget-object v3, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lnet/oneplus/h2launcher/DropTarget;->onDragExit(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 918
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mFlingToDeleteDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    iget-object v3, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lnet/oneplus/h2launcher/DropTarget;->acceptDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 919
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mFlingToDeleteDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    iget-object v3, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-interface {v2, v3, p3}, Lnet/oneplus/h2launcher/DropTarget;->onFlingToDelete(Lnet/oneplus/h2launcher/DropTarget$DragObject;Landroid/graphics/PointF;)V

    .line 920
    const/4 v0, 0x1

    .line 922
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iget-object v3, v2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mFlingToDeleteDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    check-cast v2, Landroid/view/View;

    iget-object v4, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-interface {v3, v2, v4, v5, v0}, Lnet/oneplus/h2launcher/DragSource;->onDropCompleted(Landroid/view/View;Lnet/oneplus/h2launcher/DropTarget$DragObject;ZZ)V

    .line 924
    return-void
.end method

.method private endDrag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 409
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragging:Z

    if-eqz v2, :cond_1

    .line 410
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/DragController;->mDragging:Z

    .line 411
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/DragController;->mIsAccessibleDrag:Z

    .line 412
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DragController;->clearScrollRunnable()V

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "isDeferred":Z
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iget-object v2, v2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    if-eqz v2, :cond_0

    .line 415
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iget-boolean v0, v2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 416
    if-nez v0, :cond_0

    .line 417
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iget-object v2, v2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/DragView;->remove()V

    .line 422
    :cond_0
    if-nez v0, :cond_1

    .line 423
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lnet/oneplus/h2launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/DragController$DragListener;

    .line 424
    .local v1, "listener":Lnet/oneplus/h2launcher/DragController$DragListener;
    invoke-interface {v1}, Lnet/oneplus/h2launcher/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    .line 429
    .end local v0    # "isDeferred":Z
    .end local v1    # "listener":Lnet/oneplus/h2launcher/DragController$DragListener;
    :cond_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DragController;->releaseVelocityTracker()V

    .line 430
    return-void
.end method

.method private findDropTarget(II[I)Lnet/oneplus/h2launcher/DropTarget;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "dropCoordinates"    # [I

    .prologue
    .line 945
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 947
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 948
    .local v1, "dropTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/DropTarget;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 949
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 950
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/DropTarget;

    .line 951
    .local v4, "target":Lnet/oneplus/h2launcher/DropTarget;
    invoke-interface {v4}, Lnet/oneplus/h2launcher/DropTarget;->isDropEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 949
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 954
    :cond_1
    invoke-interface {v4, v3}, Lnet/oneplus/h2launcher/DropTarget;->getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    .line 956
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iput p1, v5, Lnet/oneplus/h2launcher/DropTarget$DragObject;->x:I

    .line 957
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iput p2, v5, Lnet/oneplus/h2launcher/DropTarget$DragObject;->y:I

    .line 958
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 960
    const/4 v5, 0x0

    aput p1, p3, v5

    .line 961
    const/4 v5, 0x1

    aput p2, p3, v5

    .line 962
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v6

    move-object v5, v4

    check-cast v5, Landroid/view/View;

    invoke-virtual {v6, v5, p3}, Lnet/oneplus/h2launcher/DragLayer;->mapCoordInSelfToDescendent(Landroid/view/View;[I)F

    .line 967
    .end local v4    # "target":Lnet/oneplus/h2launcher/DropTarget;
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getClampedDragLayerPos(FF)[I
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 454
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/DragLayer;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 455
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mTmpPoint:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 456
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mTmpPoint:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 457
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mTmpPoint:[I

    return-object v0
.end method

.method private handleMoveEvent(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 551
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iget-object v2, v2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v2, p1, p2}, Lnet/oneplus/h2launcher/DragView;->move(II)V

    .line 554
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mCoordinatesTemp:[I

    .line 555
    .local v0, "coordinates":[I
    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/DragController;->findDropTarget(II[I)Lnet/oneplus/h2launcher/DropTarget;

    move-result-object v1

    .line 556
    .local v1, "dropTarget":Lnet/oneplus/h2launcher/DropTarget;
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    aget v3, v0, v8

    iput v3, v2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->x:I

    .line 557
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    aget v3, v0, v9

    iput v3, v2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->y:I

    .line 558
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/DragController;->checkTouchMove(Lnet/oneplus/h2launcher/DropTarget;)V

    .line 561
    iget v2, p0, Lnet/oneplus/h2launcher/DragController;->mDistanceSinceScroll:I

    int-to-double v2, v2

    iget-object v4, p0, Lnet/oneplus/h2launcher/DragController;->mLastTouch:[I

    aget v4, v4, v8

    sub-int/2addr v4, p1

    int-to-double v4, v4

    iget-object v6, p0, Lnet/oneplus/h2launcher/DragController;->mLastTouch:[I

    aget v6, v6, v9

    sub-int/2addr v6, p2

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lnet/oneplus/h2launcher/DragController;->mDistanceSinceScroll:I

    .line 562
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mLastTouch:[I

    aput p1, v2, v8

    .line 563
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mLastTouch:[I

    aput p2, v2, v9

    .line 564
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/DragController;->checkScrollState(II)V

    .line 565
    return-void
.end method

.method private isFlingingToDelete(Lnet/oneplus/h2launcher/DragSource;)Landroid/graphics/PointF;
    .locals 10
    .param p1, "source"    # Lnet/oneplus/h2launcher/DragSource;

    .prologue
    const/4 v4, 0x0

    .line 879
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragController;->mFlingToDeleteDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    if-nez v5, :cond_1

    move-object v3, v4

    .line 896
    :cond_0
    :goto_0
    return-object v3

    .line 880
    :cond_1
    invoke-interface {p1}, Lnet/oneplus/h2launcher/DragSource;->supportsFlingToDelete()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v3, v4

    goto :goto_0

    .line 882
    :cond_2
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 883
    .local v0, "config":Landroid/view/ViewConfiguration;
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 885
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    iget v6, p0, Lnet/oneplus/h2launcher/DragController;->mFlingToDeleteThresholdVelocity:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 887
    new-instance v3, Landroid/graphics/PointF;

    iget-object v5, p0, Lnet/oneplus/h2launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 888
    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 889
    .local v3, "vel":Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 890
    .local v2, "upVec":Landroid/graphics/PointF;
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 891
    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v7

    mul-float/2addr v6, v7

    div-float/2addr v5, v6

    float-to-double v6, v5

    .line 890
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 892
    .local v1, "theta":F
    float-to-double v6, v1

    const-wide v8, 0x4041800000000000L    # 35.0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    cmpg-double v5, v6, v8

    if-lez v5, :cond_0

    .end local v1    # "theta":F
    .end local v2    # "upVec":Landroid/graphics/PointF;
    .end local v3    # "vel":Landroid/graphics/PointF;
    :cond_3
    move-object v3, v4

    .line 896
    goto :goto_0
.end method

.method private isFolderOpen()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 830
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    if-nez v2, :cond_1

    .line 831
    const-string v2, "Launcher.DragController"

    const-string v3, "[isFolderOpen] mLauncher is null."

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    :cond_0
    :goto_0
    return v1

    .line 835
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v0

    .line 836
    .local v0, "workspace":Lnet/oneplus/h2launcher/Workspace;
    if-nez v0, :cond_2

    .line 837
    const-string v2, "Launcher.DragController"

    const-string v3, "[isFolderOpen] workspace is null."

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 841
    :cond_2
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1023
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1025
    :cond_0
    return-void
.end method


# virtual methods
.method public addDragListener(Lnet/oneplus/h2launcher/DragController$DragListener;)V
    .locals 1
    .param p1, "l"    # Lnet/oneplus/h2launcher/DragController$DragListener;

    .prologue
    .line 982
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    return-void
.end method

.method public addDropTarget(Lnet/oneplus/h2launcher/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lnet/oneplus/h2launcher/DropTarget;

    .prologue
    .line 996
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    return-void
.end method

.method public cancelDrag()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 362
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/DragController;->mDragging:Z

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mLastDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mLastDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    iget-object v1, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/DropTarget;->onDragExit(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 366
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iput-boolean v3, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 367
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iput-boolean v2, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->cancelled:Z

    .line 368
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iput-boolean v2, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragComplete:Z

    .line 369
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iget-object v0, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-interface {v0, v1, v2, v3, v3}, Lnet/oneplus/h2launcher/DragSource;->onDropCompleted(Landroid/view/View;Lnet/oneplus/h2launcher/DropTarget$DragObject;ZZ)V

    .line 371
    :cond_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DragController;->endDrag()V

    .line 372
    return-void
.end method

.method checkScrollState(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 594
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v4

    .line 595
    .local v4, "slop":I
    iget v7, p0, Lnet/oneplus/h2launcher/DragController;->mDistanceSinceScroll:I

    if-ge v7, v4, :cond_1

    const/16 v1, 0x384

    .line 596
    .local v1, "delay":I
    :goto_0
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v2

    .line 597
    .local v2, "dragLayer":Lnet/oneplus/h2launcher/DragLayer;
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/DragController;->mIsRtl:Z

    if-eqz v7, :cond_2

    move v3, v5

    .line 598
    .local v3, "forwardDirection":I
    :goto_1
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/DragController;->mIsRtl:Z

    if-eqz v7, :cond_3

    move v0, v6

    .line 600
    .local v0, "backwardsDirection":I
    :goto_2
    iget v6, p0, Lnet/oneplus/h2launcher/DragController;->mScrollZone:I

    if-ge p1, v6, :cond_4

    .line 601
    iget v6, p0, Lnet/oneplus/h2launcher/DragController;->mScrollState:I

    if-nez v6, :cond_0

    .line 602
    iput v5, p0, Lnet/oneplus/h2launcher/DragController;->mScrollState:I

    .line 603
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragController;->mDragScroller:Lnet/oneplus/h2launcher/DragScroller;

    invoke-interface {v5, p1, p2, v3}, Lnet/oneplus/h2launcher/DragScroller;->onEnterScrollArea(III)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 604
    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/DragLayer;->onEnterScrollArea(I)V

    .line 605
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragController;->mScrollRunnable:Lnet/oneplus/h2launcher/DragController$ScrollRunnable;

    invoke-virtual {v5, v3}, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;->setDirection(I)V

    .line 606
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lnet/oneplus/h2launcher/DragController;->mScrollRunnable:Lnet/oneplus/h2launcher/DragController$ScrollRunnable;

    int-to-long v8, v1

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 621
    :cond_0
    :goto_3
    return-void

    .line 595
    .end local v0    # "backwardsDirection":I
    .end local v1    # "delay":I
    .end local v2    # "dragLayer":Lnet/oneplus/h2launcher/DragLayer;
    .end local v3    # "forwardDirection":I
    :cond_1
    const/16 v1, 0x1f4

    goto :goto_0

    .restart local v1    # "delay":I
    .restart local v2    # "dragLayer":Lnet/oneplus/h2launcher/DragLayer;
    :cond_2
    move v3, v6

    .line 597
    goto :goto_1

    .restart local v3    # "forwardDirection":I
    :cond_3
    move v0, v5

    .line 598
    goto :goto_2

    .line 609
    .restart local v0    # "backwardsDirection":I
    :cond_4
    iget-object v6, p0, Lnet/oneplus/h2launcher/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lnet/oneplus/h2launcher/DragController;->mScrollZone:I

    sub-int/2addr v6, v7

    if-le p1, v6, :cond_5

    .line 610
    iget v6, p0, Lnet/oneplus/h2launcher/DragController;->mScrollState:I

    if-nez v6, :cond_0

    .line 611
    iput v5, p0, Lnet/oneplus/h2launcher/DragController;->mScrollState:I

    .line 612
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragController;->mDragScroller:Lnet/oneplus/h2launcher/DragScroller;

    invoke-interface {v5, p1, p2, v0}, Lnet/oneplus/h2launcher/DragScroller;->onEnterScrollArea(III)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 613
    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/DragLayer;->onEnterScrollArea(I)V

    .line 614
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragController;->mScrollRunnable:Lnet/oneplus/h2launcher/DragController$ScrollRunnable;

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/DragController$ScrollRunnable;->setDirection(I)V

    .line 615
    iget-object v5, p0, Lnet/oneplus/h2launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lnet/oneplus/h2launcher/DragController;->mScrollRunnable:Lnet/oneplus/h2launcher/DragController$ScrollRunnable;

    int-to-long v8, v1

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 619
    :cond_5
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DragController;->clearScrollRunnable()V

    goto :goto_3
.end method

.method public completeAccessibleDrag([I)V
    .locals 6
    .param p1, "location"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 859
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mCoordinatesTemp:[I

    .line 862
    .local v0, "coordinates":[I
    aget v2, p1, v4

    aget v3, p1, v5

    invoke-direct {p0, v2, v3, v0}, Lnet/oneplus/h2launcher/DragController;->findDropTarget(II[I)Lnet/oneplus/h2launcher/DropTarget;

    move-result-object v1

    .line 863
    .local v1, "dropTarget":Lnet/oneplus/h2launcher/DropTarget;
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    aget v3, v0, v4

    iput v3, v2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->x:I

    .line 864
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    aget v3, v0, v5

    iput v3, v2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->y:I

    .line 865
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/DragController;->checkTouchMove(Lnet/oneplus/h2launcher/DropTarget;)V

    .line 867
    invoke-interface {v1}, Lnet/oneplus/h2launcher/DropTarget;->prepareAccessibilityDrop()V

    .line 869
    aget v2, p1, v4

    int-to-float v2, v2

    aget v3, p1, v5

    int-to-float v3, v3

    invoke-direct {p0, v2, v3}, Lnet/oneplus/h2launcher/DragController;->drop(FF)V

    .line 870
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DragController;->endDrag()V

    .line 871
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 351
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/DragController;->mDragging:Z

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 537
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dragging()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/DragController;->mDragging:Z

    return v0
.end method

.method public forceTouchMove()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 568
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragController;->mCoordinatesTemp:[I

    .line 569
    .local v1, "dummyCoordinates":[I
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mLastTouch:[I

    aget v2, v2, v4

    iget-object v3, p0, Lnet/oneplus/h2launcher/DragController;->mLastTouch:[I

    aget v3, v3, v5

    invoke-direct {p0, v2, v3, v1}, Lnet/oneplus/h2launcher/DragController;->findDropTarget(II[I)Lnet/oneplus/h2launcher/DropTarget;

    move-result-object v0

    .line 570
    .local v0, "dropTarget":Lnet/oneplus/h2launcher/DropTarget;
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    aget v3, v1, v4

    iput v3, v2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->x:I

    .line 571
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    aget v3, v1, v5

    iput v3, v2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->y:I

    .line 572
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/DragController;->checkTouchMove(Lnet/oneplus/h2launcher/DropTarget;)V

    .line 573
    return-void
.end method

.method getDragView()Lnet/oneplus/h2launcher/DragView;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iget-object v0, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    return-object v0
.end method

.method getLastGestureUpTime()J
    .locals 2

    .prologue
    .line 461
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/DragController;->mDragging:Z

    if-eqz v0, :cond_0

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 464
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lnet/oneplus/h2launcher/DragController;->mLastTouchUpTime:J

    goto :goto_0
.end method

.method getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 307
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v4

    .line 310
    .local v4, "willNotCache":Z
    invoke-virtual {p1, v5}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v3

    .line 315
    .local v3, "color":I
    invoke-virtual {p1, v5}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 317
    .local v0, "alpha":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 319
    if-eqz v3, :cond_0

    .line 320
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 324
    .local v2, "cacheBitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 325
    const-string v5, "Launcher.DragController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed getViewBitmap("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    const/4 v1, 0x0

    .line 337
    :goto_0
    return-object v1

    .line 329
    :cond_1
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 332
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 333
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 334
    invoke-virtual {p1, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 335
    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/DragController;->mDragging:Z

    return v0
.end method

.method public onAppsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "cns":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    if-eqz v7, :cond_0

    .line 377
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iget-object v6, v7, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 378
    .local v6, "rawDragInfo":Ljava/lang/Object;
    instance-of v7, v6, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v7, :cond_0

    move-object v2, v6

    .line 379
    check-cast v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 381
    .local v2, "dragInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    if-nez v2, :cond_1

    .line 406
    .end local v2    # "dragInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v6    # "rawDragInfo":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 385
    .restart local v2    # "dragInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    .restart local v6    # "rawDragInfo":Ljava/lang/Object;
    :cond_1
    iget-object v3, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 386
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 390
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 391
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 396
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 397
    .local v4, "isSameComponent":Z
    if-nez p1, :cond_4

    const/4 v5, 0x0

    .line 399
    .local v5, "isSamePackage":Z
    :goto_1
    if-nez v4, :cond_3

    if-eqz v5, :cond_2

    .line 400
    :cond_3
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragController;->cancelDrag()V

    goto :goto_0

    .line 398
    .end local v5    # "isSamePackage":Z
    :cond_4
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 478
    const/4 v1, 0x0

    .line 484
    .local v1, "debug":Z
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/DragController;->mIsAccessibleDrag:Z

    if-eqz v7, :cond_0

    .line 526
    :goto_0
    return v6

    .line 489
    :cond_0
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/DragController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 492
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {p0, v7, v8}, Lnet/oneplus/h2launcher/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v2

    .line 493
    .local v2, "dragLayerPos":[I
    aget v3, v2, v6

    .line 494
    .local v3, "dragLayerX":I
    const/4 v6, 0x1

    aget v4, v2, v6

    .line 496
    .local v4, "dragLayerY":I
    packed-switch v0, :pswitch_data_0

    .line 526
    :goto_1
    :pswitch_0
    iget-boolean v6, p0, Lnet/oneplus/h2launcher/DragController;->mDragging:Z

    goto :goto_0

    .line 501
    :pswitch_1
    iput v3, p0, Lnet/oneplus/h2launcher/DragController;->mMotionDownX:I

    .line 502
    iput v4, p0, Lnet/oneplus/h2launcher/DragController;->mMotionDownY:I

    .line 503
    const/4 v6, 0x0

    iput-object v6, p0, Lnet/oneplus/h2launcher/DragController;->mLastDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    goto :goto_1

    .line 506
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lnet/oneplus/h2launcher/DragController;->mLastTouchUpTime:J

    .line 507
    iget-boolean v6, p0, Lnet/oneplus/h2launcher/DragController;->mDragging:Z

    if-eqz v6, :cond_2

    .line 508
    iget-object v6, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iget-object v6, v6, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/DragController;->isFlingingToDelete(Lnet/oneplus/h2launcher/DragSource;)Landroid/graphics/PointF;

    move-result-object v5

    .line 509
    .local v5, "vec":Landroid/graphics/PointF;
    iget-object v6, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iget-object v6, v6, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-static {v6}, Lnet/oneplus/h2launcher/DeleteDropTarget;->supportsDrop(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 510
    const/4 v5, 0x0

    .line 513
    :cond_1
    if-eqz v5, :cond_3

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isStandardLayout()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 514
    int-to-float v6, v3

    int-to-float v7, v4

    invoke-direct {p0, v6, v7, v5}, Lnet/oneplus/h2launcher/DragController;->dropOnFlingToDeleteTarget(FFLandroid/graphics/PointF;)V

    .line 519
    .end local v5    # "vec":Landroid/graphics/PointF;
    :cond_2
    :goto_2
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DragController;->endDrag()V

    goto :goto_1

    .line 516
    .restart local v5    # "vec":Landroid/graphics/PointF;
    :cond_3
    int-to-float v6, v3

    int-to-float v7, v4

    invoke-direct {p0, v6, v7}, Lnet/oneplus/h2launcher/DragController;->drop(FF)V

    goto :goto_2

    .line 522
    .end local v5    # "vec":Landroid/graphics/PointF;
    :pswitch_3
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragController;->cancelDrag()V

    goto :goto_1

    .line 496
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 628
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/DragController;->mDragging:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/DragController;->mIsAccessibleDrag:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 629
    :cond_0
    const/16 v22, 0x0

    .line 826
    :goto_0
    return v22

    .line 633
    :cond_1
    invoke-direct/range {p0 .. p1}, Lnet/oneplus/h2launcher/DragController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 635
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 636
    .local v6, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v10

    .line 637
    .local v10, "dragLayerPos":[I
    const/16 v22, 0x0

    aget v11, v10, v22

    .line 638
    .local v11, "dragLayerX":I
    const/16 v22, 0x1

    aget v12, v10, v22

    .line 640
    .local v12, "dragLayerY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v21

    .line 641
    .local v21, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    .line 643
    .local v16, "pointerCount":I
    packed-switch v6, :pswitch_data_0

    .line 826
    :cond_2
    :goto_1
    :pswitch_0
    const/16 v22, 0x1

    goto :goto_0

    .line 646
    :pswitch_1
    move-object/from16 v0, p0

    iput v11, v0, Lnet/oneplus/h2launcher/DragController;->mMotionDownX:I

    .line 647
    move-object/from16 v0, p0

    iput v12, v0, Lnet/oneplus/h2launcher/DragController;->mMotionDownY:I

    .line 649
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragController;->mScrollZone:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v11, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragController;->mScrollView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragController;->mScrollZone:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    if-le v11, v0, :cond_4

    .line 650
    :cond_3
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/DragController;->mScrollState:I

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragController;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragController;->mScrollRunnable:Lnet/oneplus/h2launcher/DragController$ScrollRunnable;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x1f4

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 655
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lnet/oneplus/h2launcher/DragController;->handleMoveEvent(II)V

    goto :goto_1

    .line 653
    :cond_4
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/DragController;->mScrollState:I

    goto :goto_2

    .line 659
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lnet/oneplus/h2launcher/DragController;->handleMoveEvent(II)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragController;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragController;->mScrollRunnable:Lnet/oneplus/h2launcher/DragController$ScrollRunnable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 662
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/DragController;->mDragging:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/DragController;->isFlingingToDelete(Lnet/oneplus/h2launcher/DragSource;)Landroid/graphics/PointF;

    move-result-object v20

    .line 664
    .local v20, "vec":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lnet/oneplus/h2launcher/DeleteDropTarget;->supportsDrop(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 665
    const/16 v20, 0x0

    .line 667
    :cond_5
    if-eqz v20, :cond_7

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isStandardLayout()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 668
    int-to-float v0, v11

    move/from16 v22, v0

    int-to-float v0, v12

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/DragController;->dropOnFlingToDeleteTarget(FFLandroid/graphics/PointF;)V

    .line 673
    .end local v20    # "vec":Landroid/graphics/PointF;
    :cond_6
    :goto_3
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/DragController;->endDrag()V

    goto/16 :goto_1

    .line 670
    .restart local v20    # "vec":Landroid/graphics/PointF;
    :cond_7
    int-to-float v0, v11

    move/from16 v22, v0

    int-to-float v0, v12

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/DragController;->drop(FF)V

    goto :goto_3

    .line 676
    .end local v20    # "vec":Landroid/graphics/PointF;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragController;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragController;->mScrollRunnable:Lnet/oneplus/h2launcher/DragController$ScrollRunnable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 677
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/DragController;->cancelDrag()V

    .line 678
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lnet/oneplus/h2launcher/oos/StyleManager;->showSearchBar()Z

    move-result v22

    if-nez v22, :cond_2

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x12c

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    goto/16 :goto_1

    .line 684
    :pswitch_4
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lnet/oneplus/h2launcher/DragController;->handleMoveEvent(II)V

    .line 689
    const/16 v22, 0x2

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/DragController;->isFolderOpen()Z

    move-result v22

    if-nez v22, :cond_2

    .line 693
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragController;->mSecondStartScrollX:F

    move/from16 v22, v0

    const/high16 v23, -0x40800000    # -1.0f

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragController;->mSecondPointIndex:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_9

    .line 694
    :cond_8
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/DragController;->mSecondPointIndex:I

    .line 695
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragController;->mSecondPointIndex:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/DragController;->mSecondDownX:F

    .line 696
    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/Workspace;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/DragController;->mSecondStartScrollX:F

    .line 701
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragController;->mSecondPointIndex:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v16

    if-lt v0, v1, :cond_a

    .line 702
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 705
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragController;->mSecondPointIndex:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    .line 706
    .local v15, "moveX":F
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragController;->mSecondDownX:F

    move/from16 v22, v0

    sub-float v9, v22, v15

    .line 708
    .local v9, "disX":F
    if-eqz v21, :cond_2

    .line 709
    const/4 v14, 0x0

    .line 710
    .local v14, "isOverScroll":Z
    const/16 v22, 0x0

    cmpg-float v22, v9, v22

    if-gez v22, :cond_c

    const/16 v17, 0x1

    .line 711
    .local v17, "scrollLeft":Z
    :goto_4
    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v8

    .line 712
    .local v8, "currentPage":I
    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v7

    .line 714
    .local v7, "childCount":I
    if-eqz v17, :cond_f

    .line 715
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/DragController;->mIsRtl:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 716
    add-int/lit8 v22, v7, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_b

    .line 717
    const/4 v14, 0x1

    .line 736
    :cond_b
    :goto_5
    if-nez v14, :cond_12

    .line 737
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragController;->mSecondStartScrollX:F

    move/from16 v22, v0

    add-float v22, v22, v9

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lnet/oneplus/h2launcher/Workspace;->scrollTo(II)V

    .line 742
    :goto_6
    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v13

    .line 743
    .local v13, "folder":Lnet/oneplus/h2launcher/Folder;
    if-eqz v13, :cond_2

    .line 744
    invoke-virtual {v13}, Lnet/oneplus/h2launcher/Folder;->completeDragExit()V

    goto/16 :goto_1

    .line 710
    .end local v7    # "childCount":I
    .end local v8    # "currentPage":I
    .end local v13    # "folder":Lnet/oneplus/h2launcher/Folder;
    .end local v17    # "scrollLeft":Z
    :cond_c
    const/16 v17, 0x0

    goto :goto_4

    .line 720
    .restart local v7    # "childCount":I
    .restart local v8    # "currentPage":I
    .restart local v17    # "scrollLeft":Z
    :cond_d
    if-eqz v8, :cond_e

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_b

    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 721
    :cond_e
    const/4 v14, 0x1

    goto :goto_5

    .line 725
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/DragController;->mIsRtl:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 726
    if-eqz v8, :cond_10

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_b

    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 727
    :cond_10
    const/4 v14, 0x1

    goto :goto_5

    .line 730
    :cond_11
    add-int/lit8 v22, v7, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_b

    .line 731
    const/4 v14, 0x1

    goto :goto_5

    .line 739
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragController;->mSecondStartScrollX:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lnet/oneplus/h2launcher/Workspace;->scrollTo(II)V

    goto :goto_6

    .line 750
    .end local v7    # "childCount":I
    .end local v8    # "currentPage":I
    .end local v9    # "disX":F
    .end local v14    # "isOverScroll":Z
    .end local v15    # "moveX":F
    .end local v17    # "scrollLeft":Z
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/DragController;->isFolderOpen()Z

    move-result v22

    if-nez v22, :cond_2

    .line 754
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/DragController;->mSecondPointIndex:I

    .line 755
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragController;->mSecondPointIndex:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/DragController;->mSecondDownX:F

    .line 756
    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/Workspace;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/DragController;->mSecondStartScrollX:F

    goto/16 :goto_1

    .line 759
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/DragController;->isFolderOpen()Z

    move-result v22

    if-nez v22, :cond_2

    .line 763
    if-eqz v16, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragController;->mSecondPointIndex:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_13

    const/16 v22, 0x2

    move/from16 v0, v16

    move/from16 v1, v22

    if-le v0, v1, :cond_14

    .line 764
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/DragController;->cancelDrag()V

    .line 765
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 767
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragController;->mSecondPointIndex:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    .line 768
    .local v19, "secondUpX":F
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragController;->mSecondDownX:F

    move/from16 v22, v0

    sub-float v18, v19, v22

    .line 770
    .local v18, "secondDisX":F
    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v8

    .line 771
    .restart local v8    # "currentPage":I
    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v7

    .line 773
    .restart local v7    # "childCount":I
    const/high16 v22, 0x43160000    # 150.0f

    cmpl-float v22, v18, v22

    if-lez v22, :cond_1a

    .line 774
    const/4 v4, 0x1

    .line 776
    .local v4, "acceptScrollLeft":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/DragController;->mIsRtl:Z

    move/from16 v22, v0

    if-eqz v22, :cond_16

    .line 777
    add-int/lit8 v22, v7, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_15

    .line 778
    const/4 v4, 0x0

    .line 786
    :cond_15
    :goto_7
    if-eqz v4, :cond_19

    .line 787
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/DragController;->mIsRtl:Z

    move/from16 v22, v0

    if-eqz v22, :cond_18

    .line 788
    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lnet/oneplus/h2launcher/Workspace;->scrollRight(Z)V

    .line 822
    .end local v4    # "acceptScrollLeft":Z
    :goto_8
    const/high16 v22, -0x40800000    # -1.0f

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/DragController;->mSecondStartScrollX:F

    goto/16 :goto_1

    .line 781
    .restart local v4    # "acceptScrollLeft":Z
    :cond_16
    if-eqz v8, :cond_17

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_15

    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v22

    if-eqz v22, :cond_15

    .line 782
    :cond_17
    const/4 v4, 0x0

    goto :goto_7

    .line 790
    :cond_18
    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lnet/oneplus/h2launcher/Workspace;->scrollLeft(Z)V

    goto :goto_8

    .line 793
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragController;->mSecondStartScrollX:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lnet/oneplus/h2launcher/Workspace;->scrollTo(II)V

    goto :goto_8

    .line 795
    .end local v4    # "acceptScrollLeft":Z
    :cond_1a
    const/high16 v22, -0x3cea0000    # -150.0f

    cmpg-float v22, v18, v22

    if-gez v22, :cond_20

    .line 796
    const/4 v5, 0x1

    .line 798
    .local v5, "acceptScrollRight":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/DragController;->mIsRtl:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1d

    .line 799
    if-eqz v8, :cond_1b

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_1c

    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 800
    :cond_1b
    const/4 v5, 0x0

    .line 808
    :cond_1c
    :goto_9
    if-eqz v5, :cond_1f

    .line 809
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/DragController;->mIsRtl:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1e

    .line 810
    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lnet/oneplus/h2launcher/Workspace;->scrollLeft(Z)V

    goto :goto_8

    .line 803
    :cond_1d
    add-int/lit8 v22, v7, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_1c

    .line 804
    const/4 v5, 0x0

    goto :goto_9

    .line 812
    :cond_1e
    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lnet/oneplus/h2launcher/Workspace;->scrollRight(Z)V

    goto :goto_8

    .line 815
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragController;->mSecondStartScrollX:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lnet/oneplus/h2launcher/Workspace;->scrollTo(II)V

    goto :goto_8

    .line 818
    .end local v5    # "acceptScrollRight":Z
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragController;->mSecondStartScrollX:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lnet/oneplus/h2launcher/Workspace;->scrollTo(II)V

    goto/16 :goto_8

    .line 643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method onDeferredEndDrag(Lnet/oneplus/h2launcher/DragView;)V
    .locals 3
    .param p1, "dragView"    # Lnet/oneplus/h2launcher/DragView;

    .prologue
    .line 436
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/DragView;->remove()V

    .line 438
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-eqz v1, :cond_0

    .line 440
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/oneplus/h2launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/DragController$DragListener;

    .line 441
    .local v0, "listener":Lnet/oneplus/h2launcher/DragController$DragListener;
    invoke-interface {v0}, Lnet/oneplus/h2launcher/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    .line 444
    .end local v0    # "listener":Lnet/oneplus/h2launcher/DragController$DragListener;
    :cond_0
    return-void
.end method

.method public onDeferredEndFling(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 1
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 447
    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/DragSource;->onFlingToDeleteCompleted()V

    .line 448
    return-void
.end method

.method public prepareAccessibleDrag(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 849
    iput p1, p0, Lnet/oneplus/h2launcher/DragController;->mMotionDownX:I

    .line 850
    iput p2, p0, Lnet/oneplus/h2launcher/DragController;->mMotionDownY:I

    .line 851
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mLastDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    .line 852
    return-void
.end method

.method public removeDragListener(Lnet/oneplus/h2launcher/DragController$DragListener;)V
    .locals 1
    .param p1, "l"    # Lnet/oneplus/h2launcher/DragController$DragListener;

    .prologue
    .line 989
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 990
    return-void
.end method

.method public removeDropTarget(Lnet/oneplus/h2launcher/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lnet/oneplus/h2launcher/DropTarget;

    .prologue
    .line 1003
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1004
    return-void
.end method

.method resetLastGestureUpTime()V
    .locals 2

    .prologue
    .line 469
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/oneplus/h2launcher/DragController;->mLastTouchUpTime:J

    .line 470
    return-void
.end method

.method public setDragScoller(Lnet/oneplus/h2launcher/DragScroller;)V
    .locals 0
    .param p1, "scroller"    # Lnet/oneplus/h2launcher/DragScroller;

    .prologue
    .line 971
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragController;->mDragScroller:Lnet/oneplus/h2launcher/DragScroller;

    .line 972
    return-void
.end method

.method public setFlingToDeleteDropTarget(Lnet/oneplus/h2launcher/DropTarget;)V
    .locals 0
    .param p1, "target"    # Lnet/oneplus/h2launcher/DropTarget;

    .prologue
    .line 1010
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragController;->mFlingToDeleteDropTarget:Lnet/oneplus/h2launcher/DropTarget;

    .line 1011
    return-void
.end method

.method setMoveTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 533
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragController;->mMoveTarget:Landroid/view/View;

    .line 534
    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1031
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragController;->mScrollView:Landroid/view/View;

    .line 1032
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 975
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragController;->mWindowToken:Landroid/os/IBinder;

    .line 976
    return-void
.end method

.method public startDrag(Landroid/view/View;Landroid/graphics/Bitmap;IILnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FZ)Lnet/oneplus/h2launcher/DragView;
    .locals 19
    .param p1, "v"    # Landroid/view/View;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "dragLayerX"    # I
    .param p4, "dragLayerY"    # I
    .param p5, "source"    # Lnet/oneplus/h2launcher/DragSource;
    .param p6, "dragInfo"    # Ljava/lang/Object;
    .param p7, "dragAction"    # I
    .param p8, "dragOffset"    # Landroid/graphics/Point;
    .param p9, "dragRegion"    # Landroid/graphics/Rect;
    .param p10, "initialDragViewScale"    # F
    .param p11, "accessible"    # Z

    .prologue
    .line 250
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v5, :cond_0

    .line 251
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/DragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const-string v6, "input_method"

    .line 252
    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 254
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/DragController;->mWindowToken:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 256
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lnet/oneplus/h2launcher/DragController$DragListener;

    .line 257
    .local v17, "listener":Lnet/oneplus/h2launcher/DragController$DragListener;
    move-object/from16 v0, v17

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-interface {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/DragController$DragListener;->onDragStart(Lnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;I)V

    goto :goto_0

    .line 260
    .end local v17    # "listener":Lnet/oneplus/h2launcher/DragController$DragListener;
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/DragController;->mMotionDownX:I

    sub-int v8, v5, p3

    .line 261
    .local v8, "registrationX":I
    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/DragController;->mMotionDownY:I

    sub-int v9, v5, p4

    .line 263
    .local v9, "registrationY":I
    if-nez p9, :cond_4

    const/4 v15, 0x0

    .line 264
    .local v15, "dragRegionLeft":I
    :goto_1
    if-nez p9, :cond_5

    const/16 v16, 0x0

    .line 266
    .local v16, "dragRegionTop":I
    :goto_2
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lnet/oneplus/h2launcher/DragController;->mDragging:Z

    .line 267
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/DragController;->mIsAccessibleDrag:Z

    .line 269
    new-instance v5, Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-direct {v5}, Lnet/oneplus/h2launcher/DropTarget$DragObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .line 271
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragComplete:Z

    .line 272
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lnet/oneplus/h2launcher/DragController;->mIsAccessibleDrag:Z

    if-eqz v5, :cond_6

    .line 274
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Lnet/oneplus/h2launcher/DropTarget$DragObject;->xOffset:I

    .line 275
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Lnet/oneplus/h2launcher/DropTarget$DragObject;->yOffset:I

    .line 276
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lnet/oneplus/h2launcher/DropTarget$DragObject;->accessibleDrag:Z

    .line 282
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    move-object/from16 v0, p5

    iput-object v0, v5, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    .line 283
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    move-object/from16 v0, p6

    iput-object v0, v5, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    move-object/from16 v18, v0

    new-instance v4, Lnet/oneplus/h2launcher/DragView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/DragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v14, p10

    invoke-direct/range {v4 .. v14}, Lnet/oneplus/h2launcher/DragView;-><init>(Lnet/oneplus/h2launcher/Launcher;Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIF)V

    move-object/from16 v0, v18

    iput-object v4, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    .line 289
    .local v4, "dragView":Lnet/oneplus/h2launcher/DragView;
    if-eqz p8, :cond_2

    .line 290
    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, p8

    invoke-direct {v5, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    .line 292
    :cond_2
    if-eqz p9, :cond_3

    .line 293
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p9

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 296
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/DragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/DragLayer;->performHapticFeedback(I)Z

    .line 297
    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/DragController;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/DragController;->mMotionDownY:I

    invoke-virtual {v4, v5, v6}, Lnet/oneplus/h2launcher/DragView;->show(II)V

    .line 298
    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/DragController;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/DragController;->mMotionDownY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lnet/oneplus/h2launcher/DragController;->handleMoveEvent(II)V

    .line 299
    return-object v4

    .line 263
    .end local v4    # "dragView":Lnet/oneplus/h2launcher/DragView;
    .end local v15    # "dragRegionLeft":I
    .end local v16    # "dragRegionTop":I
    :cond_4
    move-object/from16 v0, p9

    iget v15, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 264
    .restart local v15    # "dragRegionLeft":I
    :cond_5
    move-object/from16 v0, p9

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    goto/16 :goto_2

    .line 278
    .restart local v16    # "dragRegionTop":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/DragController;->mMotionDownX:I

    add-int v7, p3, v15

    sub-int/2addr v6, v7

    iput v6, v5, Lnet/oneplus/h2launcher/DropTarget$DragObject;->xOffset:I

    .line 279
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/DragController;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/DragController;->mMotionDownY:I

    add-int v7, p4, v16

    sub-int/2addr v6, v7

    iput v6, v5, Lnet/oneplus/h2launcher/DropTarget$DragObject;->yOffset:I

    goto/16 :goto_3
.end method

.method public startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;IF)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;
    .param p3, "source"    # Lnet/oneplus/h2launcher/DragSource;
    .param p4, "dragInfo"    # Ljava/lang/Object;
    .param p5, "viewImageBounds"    # Landroid/graphics/Rect;
    .param p6, "dragAction"    # I
    .param p7, "initialDragViewScale"    # F

    .prologue
    .line 211
    iget-object v13, p0, Lnet/oneplus/h2launcher/DragController;->mCoordinatesTemp:[I

    .line 212
    .local v13, "loc":[I
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p1, v13}, Lnet/oneplus/h2launcher/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 213
    const/4 v1, 0x0

    aget v1, v13, v1

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int v4, v1, v2

    .line 215
    .local v4, "dragLayerX":I
    const/4 v1, 0x1

    aget v1, v13, v1

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int v5, v1, v2

    .line 218
    .local v5, "dragLayerY":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    move/from16 v11, p7

    invoke-virtual/range {v1 .. v12}, Lnet/oneplus/h2launcher/DragController;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;IILnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FZ)Lnet/oneplus/h2launcher/DragView;

    .line 221
    sget v1, Lnet/oneplus/h2launcher/DragController;->DRAG_ACTION_MOVE:I

    move/from16 v0, p6

    if-ne v0, v1, :cond_0

    .line 222
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :cond_0
    return-void
.end method
