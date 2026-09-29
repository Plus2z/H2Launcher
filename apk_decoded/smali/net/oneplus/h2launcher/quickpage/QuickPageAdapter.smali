.class public Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
.source "QuickPageAdapter.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$HeaderFooterViewHolder;,
        Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;,
        Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter",
        "<",
        "Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;",
        ">;",
        "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemAdapter",
        "<",
        "Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

.field private mAnimTime:I

.field private mBottomPadding:I

.field private mCardBorderExpandSize:I

.field private mCardElevation:I

.field private mEditMode:Z

.field private mEditModeDuration:I

.field private mEditableItemPosition:I

.field private mEventListener:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;

.field private mHasSoftwareKeys:Z

.field private mItemViewOnClickListener:Landroid/view/View$OnClickListener;

.field private mItemViewOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mLongPressing:Z

.field private mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

.field private mQuickPageScrolling:Z

.field private mScheme:Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

.field private final mSpring:Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

.field private mTouchGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/DataProvider;Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V
    .locals 1
    .param p1, "provider"    # Lnet/oneplus/h2launcher/quickpage/DataProvider;
    .param p2, "spring"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;-><init>()V

    .line 450
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    .line 451
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mSpring:Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 453
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$1;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mItemViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 459
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$2;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$2;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mItemViewOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 465
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->setHasStableIds(Z)V

    .line 466
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mTouchGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .prologue
    .line 52
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEditMode:Z

    return v0
.end method

