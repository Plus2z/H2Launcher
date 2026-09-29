.class public Lnet/oneplus/h2launcher/InsettableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "InsettableFrameLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lnet/oneplus/h2launcher/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;
    }
.end annotation


# instance fields
.field protected mInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {p0, p0}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 57
    instance-of v0, p1, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->generateDefaultLayoutParams()Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->generateDefaultLayoutParams()Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 51
    new-instance v0, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    new-instance v0, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 62
    new-instance v0, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lnet/oneplus/h2launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p2, v0, v1}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->setFrameLayoutChildInsets(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 89
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 93
    return-void
.end method

.method public setFrameLayoutChildInsets(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "newInsets"    # Landroid/graphics/Rect;
    .param p3, "oldInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;

    .line 23
    .local v0, "lp":Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;
    instance-of v1, p1, Lnet/oneplus/h2launcher/Insettable;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 24
    check-cast v1, Lnet/oneplus/h2launcher/Insettable;

    invoke-interface {v1, p2}, Lnet/oneplus/h2launcher/Insettable;->setInsets(Landroid/graphics/Rect;)V

    .line 31
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    return-void

    .line 25
    :cond_1
    iget-boolean v1, v0, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    if-nez v1, :cond_0

    .line 26
    iget v1, v0, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;->topMargin:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;->topMargin:I

    .line 27
    iget v1, v0, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;->leftMargin:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;->leftMargin:I

    .line 28
    iget v1, v0, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;->rightMargin:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;->rightMargin:I

    .line 29
    iget v1, v0, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;->bottomMargin:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 36
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->getChildCount()I

    move-result v2

    .line 37
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 38
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lnet/oneplus/h2launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, v3}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->setFrameLayoutChildInsets(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 42
    return-void
.end method
