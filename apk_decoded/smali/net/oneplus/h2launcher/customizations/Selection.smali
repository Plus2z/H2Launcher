.class public Lnet/oneplus/h2launcher/customizations/Selection;
.super Landroid/widget/FrameLayout;
.source "Selection.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessibilityEnabled:Z

.field private mSelected:Z

.field private mSelectedIcon:Landroid/widget/ImageView;

.field private mSelectedIconAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lnet/oneplus/h2launcher/customizations/Selection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/Selection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/customizations/Selection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/customizations/Selection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelected:Z

    .line 24
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mAccessibilityEnabled:Z

    .line 36
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/customizations/Selection;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/Selection;

    .prologue
    .line 19
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelectedIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/customizations/Selection;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/Selection;

    .prologue
    .line 19
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mAccessibilityEnabled:Z

    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 43
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/Selection;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 45
    .local v0, "iconSize":I
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/Selection;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelectedIcon:Landroid/widget/ImageView;

    .line 46
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/Selection;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f02011c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/Selection;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e020b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 48
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelectedIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelectedIcon:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/customizations/Selection;->addView(Landroid/view/View;)V

    .line 51
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/customizations/Selection;->bringChildToFront(Landroid/view/View;)V

    .line 54
    new-instance v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelectedIcon:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelectedIconAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 55
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelectedIconAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    new-instance v2, Lnet/oneplus/h2launcher/customizations/Selection$1;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/customizations/Selection$1;-><init>(Lnet/oneplus/h2launcher/customizations/Selection;)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 70
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 76
    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/customizations/Selection;->setSelected(ZI)V

    .line 77
    return-void
.end method

.method public setSelected(ZI)V
    .locals 6
    .param p1, "selected"    # Z
    .param p2, "duration"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 84
    iget-boolean v4, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelected:Z

    if-ne v4, p1, :cond_1

    .line 85
    sget-object v3, Lnet/oneplus/h2launcher/customizations/Selection;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip animation since new state (selected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is the same as"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "current state (selected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelected:Z

    .line 93
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/Selection;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 94
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mAccessibilityEnabled:Z

    .line 97
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelectedIconAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->cancel()V

    .line 98
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelectedIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 99
    if-eqz p1, :cond_2

    move v2, v3

    .line 100
    .local v2, "startAlpha":F
    :goto_1
    if-eqz p1, :cond_3

    .line 101
    .local v1, "endAlpha":F
    :goto_2
    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    if-lez p2, :cond_4

    .line 103
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 104
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelectedIconAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v3, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .end local v1    # "endAlpha":F
    .end local v2    # "startAlpha":F
    :cond_2
    move v2, v1

    .line 99
    goto :goto_1

    .restart local v2    # "startAlpha":F
    :cond_3
    move v1, v3

    .line 100
    goto :goto_2

    .line 106
    .restart local v1    # "endAlpha":F
    :cond_4
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 107
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mSelectedIcon:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lnet/oneplus/h2launcher/customizations/Selection;->mAccessibilityEnabled:Z

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method
