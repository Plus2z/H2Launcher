.class public Lnet/oneplus/h2launcher/CheckLongPressHelper;
.super Ljava/lang/Object;
.source "CheckLongPressHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;
    }
.end annotation


# instance fields
.field mHasPerformedLongPress:Z

.field mListener:Landroid/view/View$OnLongClickListener;

.field private mLongPressTimeout:I

.field private mPendingCheckForLongPress:Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x12c

    iput v0, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mLongPressTimeout:I

    .line 50
    iput-object p1, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mView:Landroid/view/View;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x12c

    iput v0, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mLongPressTimeout:I

    .line 54
    iput-object p1, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mView:Landroid/view/View;

    .line 55
    iput-object p2, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mListener:Landroid/view/View$OnLongClickListener;

    .line 56
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 76
    iget-object v0, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mPendingCheckForLongPress:Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mPendingCheckForLongPress:Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mPendingCheckForLongPress:Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;

    .line 80
    :cond_0
    return-void
.end method

.method public hasPerformedLongPress()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return v0
.end method

.method public postCheckForLongPress()V
    .locals 4

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 68
    iget-object v0, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mPendingCheckForLongPress:Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;-><init>(Lnet/oneplus/h2launcher/CheckLongPressHelper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mPendingCheckForLongPress:Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;

    .line 71
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mPendingCheckForLongPress:Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;

    iget v2, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mLongPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    return-void
.end method

.method public setLongPressTimeout(I)V
    .locals 0
    .param p1, "longPressTimeout"    # I

    .prologue
    .line 62
    iput p1, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mLongPressTimeout:I

    .line 63
    return-void
.end method
