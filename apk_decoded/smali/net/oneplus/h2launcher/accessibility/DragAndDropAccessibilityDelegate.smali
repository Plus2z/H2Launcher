.class public abstract Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "DragAndDropAccessibilityDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final INVALID_POSITION:I = -0x1

.field private static final sTempArray:[I


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mDelegate:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

.field private final mTempRect:Landroid/graphics/Rect;

.field protected final mView:Lnet/oneplus/h2launcher/CellLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->sTempArray:[I

    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/CellLayout;)V
    .locals 1
    .param p1, "forView"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    .line 51
    iput-object p1, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lnet/oneplus/h2launcher/CellLayout;

    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAccessibilityDelegate()Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mDelegate:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    .line 54
    return-void
.end method

.method private getItemBounds(I)Landroid/graphics/Rect;
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v0

    rem-int v1, p1, v0

    .line 131
    .local v1, "cellX":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v0

    div-int v2, p1, v0

    .line 132
    .local v2, "cellY":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mDelegate:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->getDragInfo()Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    move-result-object v6

    .line 133
    .local v6, "dragInfo":Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lnet/oneplus/h2launcher/CellLayout;

    iget-object v3, v6, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lnet/oneplus/h2launcher/ItemInfo;

    iget v3, v3, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    iget-object v4, v6, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lnet/oneplus/h2launcher/ItemInfo;

    iget v4, v4, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    iget-object v5, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 134
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method protected abstract getConfirmationForIconDrop(I)Ljava/lang/String;
.end method

.method protected abstract getLocationDescriptionForIconDrop(I)Ljava/lang/String;
.end method

.method protected getVirtualViewAt(FF)I
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 58
    cmpg-float v1, p1, v2

    if-ltz v1, :cond_0

    cmpg-float v1, p2, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    .line 59
    :cond_0
    const/high16 v1, -0x80000000

    .line 65
    :goto_0
    return v1

    .line 61
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lnet/oneplus/h2launcher/CellLayout;

    float-to-int v2, p1

    float-to-int v3, p2

    sget-object v4, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->sTempArray:[I

    invoke-virtual {v1, v2, v3, v4}, Lnet/oneplus/h2launcher/CellLayout;->pointToCellExact(II[I)V

    .line 64
    sget-object v1, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->sTempArray:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->sTempArray:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v3

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    .line 65
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->intersectsValidDropTarget(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "virtualViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v3

    mul-int v1, v2, v3

    .line 80
    .local v1, "nCells":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 81
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->intersectsValidDropTarget(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    return-void
.end method

.method protected abstract intersectsValidDropTarget(I)I
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->getFocusedVirtualView()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    .line 101
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "viewId"    # I
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 89
    const/16 v1, 0x10

    if-ne p2, v1, :cond_0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->getConfirmationForIconDrop(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "confirmation":Ljava/lang/String;
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mDelegate:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    iget-object v2, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mView:Lnet/oneplus/h2launcher/CellLayout;

    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->getItemBounds(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->handleAccessibleDrop(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x1

    .line 94
    .end local v0    # "confirmation":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 105
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid virtual view id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    const/4 v1, 0x1

    .line 113
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid virtual view id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->getLocationDescriptionForIconDrop(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->getItemBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 120
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 121
    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 122
    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 123
    return-void
.end method
