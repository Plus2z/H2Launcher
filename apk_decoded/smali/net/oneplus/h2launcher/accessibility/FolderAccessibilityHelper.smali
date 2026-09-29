.class public Lnet/oneplus/h2launcher/accessibility/FolderAccessibilityHelper;
.super Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;
.source "FolderAccessibilityHelper.java"


# instance fields
.field private final mParent:Lnet/oneplus/h2launcher/FolderPagedView;

.field private final mStartPosition:I


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/CellLayout;)V
    .locals 3
    .param p1, "layout"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;-><init>(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 37
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/FolderPagedView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/accessibility/FolderAccessibilityHelper;->mParent:Lnet/oneplus/h2launcher/FolderPagedView;

    .line 39
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/FolderAccessibilityHelper;->mParent:Lnet/oneplus/h2launcher/FolderPagedView;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/FolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 40
    .local v0, "index":I
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lnet/oneplus/h2launcher/accessibility/FolderAccessibilityHelper;->mStartPosition:I

    .line 41
    return-void
.end method


# virtual methods
.method protected getConfirmationForIconDrop(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/FolderAccessibilityHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLocationDescriptionForIconDrop(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/FolderAccessibilityHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0b007e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lnet/oneplus/h2launcher/accessibility/FolderAccessibilityHelper;->mStartPosition:I

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected intersectsValidDropTarget(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/FolderAccessibilityHelper;->mParent:Lnet/oneplus/h2launcher/FolderPagedView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderPagedView;->getAllocatedContentSize()I

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/accessibility/FolderAccessibilityHelper;->mStartPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
