.class public Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.source "RecyclerViewWrapper.java"


# static fields
.field private static final FACTOR:F = 0.375f

.field static final TAG:Ljava/lang/String; = "RecyclerViewWrapper"


# instance fields
.field private CONVERGING:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

.field private CONVERGING_BOUNCE:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

.field private mActivePointerId:I

.field private mAttached:Z

.field private mFirstAtTopOrBottom:Z

.field private mFirstDownX:I

.field private mFirstDownY:I

.field private mFirstMove:Z

.field private mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsMoving:Z

.field private mLastSpringValBottom:D

.field private mLastSpringValTop:D

.field private mReachBottom:Z

.field private mReachTop:Z

.field private mScrolling:Z

.field private mShowMainButtonRunnable:Ljava/lang/Runnable;

.field private mShowOnSpringAnimatingEnd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipScrollingBoucing:Z

.field private mSpring:Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

.field public mSpringAnimating:Z

.field private mStartY:F

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const-wide v4, 0x407f400000000000L    # 500.0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mActivePointerId:I

    .line 39
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    invoke-static {v4, v5, v0, v1}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->CONVERGING:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    .line 40
    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    invoke-static {v4, v5, v0, v1}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->CONVERGING_BOUNCE:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mShowOnSpringAnimatingEnd:Ljava/util/ArrayList;

    .line 52
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstMove:Z

    .line 53
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstAtTopOrBottom:Z

    .line 54
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstDownX:I

    .line 55
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstDownY:I

    .line 56
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mTouchSlop:I

    .line 57
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mIsMoving:Z

    .line 58
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mAttached:Z

    .line 59
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSkipScrollingBoucing:Z

    .line 60
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mScrolling:Z

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mHandler:Landroid/os/Handler;

    .line 409
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$3;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$3;-><init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->init()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const-wide v4, 0x407f400000000000L    # 500.0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mActivePointerId:I

    .line 39
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    invoke-static {v4, v5, v0, v1}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->CONVERGING:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    .line 40
    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    invoke-static {v4, v5, v0, v1}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->CONVERGING_BOUNCE:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mShowOnSpringAnimatingEnd:Ljava/util/ArrayList;

    .line 52
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstMove:Z

    .line 53
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstAtTopOrBottom:Z

    .line 54
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstDownX:I

    .line 55
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstDownY:I

    .line 56
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mTouchSlop:I

    .line 57
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mIsMoving:Z

    .line 58
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mAttached:Z

    .line 59
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSkipScrollingBoucing:Z

    .line 60
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mScrolling:Z

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mHandler:Landroid/os/Handler;

    .line 409
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$3;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$3;-><init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const-wide v4, 0x407f400000000000L    # 500.0

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mActivePointerId:I

    .line 39
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    invoke-static {v4, v5, v0, v1}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->CONVERGING:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    .line 40
    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    invoke-static {v4, v5, v0, v1}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->CONVERGING_BOUNCE:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mShowOnSpringAnimatingEnd:Ljava/util/ArrayList;

    .line 52
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstMove:Z

    .line 53
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstAtTopOrBottom:Z

    .line 54
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstDownX:I

    .line 55
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstDownY:I

    .line 56
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mTouchSlop:I

    .line 57
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mIsMoving:Z

    .line 58
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mAttached:Z

    .line 59
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSkipScrollingBoucing:Z

    .line 60
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mScrolling:Z

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mHandler:Landroid/os/Handler;

    .line 409
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$3;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$3;-><init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->init()V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    .prologue
    .line 26
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mShowOnSpringAnimatingEnd:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    .prologue
    .line 26
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSkipScrollingBoucing:Z

    return v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    .prologue
    .line 26
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mScrolling:Z

    return v0
.end method

