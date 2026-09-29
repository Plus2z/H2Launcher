.class public abstract Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;
.super Ljava/lang/Object;
.source "SwipeResultAction.java"


# instance fields
.field private final mResultAction:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "resultAction"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;->mResultAction:I

    .line 28
    return-void
.end method


# virtual methods
.method public getResultActionType()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;->mResultAction:I

    return v0
.end method

.method protected onCleanUp()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method protected onPerformAction()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method protected onSlideAnimationEnd()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public final performAction()V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;->onPerformAction()V

    .line 36
    return-void
.end method

.method public final slideAnimationEnd()V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;->onSlideAnimationEnd()V

    .line 40
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/action/SwipeResultAction;->onCleanUp()V

    .line 41
    return-void
.end method
