.class public Lnet/oneplus/h2launcher/FolderAutoScrollHelper;
.super Landroid/support/v4/widget/AutoScrollHelper;
.source "FolderAutoScrollHelper.java"


# instance fields
.field private mTarget:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;)V
    .locals 2
    .param p1, "target"    # Landroid/widget/ScrollView;

    .prologue
    const/4 v0, 0x0

    const v1, 0x44bb8000    # 1500.0f

    .line 10
    invoke-direct {p0, p1}, Landroid/support/v4/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    .line 11
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderAutoScrollHelper;->mTarget:Landroid/widget/ScrollView;

    .line 12
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderAutoScrollHelper;->setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 13
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderAutoScrollHelper;->setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderAutoScrollHelper;->setExclusive(Z)Landroid/support/v4/widget/AutoScrollHelper;

    .line 15
    invoke-virtual {p0, v1, v1}, Lnet/oneplus/h2launcher/FolderAutoScrollHelper;->setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 16
    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderAutoScrollHelper;->mTarget:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public scrollTargetBy(II)V
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 20
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderAutoScrollHelper;->mTarget:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 21
    return-void
.end method
