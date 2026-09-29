.class public Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AllAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;,
        Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridSpanSizer;,
        Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;,
        Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EMPTY_SEARCH_VIEW_TYPE:I = 0x3

.field public static final ICON_VIEW_TYPE:I = 0x1

.field public static final PREDICTION_ICON_VIEW_TYPE:I = 0x2

.field public static final SEARCH_MARKET_DIVIDER_VIEW_TYPE:I = 0x4

.field public static final SEARCH_MARKET_VIEW_TYPE:I = 0x5

.field public static final SECTION_BREAK_VIEW_TYPE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "AppsGridAdapter"


# instance fields
.field mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

.field mAppsPerRow:I

.field final mBackgroundPadding:Landroid/graphics/Rect;

.field private mEmptySearchMessage:Ljava/lang/String;

.field private mGridLayoutMgr:Landroid/support/v7/widget/GridLayoutManager;

.field private mGridSizer:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridSpanSizer;

.field private mIconClickListener:Landroid/view/View$OnClickListener;

.field private mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field mIconSizeScale:F

.field mIsRtl:Z

.field private mItemDecoration:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;

.field private mLastSearchQuery:Ljava/lang/String;

.field private mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMarketAppName:Ljava/lang/String;

.field private mMarketSearchIntent:Landroid/content/Intent;

.field private mMarketSearchMessage:Ljava/lang/String;

.field mPredictedAppsDividerPaint:Landroid/graphics/Paint;

.field mPredictionBarDividerOffset:I

.field mSectionHeaderOffset:I

.field mSectionNamesMargin:I

