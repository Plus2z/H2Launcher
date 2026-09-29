.class public Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;
.source "ItemTouchHelper.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;,
        Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;,
        Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$SimpleCallback;,
        Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;,
        Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field private static final ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final ACTION_MODE_IDLE_MASK:I = 0xff

.field private static final ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final ACTION_STATE_DRAG:I = 0x2

.field public static final ACTION_STATE_IDLE:I = 0x0

.field public static final ACTION_STATE_SWIPE:I = 0x1

.field private static final ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final ANIMATION_TYPE_DRAG:I = 0x8

.field public static final ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DIRECTION_FLAG_COUNT:I = 0x8

.field public static final DOWN:I = 0x2

.field public static final END:I = 0x20

.field public static final LEFT:I = 0x4

.field public static final RIGHT:I = 0x8

.field public static final START:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ItemTouchHelper"

.field public static final UP:I = 0x1


# instance fields
.field mActionState:I

.field mActivePointerId:I

.field mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

.field private mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

.field private mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScrollStartTimeInMs:J

.field mDx:F

.field mDy:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mInitialTouchX:F

.field mInitialTouchY:F

.field private final mOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

.field private mOverdrawChild:Landroid/view/View;

.field private mOverdrawChildPosition:I

.field final mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field private final mScrollRunnable:Ljava/lang/Runnable;

.field mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field mSelectedFlags:I

.field mSelectedStartX:F

.field mSelectedStartY:F

.field private mSlop:I

