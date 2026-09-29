.class public abstract Lnet/oneplus/h2launcher/BaseContainerView;
.super Landroid/widget/FrameLayout;
.source "BaseContainerView.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Insettable;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseContainerView"


# instance fields
.field protected mContainerBoundsInset:I

.field protected mContentPadding:Landroid/graphics/Rect;

.field private mFixedSearchBarBounds:Landroid/graphics/Rect;

.field private mHasSearchBar:Z

.field private mInsets:Landroid/graphics/Rect;

.field private mSearchBarBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mSearchBarBounds:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mContentPadding:Landroid/graphics/Rect;

    .line 55
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mContainerBoundsInset:I

    .line 56
    return-void
.end method

.method private isValidSearchBarBounds(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "searchBarBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 142
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseContainerView;->getMeasuredWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 143
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseContainerView;->getMeasuredHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method protected setHasSearchBar()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mHasSearchBar:Z

    .line 66
    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 60
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 61
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseContainerView;->updateBackgroundAndPaddings()V

    .line 62
    return-void
.end method

.method public final setSearchBarBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 72
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->isDogfoodBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/BaseContainerView;->isValidSearchBarBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const-string v0, "BaseContainerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid search bar bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 80
    new-instance v0, Lnet/oneplus/h2launcher/BaseContainerView$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/BaseContainerView$1;-><init>(Lnet/oneplus/h2launcher/BaseContainerView;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/BaseContainerView;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method

.method protected updateBackgroundAndPaddings()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/BaseContainerView;->updateBackgroundAndPaddings(Z)V

    .line 93
    return-void
.end method

.method protected updateBackgroundAndPaddings(Z)V
    .locals 8
    .param p1, "forceBoundsUpdate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 97
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 98
    .local v1, "searchBarBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/BaseContainerView;->isValidSearchBarBounds(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v4, v2

    iget-boolean v2, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mHasSearchBar:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v6, v7

    invoke-direct {v0, v4, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 107
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v4, v5

    .line 109
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseContainerView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    .line 107
    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 124
    :goto_1
    if-nez p1, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mContentPadding:Landroid/graphics/Rect;

    .line 125
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mSearchBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 127
    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mSearchBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 128
    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mSearchBarBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v0}, Lnet/oneplus/h2launcher/BaseContainerView;->onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 130
    :cond_1
    return-void

    .line 100
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v2, v5

    goto :goto_0

    .line 113
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-boolean v4, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mHasSearchBar:Z

    if-eqz v4, :cond_4

    .line 115
    :goto_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseContainerView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 119
    .restart local v0    # "padding":Landroid/graphics/Rect;
    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 113
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_4
    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lnet/oneplus/h2launcher/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v3, v4

    goto :goto_2
.end method
