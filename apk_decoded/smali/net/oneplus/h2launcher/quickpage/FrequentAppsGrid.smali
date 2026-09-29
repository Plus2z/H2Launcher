.class public Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;
.super Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
.source "FrequentAppsGrid.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;
.implements Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$UpdateIconCacheCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;,
        Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;,
        Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;,
        Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;
    }
.end annotation


# static fields
.field private static final FREQUENT_APPS_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "FrequentAppsGrid"


# instance fields
.field private mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

.field private mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

.field private final mColumnCount:I

.field private mContainerSize:I

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Lnet/oneplus/h2launcher/quickpage/view/EmptyView;

.field private mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

.field private mHighlightFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mIconSize:I

.field private mIsResized:Z

.field private mParentView:Landroid/widget/FrameLayout;

.field private mSize:I

.field private mStats:Lnet/oneplus/h2launcher/Stats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/Stats;Lnet/oneplus/h2launcher/AssetCache;Lnet/oneplus/h2launcher/quickpage/SchemeHelper;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Lnet/oneplus/h2launcher/Stats;
    .param p3, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;
    .param p4, "schemeHelper"    # Lnet/oneplus/h2launcher/quickpage/SchemeHelper;
    .param p5, "size"    # I
    .param p6, "id"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;-><init>()V

    .line 66
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mIsResized:Z

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mContext:Landroid/content/Context;

    .line 71
    iput p6, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mId:I

    .line 72
    iput p5, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mSize:I

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0037

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mColumnCount:I

    .line 76
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mStats:Lnet/oneplus/h2launcher/Stats;

    .line 77
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mStats:Lnet/oneplus/h2launcher/Stats;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/Stats;->setCallback(Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;)V

    .line 79
    iput-object p3, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c008c

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mContainerSize:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c008f

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mIconSize:I

    .line 86
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02a9

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mHighlightFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 89
    const v0, 0x7f040061

    invoke-static {p1, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mParentView:Landroid/widget/FrameLayout;

    .line 90
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mParentView:Landroid/widget/FrameLayout;

    const v1, 0x7f110129

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    .line 91
    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->registerUpdateIconCacheCallback(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$UpdateIconCacheCallback;)V

    .line 92
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->getFrequentlyLaunchedApps()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;-><init>(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    .line 93
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->access$000(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;)V

    .line 94
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mSize:I

    if-gtz v0, :cond_0

    .line 95
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->getValidCount()I

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mColumnCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mSize:I

    .line 96
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mIsResized:Z

    .line 101
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mParentView:Landroid/widget/FrameLayout;

    const v1, 0x7f110116

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/EmptyView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mEmptyView:Lnet/oneplus/h2launcher/quickpage/view/EmptyView;

    .line 102
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mEmptyView:Lnet/oneplus/h2launcher/quickpage/view/EmptyView;

    const v1, 0x7f0b0082

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/EmptyView;->setEmptyMessage(I)V

    .line 103
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mEmptyView:Lnet/oneplus/h2launcher/quickpage/view/EmptyView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/EmptyView;->setEmptyImage(I)V

    .line 104
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mIsResized:Z

    goto :goto_0
.end method

.method private IconLoaderTask(Landroid/view/View;Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;)V
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    .prologue
    .line 653
    move-object v0, p1

    .line 654
    .local v0, "mConvertView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;

    .line 656
    .local v1, "mItem":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v2

    new-instance v3, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;

    invoke-direct {v3, p0, p2, v1, v0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;-><init>(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/util/TaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 708
    return-void
.end method

.method static synthetic access$1000(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->getFrequentlyLaunchedApps(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    .prologue
    .line 43
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    .prologue
    .line 43
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;Landroid/view/View;Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->IconLoaderTask(Landroid/view/View;Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;)V

    return-void
.end method

.method static synthetic access$1500(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Lnet/oneplus/h2launcher/AssetCache;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    .prologue
    .line 43
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    return-object v0
.end method

.method static synthetic access$1600(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Lnet/oneplus/h2launcher/Stats;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    .prologue
    .line 43
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mStats:Lnet/oneplus/h2launcher/Stats;

    return-object v0
.end method

.method static synthetic access$1900(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->updateShortcutIconFinish(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;Landroid/content/ComponentName;Ljava/lang/String;IJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # J
    .param p6, "x5"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p6}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->updateFrequentlyLaunchedApps(Landroid/content/ComponentName;Ljava/lang/String;IJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    return-void
.end method

.method static synthetic access$2000(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    .prologue
    .line 43
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mIconSize:I

    return v0
.end method

.method static synthetic access$2100(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;Landroid/view/View;Landroid/content/Intent;JILnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # J
    .param p5, "x4"    # I
    .param p6, "x5"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p6}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->startActivity(Landroid/view/View;Landroid/content/Intent;JILnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    return-void
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    .prologue
    .line 43
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    .prologue
    .line 43
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mIsResized:Z

    return v0
.end method

.method static synthetic access$502(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;I)I
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mSize:I

    return p1
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    .prologue
    .line 43
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mColumnCount:I

    return v0
.end method

.method private getFrequentlyLaunchedApps()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v2, "frequentApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mStats:Lnet/oneplus/h2launcher/Stats;

    const/16 v5, 0xa

    .line 285
    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/Stats;->getMostLaunchedPackages(I)Ljava/util/ArrayList;

    move-result-object v15

    .line 286
    .local v15, "mostLaunched":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/Stats$Stat;>;"
    const/16 v16, 0x0

    .line 288
    .local v16, "skipCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    const/16 v4, 0xa

    if-ge v14, v4, :cond_2

    .line 289
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_1

    .line 290
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lnet/oneplus/h2launcher/Stats$Stat;

    .line 291
    .local v17, "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    move-object/from16 v0, v17

    iget-object v7, v0, Lnet/oneplus/h2launcher/Stats$Stat;->componentName:Landroid/content/ComponentName;

    .line 292
    .local v7, "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, v17

    iget-object v8, v0, Lnet/oneplus/h2launcher/Stats$Stat;->intentStr:Ljava/lang/String;

    .line 294
    .local v8, "intentStr":Ljava/lang/String;
    move-object/from16 v0, v17

    iget v9, v0, Lnet/oneplus/h2launcher/Stats$Stat;->itemType:I

    .line 295
    .local v9, "itemType":I
    move-object/from16 v0, v17

    iget-wide v10, v0, Lnet/oneplus/h2launcher/Stats$Stat;->id:J

    .line 296
    .local v10, "id":J
    new-instance v3, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    invoke-direct {v3}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;-><init>()V

    .line 298
    .local v3, "newItem":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mStats:Lnet/oneplus/h2launcher/Stats;

    move-object/from16 v0, v17

    iget-object v12, v0, Lnet/oneplus/h2launcher/Stats$Stat;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v13, p0

    invoke-virtual/range {v3 .. v13}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->createFromPackage(Landroid/content/Context;Lnet/oneplus/h2launcher/AssetCache;Lnet/oneplus/h2launcher/Stats;Landroid/content/ComponentName;Ljava/lang/String;IJLnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v3    # "newItem":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "intentStr":Ljava/lang/String;
    .end local v9    # "itemType":I
    .end local v10    # "id":J
    .end local v17    # "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 302
    .restart local v3    # "newItem":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    .restart local v8    # "intentStr":Ljava/lang/String;
    .restart local v9    # "itemType":I
    .restart local v10    # "id":J
    .restart local v17    # "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    :cond_0
    const-string v4, "FrequentAppsGrid"

    const-string v5, "Component Name %s skipped."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v6, v12

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 308
    .end local v3    # "newItem":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "intentStr":Ljava/lang/String;
    .end local v9    # "itemType":I
    .end local v10    # "id":J
    .end local v17    # "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 313
    :cond_2
    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_3

    .line 314
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 317
    :cond_3
    return-object v2
.end method

.method private getFrequentlyLaunchedApps(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    .locals 14
    .param p1, "componentNameToUpdate"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 322
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mStats:Lnet/oneplus/h2launcher/Stats;

    const/16 v3, 0xa

    .line 323
    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Stats;->getMostLaunchedPackages(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 324
    .local v12, "mostLaunched":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/Stats$Stat;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 325
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 326
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/oneplus/h2launcher/Stats$Stat;

    .line 327
    .local v13, "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    iget-object v5, v13, Lnet/oneplus/h2launcher/Stats$Stat;->componentName:Landroid/content/ComponentName;

    .line 328
    .local v5, "componentName":Landroid/content/ComponentName;
    iget-object v6, v13, Lnet/oneplus/h2launcher/Stats$Stat;->intentStr:Ljava/lang/String;

    .line 329
    .local v6, "intentStr":Ljava/lang/String;
    iget v7, v13, Lnet/oneplus/h2launcher/Stats$Stat;->itemType:I

    .line 330
    .local v7, "itemType":I
    iget-wide v8, v13, Lnet/oneplus/h2launcher/Stats$Stat;->id:J

    .line 331
    .local v8, "id":J
    invoke-virtual {v5, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;-><init>()V

    .line 334
    .local v1, "newItem":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mStats:Lnet/oneplus/h2launcher/Stats;

    move-object/from16 v10, p2

    move-object v11, p0

    invoke-virtual/range {v1 .. v11}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->createFromPackage(Landroid/content/Context;Lnet/oneplus/h2launcher/AssetCache;Lnet/oneplus/h2launcher/Stats;Landroid/content/ComponentName;Ljava/lang/String;IJLnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    .end local v1    # "newItem":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "intentStr":Ljava/lang/String;
    .end local v7    # "itemType":I
    .end local v8    # "id":J
    .end local v13    # "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    :goto_1
    return-object v1

    .line 338
    .restart local v1    # "newItem":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "intentStr":Ljava/lang/String;
    .restart local v7    # "itemType":I
    .restart local v8    # "id":J
    .restart local v13    # "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    :cond_0
    const-string v2, "FrequentAppsGrid"

    const-string v3, "create dynamic icon failed."

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/4 v1, 0x0

    goto :goto_1

    .line 324
    .end local v1    # "newItem":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "intentStr":Ljava/lang/String;
    .end local v7    # "itemType":I
    .end local v8    # "id":J
    .end local v13    # "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private removeFrequentlyLaunchedApps(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 274
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    invoke-static {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->access$800(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 276
    :cond_0
    return-void
.end method

.method private removeFrequentlyLaunchedShortcuts(JLnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 278
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    invoke-static {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->access$900(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;JLnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 280
    :cond_0
    return-void
.end method

.method private startActivity(Landroid/view/View;Landroid/content/Intent;JILnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "id"    # J
    .param p5, "itemType"    # I
    .param p6, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    const/4 v3, 0x0

    .line 711
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v8

    .line 712
    .local v8, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-eqz v8, :cond_0

    .line 713
    invoke-virtual {v8, p1, p2, v3}, Lnet/oneplus/h2launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 714
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mStats:Lnet/oneplus/h2launcher/Stats;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lnet/oneplus/h2launcher/Stats;->recordLaunch(Landroid/view/View;Landroid/content/Intent;Lnet/oneplus/h2launcher/ShortcutInfo;JILnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 718
    :goto_0
    return-void

    .line 716
    :cond_0
    const-string v0, "FrequentAppsGrid"

    const-string v1, "launcher is null. Should not be here."

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateFrequentlyLaunchedApps(Landroid/content/ComponentName;Ljava/lang/String;IJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "intentStr"    # Ljava/lang/String;
    .param p3, "itemType"    # I
    .param p4, "id"    # J
    .param p6, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 269
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->access$700(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;Landroid/content/ComponentName;Ljava/lang/String;IJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 271
    :cond_0
    return-void
.end method

.method private updateShortcutIconFinish(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 728
    if-nez p1, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->access$2200(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 732
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->access$2200(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    .line 733
    .local v1, "item":Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 735
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->access$2200(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 736
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->getViewForItem(Landroid/view/View;Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;)Landroid/view/View;

    goto :goto_0

    .line 731
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mEmptyView:Lnet/oneplus/h2launcher/quickpage/view/EmptyView;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mId:I

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getMaxHeight()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getMinHeight()I

    move-result v0

    return v0
.end method

.method public getParent()Landroid/view/View;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mParentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mSize:I

    return v0
.end method

.method public getStandardHeight(I)I
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getStandardHeight()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mContext:Landroid/content/Context;

    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public hasScrollableContent()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->getValidCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContainerVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 203
    return-void
.end method

.method public onItemResizeFinished()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getRowCount()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mSize:I

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mIsResized:Z

    .line 191
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->notifyItemSizeChanged()V

    .line 192
    return-void
.end method

.method public onItemResizeProgress(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 185
    return-void
.end method

.method public onItemViewAttached()V
    .locals 4

    .prologue
    .line 173
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mSize:I

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mParentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 175
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mSize:I

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getHeightForSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 177
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 180
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public onRemove()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mStats:Lnet/oneplus/h2launcher/Stats;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Stats;->setCallback(Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;)V

    .line 208
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->access$100(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;)V

    .line 211
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->unregisterUpdateIconCacheCallback(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$UpdateIconCacheCallback;)V

    .line 212
    return-void
.end method

.method public onStatsAdded(Landroid/content/ComponentName;Ljava/lang/String;IJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 10
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "intentStr"    # Ljava/lang/String;
    .param p3, "itemType"    # I
    .param p4, "id"    # J
    .param p6, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 217
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;-><init>(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;Landroid/content/ComponentName;Ljava/lang/String;IJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 231
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    .line 232
    .local v0, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->addOnResumeCallback(Ljava/lang/Runnable;)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    const-string v2, "FrequentAppsGrid"

    const-string v3, "launcher is null. Should not be here."

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStatsRemoved(JLnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 254
    const-string v0, "FrequentAppsGrid"

    const-string v1, "App icon %d removes from Shelf for user %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->removeFrequentlyLaunchedShortcuts(JLnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 257
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->notifyDataSetChanged()V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->notifyItemAdapterChanged()V

    .line 262
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mIsResized:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->getValidCount()I

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mColumnCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mSize:I

    .line 265
    :cond_1
    return-void
.end method

.method public onStatsRemoved(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 241
    const-string v0, "FrequentAppsGrid"

    const-string v1, "App icon %s removes from Shelf for user %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->removeFrequentlyLaunchedApps(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 244
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->notifyDataSetChanged()V

    .line 245
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->notifyItemAdapterChanged()V

    .line 247
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mIsResized:Z

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->getValidCount()I

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mColumnCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mSize:I

    .line 250
    :cond_0
    return-void
.end method

.method public onUiComponentChanged()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->getFrequentlyLaunchedApps()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->updateList(Ljava/util/List;)V

    .line 197
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->notifyDataSetChanged()V

    .line 198
    return-void
.end method

.method public updateIconCacheFinish(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 722
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->updateIconUI(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 725
    :cond_0
    return-void
.end method
