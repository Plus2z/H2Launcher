.class public Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;
.super Landroid/widget/RelativeLayout;
.source "FloatingActionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$ActionMenuCallback;,
        Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;,
        Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;
    }
.end annotation


# instance fields
.field private final ITEM_COUNT:I

.field private mAnimating:Z

.field private mCallback:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$ActionMenuCallback;

.field private mExpanded:Z

.field private mHasMeasuredOffsets:Z

.field private mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

.field private mLimitToast:Landroid/widget/Toast;

.field private mMainButton:Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

.field private mMainButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mOffsetListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

.field private mUserHasClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->size()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->ITEM_COUNT:I

    .line 61
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->ITEM_COUNT:I

    new-array v0, v0, [Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->size()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->ITEM_COUNT:I

    .line 61
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->ITEM_COUNT:I

    new-array v0, v0, [Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->size()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->ITEM_COUNT:I

    .line 61
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->ITEM_COUNT:I

    new-array v0, v0, [Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    .prologue
    .line 33
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mMainButton:Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    return-object v0
.end method

.method static synthetic access$102(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    .prologue
    .line 33
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mLimitToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$202(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 33
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mLimitToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    .prologue
    .line 33
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mExpanded:Z

    return v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->updateVisibilities(Z)V

    return-void
.end method

.method static synthetic access$502(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mUserHasClicked:Z

    return p1
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    .prologue
    .line 33
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->ITEM_COUNT:I

    return v0
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    .prologue
    .line 33
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    return-object v0
.end method

.method static synthetic access$802(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mHasMeasuredOffsets:Z

    return p1
.end method

.method private configureButton(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;III)V
    .locals 4
    .param p1, "type"    # Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;
    .param p2, "containerId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3, "buttonId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p4, "textId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 219
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;-><init>(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$1;)V

    .line 220
    .local v1, "item":Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->container:Landroid/view/View;

    .line 221
    invoke-virtual {p0, p3}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 223
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v2, v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->container:Landroid/view/View;

    invoke-virtual {v2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->buttonText:Landroid/view/View;

    .line 226
    iget-object v2, v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->buttonText:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 228
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    iget v3, p1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->index:I

    aput-object v1, v2, v3

    .line 229
    return-void
.end method

.method private createFadingAnimator(Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "expand"    # Z

    .prologue
    const/high16 v2, 0x10e0000

    const/4 v1, 0x2

    .line 271
    if-eqz p2, :cond_0

    .line 272
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    .line 275
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 276
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 272
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 275
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createTranslationAnimator(IZ)Landroid/animation/Animator;
    .locals 8
    .param p1, "itemType"    # I
    .param p2, "expand"    # Z

    .prologue
    const/high16 v7, 0x10e0000

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 257
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 259
    .local v0, "itemPadding":I
    if-eqz p2, :cond_0

    .line 260
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    aget-object v1, v1, p1

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->container:Landroid/view/View;

    sget-object v2, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    .line 261
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getOffsetForItem(I)F

    move-result v4

    aput v4, v3, v5

    int-to-float v4, v0

    aput v4, v3, v6

    .line 260
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 262
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 266
    :goto_0
    return-object v1

    .line 264
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    aget-object v1, v1, p1

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->container:Landroid/view/View;

    sget-object v2, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    int-to-float v4, v0

    aput v4, v3, v5

    .line 265
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getOffsetForItem(I)F

    move-result v4

    aput v4, v3, v6

    .line 264
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 266
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_0
.end method

.method private getOffsetForItem(I)F
    .locals 4
    .param p1, "itemType"    # I

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "hiddenItems":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 234
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->isRemoved:Z

    if-eqz v2, :cond_0

    .line 235
    add-int/lit8 v0, v0, 0x1

    .line 233
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    sub-int v3, p1, v0

    aget-object v2, v2, v3

    iget v2, v2, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->offset:F

    return v2
.end method

.method private startAnimation(Z)V
    .locals 4
    .param p1, "expand"    # Z

    .prologue
    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 246
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .local v2, "itemType":I
    :goto_0
    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->ITEM_COUNT:I

    if-ge v2, v3, :cond_0

    .line 247
    invoke-direct {p0, v2, p1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->createTranslationAnimator(IZ)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    aget-object v3, v3, v2

    iget-object v3, v3, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->container:Landroid/view/View;

    invoke-direct {p0, v3, p1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->createFadingAnimator(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    aget-object v3, v3, v2

    iget-object v3, v3, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->buttonText:Landroid/view/View;

    invoke-direct {p0, v3, p1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->createFadingAnimator(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 253
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 254
    return-void
.end method

.method private updateVisibilities(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 281
    if-eqz p1, :cond_1

    .line 282
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->updateItems()V

    .line 288
    :cond_0
    return-void

    .line 284
    :cond_1
    const/4 v0, 0x0

    .local v0, "itemType":I
    :goto_0
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->ITEM_COUNT:I

    if-ge v0, v1, :cond_0

    .line 285
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    aget-object v1, v1, v0

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->container:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public collapse()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mExpanded:Z

    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->startAnimation(Z)V

    .line 304
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mMainButton:Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 305
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mExpanded:Z

    .line 307
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mCallback:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$ActionMenuCallback;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mCallback:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$ActionMenuCallback;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$ActionMenuCallback;->onCollapse()V

    goto :goto_0
.end method

.method public expand()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 313
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-direct {p0, v4}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->startAnimation(Z)V

    .line 317
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mMainButton:Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x42340000    # 45.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    .line 318
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    .line 317
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 319
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$5;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$5;-><init>(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)V

    .line 320
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 326
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mExpanded:Z

    .line 328
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mCallback:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$ActionMenuCallback;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mCallback:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$ActionMenuCallback;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$ActionMenuCallback;->onExpand()V

    goto :goto_0
.end method

.method public hasReachedLimit()Z
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCountExcludingNotes()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideMainButton()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mAnimating:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mMainButton:Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$1;-><init>(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 130
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mUserHasClicked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mCallback:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$ActionMenuCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->hasReachedLimit()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mCallback:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$ActionMenuCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    invoke-interface {v1, v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$ActionMenuCallback;->onButtonPressed(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mUserHasClicked:Z

    .line 79
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->collapse()V

    .line 80
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 152
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 154
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->WIDGETS:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    const v1, 0x7f11010c

    const v2, 0x7f110112

    const v3, 0x7f110113

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->configureButton(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;III)V

    .line 156
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->NOTE:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    const v1, 0x7f110108

    const v2, 0x7f11010e

    const v3, 0x7f11010f

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->configureButton(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;III)V

    .line 158
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->CALENDAR:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    const v1, 0x7f110104

    const v2, 0x7f11010a

    const v3, 0x7f11010b

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->configureButton(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;III)V

    .line 160
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->CARD:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    const v1, 0x7f110100

    const v2, 0x7f110106

    const v3, 0x7f110107

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->configureButton(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;III)V

    .line 162
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->APPS:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    const v1, 0x7f1100fc

    const v2, 0x7f110102

    const v3, 0x7f110103

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->configureButton(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;III)V

    .line 164
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->CONTACTS:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    const v1, 0x7f1100f8

    const v2, 0x7f1100fe

    const v3, 0x7f1100ff

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->configureButton(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;III)V

    .line 166
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->MEMO:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    const v1, 0x7f1100f7

    const v2, 0x7f1100fa

    const v3, 0x7f1100fb

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->configureButton(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;III)V

    .line 170
    const v0, 0x7f110114

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mMainButton:Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    .line 171
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$3;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$3;-><init>(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mMainButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->setMainButtonClickable(Z)V

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->updateVisibilities(Z)V

    .line 197
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$4;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$4;-><init>(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mOffsetListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 214
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mOffsetListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 215
    return-void
.end method

.method public removeGlobalLayoutListeners()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mOffsetListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mOffsetListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 404
    :cond_0
    return-void
.end method

.method public setCallback(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$ActionMenuCallback;)V
    .locals 0
    .param p1, "callback"    # Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$ActionMenuCallback;

    .prologue
    .line 296
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mCallback:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$ActionMenuCallback;

    .line 297
    return-void
.end method

.method public setDataProvider(Lnet/oneplus/h2launcher/quickpage/DataProvider;)V
    .locals 0
    .param p1, "provider"    # Lnet/oneplus/h2launcher/quickpage/DataProvider;

    .prologue
    .line 103
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    .line 104
    return-void
.end method

.method public setMainButtonClickable(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    .prologue
    .line 107
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mMainButton:Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mMainButtonOnClickListener:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMainButtonColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mMainButton:Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->setColorNormal(I)V

    .line 292
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mMainButton:Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->setColorPressed(I)V

    .line 293
    return-void
.end method

.method public showMainButton()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 133
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mMainButton:Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$2;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$2;-><init>(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 148
    return-void
.end method

.method public updateItems()V
    .locals 22

    .prologue
    .line 340
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mHasMeasuredOffsets:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 394
    :cond_0
    return-void

    .line 342
    :cond_1
    const-string v16, "com.oneplus.card"

    .line 343
    .local v16, "packageNameCard":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->containsWidget(Ljava/lang/String;)Z

    move-result v10

    .line 344
    .local v10, "isInQuickPageCard":Z
    const/4 v7, 0x0

    .line 346
    .local v7, "isInProviderCard":Z
    const-string v17, "com.oneplus.note"

    .line 347
    .local v17, "packageNameNote":Ljava/lang/String;
    const-string v4, "com.oneplus.note.ui.QuickNoteWidgetProvider"

    .line 348
    .local v4, "classNameNote":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->containsWidget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 349
    .local v11, "isInQuickPageNote":Z
    const/4 v8, 0x0

    .line 351
    .local v8, "isInProviderNote":Z
    const-string v15, "com.oneplus.calendar"

    .line 352
    .local v15, "packageNameCalendar":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->containsWidget(Ljava/lang/String;)Z

    move-result v9

    .line 353
    .local v9, "isInQuickPageCalendar":Z
    const/4 v6, 0x0

    .line 356
    .local v6, "isInProviderCalendar":Z
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-result-object v13

    .line 357
    .local v13, "mWidgetManager":Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;
    invoke-virtual {v13}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v2

    .line 358
    .local v2, "allWidgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    .line 359
    .local v5, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v5, :cond_2

    .line 360
    iget-object v0, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 361
    .local v14, "packageName":Ljava/lang/String;
    iget-object v0, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, "className":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 364
    .local v18, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 365
    const/4 v7, 0x1

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    move-object/from16 v19, v0

    sget-object v21, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->CARD:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    move-object/from16 v0, v21

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->index:I

    move/from16 v21, v0

    aget-object v19, v19, v21

    move-object/from16 v0, v19

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->buttonText:Landroid/view/View;

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 370
    const/4 v8, 0x1

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    move-object/from16 v19, v0

    sget-object v21, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->NOTE:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    move-object/from16 v0, v21

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->index:I

    move/from16 v21, v0

    aget-object v19, v19, v21

    move-object/from16 v0, v19

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->buttonText:Landroid/view/View;

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :cond_4
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 375
    const/4 v6, 0x1

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    move-object/from16 v19, v0

    sget-object v21, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->CALENDAR:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    move-object/from16 v0, v21

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->index:I

    move/from16 v21, v0

    aget-object v19, v19, v21

    move-object/from16 v0, v19

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->buttonText:Landroid/view/View;

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 381
    .end local v3    # "className":Ljava/lang/String;
    .end local v5    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    move-object/from16 v19, v0

    sget-object v20, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->WIDGETS:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    move-object/from16 v0, v20

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->index:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->isRemoved:Z

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    move-object/from16 v19, v0

    sget-object v20, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->NOTE:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    move-object/from16 v0, v20

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->index:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->isRemoved:Z

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    move-object/from16 v19, v0

    sget-object v20, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->CALENDAR:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    move-object/from16 v0, v20

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->index:I

    move/from16 v20, v0

    aget-object v20, v19, v20

    if-eqz v6, :cond_6

    if-eqz v9, :cond_9

    :cond_6
    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->isRemoved:Z

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    move-object/from16 v19, v0

    sget-object v20, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->CARD:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    move-object/from16 v0, v20

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->index:I

    move/from16 v20, v0

    aget-object v20, v19, v20

    if-eqz v7, :cond_7

    if-eqz v10, :cond_a

    :cond_7
    const/16 v19, 0x1

    :goto_2
    move/from16 v0, v19

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->isRemoved:Z

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    move-object/from16 v19, v0

    sget-object v20, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->APPS:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    move-object/from16 v0, v20

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->index:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->contains(I)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->isRemoved:Z

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    move-object/from16 v19, v0

    sget-object v20, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->CONTACTS:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    move-object/from16 v0, v20

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->index:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->contains(I)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->isRemoved:Z

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    move-object/from16 v19, v0

    sget-object v20, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->MEMO:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    move-object/from16 v0, v20

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->index:I

    move/from16 v20, v0

    aget-object v20, v19, v20

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSupportMemo()Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-object/from16 v19, v0

    .line 388
    invoke-virtual/range {v19 .. v19}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCreateNotePanelIndex()I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    :cond_8
    const/16 v19, 0x1

    :goto_3
    move/from16 v0, v19

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->isRemoved:Z

    .line 390
    const/4 v12, 0x0

    .local v12, "itemType":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->ITEM_COUNT:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_0

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    move-object/from16 v19, v0

    aget-object v19, v19, v12

    move-object/from16 v0, v19

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->container:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    move-object/from16 v19, v0

    aget-object v19, v19, v12

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->isRemoved:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    const/16 v19, 0x8

    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->mItems:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    move-object/from16 v19, v0

    aget-object v19, v19, v12

    move-object/from16 v0, v19

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->container:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getOffsetForItem(I)F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setTranslationY(F)V

    .line 390
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 383
    .end local v12    # "itemType":I
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 384
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 388
    :cond_b
    const/16 v19, 0x0

    goto :goto_3

    .line 391
    .restart local v12    # "itemType":I
    :cond_c
    const/16 v19, 0x0

    goto :goto_5
.end method

.method public updateMargin(Z)V
    .locals 3
    .param p1, "forceNavigationBar"    # Z

    .prologue
    .line 334
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 335
    .local v0, "params":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_0

    const v1, 0x7f0c0078

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    .line 337
    return-void

    .line 335
    :cond_0
    const v1, 0x7f0c0077

    goto :goto_0
.end method
