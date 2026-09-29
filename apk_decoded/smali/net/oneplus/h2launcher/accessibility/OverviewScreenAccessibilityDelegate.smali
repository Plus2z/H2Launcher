.class public Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "OverviewScreenAccessibilityDelegate.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final MOVE_BACKWARD:I = 0x7f110008

.field private static final MOVE_FORWARD:I = 0x7f110009


# instance fields
.field private final mActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkspace:Lnet/oneplus/h2launcher/Workspace;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/Workspace;)V
    .locals 9
    .param p1, "workspace"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    const v8, 0x7f110009

    const v7, 0x7f110008

    const v3, 0x7f0b0027

    const v4, 0x7f0b0026

    .line 42
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 39
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    .line 43
    iput-object p1, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 45
    iget-object v2, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    .line 47
    .local v1, "isRtl":Z
    iget-object v5, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    if-eqz v1, :cond_0

    move v2, v3

    .line 48
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v6, v7, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v5, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    iget-object v2, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    if-eqz v1, :cond_1

    .line 51
    :goto_1
    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v5, v8, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v2, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    return-void

    :cond_0
    move v2, v4

    .line 47
    goto :goto_0

    :cond_1
    move v4, v3

    .line 50
    goto :goto_1
.end method

.method private movePage(ILandroid/view/View;)V
    .locals 3
    .param p1, "finalIndex"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->onStartReordering()V

    .line 75
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/Workspace;->removeView(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0, p2, p1}, Lnet/oneplus/h2launcher/Workspace;->addView(Landroid/view/View;I)V

    .line 77
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->onEndReordering()V

    .line 78
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->updateAccessibilityFlags()V

    .line 81
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 82
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 88
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 89
    .local v0, "index":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f110009

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 92
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->numCustomPages()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 93
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f110008

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 95
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    const/16 v2, 0x40

    if-ne p2, v2, :cond_1

    .line 59
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 60
    .local v0, "index":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/Workspace;->setCurrentPage(I)V

    .line 70
    .end local v0    # "index":I
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    :goto_0
    return v1

    .line 61
    :cond_1
    const v2, 0x7f110009

    if-ne p2, v2, :cond_2

    .line 62
    iget-object v2, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2, p1}, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->movePage(ILandroid/view/View;)V

    goto :goto_0

    .line 64
    :cond_2
    const v2, 0x7f110008

    if-ne p2, v2, :cond_0

    .line 65
    iget-object v2, p0, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2, p1}, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;->movePage(ILandroid/view/View;)V

    goto :goto_0
.end method
