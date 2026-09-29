.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator$DelayedNotificationRunner;
.super Ljava/lang/Object;
.source "RemovingItemDecorator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedNotificationRunner"
.end annotation


# instance fields
.field private final mCode:I

.field private mRefDecorator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;I)V
    .locals 1
    .param p1, "decorator"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;
    .param p2, "code"    # I

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator$DelayedNotificationRunner;->mRefDecorator:Ljava/lang/ref/WeakReference;

    .line 227
    iput p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator$DelayedNotificationRunner;->mCode:I

    .line 228
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 232
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator$DelayedNotificationRunner;->mRefDecorator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;

    .line 233
    .local v0, "decorator":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator$DelayedNotificationRunner;->mRefDecorator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 234
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator$DelayedNotificationRunner;->mRefDecorator:Ljava/lang/ref/WeakReference;

    .line 236
    if-eqz v0, :cond_0

    .line 237
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator$DelayedNotificationRunner;->mCode:I

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RemovingItemDecorator;->onDelayedNotification(I)V

    .line 239
    :cond_0
    return-void
.end method