.field private mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpPosition:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 421
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpPosition:[F

    .line 170
    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 199
    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 235
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 262
    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    .line 269
    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 276
    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 283
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;-><init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    .line 422
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    .line 423
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->scrollIfNecessary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->moveIfNecessary(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->postDispatchSwipe(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->hasRunningRecoverAnim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .prologue
    .line 72
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChildPosition:I

    return v0
.end method

.method static synthetic access$2302(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChildPosition:I

    return p1
.end method

.method static synthetic access$2400(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->obtainVelocityTracker()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;)Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "x2"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->endRecoverAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->select(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method private addChildDrawingOrderCallback()V
    .locals 2

    .prologue
    .line 1227
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1250
    :goto_0
    return-void

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_1

    .line 1231
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$5;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$5;-><init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    .line 1249
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setChildDrawingOrderCallback(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;)V

    goto :goto_0
.end method

.method private checkHorizontalSwipe(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)I
    .locals 9
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v8, 0x0

    .line 1184
    and-int/lit8 v6, p2, 0xc

    if-eqz v6, :cond_3

    .line 1185
    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_0

    move v0, v4

    .line 1186
    .local v0, "dirFlag":I
    :goto_0
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    .line 1187
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    .line 1188
    .local v3, "xVelocity":F
    cmpl-float v6, v3, v8

    if-lez v6, :cond_1

    move v2, v4

    .line 1189
    .local v2, "velDirFlag":I
    :goto_1
    and-int v4, v2, p2

    if-eqz v4, :cond_2

    if-ne v0, v2, :cond_2

    .line 1190
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMinFlingVelocity()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 1202
    .end local v0    # "dirFlag":I
    .end local v2    # "velDirFlag":I
    .end local v3    # "xVelocity":F
    :goto_2
    return v2

    :cond_0
    move v0, v5

    .line 1185
    goto :goto_0

    .restart local v0    # "dirFlag":I
    .restart local v3    # "xVelocity":F
    :cond_1
    move v2, v5

    .line 1188
    goto :goto_1

    .line 1195
    .end local v3    # "xVelocity":F
    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    .line 1196
    invoke-virtual {v5, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getSwipeThreshold(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)F

    move-result v5

    mul-float v1, v4, v5

    .line 1198
    .local v1, "threshold":F
    and-int v4, p2, v0

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v1

    if-lez v4, :cond_3

    move v2, v0

    .line 1199
    goto :goto_2

    .line 1202
    .end local v0    # "dirFlag":I
    .end local v1    # "threshold":F
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    .locals 11
    .param p1, "action"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .param p3, "pointerIndex"    # I

    .prologue
    .line 929
    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-nez v9, :cond_0

    const/4 v9, 0x2

    if-ne p1, v9, :cond_0

    iget v9, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    .line 930
    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 931
    :cond_0
    const/4 v9, 0x0

    .line 983
    :goto_0
    return v9

    .line 933
    :cond_1
    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getScrollState()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 934
    const/4 v9, 0x0

    goto :goto_0

    .line 936
    :cond_2
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v6

    .line 937
    .local v6, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-nez v6, :cond_3

    .line 938
    const/4 v9, 0x0

    goto :goto_0

    .line 940
    :cond_3
    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v10, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v9, v10, v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v4

    .line 942
    .local v4, "movementFlags":I
    const v9, 0xff00

    and-int/2addr v9, v4

    shr-int/lit8 v5, v9, 0x8

    .line 945
    .local v5, "swipeFlags":I
    if-nez v5, :cond_4

    .line 946
    const/4 v9, 0x0

    goto :goto_0

    .line 951
    :cond_4
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 952
    .local v7, "x":F
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 955
    .local v8, "y":F
    iget v9, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v7, v9

    .line 956
    .local v2, "dx":F
    iget v9, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    sub-float v3, v8, v9

    .line 959
    .local v3, "dy":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 960
    .local v0, "absDx":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 962
    .local v1, "absDy":F
    iget v9, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSlop:I

    int-to-float v9, v9

    cmpg-float v9, v0, v9

    if-gez v9, :cond_5

    iget v9, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSlop:I

    int-to-float v9, v9

    cmpg-float v9, v1, v9

    if-gez v9, :cond_5

    .line 963
    const/4 v9, 0x0

    goto :goto_0

    .line 965
    :cond_5
    cmpl-float v9, v0, v1

    if-lez v9, :cond_7

    .line 966
    const/4 v9, 0x0

    cmpg-float v9, v2, v9

    if-gez v9, :cond_6

    and-int/lit8 v9, v5, 0x4

    if-nez v9, :cond_6

    .line 967
    const/4 v9, 0x0

    goto :goto_0

    .line 969
    :cond_6
    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-lez v9, :cond_9

    and-int/lit8 v9, v5, 0x8

    if-nez v9, :cond_9

    .line 970
    const/4 v9, 0x0

    goto :goto_0

    .line 973
    :cond_7
    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_8

    and-int/lit8 v9, v5, 0x1

    if-nez v9, :cond_8

    .line 974
    const/4 v9, 0x0

    goto :goto_0

    .line 976
    :cond_8
    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-lez v9, :cond_9

    and-int/lit8 v9, v5, 0x2

    if-nez v9, :cond_9

    .line 977
    const/4 v9, 0x0

    goto :goto_0

    .line 980
    :cond_9
    const/4 v9, 0x0

    iput v9, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    iput v9, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    .line 981
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    .line 982
    const/4 v9, 0x1

    invoke-direct {p0, v6, v9}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->select(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 983
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private checkVerticalSwipe(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)I
    .locals 9
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 1206
    and-int/lit8 v6, p2, 0x3

    if-eqz v6, :cond_3

    .line 1207
    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_0

    move v0, v4

    .line 1208
    .local v0, "dirFlag":I
    :goto_0
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    .line 1209
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    .line 1210
    .local v3, "yVelocity":F
    cmpl-float v6, v3, v8

    if-lez v6, :cond_1

    move v2, v4

    .line 1211
    .local v2, "velDirFlag":I
    :goto_1
    and-int v4, v2, p2

    if-eqz v4, :cond_2

    if-ne v2, v0, :cond_2

    .line 1212
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMinFlingVelocity()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 1223
    .end local v0    # "dirFlag":I
    .end local v2    # "velDirFlag":I
    .end local v3    # "yVelocity":F
    :goto_2
    return v2

    :cond_0
    move v0, v5

    .line 1207
    goto :goto_0

    .restart local v0    # "dirFlag":I
    .restart local v3    # "yVelocity":F
    :cond_1
    move v2, v5

    .line 1210
    goto :goto_1

    .line 1217
    .end local v3    # "yVelocity":F
    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    .line 1218
    invoke-virtual {v5, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getSwipeThreshold(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)F

    move-result v5

    mul-float v1, v4, v5

    .line 1219
    .local v1, "threshold":F
    and-int v4, p2, v0

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v1

    if-lez v4, :cond_3

    move v2, v0

    .line 1220
    goto :goto_2

    .line 1223
    .end local v0    # "dirFlag":I
    .end local v1    # "threshold":F
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private destroyCallbacks()V
    .locals 6

    .prologue
    .line 462
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v3, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V

    .line 463
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeOnItemTouchListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;)V

    .line 464
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v3, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeOnChildAttachStateChangeListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 466
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 467
    .local v1, "recoverAnimSize":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 468
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    .line 469
    .local v2, "recoverAnimation":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v5, v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->clearView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 467
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 471
    .end local v2    # "recoverAnimation":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 472
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 473
    const/4 v3, -0x1

    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 474
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->releaseVelocityTracker()V

    .line 475
    return-void
.end method

.method private endRecoverAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)I
    .locals 5
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "override"    # Z

    .prologue
    .line 863
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 864
    .local v2, "recoverAnimSize":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 865
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    .line 866
    .local v0, "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_1

    .line 867
    iget-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    or-int/2addr v3, p2

    iput-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 868
    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->access$1900(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 869
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->cancel()V

    .line 871
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 872
    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 873
    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->access$2000(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;)I

    move-result v3

    .line 876
    .end local v0    # "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    :goto_1
    return v3

    .line 864
    .restart local v0    # "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 876
    .end local v0    # "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private findAnimation(Landroid/view/MotionEvent;)Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1103
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 1113
    :cond_0
    :goto_0
    return-object v0

    .line 1106
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    .line 1107
    .local v2, "target":Landroid/view/View;
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 1108
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    .line 1109
    .local v0, "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eq v4, v2, :cond_0

    .line 1107
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0    # "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    :cond_2
    move-object v0, v3

    .line 1113
    goto :goto_0
.end method

.method private findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 988
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 989
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 990
    .local v5, "y":F
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v6, :cond_0

    .line 991
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v2, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 992
    .local v2, "selectedView":Landroid/view/View;
    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartX:F

    iget v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartY:F

    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    add-float/2addr v7, v8

    invoke-static {v2, v4, v5, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1003
    .end local v2    # "selectedView":Landroid/view/View;
    :goto_0
    return-object v2

    .line 996
    :cond_0
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 997
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    .line 998
    .local v0, "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v3, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 999
    .local v3, "view":Landroid/view/View;
    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v7, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mY:F

    invoke-static {v3, v4, v5, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v2, v3

    .line 1000
    goto :goto_0

    .line 996
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1003
    .end local v0    # "anim":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v6, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method private findSwapTargets(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Ljava/util/List;
    .locals 25
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 752
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 753
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDistances:Ljava/util/List;

    .line 758
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v16

    .line 759
    .local v16, "margin":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    sub-int v14, v22, v16

    .line 760
    .local v14, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    sub-int v21, v22, v16

    .line 761
    .local v21, "top":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v22

    add-int v22, v22, v14

    mul-int/lit8 v23, v16, 0x2

    add-int v20, v22, v23

    .line 762
    .local v20, "right":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v22

    add-int v22, v22, v21

    mul-int/lit8 v23, v16, 0x2

    add-int v4, v22, v23

    .line 763
    .local v4, "bottom":I
    add-int v22, v14, v20

    div-int/lit8 v5, v22, 0x2

    .line 764
    .local v5, "centerX":I
    add-int v22, v21, v4

    div-int/lit8 v6, v22, 0x2

    .line 765
    .local v6, "centerY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v15

    .line 766
    .local v15, "lm":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {v15}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    .line 767
    .local v7, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v7, :cond_4

    .line 768
    invoke-virtual {v15, v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 769
    .local v17, "other":Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 767
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 755
    .end local v4    # "bottom":I
    .end local v5    # "centerX":I
    .end local v6    # "centerY":I
    .end local v7    # "childCount":I
    .end local v12    # "i":I
    .end local v14    # "left":I
    .end local v15    # "lm":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    .end local v16    # "margin":I
    .end local v17    # "other":Landroid/view/View;
    .end local v20    # "right":I
    .end local v21    # "top":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 772
    .restart local v4    # "bottom":I
    .restart local v5    # "centerX":I
    .restart local v6    # "centerY":I
    .restart local v7    # "childCount":I
    .restart local v12    # "i":I
    .restart local v14    # "left":I
    .restart local v15    # "lm":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    .restart local v16    # "margin":I
    .restart local v17    # "other":Landroid/view/View;
    .restart local v20    # "right":I
    .restart local v21    # "top":I
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    if-gt v0, v4, :cond_0

    .line 773
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v22

    move/from16 v0, v22

    if-lt v0, v14, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v18

    .line 777
    .local v18, "otherVh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->canDropOver(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 779
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v23

    add-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v5, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 780
    .local v10, "dx":I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v23

    add-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v6, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 781
    .local v11, "dy":I
    mul-int v22, v10, v10

    mul-int v23, v11, v11

    add-int v9, v22, v23

    .line 783
    .local v9, "dist":I
    const/16 v19, 0x0

    .line 784
    .local v19, "pos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v8

    .line 785
    .local v8, "cnt":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    if-ge v13, v8, :cond_3

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    if-le v9, v0, :cond_3

    .line 787
    add-int/lit8 v19, v19, 0x1

    .line 785
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 792
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 796
    .end local v8    # "cnt":I
    .end local v9    # "dist":I
    .end local v10    # "dx":I
    .end local v11    # "dy":I
    .end local v13    # "j":I
    .end local v17    # "other":Landroid/view/View;
    .end local v18    # "otherVh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v19    # "pos":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    return-object v22
.end method

.method private findSwipedView(Landroid/view/MotionEvent;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 10
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 900
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v5

    .line 901
    .local v5, "lm":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 922
    :cond_0
    :goto_0
    return-object v7

    .line 904
    :cond_1
    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 905
    .local v6, "pointerIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iget v9, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    sub-float v3, v8, v9

    .line 906
    .local v3, "dx":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget v9, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    sub-float v4, v8, v9

    .line 907
    .local v4, "dy":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 908
    .local v0, "absDx":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 910
    .local v1, "absDy":F
    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSlop:I

    int-to-float v8, v8

    cmpg-float v8, v0, v8

    if-gez v8, :cond_2

    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSlop:I

    int-to-float v8, v8

    cmpg-float v8, v1, v8

    if-ltz v8, :cond_0

    .line 913
    :cond_2
    cmpl-float v8, v0, v1

    if-lez v8, :cond_3

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    if-nez v8, :cond_0

    .line 915
    :cond_3
    cmpl-float v8, v1, v0

    if-lez v8, :cond_4

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    if-nez v8, :cond_0

    .line 918
    :cond_4
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    .line 919
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 922
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v7, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v7

    goto :goto_0
.end method

.method private getSelectedDxDy([F)V
    .locals 4
    .param p1, "outPosition"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 486
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    .line 487
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartX:F

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v2

    .line 491
    :goto_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    .line 492
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartY:F

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v3

    .line 496
    :goto_1
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v2

    goto :goto_0

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v3

    goto :goto_1
.end method

.method private hasRunningRecoverAnim()Z
    .locals 3

    .prologue
    .line 675
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 676
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 677
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->access$1900(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 678
    const/4 v2, 0x1

    .line 681
    :goto_1
    return v2

    .line 676
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 681
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "left"    # F
    .param p4, "top"    # F

    .prologue
    .line 426
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, p4

    if-ltz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initGestureDetector()V
    .locals 4

    .prologue
    .line 478
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    goto :goto_0
.end method

.method private moveIfNecessary(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 810
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getMoveThreshold(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)F

    move-result v9

    .line 811
    .local v9, "threshold":F
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartX:F

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    add-float/2addr v0, v1

    float-to-int v6, v0

    .line 812
    .local v6, "x":I
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartY:F

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    add-float/2addr v0, v1

    float-to-int v7, v0

    .line 813
    .local v7, "y":I
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 814
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 815
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 818
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->findSwapTargets(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v8

    .line 819
    .local v8, "swapTargets":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1, v8, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->chooseDropTarget(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Ljava/util/List;II)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v4

    .line 824
    .local v4, "target":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-nez v4, :cond_3

    .line 825
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 826
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 829
    :cond_3
    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    .line 830
    .local v5, "toPosition":I
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    .line 831
    .local v3, "fromPosition":I
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, v1, p1, v4}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->onMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->onMoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ILcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;III)V

    goto/16 :goto_0
.end method

.method private obtainVelocityTracker()V
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 889
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 890
    return-void
.end method

.method private postDispatchSwipe(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;I)V
    .locals 2
    .param p1, "anim"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    .param p2, "swipeDir"    # I

    .prologue
    .line 653
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$4;-><init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;I)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 672
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 895
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 897
    :cond_0
    return-void
.end method

.method private removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1253
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1254
    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 1256
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setChildDrawingOrderCallback(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1260
    :cond_0
    return-void
.end method

.method private scrollIfNecessary()Z
    .locals 27

    .prologue
    .line 688
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-nez v5, :cond_0

    .line 689
    const-wide/high16 v6, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 690
    const/4 v5, 0x0

    .line 747
    :goto_0
    return v5

    .line 692
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 693
    .local v24, "now":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v5, v6, v14

    if-nez v5, :cond_8

    const-wide/16 v10, 0x0

    .line 695
    .local v10, "scrollDuration":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v22

    .line 696
    .local v22, "lm":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    .line 697
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 699
    :cond_1
    const/4 v8, 0x0

    .line 700
    .local v8, "scrollX":I
    const/16 v16, 0x0

    .line 701
    .local v16, "scrollY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 702
    invoke-virtual/range {v22 .. v22}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 703
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    add-float/2addr v5, v6

    float-to-int v12, v5

    .line 704
    .local v12, "curX":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v12, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v6

    sub-int v21, v5, v6

    .line 705
    .local v21, "leftDiff":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_9

    if-gez v21, :cond_9

    .line 706
    move/from16 v8, v21

    .line 716
    .end local v12    # "curX":I
    .end local v21    # "leftDiff":I
    :cond_2
    :goto_2
    invoke-virtual/range {v22 .. v22}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 717
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartY:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    add-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v20, v0

    .line 718
    .local v20, "curY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v5, v20, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v6

    sub-int v26, v5, v6

    .line 719
    .local v26, "topDiff":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    if-gez v26, :cond_a

    .line 720
    move/from16 v16, v26

    .line 729
    .end local v20    # "curY":I
    .end local v26    # "topDiff":I
    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    .line 730
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 731
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 732
    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v9

    .line 730
    invoke-virtual/range {v5 .. v11}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;IIIJ)I

    move-result v8

    .line 734
    :cond_4
    if-eqz v16, :cond_5

    .line 735
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 736
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 737
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v17

    move-wide/from16 v18, v10

    .line 735
    invoke-virtual/range {v13 .. v19}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;IIIJ)I

    move-result v16

    .line 739
    :cond_5
    if-nez v8, :cond_6

    if-eqz v16, :cond_b

    .line 740
    :cond_6
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v5, v6, v14

    if-nez v5, :cond_7

    .line 741
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 743
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move/from16 v0, v16

    invoke-virtual {v5, v8, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollBy(II)V

    .line 744
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 693
    .end local v8    # "scrollX":I
    .end local v10    # "scrollDuration":J
    .end local v16    # "scrollY":I
    .end local v22    # "lm":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    :cond_8
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    sub-long v10, v24, v6

    goto/16 :goto_1

    .line 707
    .restart local v8    # "scrollX":I
    .restart local v10    # "scrollDuration":J
    .restart local v12    # "curX":I
    .restart local v16    # "scrollY":I
    .restart local v21    # "leftDiff":I
    .restart local v22    # "lm":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    :cond_9
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 708
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 709
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 710
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v23, v5, v6

    .line 711
    .local v23, "rightDiff":I
    if-lez v23, :cond_2

    .line 712
    move/from16 v8, v23

    goto/16 :goto_2

    .line 721
    .end local v12    # "curX":I
    .end local v21    # "leftDiff":I
    .end local v23    # "rightDiff":I
    .restart local v20    # "curY":I
    .restart local v26    # "topDiff":I
    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 722
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int v5, v5, v20

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 723
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v4, v5, v6

    .line 724
    .local v4, "bottomDiff":I
    if-lez v4, :cond_3

    .line 725
    move/from16 v16, v4

    goto/16 :goto_3

    .line 746
    .end local v4    # "bottomDiff":I
    .end local v20    # "curY":I
    .end local v26    # "topDiff":I
    :cond_b
    const-wide/high16 v6, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 747
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private select(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 22
    .param p1, "selected"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    .line 532
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    move/from16 v0, p2

    if-ne v0, v5, :cond_0

    .line 649
    :goto_0
    return-void

    .line 535
    :cond_0
    const-wide/high16 v20, -0x8000000000000000L

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 536
    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    .line 538
    .local v8, "prevActionState":I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->endRecoverAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)I

    .line 539
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    .line 540
    const/4 v5, 0x2

    move/from16 v0, p2

    if-ne v0, v5, :cond_1

    .line 544
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 545
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->addChildDrawingOrderCallback()V

    .line 547
    :cond_1
    const/4 v5, 0x1

    mul-int/lit8 v14, p2, 0x8

    add-int/lit8 v14, v14, 0x8

    shl-int/2addr v5, v14

    add-int/lit8 v15, v5, -0x1

    .line 549
    .local v15, "actionStateMask":I
    const/16 v18, 0x0

    .line 551
    .local v18, "preventLayout":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v5, :cond_2

    .line 552
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 553
    .local v6, "prevSelected":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v5, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 554
    const/4 v5, 0x2

    if-ne v8, v5, :cond_6

    const/4 v13, 0x0

    .line 556
    .local v13, "swipeDir":I
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->releaseVelocityTracker()V

    .line 560
    sparse-switch v13, :sswitch_data_0

    .line 574
    const/4 v11, 0x0

    .line 575
    .local v11, "targetTranslateX":F
    const/4 v12, 0x0

    .line 577
    .local v12, "targetTranslateY":F
    :goto_2
    const/4 v5, 0x2

    if-ne v8, v5, :cond_7

    .line 578
    const/16 v7, 0x8

    .line 584
    .local v7, "animationType":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpPosition:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 585
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpPosition:[F

    const/4 v14, 0x0

    aget v9, v5, v14

    .line 586
    .local v9, "currentTranslateX":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpPosition:[F

    const/4 v14, 0x1

    aget v10, v5, v14

    .line 587
    .local v10, "currentTranslateY":F
    new-instance v4, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;

    move-object/from16 v5, p0

    move-object v14, v6

    invoke-direct/range {v4 .. v14}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;-><init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIFFFFILcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 616
    .local v4, "rv":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    sub-float v20, v11, v9

    sub-float v21, v12, v10

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v14, v7, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getAnimationDuration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;IFF)J

    move-result-wide v16

    .line 618
    .local v16, "duration":J
    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->setDuration(J)V

    .line 619
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->start()V

    .line 621
    const/16 v18, 0x1

    .line 626
    .end local v4    # "rv":Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    .end local v7    # "animationType":I
    .end local v9    # "currentTranslateX":F
    .end local v10    # "currentTranslateY":F
    .end local v11    # "targetTranslateX":F
    .end local v12    # "targetTranslateY":F
    .end local v13    # "swipeDir":I
    .end local v16    # "duration":J
    :goto_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 628
    .end local v6    # "prevSelected":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_2
    if-eqz p1, :cond_3

    .line 629
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 630
    move-object/from16 v0, p1

    invoke-virtual {v5, v14, v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v5

    and-int/2addr v5, v15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    mul-int/lit8 v14, v14, 0x8

    shr-int/2addr v5, v14

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedFlags:I

    .line 632
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartX:F

    .line 633
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedStartY:F

    .line 634
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 636
    const/4 v5, 0x2

    move/from16 v0, p2

    if-ne v0, v5, :cond_3

    .line 637
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 640
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    .line 641
    .local v19, "rvParent":Landroid/view/ViewParent;
    if-eqz v19, :cond_4

    .line 642
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :goto_5
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 644
    :cond_4
    if-nez v18, :cond_5

    .line 645
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 647
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v5, v14, v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->onSelectedChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 648
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->invalidate()V

    goto/16 :goto_0

    .line 555
    .end local v19    # "rvParent":Landroid/view/ViewParent;
    .restart local v6    # "prevSelected":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->swipeIfNecessary(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v13

    goto/16 :goto_1

    .line 565
    .restart local v13    # "swipeDir":I
    :sswitch_0
    const/4 v12, 0x0

    .line 566
    .restart local v12    # "targetTranslateY":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v14}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float v11, v5, v14

    .line 567
    .restart local v11    # "targetTranslateX":F
    goto/16 :goto_2

    .line 570
    .end local v11    # "targetTranslateX":F
    .end local v12    # "targetTranslateY":F
    :sswitch_1
    const/4 v11, 0x0

    .line 571
    .restart local v11    # "targetTranslateX":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v14}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float v12, v5, v14

    .line 572
    .restart local v12    # "targetTranslateY":F
    goto/16 :goto_2

    .line 579
    :cond_7
    if-lez v13, :cond_8

    .line 580
    const/4 v7, 0x2

    .restart local v7    # "animationType":I
    goto/16 :goto_3

    .line 582
    .end local v7    # "animationType":I
    :cond_8
    const/4 v7, 0x4

    .restart local v7    # "animationType":I
    goto/16 :goto_3

    .line 623
    .end local v7    # "animationType":I
    .end local v11    # "targetTranslateX":F
    .end local v12    # "targetTranslateY":F
    .end local v13    # "swipeDir":I
    :cond_9
    iget-object v5, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v5, v14, v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->clearView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    goto/16 :goto_4

    .line 642
    .end local v6    # "prevSelected":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .restart local v19    # "rvParent":Landroid/view/ViewParent;
    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    .line 560
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private setupCallbacks()V
    .locals 3

    .prologue
    .line 453
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 454
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSlop:I

    .line 455
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V

    .line 456
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addOnItemTouchListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;)V

    .line 457
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addOnChildAttachStateChangeListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 458
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->initGestureDetector()V

    .line 459
    return-void
.end method

.method private swipeIfNecessary(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 9
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    const v8, 0xff00

    const/4 v5, 0x0

    .line 1138
    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    move v4, v5

    .line 1180
    :cond_0
    :goto_0
    return v4

    .line 1141
    :cond_1
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v6, v7, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->getMovementFlags(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v3

    .line 1142
    .local v3, "originalMovementFlags":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 1144
    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutDirection()I

    move-result v7

    .line 1142
    invoke-virtual {v6, v3, v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v0

    .line 1145
    .local v0, "absoluteMovementFlags":I
    and-int v6, v0, v8

    shr-int/lit8 v1, v6, 0x8

    .line 1147
    .local v1, "flags":I
    if-nez v1, :cond_2

    move v4, v5

    .line 1148
    goto :goto_0

    .line 1150
    :cond_2
    and-int v6, v3, v8

    shr-int/lit8 v2, v6, 0x8

    .line 1153
    .local v2, "originalFlags":I
    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 1154
    invoke-direct {p0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->checkHorizontalSwipe(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)I

    move-result v4

    .local v4, "swipeDir":I
    if-lez v4, :cond_3

    .line 1156
    and-int v5, v2, v4

    if-nez v5, :cond_0

    .line 1158
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 1159
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutDirection()I

    move-result v5

    .line 1158
    invoke-static {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v4

    goto :goto_0

    .line 1163
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->checkVerticalSwipe(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)I

    move-result v4

    if-gtz v4, :cond_0

    :cond_4
    move v4, v5

    .line 1180
    goto :goto_0

    .line 1167
    .end local v4    # "swipeDir":I
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->checkVerticalSwipe(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)I

    move-result v4

    .restart local v4    # "swipeDir":I
    if-gtz v4, :cond_0

    .line 1170
    invoke-direct {p0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->checkHorizontalSwipe(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)I

    move-result v4

    if-lez v4, :cond_4

    .line 1172
    and-int v5, v2, v4

    if-nez v5, :cond_0

    .line 1174
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 1175
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutDirection()I

    move-result v5

    .line 1174
    invoke-static {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v4

    goto :goto_0
.end method

.method private updateDxDy(Landroid/view/MotionEvent;II)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "directionFlags"    # I
    .param p3, "pointerIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 1117
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1118
    .local v0, "x":F
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1121
    .local v1, "y":F
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v0, v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    .line 1122
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    sub-float v2, v1, v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    .line 1123
    and-int/lit8 v2, p2, 0x4

    if-nez v2, :cond_0

    .line 1124
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    .line 1126
    :cond_0
    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_1

    .line 1127
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    .line 1129
    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_2

    .line 1130
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    .line 1132
    :cond_2
    and-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_3

    .line 1133
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    .line 1135
    :cond_3
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-ne v0, p1, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_2

    .line 444
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->destroyCallbacks()V

    .line 446
    :cond_2
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 447
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->setupCallbacks()V

    goto :goto_0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 0
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p4, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 882
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 883
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 840
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 844
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 845
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 846
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-nez v0, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v0, v1, :cond_2

    .line 850
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->select(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 852
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->endRecoverAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)I

    .line 853
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->clearView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 513
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 514
    const/4 v6, 0x0

    .local v6, "dx":F
    const/4 v7, 0x0

    .line 515
    .local v7, "dy":F
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 517
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x0

    aget v6, v0, v1

    .line 518
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->access$1400(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 522
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 500
    const/4 v6, 0x0

    .local v6, "dx":F
    const/4 v7, 0x0

    .line 501
    .local v7, "dy":F
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 503
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x0

    aget v6, v0, v1

    .line 504
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActionState:I

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->access$1300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 508
    return-void
.end method

.method public startDrag(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->access$2100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start drag has been called but swiping is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :goto_0
    return-void

    .line 1045
    :cond_0
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eq v0, v1, :cond_1

    .line 1046
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1050
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1051
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    .line 1052
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->select(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public startSwipe(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->access$2200(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start swipe has been called but dragging is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :goto_0
    return-void

    .line 1092
    :cond_0
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eq v0, v1, :cond_1

    .line 1093
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1097
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1098
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    .line 1099
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->select(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method
