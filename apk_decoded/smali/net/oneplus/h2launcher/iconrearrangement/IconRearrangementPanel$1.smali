.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1;
.super Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
.source "IconRearrangementPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # Z

    .prologue
    .line 77
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method protected getExtraLayoutSpace(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 3
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 80
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    iget-object v1, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    .line 81
    .local v0, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getExtraLayoutSpace(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v1

    iget v2, v0, Lnet/oneplus/h2launcher/DeviceProfile;->availableHeightPx:I

    add-int/2addr v1, v2

    return v1
.end method

.method public smoothScrollToPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 88
    move-object v0, p0

    .line 89
    .local v0, "layoutManager":Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
    new-instance v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1$1;

    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    iget-object v2, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {v1, p0, v2, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1$1;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1;Landroid/content/Context;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;)V

    .line 100
    .local v1, "smoothScroller":Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;
    invoke-virtual {v1, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->setTargetPosition(I)V

    .line 101
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1;->startSmoothScroll(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;)V

    .line 102
    return-void
.end method
