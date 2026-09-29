.class public abstract Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
.super Ljava/lang/Object;
.source "QuickPageItem.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;
    }
.end annotation


# instance fields
.field protected mCallback:Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;

.field protected mId:I

.field protected mPinned:Z

.field protected mVerticalResizable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->mVerticalResizable:Z

    return-void
.end method


# virtual methods
.method public abstract getContent()Ljava/lang/String;
.end method

.method public abstract getEmptyView()Landroid/view/View;
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract getMaxHeight()I
.end method

.method public abstract getMinHeight()I
.end method

.method public abstract getParent()Landroid/view/View;
.end method

.method public abstract getSize()I
.end method

.method public abstract getStandardHeight(I)I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract hasScrollableContent()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public isPinned()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->mPinned:Z

    return v0
.end method

.method public isSectionHeader()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public isVerticalResizable()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->mVerticalResizable:Z

    return v0
.end method

.method public notifyItemAdapterChanged()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->mCallback:Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->mCallback:Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;->onItemAdapterChanged()V

    .line 61
    :cond_0
    return-void
.end method

.method public notifyItemContentChanged()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->mCallback:Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->mCallback:Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;

    invoke-interface {v0, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;->onItemContentChanged(Lnet/oneplus/h2launcher/quickpage/QuickPageItem;)V

    .line 57
    :cond_0
    return-void
.end method

.method public notifyItemSizeChanged()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->mCallback:Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->mCallback:Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;->onItemSizeChanged()V

    .line 65
    :cond_0
    return-void
.end method

.method public abstract onContainerVisibilityChanged(Z)V
.end method

.method public abstract onItemResizeFinished()V
.end method

.method public abstract onItemResizeProgress(I)V
.end method

.method public abstract onItemViewAttached()V
.end method

.method public onNewIntent()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onPermissionsChanged()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public abstract onRemove()V
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public abstract onUiComponentChanged()V
.end method

.method public setCallback(Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;)V
    .locals 0
    .param p1, "callback"    # Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;

    .prologue
    .line 52
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->mCallback:Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;

    .line 53
    return-void
.end method

.method public setPinned(Z)V
    .locals 0
    .param p1, "pinned"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->mPinned:Z

    .line 81
    return-void
.end method
