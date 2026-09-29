.class public Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.source "IconRearrangementRecyclerView.java"


# instance fields
.field private mItemWidth:I

.field private mScreenContainViewCount:I

.field private mScrollToLast:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;->mScrollToLast:Z

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;->mItemWidth:I

    .line 26
    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 30
    invoke-super/range {p0 .. p5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onLayout(ZIIII)V

    .line 31
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;->mScrollToLast:Z

    if-eqz v1, :cond_0

    .line 32
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;->mScrollToLast:Z

    .line 33
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;->getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 34
    .local v0, "targetPos":I
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;->smoothScrollToPosition(I)V

    .line 36
    .end local v0    # "targetPos":I
    :cond_0
    return-void
.end method

.method public setScrollToLast(Z)V
    .locals 0
    .param p1, "scrollToLast"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;->mScrollToLast:Z

    .line 40
    return-void
.end method
