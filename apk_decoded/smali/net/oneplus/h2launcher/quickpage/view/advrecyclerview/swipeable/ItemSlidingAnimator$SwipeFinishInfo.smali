.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;
.super Ljava/lang/Object;
.source "ItemSlidingAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwipeFinishInfo"
.end annotation


# instance fields
.field final itemPosition:I

.field resultAction:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;


# direct methods
.method public constructor <init>(ILnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;)V
    .locals 0
    .param p1, "itemPosition"    # I
    .param p2, "resultAction"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;->itemPosition:I

    .line 615
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;->resultAction:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;

    .line 616
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/ItemSlidingAnimator$SwipeFinishInfo;->resultAction:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;

    .line 620
    return-void
.end method
