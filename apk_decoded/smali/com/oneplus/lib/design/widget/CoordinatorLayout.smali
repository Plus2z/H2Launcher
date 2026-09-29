.class public Lcom/oneplus/lib/design/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$HierarchyChangeListener;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$ViewElevationComparator;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$DispatchChangeEvent;
    }
.end annotation


# static fields
.field static final CONSTRUCTOR_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final EVENT_NESTED_SCROLL:I = 0x1

.field static final EVENT_PRE_DRAW:I = 0x0

.field static final EVENT_VIEW_REMOVED:I = 0x2

.field static final TAG:Ljava/lang/String; = "CoordinatorLayout"

.field static final TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_ON_INTERCEPT:I = 0x0

.field private static final TYPE_ON_TOUCH:I = 0x1

.field static final WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field static final sConstructors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

.field private mBehaviorTouchView:Landroid/view/View;

.field private final mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mDependencySortedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDisallowInterceptReset:Z

.field private mDrawStatusBarBackground:Z

.field private mIsAttachedToWindow:Z

.field private mKeylines:[I

.field private mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private mNeedsPreDrawListener:Z

.field private mNestedScrollingDirectChild:Landroid/view/View;

.field private final mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mNestedScrollingTarget:Landroid/view/View;

.field mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private final mTempDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempIntPair:[I

.field private final mTempList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mTempRect3:Landroid/graphics/Rect;

.field private final mTempRect4:Landroid/graphics/Rect;

.field private final mTempRect5:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 115
    const-class v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 116
    .local v0, "pkg":Ljava/lang/Package;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    sput-object v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    .line 123
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    .line 124
    new-instance v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$ViewElevationComparator;

    invoke-direct {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$ViewElevationComparator;-><init>()V

    sput-object v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 130
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    .line 135
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    return-void

    :cond_0
    move-object v1, v2

    .line 116
    goto :goto_0

    .line 126
    :cond_1
    sput-object v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 152
    new-instance v6, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-direct {v6}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;-><init>()V

    iput-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    .line 154
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 155
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 156
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 157
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 158
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect3:Landroid/graphics/Rect;

    .line 159
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect4:Landroid/graphics/Rect;

    .line 160
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect5:Landroid/graphics/Rect;

    .line 161
    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    .line 184
    new-instance v6, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v6, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 200
    sget-object v6, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout:[I

    sget v7, Lcom/oneplus/commonctrl/R$style;->Widget_Design_CoordinatorLayout:I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 202
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout_opKeylines:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 203
    .local v4, "keylineArrayRes":I
    if-eqz v4, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 205
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mKeylines:[I

    .line 206
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    .line 207
    .local v2, "density":F
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mKeylines:[I

    array-length v1, v6

    .line 208
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 209
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mKeylines:[I

    aget v7, v6, v3

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v7, v7

    aput v7, v6, v3

    .line 208
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "count":I
    .end local v2    # "density":F
    .end local v3    # "i":I
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_0
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout_opStatusBarBackground:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 213
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setupForInsets()V

    .line 216
    new-instance v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$HierarchyChangeListener;

    invoke-direct {v6, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$HierarchyChangeListener;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V

    invoke-super {p0, v6}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 217
    return-void
.end method

.method private constrainChildRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V
    .locals 8
    .param p1, "lp"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .param p2, "out"    # Landroid/graphics/Rect;
    .param p3, "childWidth"    # I
    .param p4, "childHeight"    # I

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    .line 1011
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    .line 1014
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v4

    iget v5, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, p2, Landroid/graphics/Rect;->left:I

    .line 1016
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v6

    sub-int v6, v3, v6

    sub-int/2addr v6, p3

    iget v7, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    .line 1015
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1014
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1017
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v4

    iget v5, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, p2, Landroid/graphics/Rect;->top:I

    .line 1019
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v6

    sub-int v6, v0, v6

    sub-int/2addr v6, p4

    iget v7, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    .line 1018
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1017
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1021
    .local v2, "top":I
    add-int v4, v1, p3

    add-int v5, v2, p4

    invoke-virtual {p2, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1022
    return-void
.end method

.method private dispatchApplyWindowInsetsToBehaviors(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 7
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 799
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v3, p1

    .line 820
    .end local p1    # "insets":Landroid/support/v4/view/WindowInsetsCompat;
    .local v3, "insets":Landroid/support/v4/view/WindowInsetsCompat;
    :goto_0
    return-object v3

    .line 803
    .end local v3    # "insets":Landroid/support/v4/view/WindowInsetsCompat;
    .restart local p1    # "insets":Landroid/support/v4/view/WindowInsetsCompat;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v5

    .local v5, "z":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 804
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 805
    .local v1, "child":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 806
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 807
    .local v4, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 809
    .local v0, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_2

    .line 811
    invoke-virtual {v0, p0, v1, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onApplyWindowInsets(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    .line 812
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v6

    if-eqz v6, :cond_2

    .end local v0    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :cond_1
    move-object v3, p1

    .line 820
    .end local p1    # "insets":Landroid/support/v4/view/WindowInsetsCompat;
    .restart local v3    # "insets":Landroid/support/v4/view/WindowInsetsCompat;
    goto :goto_0

    .line 803
    .end local v3    # "insets":Landroid/support/v4/view/WindowInsetsCompat;
    .restart local v1    # "child":Landroid/view/View;
    .restart local p1    # "insets":Landroid/support/v4/view/WindowInsetsCompat;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;II)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I
    .param p3, "anchorRect"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;
    .param p5, "lp"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .param p6, "childWidth"    # I
    .param p7, "childHeight"    # I

    .prologue
    .line 936
    iget v8, p5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 937
    invoke-static {v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resolveAnchoredChildGravity(I)I

    move-result v8

    .line 936
    invoke-static {v8, p2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 938
    .local v1, "absGravity":I
    iget v8, p5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 939
    invoke-static {v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v8

    .line 938
    invoke-static {v8, p2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 942
    .local v0, "absAnchorGravity":I
    and-int/lit8 v4, v1, 0x7

    .line 943
    .local v4, "hgrav":I
    and-int/lit8 v7, v1, 0x70

    .line 944
    .local v7, "vgrav":I
    and-int/lit8 v2, v0, 0x7

    .line 945
    .local v2, "anchorHgrav":I
    and-int/lit8 v3, v0, 0x70

    .line 953
    .local v3, "anchorVgrav":I
    sparse-switch v2, :sswitch_data_0

    .line 956
    iget v5, p3, Landroid/graphics/Rect;->left:I

    .line 966
    .local v5, "left":I
    :goto_0
    sparse-switch v3, :sswitch_data_1

    .line 969
    iget v6, p3, Landroid/graphics/Rect;->top:I

    .line 980
    .local v6, "top":I
    :goto_1
    sparse-switch v4, :sswitch_data_2

    .line 983
    sub-int v5, v5, p6

    .line 993
    :goto_2
    :sswitch_0
    sparse-switch v7, :sswitch_data_3

    .line 996
    sub-int v6, v6, p7

    .line 1006
    :goto_3
    :sswitch_1
    add-int v8, v5, p6

    add-int v9, v6, p7

    invoke-virtual {p4, v5, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1007
    return-void

    .line 959
    .end local v5    # "left":I
    .end local v6    # "top":I
    :sswitch_2
    iget v5, p3, Landroid/graphics/Rect;->right:I

    .line 960
    .restart local v5    # "left":I
    goto :goto_0

    .line 962
    .end local v5    # "left":I
    :sswitch_3
    iget v8, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v5, v8, v9

    .restart local v5    # "left":I
    goto :goto_0

    .line 972
    :sswitch_4
    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    .line 973
    .restart local v6    # "top":I
    goto :goto_1

    .line 975
    .end local v6    # "top":I
    :sswitch_5
    iget v8, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v6, v8, v9

    .restart local v6    # "top":I
    goto :goto_1

    .line 989
    :sswitch_6
    div-int/lit8 v8, p6, 0x2

    sub-int/2addr v5, v8

    goto :goto_2

    .line 1002
    :sswitch_7
    div-int/lit8 v8, p7, 0x2

    sub-int/2addr v6, v8

    goto :goto_3

    .line 953
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch

    .line 966
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    .line 980
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 993
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_7
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private getKeyline(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 559
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mKeylines:[I

    if-nez v1, :cond_0

    .line 560
    const-string v1, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No keylines defined for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - attempted index lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    return v0

    .line 564
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mKeylines:[I

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 565
    :cond_1
    const-string v1, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keyline index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mKeylines:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method private getTopSortedChildren(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 397
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    .line 398
    .local v4, "useCustomOrder":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 399
    .local v1, "childCount":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 400
    if-eqz v4, :cond_0

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v2

    .line 401
    .local v2, "childIndex":I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 402
    .local v0, "child":Landroid/view/View;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childIndex":I
    :cond_0
    move v2, v3

    .line 400
    goto :goto_1

    .line 405
    :cond_1
    sget-object v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    if-eqz v5, :cond_2

    .line 406
    sget-object v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 408
    :cond_2
    return-void
.end method

.method private hasDependencies(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->hasOutgoingEdges(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private layoutChild(Landroid/view/View;I)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .prologue
    .line 1135
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1136
    .local v6, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1137
    .local v3, "parent":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v0

    iget v1, v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    .line 1138
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    iget v2, v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    .line 1139
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    iget v5, v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    .line 1140
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v7

    .line 1137
    invoke-virtual {v3, v0, v1, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1142
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1146
    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 1147
    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 1148
    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 1149
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 1152
    :cond_0
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1153
    .local v4, "out":Landroid/graphics/Rect;
    iget v0, v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1154
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v5, p2

    .line 1153
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1155
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 1156
    return-void
.end method

.method private layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 1050
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1052
    .local v2, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1053
    .local v0, "anchorRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1054
    .local v1, "childRect":Landroid/graphics/Rect;
    invoke-virtual {p0, p2, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1055
    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1057
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1058
    return-void
.end method

.method private layoutChildWithKeyline(Landroid/view/View;II)V
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "keyline"    # I
    .param p3, "layoutDirection"    # I

    .prologue
    .line 1072
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1073
    .local v7, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget v11, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 1074
    invoke-static {v11}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v11

    .line 1073
    move/from16 v0, p3

    invoke-static {v11, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 1076
    .local v1, "absGravity":I
    and-int/lit8 v5, v1, 0x7

    .line 1077
    .local v5, "hgrav":I
    and-int/lit8 v9, v1, 0x70

    .line 1078
    .local v9, "vgrav":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v10

    .line 1079
    .local v10, "width":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    .line 1080
    .local v4, "height":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1081
    .local v3, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1083
    .local v2, "childHeight":I
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_0

    .line 1084
    sub-int p2, v10, p2

    .line 1087
    :cond_0
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v11

    sub-int v6, v11, v3

    .line 1088
    .local v6, "left":I
    const/4 v8, 0x0

    .line 1090
    .local v8, "top":I
    sparse-switch v5, :sswitch_data_0

    .line 1103
    :goto_0
    sparse-switch v9, :sswitch_data_1

    .line 1117
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v11

    iget v12, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v12

    .line 1119
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v12

    sub-int v12, v10, v12

    sub-int/2addr v12, v3

    iget v13, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v12, v13

    .line 1118
    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1117
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1120
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v11

    iget v12, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    .line 1122
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v12

    sub-int v12, v4, v12

    sub-int/2addr v12, v2

    iget v13, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    .line 1121
    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1120
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1124
    add-int v11, v6, v3

    add-int v12, v8, v2

    invoke-virtual {p1, v6, v8, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 1125
    return-void

    .line 1096
    :sswitch_0
    add-int/2addr v6, v3

    .line 1097
    goto :goto_0

    .line 1099
    :sswitch_1
    div-int/lit8 v11, v3, 0x2

    add-int/2addr v6, v11

    goto :goto_0

    .line 1109
    :sswitch_2
    add-int/2addr v8, v2

    .line 1110
    goto :goto_1

    .line 1112
    :sswitch_3
    div-int/lit8 v11, v2, 0x2

    add-int/2addr v8, v11

    goto :goto_1

    .line 1090
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1103
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "inset"    # Landroid/graphics/Rect;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 1325
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1330
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect5:Landroid/graphics/Rect;

    .line 1331
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1332
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1337
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1338
    .local v5, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 1339
    .local v1, "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect3:Landroid/graphics/Rect;

    .line 1340
    .local v4, "dodgeRect":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1342
    if-eqz v1, :cond_2

    invoke-virtual {v1, p0, p1, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->getInsetDodgeRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1344
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1345
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rect should be within the child\'s bounds. Rect:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1346
    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " | Bounds:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1347
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1350
    :cond_2
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1353
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1358
    iget v8, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    invoke-static {v8, p3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 1361
    .local v0, "absDodgeInsetEdges":I
    const/4 v7, 0x0

    .line 1362
    .local v7, "offsetY":Z
    and-int/lit8 v8, v0, 0x30

    const/16 v9, 0x30

    if-ne v8, v9, :cond_4

    .line 1363
    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    sub-int/2addr v8, v9

    iget v9, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    sub-int v3, v8, v9

    .line 1364
    .local v3, "distance":I
    iget v8, p2, Landroid/graphics/Rect;->top:I

    if-ge v3, v8, :cond_4

    .line 1365
    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v3

    invoke-direct {p0, p1, v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1366
    const/4 v7, 0x1

    .line 1369
    .end local v3    # "distance":I
    :cond_4
    and-int/lit8 v8, v0, 0x50

    const/16 v9, 0x50

    if-ne v8, v9, :cond_5

    .line 1370
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v8

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    iget v9, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    iget v9, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    add-int v3, v8, v9

    .line 1371
    .restart local v3    # "distance":I
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v8, :cond_5

    .line 1372
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v3, v8

    invoke-direct {p0, p1, v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1373
    const/4 v7, 0x1

    .line 1376
    .end local v3    # "distance":I
    :cond_5
    if-nez v7, :cond_6

    .line 1377
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1380
    :cond_6
    const/4 v6, 0x0

    .line 1381
    .local v6, "offsetX":Z
    and-int/lit8 v8, v0, 0x3

    const/4 v9, 0x3

    if-ne v8, v9, :cond_7

    .line 1382
    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v9, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v9

    iget v9, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int v3, v8, v9

    .line 1383
    .restart local v3    # "distance":I
    iget v8, p2, Landroid/graphics/Rect;->left:I

    if-ge v3, v8, :cond_7

    .line 1384
    iget v8, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    invoke-direct {p0, p1, v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1385
    const/4 v6, 0x1

    .line 1388
    .end local v3    # "distance":I
    :cond_7
    and-int/lit8 v8, v0, 0x5

    const/4 v9, 0x5

    if-ne v8, v9, :cond_8

    .line 1389
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v8

    iget v9, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    iget v9, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    iget v9, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    add-int v3, v8, v9

    .line 1390
    .restart local v3    # "distance":I
    iget v8, p2, Landroid/graphics/Rect;->right:I

    if-ge v3, v8, :cond_8

    .line 1391
    iget v8, p2, Landroid/graphics/Rect;->right:I

    sub-int v8, v3, v8

    invoke-direct {p0, p1, v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1392
    const/4 v6, 0x1

    .line 1395
    .end local v3    # "distance":I
    :cond_8
    if-nez v6, :cond_0

    .line 1396
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method static parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2e

    .line 573
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 574
    const/4 v5, 0x0

    .line 605
    :goto_0
    return-object v5

    .line 578
    :cond_0
    const-string v5, "."

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 580
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 592
    .local v4, "fullName":Ljava/lang/String;
    :goto_1
    :try_start_0
    sget-object v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 593
    .local v2, "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;>;>;"
    if-nez v2, :cond_1

    .line 594
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;>;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 595
    .restart local v2    # "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;>;>;"
    sget-object v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 597
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 598
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;>;"
    if-nez v0, :cond_2

    .line 599
    const/4 v5, 0x1

    .line 600
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 599
    invoke-static {v4, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 601
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;>;"
    sget-object v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 602
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 603
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;>;"
    :cond_2
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 581
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;>;"
    .end local v2    # "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;>;>;"
    .end local v4    # "fullName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_4

    .line 583
    move-object v4, p2

    .restart local v4    # "fullName":Ljava/lang/String;
    goto :goto_1

    .line 586
    .end local v4    # "fullName":Ljava/lang/String;
    :cond_4
    sget-object v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "fullName":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .end local v4    # "fullName":Ljava/lang/String;
    :cond_5
    move-object v4, p2

    goto :goto_2

    .line 606
    .restart local v4    # "fullName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 607
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not inflate Behavior subclass "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private performIntercept(Landroid/view/MotionEvent;I)Z
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "type"    # I

    .prologue
    .line 411
    const/16 v16, 0x0

    .line 412
    .local v16, "intercepted":Z
    const/16 v19, 0x0

    .line 414
    .local v19, "newBlock":Z
    const/4 v12, 0x0

    .line 416
    .local v12, "cancelEvent":Landroid/view/MotionEvent;
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v10

    .line 418
    .local v10, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    move-object/from16 v20, v0

    .line 419
    .local v20, "topmostChildList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getTopSortedChildren(Ljava/util/List;)V

    .line 422
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v14

    .line 423
    .local v14, "childCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v14, :cond_5

    .line 424
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 425
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 426
    .local v18, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    .line 428
    .local v11, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-nez v16, :cond_0

    if-eqz v19, :cond_3

    :cond_0
    if-eqz v10, :cond_3

    .line 431
    if-eqz v11, :cond_2

    .line 432
    if-nez v12, :cond_1

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 434
    .local v2, "now":J
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 437
    .end local v2    # "now":J
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 423
    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 439
    :pswitch_0
    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v13, v12}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 442
    :pswitch_1
    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v13, v12}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 449
    :cond_3
    if-nez v16, :cond_4

    if-eqz v11, :cond_4

    .line 450
    packed-switch p2, :pswitch_data_1

    .line 458
    :goto_2
    if-eqz v16, :cond_4

    .line 459
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 465
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->didBlockInteraction()Z

    move-result v21

    .line 466
    .local v21, "wasBlocking":Z
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v13}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isBlockingInteractionBelow(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v17

    .line 467
    .local v17, "isBlocking":Z
    if-eqz v17, :cond_6

    if-nez v21, :cond_6

    const/16 v19, 0x1

    .line 468
    :goto_3
    if-eqz v17, :cond_2

    if-nez v19, :cond_2

    .line 475
    .end local v11    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v13    # "child":Landroid/view/View;
    .end local v17    # "isBlocking":Z
    .end local v18    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v21    # "wasBlocking":Z
    :cond_5
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 477
    return v16

    .line 452
    .restart local v11    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .restart local v13    # "child":Landroid/view/View;
    .restart local v18    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v13, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v16

    .line 453
    goto :goto_2

    .line 455
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v13, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v16

    goto :goto_2

    .line 467
    .restart local v17    # "isBlocking":Z
    .restart local v21    # "wasBlocking":Z
    :cond_6
    const/16 v19, 0x0

    goto :goto_3

    .line 437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 450
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private prepareChildren()V
    .locals 9

    .prologue
    .line 634
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 635
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v7}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->clear()V

    .line 637
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 638
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 640
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v3

    .line 641
    .local v3, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3, p0, v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->findAnchorView(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;

    .line 643
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v7, v6}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 646
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 647
    if-ne v2, v1, :cond_1

    .line 646
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 650
    :cond_1
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 651
    .local v4, "other":Landroid/view/View;
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v5

    .line 652
    .local v5, "otherLp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v5, p0, v4, v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 653
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v7, v4}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 655
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v7, v4}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 658
    :cond_2
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v7, v6, v4}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->addEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 637
    .end local v4    # "other":Landroid/view/View;
    .end local v5    # "otherLp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 664
    .end local v2    # "j":I
    .end local v3    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v6    # "view":Landroid/view/View;
    :cond_4
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    iget-object v8, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v8}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->getSortedList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 667
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 668
    return-void
.end method

.method private resetTouchBehaviors()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 369
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 370
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v8

    .line 371
    .local v8, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v8, :cond_0

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 373
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 375
    .local v9, "cancelEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v8, p0, v2, v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 376
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 378
    .end local v0    # "now":J
    .end local v9    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 381
    .end local v8    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v11

    .line 382
    .local v11, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_2

    .line 383
    invoke-virtual {p0, v12}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 384
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 385
    .local v13, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v13}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->resetTouchBehaviorTracking()V

    .line 382
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 387
    .end local v10    # "child":Landroid/view/View;
    .end local v13    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    iput-boolean v7, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 388
    return-void
.end method

.method private static resolveAnchoredChildGravity(I)I
    .locals 0
    .param p0, "gravity"    # I

    .prologue
    .line 1179
    if-nez p0, :cond_0

    const/16 p0, 0x11

    .end local p0    # "gravity":I
    :cond_0
    return p0
.end method

.method private static resolveGravity(I)I
    .locals 0
    .param p0, "gravity"    # I

    .prologue
    .line 1163
    if-nez p0, :cond_0

    const p0, 0x800033

    .end local p0    # "gravity":I
    :cond_0
    return p0
.end method

.method private static resolveKeylineGravity(I)I
    .locals 0
    .param p0, "gravity"    # I

    .prologue
    .line 1171
    if-nez p0, :cond_0

    const p0, 0x800035

    .end local p0    # "gravity":I
    :cond_0
    return p0
.end method

.method private setInsetOffsetX(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offsetX"    # I

    .prologue
    .line 1401
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1402
    .local v1, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget v2, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    if-eq v2, p2, :cond_0

    .line 1403
    iget v2, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int v0, p2, v2

    .line 1404
    .local v0, "dx":I
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1405
    iput p2, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    .line 1407
    .end local v0    # "dx":I
    :cond_0
    return-void
.end method

.method private setInsetOffsetY(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offsetY"    # I

    .prologue
    .line 1410
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1411
    .local v1, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget v2, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    if-eq v2, p2, :cond_0

    .line 1412
    iget v2, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    sub-int v0, p2, v2

    .line 1413
    .local v0, "dy":I
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1414
    iput p2, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    .line 1416
    .end local v0    # "dy":I
    :cond_0
    return-void
.end method

.method private setupForInsets()V
    .locals 2

    .prologue
    .line 2962
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 2986
    :goto_0
    return-void

    .line 2966
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2967
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    if-nez v0, :cond_1

    .line 2968
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$1;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    .line 2978
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 2981
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 2984
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    goto :goto_0
.end method


# virtual methods
.method addPreDrawListener()V
    .locals 2

    .prologue
    .line 1520
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v1, :cond_1

    .line 1522
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v1, :cond_0

    .line 1523
    new-instance v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 1525
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1526
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1531
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1532
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1652
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchDependentViewsChanged(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1429
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v5, p1}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1430
    .local v2, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1431
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 1432
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1434
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1435
    .local v4, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1436
    .local v0, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    .line 1437
    invoke-virtual {v0, p0, v1, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 1431
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1441
    .end local v0    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z
    .locals 6
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1618
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 1619
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1620
    .local v0, "firstRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1621
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1622
    .local v1, "secondRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p0, p2, v2, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1624
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-gt v2, v5, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v5, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-lt v2, v5, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-lt v2, v5, :cond_2

    .line 1627
    .end local v0    # "firstRect":Landroid/graphics/Rect;
    .end local v1    # "secondRect":Landroid/graphics/Rect;
    :goto_2
    return v3

    .restart local v0    # "firstRect":Landroid/graphics/Rect;
    :cond_0
    move v2, v4

    .line 1620
    goto :goto_0

    .restart local v1    # "secondRect":Landroid/graphics/Rect;
    :cond_1
    move v2, v4

    .line 1622
    goto :goto_1

    :cond_2
    move v3, v4

    .line 1624
    goto :goto_2

    .end local v0    # "firstRect":Landroid/graphics/Rect;
    .end local v1    # "secondRect":Landroid/graphics/Rect;
    :cond_3
    move v3, v4

    .line 1627
    goto :goto_2
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1184
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1185
    .local v6, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v0, v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_2

    .line 1186
    iget-object v0, v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p0, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v8

    .line 1187
    .local v8, "scrimAlpha":F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_2

    .line 1188
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1189
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    iget-object v1, v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v1, p0, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->getScrimColor(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1192
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 1195
    .local v7, "saved":I
    invoke-virtual {p2}, Landroid/view/View;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1198
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    .line 1199
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    .line 1198
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 1202
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    .line 1203
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 1202
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1205
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1208
    .end local v7    # "saved":I
    .end local v8    # "scrimAlpha":F
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 294
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 296
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v2

    .line 297
    .local v2, "state":[I
    const/4 v0, 0x0

    .line 299
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 300
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 304
    :cond_0
    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->invalidate()V

    .line 307
    :cond_1
    return-void
.end method

.method ensurePreDrawListener()V
    .locals 5

    .prologue
    .line 1489
    const/4 v2, 0x0

    .line 1490
    .local v2, "hasDependencies":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 1491
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1492
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1493
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->hasDependencies(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1494
    const/4 v2, 0x1

    .line 1499
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-boolean v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eq v2, v4, :cond_1

    .line 1500
    if-eqz v2, :cond_3

    .line 1501
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->addPreDrawListener()V

    .line 1506
    :cond_1
    :goto_1
    return-void

    .line 1491
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1503
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->removePreDrawListener()V

    goto :goto_1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->generateDefaultLayoutParams()Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1647
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1632
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1637
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1638
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    check-cast p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;)V

    .line 1642
    :goto_0
    return-object v0

    .line 1639
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1640
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 1642
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "transform"    # Z
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 923
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 924
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 932
    :goto_0
    return-void

    .line 927
    :cond_1
    if-eqz p2, :cond_2

    .line 928
    invoke-virtual {p0, p1, p3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 930
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getDependencies(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1453
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->getOutgoingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1454
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1455
    if-eqz v0, :cond_0

    .line 1456
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1458
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    return-object v1
.end method

.method final getDependencySortedChildren()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1481
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->prepareChildren()V

    .line 1482
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDependents(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1471
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1472
    .local v0, "edges":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1473
    if-eqz v0, :cond_0

    .line 1474
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1476
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    return-object v1
.end method

.method getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 678
    invoke-static {p0, p1, p2}, Lcom/oneplus/lib/design/widget/Utils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 679
    return-void
.end method

.method getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I
    .param p3, "anchorRect"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 1034
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1035
    .local v5, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1036
    .local v6, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .local v7, "childHeight":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1037
    invoke-direct/range {v0 .. v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;II)V

    .line 1039
    invoke-direct {p0, v5, p4, v6, v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->constrainChildRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 1040
    return-void
.end method

.method getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 909
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 910
    .local v0, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getLastChildRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 911
    return-void
.end method

.method final getLastWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method getResolvedLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 612
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 613
    .local v3, "result":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget-boolean v4, v3, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-nez v4, :cond_2

    .line 614
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 615
    .local v0, "childClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 616
    .local v1, "defaultBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;
    :goto_0
    if-eqz v0, :cond_0

    const-class v4, Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;

    .line 617
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .end local v1    # "defaultBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;
    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;

    .restart local v1    # "defaultBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;
    if-nez v1, :cond_0

    .line 618
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 620
    :cond_0
    if-eqz v1, :cond_1

    .line 622
    :try_start_0
    invoke-interface {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :cond_1
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 630
    .end local v0    # "childClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "defaultBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;
    :cond_2
    return-object v3

    .line 623
    .restart local v0    # "childClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "defaultBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;
    :catch_0
    move-exception v2

    .line 624
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "CoordinatorLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default behavior class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 688
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 683
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public isPointInChildBounds(Landroid/view/View;II)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1605
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1606
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method offsetChildToAnchor(Landroid/view/View;I)V
    .locals 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .prologue
    const/4 v9, 0x0

    .line 1557
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1558
    .local v5, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v0, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1559
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1560
    .local v3, "anchorRect":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1561
    .local v10, "childRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect3:Landroid/graphics/Rect;

    .line 1563
    .local v4, "desiredChildRect":Landroid/graphics/Rect;
    iget-object v0, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1564
    invoke-virtual {p0, p1, v9, v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1566
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1567
    .local v6, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .local v7, "childHeight":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 1568
    invoke-direct/range {v0 .. v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;II)V

    .line 1570
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v10, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    iget v1, v10, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v9, 0x1

    .line 1572
    .local v9, "changed":Z
    :cond_1
    invoke-direct {p0, v5, v4, v6, v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->constrainChildRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 1574
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v10, Landroid/graphics/Rect;->left:I

    sub-int v11, v0, v1

    .line 1575
    .local v11, "dx":I
    iget v0, v4, Landroid/graphics/Rect;->top:I

    iget v1, v10, Landroid/graphics/Rect;->top:I

    sub-int v12, v0, v1

    .line 1577
    .local v12, "dy":I
    if-eqz v11, :cond_2

    .line 1578
    invoke-static {p1, v11}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1580
    :cond_2
    if-eqz v12, :cond_3

    .line 1581
    invoke-static {p1, v12}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1584
    :cond_3
    if-eqz v9, :cond_4

    .line 1586
    invoke-virtual {v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v8

    .line 1587
    .local v8, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v8, :cond_4

    .line 1588
    iget-object v0, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v8, p0, p1, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 1592
    .end local v3    # "anchorRect":Landroid/graphics/Rect;
    .end local v4    # "desiredChildRect":Landroid/graphics/Rect;
    .end local v6    # "childWidth":I
    .end local v7    # "childHeight":I
    .end local v8    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v9    # "changed":Z
    .end local v10    # "childRect":Landroid/graphics/Rect;
    .end local v11    # "dx":I
    .end local v12    # "dy":I
    :cond_4
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 227
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 228
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v1, :cond_0

    .line 230
    new-instance v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 233
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 235
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 240
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 241
    return-void
.end method

.method final onChildViewsChanged(I)V
    .locals 18
    .param p1, "type"    # I

    .prologue
    .line 1228
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v13

    .line 1229
    .local v13, "layoutDirection":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    .line 1230
    .local v6, "childCount":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect4:Landroid/graphics/Rect;

    .line 1231
    .local v10, "inset":Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 1232
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_9

    .line 1233
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1234
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1237
    .local v14, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v9, :cond_1

    .line 1238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1240
    .local v3, "checkChild":Landroid/view/View;
    iget-object v15, v14, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-ne v15, v3, :cond_0

    .line 1241
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->offsetChildToAnchor(Landroid/view/View;I)V

    .line 1237
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1246
    .end local v3    # "checkChild":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1247
    .local v7, "drawRect":Landroid/graphics/Rect;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15, v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1250
    iget v15, v14, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    if-eqz v15, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    .line 1251
    iget v15, v14, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    invoke-static {v15, v13}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 1253
    .local v1, "absInsetEdge":I
    and-int/lit8 v15, v1, 0x70

    sparse-switch v15, :sswitch_data_0

    .line 1261
    :goto_2
    and-int/lit8 v15, v1, 0x7

    packed-switch v15, :pswitch_data_0

    .line 1272
    .end local v1    # "absInsetEdge":I
    :cond_2
    :goto_3
    :pswitch_0
    iget v15, v14, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-eqz v15, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-nez v15, :cond_3

    .line 1273
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v13}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 1276
    :cond_3
    if-nez p1, :cond_6

    .line 1278
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1279
    .local v12, "lastDrawRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1280
    invoke-virtual {v12, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1232
    .end local v12    # "lastDrawRect":Landroid/graphics/Rect;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1255
    .restart local v1    # "absInsetEdge":I
    :sswitch_0
    iget v15, v10, Landroid/graphics/Rect;->top:I

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    iput v15, v10, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 1258
    :sswitch_1
    iget v15, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v16

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    iput v15, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 1263
    :pswitch_1
    iget v15, v10, Landroid/graphics/Rect;->left:I

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    iput v15, v10, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 1266
    :pswitch_2
    iget v15, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v16

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    iput v15, v10, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 1283
    .end local v1    # "absInsetEdge":I
    .restart local v12    # "lastDrawRect":Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1287
    .end local v12    # "lastDrawRect":Landroid/graphics/Rect;
    :cond_6
    add-int/lit8 v11, v9, 0x1

    :goto_4
    if-ge v11, v6, :cond_4

    .line 1288
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1289
    .restart local v3    # "checkChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1290
    .local v4, "checkLp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    .line 1292
    .local v2, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1293
    if-nez p1, :cond_8

    invoke-virtual {v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getChangedAfterNestedScroll()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1296
    invoke-virtual {v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    .line 1287
    :cond_7
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1301
    :cond_8
    packed-switch p1, :pswitch_data_1

    .line 1310
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    .line 1314
    .local v8, "handled":Z
    :goto_6
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_7

    .line 1317
    invoke-virtual {v4, v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->setChangedAfterNestedScroll(Z)V

    goto :goto_5

    .line 1305
    .end local v8    # "handled":Z
    :pswitch_3
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1306
    const/4 v8, 0x1

    .line 1307
    .restart local v8    # "handled":Z
    goto :goto_6

    .line 1322
    .end local v2    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v3    # "checkChild":Landroid/view/View;
    .end local v4    # "checkLp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "drawRect":Landroid/graphics/Rect;
    .end local v8    # "handled":Z
    .end local v11    # "j":I
    .end local v14    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :cond_9
    return-void

    .line 1253
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch

    .line 1261
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1301
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 245
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 246
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 247
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 249
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 251
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 254
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 255
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 870
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 871
    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 872
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 873
    .local v0, "inset":I
    :goto_0
    if-lez v0, :cond_0

    .line 874
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 875
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 878
    .end local v0    # "inset":I
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 872
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 482
    const/4 v1, 0x0

    .line 484
    .local v1, "cancelEvent":Landroid/view/MotionEvent;
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 487
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 491
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v2

    .line 493
    .local v2, "intercepted":Z
    if-eqz v1, :cond_1

    .line 494
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 497
    :cond_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 498
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 501
    :cond_3
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 850
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 851
    .local v4, "layoutDirection":I
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 852
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 853
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 854
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 852
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 859
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 860
    .local v5, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 862
    .local v0, "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0, v1, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 863
    :cond_2
    invoke-virtual {p0, v1, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    goto :goto_1

    .line 866
    .end local v0    # "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method public onLayoutChild(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .prologue
    .line 834
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 835
    .local v0, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->checkAnchorChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 839
    :cond_0
    iget-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 840
    iget-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, p1, v1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V

    .line 846
    :goto_0
    return-void

    .line 841
    :cond_1
    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v1, :cond_2

    .line 842
    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    invoke-direct {p0, p1, v1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->layoutChildWithKeyline(Landroid/view/View;II)V

    goto :goto_0

    .line 844
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->layoutChild(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 34
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 712
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->prepareChildren()V

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->ensurePreDrawListener()V

    .line 715
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v25

    .line 716
    .local v25, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v27

    .line 717
    .local v27, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v26

    .line 718
    .local v26, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v24

    .line 719
    .local v24, "paddingBottom":I
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v22

    .line 720
    .local v22, "layoutDirection":I
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_0

    const/16 v19, 0x1

    .line 721
    .local v19, "isRtl":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v30

    .line 722
    .local v30, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v32

    .line 723
    .local v32, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 724
    .local v13, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 726
    .local v15, "heightSize":I
    add-int v31, v25, v26

    .line 727
    .local v31, "widthPadding":I
    add-int v14, v27, v24

    .line 728
    .local v14, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v33

    .line 729
    .local v33, "widthUsed":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v16

    .line 730
    .local v16, "heightUsed":I
    const/4 v11, 0x0

    .line 732
    .local v11, "childState":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v3, :cond_1

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v9, 0x1

    .line 734
    .local v9, "applyInsets":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 735
    .local v10, "childCount":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v10, :cond_c

    .line 736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 737
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v8, 0x8

    if-ne v3, v8, :cond_2

    .line 735
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 720
    .end local v4    # "child":Landroid/view/View;
    .end local v9    # "applyInsets":Z
    .end local v10    # "childCount":I
    .end local v11    # "childState":I
    .end local v13    # "heightMode":I
    .end local v14    # "heightPadding":I
    .end local v15    # "heightSize":I
    .end local v16    # "heightUsed":I
    .end local v18    # "i":I
    .end local v19    # "isRtl":Z
    .end local v30    # "widthMode":I
    .end local v31    # "widthPadding":I
    .end local v32    # "widthSize":I
    .end local v33    # "widthUsed":I
    :cond_0
    const/16 v19, 0x0

    goto :goto_0

    .line 732
    .restart local v11    # "childState":I
    .restart local v13    # "heightMode":I
    .restart local v14    # "heightPadding":I
    .restart local v15    # "heightSize":I
    .restart local v16    # "heightUsed":I
    .restart local v19    # "isRtl":Z
    .restart local v30    # "widthMode":I
    .restart local v31    # "widthPadding":I
    .restart local v32    # "widthSize":I
    .restart local v33    # "widthUsed":I
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 742
    .restart local v4    # "child":Landroid/view/View;
    .restart local v9    # "applyInsets":Z
    .restart local v10    # "childCount":I
    .restart local v18    # "i":I
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 744
    .local v23, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v6, 0x0

    .line 745
    .local v6, "keylineWidthUsed":I
    move-object/from16 v0, v23

    iget v3, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v3, :cond_5

    if-eqz v30, :cond_5

    .line 746
    move-object/from16 v0, v23

    iget v3, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v21

    .line 747
    .local v21, "keylinePos":I
    move-object/from16 v0, v23

    iget v3, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 748
    invoke-static {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v3

    .line 747
    move/from16 v0, v22

    invoke-static {v3, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v20, v3, 0x7

    .line 750
    .local v20, "keylineGravity":I
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ne v0, v3, :cond_3

    if-eqz v19, :cond_4

    :cond_3
    const/4 v3, 0x5

    move/from16 v0, v20

    if-ne v0, v3, :cond_9

    if-eqz v19, :cond_9

    .line 752
    :cond_4
    const/4 v3, 0x0

    sub-int v8, v32, v26

    sub-int v8, v8, v21

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 759
    .end local v20    # "keylineGravity":I
    .end local v21    # "keylinePos":I
    :cond_5
    :goto_4
    move/from16 v5, p1

    .line 760
    .local v5, "childWidthMeasureSpec":I
    move/from16 v7, p2

    .line 761
    .local v7, "childHeightMeasureSpec":I
    if-eqz v9, :cond_6

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 764
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 765
    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v8

    add-int v17, v3, v8

    .line 766
    .local v17, "horizInsets":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 767
    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v8

    add-int v28, v3, v8

    .line 769
    .local v28, "vertInsets":I
    sub-int v3, v32, v17

    move/from16 v0, v30

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 771
    sub-int v3, v15, v28

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 775
    .end local v17    # "horizInsets":I
    .end local v28    # "vertInsets":I
    :cond_6
    invoke-virtual/range {v23 .. v23}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    .line 776
    .local v2, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v2, :cond_7

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v3

    if-nez v3, :cond_8

    .line 778
    :cond_7
    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 782
    :cond_8
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v31

    move-object/from16 v0, v23

    iget v8, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v8

    move-object/from16 v0, v23

    iget v8, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v8

    move/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 785
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v14

    move-object/from16 v0, v23

    iget v8, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v8

    move-object/from16 v0, v23

    iget v8, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v8

    move/from16 v0, v16

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 788
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    .line 787
    invoke-static {v11, v3}, Landroid/support/v4/view/ViewCompat;->combineMeasuredStates(II)I

    move-result v11

    goto/16 :goto_3

    .line 753
    .end local v2    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v5    # "childWidthMeasureSpec":I
    .end local v7    # "childHeightMeasureSpec":I
    .restart local v20    # "keylineGravity":I
    .restart local v21    # "keylinePos":I
    :cond_9
    const/4 v3, 0x5

    move/from16 v0, v20

    if-ne v0, v3, :cond_a

    if-eqz v19, :cond_b

    :cond_a
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ne v0, v3, :cond_5

    if-eqz v19, :cond_5

    .line 755
    :cond_b
    const/4 v3, 0x0

    sub-int v8, v21, v25

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto/16 :goto_4

    .line 791
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "keylineWidthUsed":I
    .end local v20    # "keylineGravity":I
    .end local v21    # "keylinePos":I
    .end local v23    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :cond_c
    const/high16 v3, -0x1000000

    and-int/2addr v3, v11

    move/from16 v0, v33

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v29

    .line 793
    .local v29, "width":I
    shl-int/lit8 v3, v11, 0x10

    move/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v12

    .line 795
    .local v12, "height":I
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1, v12}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    .line 796
    return-void
.end method

.method public onMeasureChild(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 706
    invoke-virtual/range {p0 .. p5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 708
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 11
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 1786
    const/4 v8, 0x0

    .line 1788
    .local v8, "handled":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    .line 1789
    .local v7, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_2

    .line 1790
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1791
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1792
    .local v10, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1789
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1796
    :cond_1
    invoke-virtual {v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1797
    .local v0, "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 1798
    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onNestedFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v1

    or-int/2addr v8, v1

    goto :goto_1

    .line 1802
    .end local v0    # "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "view":Landroid/view/View;
    .end local v10    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    if-eqz v8, :cond_3

    .line 1803
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1805
    :cond_3
    return v8
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 10
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 1810
    const/4 v7, 0x0

    .line 1812
    .local v7, "handled":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v6

    .line 1813
    .local v6, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_2

    .line 1814
    invoke-virtual {p0, v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1815
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1816
    .local v9, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1813
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1820
    :cond_1
    invoke-virtual {v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1821
    .local v0, "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 1822
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v1

    or-int/2addr v7, v1

    goto :goto_1

    .line 1825
    .end local v0    # "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "view":Landroid/view/View;
    .end local v9    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    return v7
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 13
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 1750
    const/4 v11, 0x0

    .line 1751
    .local v11, "xConsumed":I
    const/4 v12, 0x0

    .line 1752
    .local v12, "yConsumed":I
    const/4 v7, 0x0

    .line 1754
    .local v7, "accepted":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    .line 1755
    .local v8, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_4

    .line 1756
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1757
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1758
    .local v10, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1755
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1762
    :cond_1
    invoke-virtual {v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1763
    .local v0, "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    .line 1764
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    aput v6, v1, v3

    .line 1765
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V

    .line 1767
    if-lez p2, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1769
    :goto_2
    if-lez p3, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1772
    :goto_3
    const/4 v7, 0x1

    goto :goto_1

    .line 1767
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 1768
    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_2

    .line 1769
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    .line 1770
    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_3

    .line 1776
    .end local v0    # "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "view":Landroid/view/View;
    .end local v10    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :cond_4
    const/4 v1, 0x0

    aput v11, p4, v1

    .line 1777
    const/4 v1, 0x1

    aput v12, p4, v1

    .line 1779
    if-eqz v7, :cond_5

    .line 1780
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1782
    :cond_5
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 12
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 1725
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    .line 1726
    .local v9, "childCount":I
    const/4 v8, 0x0

    .line 1728
    .local v8, "accepted":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_2

    .line 1729
    invoke-virtual {p0, v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1730
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1731
    .local v11, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v11}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1728
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1735
    :cond_1
    invoke-virtual {v11}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1736
    .local v0, "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 1737
    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    .line 1739
    const/4 v8, 0x1

    goto :goto_1

    .line 1743
    .end local v0    # "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "view":Landroid/view/View;
    .end local v11    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    if-eqz v8, :cond_3

    .line 1744
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1746
    :cond_3
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 1679
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 1680
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingDirectChild:Landroid/view/View;

    .line 1681
    iput-object p2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1683
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v6

    .line 1684
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 1685
    invoke-virtual {p0, v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1686
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1687
    .local v8, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1684
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1691
    :cond_1
    invoke-virtual {v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1692
    .local v0, "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 1693
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_1

    .line 1696
    .end local v0    # "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "view":Landroid/view/View;
    .end local v8    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 10
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2900
    instance-of v9, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;

    if-nez v9, :cond_1

    .line 2901
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2923
    :cond_0
    return-void

    :cond_1
    move-object v8, p1

    .line 2905
    check-cast v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;

    .line 2906
    .local v8, "ss":Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;
    invoke-virtual {v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v9

    invoke-super {p0, v9}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2908
    iget-object v1, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 2910
    .local v1, "behaviorStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    .local v4, "count":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 2911
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2912
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 2913
    .local v3, "childId":I
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v6

    .line 2914
    .local v6, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 2916
    .local v0, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    const/4 v9, -0x1

    if-eq v3, v9, :cond_2

    if-eqz v0, :cond_2

    .line 2917
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    .line 2918
    .local v7, "savedState":Landroid/os/Parcelable;
    if-eqz v7, :cond_2

    .line 2919
    invoke-virtual {v0, p0, v2, v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 2910
    .end local v7    # "savedState":Landroid/os/Parcelable;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    .prologue
    .line 2927
    new-instance v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2929
    .local v7, "ss":Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2930
    .local v1, "behaviorStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    .local v4, "count":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 2931
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2932
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 2933
    .local v3, "childId":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 2934
    .local v6, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 2936
    .local v0, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    const/4 v9, -0x1

    if-eq v3, v9, :cond_0

    if-eqz v0, :cond_0

    .line 2938
    invoke-virtual {v0, p0, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v8

    .line 2939
    .local v8, "state":Landroid/os/Parcelable;
    if-eqz v8, :cond_0

    .line 2940
    invoke-virtual {v1, v3, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2930
    .end local v8    # "state":Landroid/os/Parcelable;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2944
    .end local v0    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childId":I
    .end local v6    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :cond_1
    iput-object v1, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 2945
    return-object v7
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 1657
    const/4 v8, 0x0

    .line 1659
    .local v8, "handled":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    .line 1660
    .local v7, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 1661
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1662
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1663
    .local v10, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1664
    .local v0, "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 1665
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result v6

    .line 1667
    .local v6, "accepted":Z
    or-int/2addr v8, v6

    .line 1669
    invoke-virtual {v10, v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->acceptNestedScroll(Z)V

    .line 1660
    .end local v6    # "accepted":Z
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1671
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->acceptNestedScroll(Z)V

    goto :goto_1

    .line 1674
    .end local v0    # "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "view":Landroid/view/View;
    .end local v10    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :cond_1
    return v8
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 1700
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v5, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 1702
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1703
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1704
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1705
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1706
    .local v2, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1703
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1710
    :cond_0
    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 1711
    .local v4, "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_1

    .line 1712
    invoke-virtual {v4, p0, v3, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1714
    :cond_1
    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->resetNestedScroll()V

    .line 1715
    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    goto :goto_1

    .line 1718
    .end local v2    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "viewBehavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :cond_2
    iput-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingDirectChild:Landroid/view/View;

    .line 1719
    iput-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1720
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 506
    const/4 v12, 0x0

    .line 507
    .local v12, "handled":Z
    const/4 v11, 0x0

    .line 508
    .local v11, "cancelSuper":Z
    const/4 v10, 0x0

    .line 510
    .local v10, "cancelEvent":Landroid/view/MotionEvent;
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v8

    .line 512
    .local v8, "action":I
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 515
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 516
    .local v13, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v13}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v9

    .line 517
    .local v9, "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v9, :cond_1

    .line 518
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v9, p0, v2, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v12

    .line 523
    .end local v9    # "b":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .end local v13    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v2, :cond_7

    .line 524
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v12, v2

    .line 534
    :cond_2
    :goto_0
    if-nez v12, :cond_3

    if-nez v8, :cond_3

    .line 538
    :cond_3
    if-eqz v10, :cond_4

    .line 539
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 542
    :cond_4
    const/4 v2, 0x1

    if-eq v8, v2, :cond_5

    const/4 v2, 0x3

    if-ne v8, v2, :cond_6

    .line 543
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 546
    :cond_6
    return v12

    .line 525
    :cond_7
    if-eqz v11, :cond_2

    .line 526
    if-nez v10, :cond_8

    .line 527
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 528
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 531
    .end local v0    # "now":J
    :cond_8
    invoke-super {p0, v10}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 897
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 898
    .local v0, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->setLastChildRect(Landroid/graphics/Rect;)V

    .line 899
    return-void
.end method

.method removePreDrawListener()V
    .locals 2

    .prologue
    .line 1539
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v1, :cond_0

    .line 1540
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v1, :cond_0

    .line 1541
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1542
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1545
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1546
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 2950
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 2951
    .local v1, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 2953
    .local v0, "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    .line 2954
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onRequestChildRectangleOnScreen(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2955
    const/4 v2, 0x1

    .line 2958
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 551
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 552
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    if-nez v0, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 556
    :cond_0
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 0
    .param p1, "fitSystemWindows"    # Z

    .prologue
    .line 882
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 883
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setupForInsets()V

    .line 884
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .param p1, "onHierarchyChangeListener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 222
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 264
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_4

    .line 265
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 268
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 269
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 274
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 273
    invoke-static {v0, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 275
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 276
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 278
    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 280
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 275
    goto :goto_0
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 342
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 343
    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 331
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 332
    return-void

    .line 331
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 316
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 318
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 319
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 320
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 322
    :cond_0
    return-void

    .end local v0    # "visible":Z
    :cond_1
    move v0, v1

    .line 318
    goto :goto_0
.end method

.method final setWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 3
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v0, p1}, Lcom/oneplus/lib/design/widget/Utils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 348
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    .line 349
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    .line 352
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->dispatchApplyWindowInsetsToBehaviors(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    .line 353
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->requestLayout()V

    .line 355
    :cond_0
    return-object p1

    :cond_1
    move v0, v2

    .line 348
    goto :goto_0

    :cond_2
    move v1, v2

    .line 349
    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