.field mSectionTextPaint:Landroid/graphics/Paint;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mUpdateIconsInBackground:Z


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 7
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "apps"    # Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;
    .param p3, "touchListener"    # Landroid/view/View$OnTouchListener;
    .param p4, "iconClickListener"    # Landroid/view/View$OnClickListener;
    .param p5, "iconLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    const/4 v6, 0x1

    .line 368
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 74
    const/4 v3, 0x0

    iput-boolean v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mUpdateIconsInBackground:Z

    .line 341
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 369
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 370
    .local v2, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 371
    iput-object p2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    .line 372
    const v3, 0x7f0b0035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mEmptySearchMessage:Ljava/lang/String;

    .line 373
    new-instance v3, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridSpanSizer;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridSpanSizer;-><init>(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mGridSizer:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridSpanSizer;

    .line 374
    new-instance v3, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    invoke-direct {v3, p0, p1}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;-><init>(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;Landroid/content/Context;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/GridLayoutManager;

    .line 375
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mGridSizer:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridSpanSizer;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 376
    new-instance v3, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;-><init>(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mItemDecoration:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;

    .line 377
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 378
    iput-object p3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 379
    iput-object p4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 380
    iput-object p5, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 381
    const v3, 0x7f0c0162

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mSectionNamesMargin:I

    .line 382
    const v3, 0x7f0c01ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mSectionHeaderOffset:I

    .line 384
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    .line 385
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    const v4, 0x7f0c0161

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 387
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    const v4, 0x7f0e0039

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 390
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mPredictedAppsDividerPaint:Landroid/graphics/Paint;

    .line 391
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mPredictedAppsDividerPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 392
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mPredictedAppsDividerPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x1e000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mPredictedAppsDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 394
    const v3, 0x7f0c01cd

    .line 395
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    neg-int v3, v3

    const v4, 0x7f0c0163

    .line 396
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mPredictionBarDividerOffset:I

    .line 399
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 400
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v3, ""

    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->createMarketSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 402
    .local v0, "marketInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mMarketAppName:Ljava/lang/String;

    .line 406
    :cond_0
    invoke-static {p1}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mIconSizeScale:F

    .line 407
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mLastSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;)Lnet/oneplus/h2launcher/Launcher;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    return-object v0
.end method

.method private createMarketSearchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 588
    const-string v2, "market://search"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 589
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "q"

    .line 590
    invoke-virtual {v2, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 591
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 592
    .local v1, "marketSearchUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v0, "marketSearchIntent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 594
    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mItemDecoration:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 572
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 573
    .local v0, "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    iget v1, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    return v1
.end method

.method public getLayoutManager()Landroid/support/v7/widget/GridLayoutManager;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/GridLayoutManager;

    return-object v0
.end method

.method public isUpdateIconsInBackground()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mUpdateIconsInBackground:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->onBindViewHolder(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;I)V
    .locals 13
    .param p1, "holder"    # Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v12, 0x7f0e02a0

    const v7, 0x800013

    const/16 v6, 0x11

    const/4 v11, 0x0

    .line 521
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 522
    .local v4, "out":Landroid/util/TypedValue;
    iget-object v8, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x1010435

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v4, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 523
    iget-object v8, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/Launcher;->getColor(I)I

    move-result v0

    .line 524
    .local v0, "color":I
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;->getItemViewType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 563
    :goto_0
    :pswitch_0
    return-void

    .line 526
    :pswitch_1
    iget-object v6, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v3, v6, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lnet/oneplus/h2launcher/AppInfo;

    .line 528
    .local v3, "info":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v2, p1, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;->mContent:Landroid/view/View;

    check-cast v2, Lnet/oneplus/h2launcher/BubbleTextView;

    .line 529
    .local v2, "icon":Lnet/oneplus/h2launcher/BubbleTextView;
    iget v6, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mIconSizeScale:F

    invoke-virtual {v2, v6}, Lnet/oneplus/h2launcher/BubbleTextView;->setIconSizeScale(F)V

    .line 530
    iget-boolean v6, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mUpdateIconsInBackground:Z

    invoke-virtual {v2, v3, v11, v6}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromApplicationInfo(Lnet/oneplus/h2launcher/AppInfo;ZZ)V

    .line 531
    iget-object v6, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v6, v12}, Lnet/oneplus/h2launcher/Launcher;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lnet/oneplus/h2launcher/BubbleTextView;->setTextColor(I)V

    goto :goto_0

    .line 535
    .end local v2    # "icon":Lnet/oneplus/h2launcher/BubbleTextView;
    .end local v3    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :pswitch_2
    iget-object v6, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v3, v6, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lnet/oneplus/h2launcher/AppInfo;

    .line 537
    .restart local v3    # "info":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v2, p1, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;->mContent:Landroid/view/View;

    check-cast v2, Lnet/oneplus/h2launcher/BubbleTextView;

    .line 538
    .restart local v2    # "icon":Lnet/oneplus/h2launcher/BubbleTextView;
    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromApplicationInfo(Lnet/oneplus/h2launcher/AppInfo;)V

    .line 539
    iget-object v6, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v6, v12}, Lnet/oneplus/h2launcher/Launcher;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lnet/oneplus/h2launcher/BubbleTextView;->setTextColor(I)V

    goto :goto_0

    .line 543
    .end local v2    # "icon":Lnet/oneplus/h2launcher/BubbleTextView;
    .end local v3    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :pswitch_3
    iget-object v1, p1, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;->mContent:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 544
    .local v1, "emptyViewText":Landroid/widget/TextView;
    iget-object v8, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mEmptySearchMessage:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v8, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_1
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 547
    iget-object v6, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const v7, 0x7f0e0038

    invoke-virtual {v6, v7}, Lnet/oneplus/h2launcher/Launcher;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    move v6, v7

    .line 545
    goto :goto_1

    .line 550
    .end local v1    # "emptyViewText":Landroid/widget/TextView;
    :pswitch_4
    iget-object v5, p1, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;->mContent:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    .line 551
    .local v5, "searchView":Landroid/widget/TextView;
    iget-object v8, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    if-eqz v8, :cond_2

    .line 552
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    iget-object v8, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mMarketSearchMessage:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v8, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 556
    iget-object v6, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mMarketSearchMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_1
    move v6, v7

    .line 554
    goto :goto_2

    .line 559
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 472
    packed-switch p2, :pswitch_data_0

    .line 515
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected view type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 474
    :pswitch_0
    new-instance v2, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;

    new-instance v3, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 513
    :goto_0
    return-object v2

    .line 476
    :pswitch_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040022

    invoke-virtual {v2, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/BubbleTextView;

    .line 478
    .local v0, "icon":Lnet/oneplus/h2launcher/BubbleTextView;
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 479
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 481
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 482
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    .line 481
    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setLongPressTimeout(I)V

    .line 483
    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/BubbleTextView;->setFocusable(Z)V

    .line 484
    new-instance v2, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {v2, v0}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 487
    .end local v0    # "icon":Lnet/oneplus/h2launcher/BubbleTextView;
    :pswitch_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040023

    invoke-virtual {v2, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/BubbleTextView;

    .line 489
    .restart local v0    # "icon":Lnet/oneplus/h2launcher/BubbleTextView;
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 490
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 492
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 493
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    .line 492
    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setLongPressTimeout(I)V

    .line 494
    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/BubbleTextView;->setFocusable(Z)V

    .line 495
    iget v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mIconSizeScale:F

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setIconSizeScale(F)V

    .line 496
    new-instance v2, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {v2, v0}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 499
    .end local v0    # "icon":Lnet/oneplus/h2launcher/BubbleTextView;
    :pswitch_3
    new-instance v2, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040021

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 502
    :pswitch_4
    new-instance v2, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040026

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    .line 505
    :pswitch_5
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040025

    invoke-virtual {v2, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 507
    .local v1, "searchMarketView":Landroid/view/View;
    new-instance v2, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$1;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$1;-><init>(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    new-instance v2, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {v2, v1}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    .line 472
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setIconSizeScale(F)V
    .locals 0
    .param p1, "iconSizeScale"    # F

    .prologue
    .line 428
    iput p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mIconSizeScale:F

    .line 429
    return-void
.end method

.method public setLastSearchQuery(Ljava/lang/String;)V
    .locals 6
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 436
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 437
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0b0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "formatStr":Ljava/lang/String;
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mLastSearchQuery:Ljava/lang/String;

    .line 439
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mEmptySearchMessage:Ljava/lang/String;

    .line 440
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mMarketAppName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 441
    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mMarketAppName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mMarketSearchMessage:Ljava/lang/String;

    .line 443
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->createMarketSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    .line 445
    :cond_0
    return-void
.end method

.method public setNumAppsPerRow(I)V
    .locals 1
    .param p1, "appsPerRow"    # I

    .prologue
    .line 413
    iput p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    .line 414
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 415
    return-void
.end method

.method public setRtl(Z)V
    .locals 0
    .param p1, "rtl"    # Z

    .prologue
    .line 421
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mIsRtl:Z

    .line 422
    return-void
.end method

.method public setUpdateIconsInBackground(Z)V
    .locals 0
    .param p1, "updateIconsInBackground"    # Z

    .prologue
    .line 581
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mUpdateIconsInBackground:Z

    .line 582
    return-void
.end method

.method public updateBackgroundPadding(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 452
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 453
    return-void
.end method