.method static synthetic access$1000(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .prologue
    .line 52
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mCardElevation:I

    return v0
.end method

.method static synthetic access$1100(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->onItemViewClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->onItemViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .prologue
    .line 52
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mLongPressing:Z

    return v0
.end method

.method static synthetic access$1400(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .prologue
    .line 52
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mBottomPadding:I

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Lnet/oneplus/h2launcher/quickpage/DataProvider;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEventListener:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;

    return-object v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .prologue
    .line 52
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->getBoardCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .prologue
    .line 52
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mCardBorderExpandSize:I

    return v0
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .prologue
    .line 52
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mAnimTime:I

    return v0
.end method

.method static synthetic access$800(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .prologue
    .line 52
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEditableItemPosition:I

    return v0
.end method

.method static synthetic access$900(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;I)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->isItemLongPressing(I)Z

    move-result v0

    return v0
.end method

.method private getBoardCount()I
    .locals 2

    .prologue
    .line 542
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 543
    .local v0, "count":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .end local v0    # "count":I
    :cond_0
    return v0
.end method

.method private isItemLongPressing(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 511
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->isLongPressing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEditableItemPosition:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onItemViewClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 532
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEventListener:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEventListener:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;->onItemViewClicked(Landroid/view/View;Z)V

    .line 535
    :cond_0
    return-void
.end method

.method private onItemViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 538
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEventListener:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEventListener:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;

    invoke-interface {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;->onItemViewTouched(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEditableItem()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEditableItemPosition:I

    return v0
.end method

.method getEventListener()Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEventListener:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 572
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getItem(I)Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    move-result-object v0

    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;->getId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x2

    .line 577
    if-nez p1, :cond_1

    .line 578
    const/16 v0, 0x65

    .line 590
    :cond_0
    :goto_0
    return v0

    .line 581
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    .line 582
    const/16 v0, 0x66

    goto :goto_0

    .line 585
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getItem(I)Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    move-result-object v1

    invoke-interface {v1}, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;->getViewType()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 590
    const/16 v0, 0x64

    goto :goto_0
.end method

.method getWidgetCount()I
    .locals 4

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 549
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 550
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v1, :cond_1

    .line 549
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    :cond_1
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 557
    :cond_2
    return v0
.end method

.method public init(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;)V
    .locals 2
    .param p1, "activity"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;
    .param p2, "touchActionGuardManager"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    .prologue
    .line 470
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .line 471
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mTouchGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    .line 472
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    .line 473
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mAnimTime:I

    .line 474
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00fe

    .line 475
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mCardElevation:I

    .line 476
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f003c

    .line 477
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEditModeDuration:I

    .line 478
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f5

    .line 479
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mBottomPadding:I

    .line 480
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00fd

    .line 481
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 480
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mCardBorderExpandSize:I

    .line 482
    return-void
.end method

.method isItemEditable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 507
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEditMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEditableItemPosition:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongPressing()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mLongPressing:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->onBindViewHolder(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 672
    sget-object v2, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewHolder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v2, p2}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getItem(I)Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    move-result-object v0

    .line 675
    .local v0, "item":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    instance-of v2, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    if-eqz v2, :cond_0

    .line 676
    check-cast v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .end local v0    # "item":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    invoke-virtual {p1, v0, p2}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->setContent(Lnet/oneplus/h2launcher/quickpage/QuickPageItem;I)V

    .line 679
    :cond_0
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mQuickPageScrolling:Z

    if-nez v2, :cond_1

    .line 680
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p2, v2, :cond_1

    .line 681
    iget-object v2, p1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->container:Lnet/oneplus/h2launcher/quickpage/widget/SpringFrameLayout;

    invoke-virtual {p0, v2, p2}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->updateItemLayout(Landroid/view/View;I)V

    .line 686
    :cond_1
    iget-object v2, p1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->container:Lnet/oneplus/h2launcher/quickpage/widget/SpringFrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/quickpage/widget/SpringFrameLayout;->setTranslationY(F)V

    .line 689
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mLongPressing:Z

    if-nez v2, :cond_2

    .line 690
    iget-object v1, p1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->container:Lnet/oneplus/h2launcher/quickpage/widget/SpringFrameLayout;

    .line 691
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_2

    .line 692
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 695
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public bridge synthetic onCheckCanStartDrag(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;III)Z
    .locals 1

    .prologue
    .line 52
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->onCheckCanStartDrag(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;III)Z

    move-result v0

    return v0
.end method

.method public onCheckCanStartDrag(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;III)Z
    .locals 1
    .param p1, "holder"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 716
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
    .locals 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const v9, 0x7f0400d1

    const/4 v5, 0x0

    .line 631
    sget-object v6, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateViewHolder:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 634
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sparse-switch p2, :sswitch_data_0

    .line 656
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    .line 657
    invoke-virtual {v2, v9, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;Landroid/view/View;)V

    .line 661
    .local v1, "holder":Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
    :goto_0
    iget-object v5, v1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mItemViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    iget-object v5, v1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mItemViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 663
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mSpring:Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    if-eqz v5, :cond_0

    .line 664
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mSpring:Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    iget-object v6, v1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->container:Lnet/oneplus/h2launcher/quickpage/widget/SpringFrameLayout;

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->addListener(Lnet/oneplus/h2launcher/quickpage/rebound/SpringListener;)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 667
    :cond_0
    return-object v1

    .line 636
    .end local v1    # "holder":Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
    :sswitch_0
    const v6, 0x7f0400db

    invoke-virtual {v2, v6, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 637
    .local v0, "child":Landroid/view/View;
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$HeaderFooterViewHolder;

    invoke-direct {v1, p0, v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$HeaderFooterViewHolder;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;Landroid/view/View;)V

    .line 638
    .restart local v1    # "holder":Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
    const v5, 0x7f1101f1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 639
    .local v4, "welcomePanel":Landroid/view/View;
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    check-cast v4, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    .end local v4    # "welcomePanel":Landroid/view/View;
    invoke-virtual {v5, v4}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->setWelcomePanel(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)V

    goto :goto_0

    .line 642
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "holder":Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
    :sswitch_1
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$HeaderFooterViewHolder;

    const v6, 0x7f04005e

    .line 643
    invoke-virtual {v2, v6, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    invoke-direct {v1, p0, v6}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$HeaderFooterViewHolder;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;Landroid/view/View;)V

    .line 644
    .restart local v1    # "holder":Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
    iget-object v6, v1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 645
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 646
    .local v3, "params":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-boolean v6, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mHasSoftwareKeys:Z

    if-eqz v6, :cond_1

    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mActivity:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .line 647
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0101

    .line 648
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :cond_1
    iput v5, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->bottomMargin:I

    .line 649
    iget-object v5, v1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 652
    .end local v1    # "holder":Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
    .end local v3    # "params":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    :sswitch_2
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    .line 653
    invoke-virtual {v2, v9, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;Landroid/view/View;)V

    .line 654
    .restart local v1    # "holder":Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
    goto :goto_0

    .line 634
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic onGetItemDraggableRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;
    .locals 1

    .prologue
    .line 52
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->onGetItemDraggableRange(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;I)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    move-result-object v0

    return-object v0
.end method

.method public onGetItemDraggableRange(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;I)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;
    .locals 3
    .param p1, "holder"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 722
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;-><init>(II)V

    return-object v0
.end method

.method public onMoveItem(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 704
    if-ne p1, p2, :cond_0

    .line 711
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->moveItem(II)V

    .line 710
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->notifyItemMoved(II)V

    goto :goto_0
.end method

.method public bridge synthetic onViewAttachedToWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->onViewAttachedToWindow(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    .prologue
    .line 607
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    .line 608
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mLongPressing:Z

    if-eqz v0, :cond_2

    .line 612
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->container:Lnet/oneplus/h2launcher/quickpage/widget/SpringFrameLayout;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/widget/SpringFrameLayout;->setAlpha(F)V

    goto :goto_0

    .line 614
    :cond_2
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->container:Lnet/oneplus/h2launcher/quickpage/widget/SpringFrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/widget/SpringFrameLayout;->setAlpha(F)V

    goto :goto_0
.end method

.method public bridge synthetic onViewDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->onViewDetachedFromWindow(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    .prologue
    .line 620
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    .line 621
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mLongPressing:Z

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->container:Lnet/oneplus/h2launcher/quickpage/widget/SpringFrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/widget/SpringFrameLayout;->setAlpha(F)V

    goto :goto_0
.end method

.method public bridge synthetic onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->onViewRecycled(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    .prologue
    const/4 v2, 0x0

    .line 595
    iget-object v0, p1, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->container:Lnet/oneplus/h2launcher/quickpage/widget/SpringFrameLayout;

    .line 596
    .local v0, "item":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 598
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mBottomPadding:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 599
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 602
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 603
    return-void
.end method

.method setEditableItem(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 520
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEditableItemPosition:I

    .line 521
    return-void
.end method

.method setEditing(Z)V
    .locals 1
    .param p1, "editing"    # Z

    .prologue
    .line 515
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEditMode:Z

    if-ne p1, v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 516
    :cond_0
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEditMode:Z

    goto :goto_0
.end method

.method setEventListener(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;)V
    .locals 0
    .param p1, "eventListener"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;

    .prologue
    .line 762
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEventListener:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;

    .line 763
    return-void
.end method

.method setHasSoftwareKeys(Z)V
    .locals 1
    .param p1, "hasSoftwareKeys"    # Z

    .prologue
    .line 485
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mHasSoftwareKeys:Z

    if-ne p1, v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 486
    :cond_0
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mHasSoftwareKeys:Z

    .line 487
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method setLongPressing(ZI)V
    .locals 5
    .param p1, "longPressing"    # Z
    .param p2, "position"    # I

    .prologue
    .line 495
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mLongPressing:Z

    if-ne p1, v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 497
    :cond_0
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mLongPressing:Z

    .line 498
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->setEditableItem(I)V

    .line 499
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->TAG:Ljava/lang/String;

    const-string v1, "setLongPressing: %b %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setQuickPageScrolling(Z)V
    .locals 0
    .param p1, "scrolling"    # Z

    .prologue
    .line 491
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mQuickPageScrolling:Z

    .line 492
    return-void
.end method

.method setSchemeHelper(Lnet/oneplus/h2launcher/quickpage/SchemeHelper;)V
    .locals 1
    .param p1, "schemeHelper"    # Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

    .prologue
    .line 528
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->getCurrentScheme()Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mScheme:Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

    .line 529
    return-void
.end method

.method updateItemLayout(Landroid/view/View;I)V
    .locals 6
    .param p1, "item"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 726
    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEditableItemPosition:I

    if-ne v2, p2, :cond_0

    const/4 v1, 0x1

    .line 727
    .local v1, "isCurrentEditItem":Z
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mEditModeDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 728
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$3;

    invoke-direct {v2, p0, p1, v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$3;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;Landroid/view/View;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 754
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 755
    return-void

    .line 726
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "isCurrentEditItem":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 727
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateNoteReminders()V
    .locals 4

    .prologue
    .line 561
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 562
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getItem(I)Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    move-result-object v2

    invoke-interface {v2}, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;->getViewType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 563
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getItem(I)Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .line 564
    .local v1, "note":Lnet/oneplus/h2launcher/quickpage/NotePanel;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->updateReminderVisibility()V

    .line 565
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 561
    .end local v1    # "note":Lnet/oneplus/h2launcher/quickpage/NotePanel;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    :cond_1
    return-void
.end method