.method static synthetic access$202(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mScrolling:Z

    return p1
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    .prologue
    .line 26
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSpring:Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    .prologue
    .line 26
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getDraggableItemWrapperAdapter()Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    .prologue
    .line 26
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mShowMainButtonRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    .prologue
    .line 26
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->onTimeChanged()V

    return-void
.end method

.method private getDraggableItemWrapperAdapter()Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    const-class v1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/WrapperAdapterUtils;->findWrappedAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mTouchSlop:I

    .line 82
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringSystem;->create()Lnet/oneplus/h2launcher/quickpage/rebound/SpringSystem;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringSystem;->createSpring()Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSpring:Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSpring:Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->CONVERGING:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->setSpringConfig(Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 85
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSpring:Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$1;-><init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->addListener(Lnet/oneplus/h2launcher/quickpage/rebound/SpringListener;)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 120
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$2;-><init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->addOnScrollListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;)V

    .line 193
    return-void
.end method

.method private onTimeChanged()V
    .locals 1

    .prologue
    .line 403
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getDraggableItemWrapperAdapter()Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    move-result-object v0

    .line 404
    .local v0, "adapter":Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->updateNoteReminders()V

    .line 407
    :cond_0
    return-void
.end method


# virtual methods
.method public getSpring()Lnet/oneplus/h2launcher/quickpage/rebound/Spring;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSpring:Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-eq v4, v2, :cond_0

    .line 234
    :goto_0
    return v2

    .line 208
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 209
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 211
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 234
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 213
    :pswitch_0
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstDownX:I

    .line 214
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstDownY:I

    goto :goto_1

    .line 218
    :pswitch_1
    iget-boolean v4, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mIsMoving:Z

    if-nez v4, :cond_1

    .line 219
    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstDownX:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstDownY:I

    sub-int v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mTouchSlop:I

    mul-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_2

    move v2, v3

    .line 220
    goto :goto_0

    .line 223
    :cond_2
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mIsMoving:Z

    goto :goto_1

    .line 229
    :pswitch_2
    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstDownY:I

    iput v3, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstDownX:I

    .line 230
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mIsMoving:Z

    goto :goto_1

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 241
    const/16 v18, 0x1

    .line 399
    :goto_0
    return v18

    .line 244
    :cond_0
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getDraggableItemWrapperAdapter()Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    move-result-object v17

    .line 245
    .local v17, "wrapperAdapter":Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;
    if-eqz v17, :cond_1

    .line 246
    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->isLongPressing()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSpring:Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->setEndValue(D)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 248
    invoke-super/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    goto :goto_0

    .line 251
    :cond_1
    const-string v18, "RecyclerViewWrapper"

    const-string v19, "cannot find corresponding drag adapter"

    invoke-static/range {v18 .. v19}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-super/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    goto :goto_0

    .line 255
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 256
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 259
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 399
    :cond_4
    :goto_1
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    goto :goto_0

    .line 263
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v18

    check-cast v18, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    .line 264
    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v8

    .line 265
    .local v8, "firstVisibleItem":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getChildCount()I

    move-result v16

    .line 266
    .local v16, "visibleItemCount":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getItemCount()I

    move-result v14

    .line 271
    .local v14, "totalItemCount":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstMove:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 272
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mActivePointerId:I

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v9, v0

    .line 275
    .local v9, "initialTouchY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 277
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstMove:Z

    .line 278
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstAtTopOrBottom:Z

    .line 279
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSkipScrollingBoucing:Z

    .line 280
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mScrolling:Z

    .line 282
    int-to-float v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mStartY:F

    .line 283
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mReachTop:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSpring:Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->getCurrentValue()D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mLastSpringValTop:D

    .line 285
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mLastSpringValBottom:D

    goto/16 :goto_1

    .line 286
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mReachBottom:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSpring:Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->getCurrentValue()D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mLastSpringValBottom:D

    .line 288
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mLastSpringValTop:D

    goto/16 :goto_1

    .line 290
    :cond_6
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mLastSpringValTop:D

    .line 291
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mLastSpringValBottom:D

    goto/16 :goto_1

    .line 294
    .end local v9    # "initialTouchY":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mActivePointerId:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 295
    .local v11, "pointerIndex":I
    if-gez v11, :cond_8

    .line 296
    const-string v18, "RecyclerViewWrapper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error processing scroll; pointer index for id "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mActivePointerId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " not found. Did any MotionEvents get skipped?"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 300
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v4, v0

    .line 305
    .local v4, "currentY":I
    if-nez v8, :cond_e

    .line 306
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 308
    .local v7, "firstView":Landroid/view/View;
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getPaddingTop()I

    move-result v19

    add-int v18, v18, v19

    if-ltz v18, :cond_d

    int-to-float v0, v4

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mStartY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_d

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mReachTop:Z

    .line 314
    .end local v7    # "firstView":Landroid/view/View;
    :goto_3
    add-int v18, v8, v16

    move/from16 v0, v18

    if-ne v0, v14, :cond_10

    .line 315
    add-int/lit8 v18, v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 316
    .local v10, "lastView":Landroid/view/View;
    if-eqz v10, :cond_f

    .line 317
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getPaddingBottom()I

    move-result v19

    add-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_f

    move/from16 v0, v16

    if-lt v14, v0, :cond_f

    int-to-float v0, v4

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mStartY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_f

    const/16 v18, 0x1

    :goto_4
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mReachBottom:Z

    .line 323
    .end local v10    # "lastView":Landroid/view/View;
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mReachTop:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mReachBottom:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 324
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSpring:Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->CONVERGING_BOUNCE:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->setSpringConfig(Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 325
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstAtTopOrBottom:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 326
    int-to-float v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mStartY:F

    .line 327
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstAtTopOrBottom:Z

    .line 340
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mReachTop:Z

    move/from16 v18, v0

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mReachBottom:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 342
    :cond_b
    int-to-float v0, v4

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mStartY:F

    move/from16 v19, v0

    sub-float v5, v18, v19

    .line 343
    .local v5, "deltaY":F
    const/high16 v18, 0x3ec00000    # 0.375f

    mul-float v6, v5, v18

    .line 344
    .local v6, "distance":F
    const-wide/16 v12, 0x0

    .line 346
    .local v12, "mLastSpringVal":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mReachTop:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 347
    move-object/from16 v0, p0

    iget-wide v12, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mLastSpringValTop:D

    .line 352
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSpring:Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-object/from16 v18, v0

    float-to-double v0, v6

    move-wide/from16 v20, v0

    add-double v20, v20, v12

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->setCurrentValue(D)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 353
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSkipScrollingBoucing:Z

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 357
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mReachTop:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    int-to-float v0, v4

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mStartY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_13

    .line 358
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 308
    .end local v5    # "deltaY":F
    .end local v6    # "distance":F
    .end local v12    # "mLastSpringVal":D
    .restart local v7    # "firstView":Landroid/view/View;
    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 311
    .end local v7    # "firstView":Landroid/view/View;
    :cond_e
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mReachTop:Z

    goto/16 :goto_3

    .line 317
    .restart local v10    # "lastView":Landroid/view/View;
    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 320
    .end local v10    # "lastView":Landroid/view/View;
    :cond_10
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mReachBottom:Z

    goto/16 :goto_5

    .line 330
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSpring:Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->CONVERGING:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->setSpringConfig(Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 331
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstAtTopOrBottom:Z

    goto/16 :goto_6

    .line 348
    .restart local v5    # "deltaY":F
    .restart local v6    # "distance":F
    .restart local v12    # "mLastSpringVal":D
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mReachBottom:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 349
    move-object/from16 v0, p0

    iget-wide v12, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mLastSpringValBottom:D

    goto/16 :goto_7

    .line 359
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mReachBottom:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    int-to-float v0, v4

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mStartY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_4

    .line 360
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 371
    .end local v4    # "currentY":I
    .end local v5    # "deltaY":F
    .end local v6    # "distance":F
    .end local v8    # "firstVisibleItem":I
    .end local v11    # "pointerIndex":I
    .end local v12    # "mLastSpringVal":D
    .end local v14    # "totalItemCount":I
    .end local v16    # "visibleItemCount":I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v4, v0

    .line 373
    .restart local v4    # "currentY":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mReachTop:Z

    move/from16 v18, v0

    if-nez v18, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mReachBottom:Z

    move/from16 v18, v0

    if-eqz v18, :cond_16

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mStartY:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_16

    .line 375
    int-to-float v0, v4

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mStartY:F

    move/from16 v19, v0

    sub-float v5, v18, v19

    .line 376
    .restart local v5    # "deltaY":F
    const/high16 v18, 0x3ec00000    # 0.375f

    mul-float v6, v5, v18

    .line 378
    .restart local v6    # "distance":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 379
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const/high16 v19, 0x41a00000    # 20.0f

    cmpg-float v18, v18, v19

    if-gez v18, :cond_17

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 384
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v15

    .line 386
    .local v15, "v":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 387
    const/4 v6, 0x0

    .line 388
    const/4 v15, 0x0

    .line 391
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSpring:Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-object/from16 v18, v0

    add-float v19, v6, v15

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->setCurrentValue(D)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSpring:Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->setEndValue(D)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 394
    .end local v5    # "deltaY":F
    .end local v6    # "distance":F
    .end local v15    # "v":F
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->clear()V

    .line 395
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mFirstMove:Z

    .line 396
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mStartY:F

    goto/16 :goto_1

    .line 382
    .restart local v5    # "deltaY":F
    .restart local v6    # "distance":F
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x10

    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    goto :goto_8

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    .line 418
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onWindowVisibilityChanged(I)V

    .line 419
    const-string v1, "RecyclerViewWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowVisibilityChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    if-nez p1, :cond_2

    .line 422
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mAttached:Z

    if-nez v1, :cond_0

    .line 423
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mAttached:Z

    .line 424
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 426
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 436
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->onTimeChanged()V

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 438
    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 439
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mAttached:Z

    if-eqz v1, :cond_1

    .line 440
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 441
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mAttached:Z

    goto :goto_0
.end method

.method public setShowMainButtonRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 452
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mShowMainButtonRunnable:Ljava/lang/Runnable;

    .line 453
    return-void
.end method
