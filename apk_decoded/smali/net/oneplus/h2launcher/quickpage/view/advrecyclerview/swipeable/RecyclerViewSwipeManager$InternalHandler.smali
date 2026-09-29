.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;
.super Landroid/os/Handler;
.source "RecyclerViewSwipeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# static fields
.field private static final MSG_LONGPRESS:I = 0x1


# instance fields
.field private mDownMotionEvent:Landroid/view/MotionEvent;

.field private mHolder:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;)V
    .locals 0
    .param p1, "holder"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    .prologue
    .line 963
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 964
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->mHolder:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    .line 965
    return-void
.end method


# virtual methods
.method public cancelLongPressDetection()V
    .locals 1

    .prologue
    .line 988
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->removeMessages(I)V

    .line 989
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->mDownMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 991
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->mDownMotionEvent:Landroid/view/MotionEvent;

    .line 993
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 974
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 979
    :goto_0
    return-void

    .line 976
    :pswitch_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->mHolder:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;->access$000(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 974
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 968
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 969
    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->mHolder:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager;

    .line 970
    return-void
.end method

.method public startLongPressDetection(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "timeout"    # I

    .prologue
    .line 982
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->cancelLongPressDetection()V

    .line 983
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->mDownMotionEvent:Landroid/view/MotionEvent;

    .line 984
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RecyclerViewSwipeManager$InternalHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 985
    return-void
.end method
