.class public Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;
.super Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
.source "TimeWidgetCustomizationCard.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

.field private mHomeClockStyle:I

.field private mIsShowCustomization:Z

.field private mLockClockStyle:I

.field private mOnTimeWidgetTileClickListener:Landroid/view/View$OnClickListener;

.field private mPreviewItemChangeListener:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSelectedTiles:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
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
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    aput-object v3, v0, v2

    const/4 v1, 0x1

    aput-object v3, v0, v1

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mSelectedTiles:[Landroid/view/View;

    .line 27
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mIsShowCustomization:Z

    .line 28
    new-instance v0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$1;-><init>(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mOnTimeWidgetTileClickListener:Landroid/view/View$OnClickListener;

    .line 48
    new-instance v0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$2;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$2;-><init>(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mPreviewItemChangeListener:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;

    .line 76
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mContent:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->setupContentView(Landroid/view/View;)V

    .line 77
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mPreviewItemChangeListener:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    .prologue
    .line 21
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    .prologue
    .line 21
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mSelectedTiles:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->selectTile(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;Landroid/view/View;)Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->getTileInfo(Landroid/view/View;)Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;I)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;
    .param p1, "x1"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->clearSelectedTile(I)V

    return-void
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;)Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    .prologue
    .line 21
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    return-object v0
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    .prologue
    .line 21
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mOnTimeWidgetTileClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private clearSelectedTile(I)V
    .locals 3
    .param p1, "currentPage"    # I

    .prologue
    .line 218
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mSelectedTiles:[Landroid/view/View;

    aget-object v0, v2, p1

    .line 219
    .local v0, "selectedTile":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 220
    const v2, 0x7f110130

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/customizations/Selection;

    .line 221
    .local v1, "selection":Lnet/oneplus/h2launcher/customizations/Selection;
    if-eqz v1, :cond_0

    .line 222
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/Selection;->setSelected(Z)V

    .line 225
    .end local v1    # "selection":Lnet/oneplus/h2launcher/customizations/Selection;
    :cond_0
    return-void
.end method

.method private getTileInfo(Landroid/view/View;)Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;
    .locals 1
    .param p1, "tile"    # Landroid/view/View;

    .prologue
    .line 229
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;

    .local v0, "info":Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;
    if-eqz v0, :cond_0

    .line 232
    .end local v0    # "info":Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersView()Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v0

    return-object v0
.end method

.method private loadTimeWidgets()V
    .locals 2

    .prologue
    .line 236
    new-instance v0, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetAdapter;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetAdapter;-><init>(Landroid/content/Context;)V

    .line 237
    .local v0, "adapter":Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetAdapter;
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->populateWidgetsFromAdapter(Landroid/widget/BaseAdapter;)V

    .line 238
    return-void
.end method

.method private populateWidgetsFromAdapter(Landroid/widget/BaseAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    sget-object v0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->TAG:Ljava/lang/String;

    const-string v1, "invalid adapter"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_0
    return-void

    .line 246
    :cond_0
    new-instance v0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$4;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$4;-><init>(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;Landroid/widget/BaseAdapter;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private selectTile(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getCurrentPage()I

    move-result v0

    .line 207
    .local v0, "currentPage":I
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->clearSelectedTile(I)V

    .line 208
    if-eqz p1, :cond_1

    .line 209
    const v2, 0x7f110130

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/customizations/Selection;

    .line 210
    .local v1, "selection":Lnet/oneplus/h2launcher/customizations/Selection;
    if-eqz v1, :cond_0

    .line 211
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/Selection;->setSelected(Z)V

    .line 213
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mSelectedTiles:[Landroid/view/View;

    aput-object p1, v2, v0

    .line 215
    .end local v1    # "selection":Lnet/oneplus/h2launcher/customizations/Selection;
    :cond_1
    return-void
.end method

.method private setupContentView(Landroid/view/View;)V
    .locals 4
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 195
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getDefaultThumbnailSize(Landroid/content/res/Resources;)Landroid/util/Size;

    move-result-object v0

    .line 196
    .local v0, "size":Landroid/util/Size;
    const v1, 0x7f1100d4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    .line 197
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->setChildrenSize(II)V

    .line 199
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->loadTimeWidgets()V

    .line 202
    :cond_0
    const v1, 0x7f1100d3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mScrollView:Landroid/widget/ScrollView;

    .line 203
    return-void
.end method


# virtual methods
.method protected getBottommostViewInScrollableView()Landroid/view/View;
    .locals 3

    .prologue
    .line 176
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    if-lez v0, :cond_0

    .line 177
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 179
    .end local v0    # "childCount":I
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getBottommostViewInScrollableView()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 83
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected getSaveCustomizationTask()Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
    .locals 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mSelectedTiles:[Landroid/view/View;

    aget-object v8, v2, v1

    .line 123
    .local v8, "lockScreenTile":Landroid/view/View;
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mSelectedTiles:[Landroid/view/View;

    aget-object v7, v2, v0

    .line 127
    .local v7, "homeScreenTile":Landroid/view/View;
    if-eqz v8, :cond_1

    .line 128
    invoke-direct {p0, v8}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->getTileInfo(Landroid/view/View;)Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;

    move-result-object v2

    iget v4, v2, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;->clockStyle:I

    .line 129
    .local v4, "selectedLockScreenClockStyle":I
    iget v2, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mLockClockStyle:I

    if-eq v4, v2, :cond_0

    move v3, v0

    .line 137
    .local v3, "lockScreenClockStyleChange":Z
    :goto_0
    if-eqz v7, :cond_3

    .line 138
    invoke-direct {p0, v7}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->getTileInfo(Landroid/view/View;)Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;

    move-result-object v2

    iget v6, v2, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;->clockStyle:I

    .line 139
    .local v6, "selectedHomeScreenClockStyle":I
    iget v2, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mHomeClockStyle:I

    if-eq v6, v2, :cond_2

    move v5, v0

    .line 144
    .local v5, "homeScreenClockStyleChange":Z
    :goto_1
    sget-object v2, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->TAG:Ljava/lang/String;

    const-string v9, "getSaveCustomizationTask# (lock, home): (%b, %b)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v1

    .line 145
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v10, v0

    .line 144
    invoke-static {v2, v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    if-nez v3, :cond_4

    if-nez v5, :cond_4

    .line 148
    const/4 v0, 0x0

    .line 150
    :goto_2
    return-object v0

    .end local v3    # "lockScreenClockStyleChange":Z
    .end local v5    # "homeScreenClockStyleChange":Z
    .end local v6    # "selectedHomeScreenClockStyle":I
    :cond_0
    move v3, v1

    .line 129
    goto :goto_0

    .line 131
    .end local v4    # "selectedLockScreenClockStyle":I
    :cond_1
    const/4 v4, -0x1

    .line 132
    .restart local v4    # "selectedLockScreenClockStyle":I
    const/4 v3, 0x0

    .restart local v3    # "lockScreenClockStyleChange":Z
    goto :goto_0

    .restart local v6    # "selectedHomeScreenClockStyle":I
    :cond_2
    move v5, v1

    .line 139
    goto :goto_1

    .line 141
    .end local v6    # "selectedHomeScreenClockStyle":I
    :cond_3
    const/4 v6, -0x1

    .line 142
    .restart local v6    # "selectedHomeScreenClockStyle":I
    const/4 v5, 0x0

    .restart local v5    # "homeScreenClockStyleChange":Z
    goto :goto_1

    .line 150
    :cond_4
    new-instance v0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;

    sget-object v2, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->TAG:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;-><init>(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;Ljava/lang/String;ZIZI)V

    goto :goto_2
.end method

.method protected getScrollableView()Landroid/view/View;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method protected onLeavingCustomization()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->onLeavingCustomization()V

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mIsShowCustomization:Z

    .line 186
    return-void
.end method

.method protected onShowCustomization()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->onShowCustomization()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mIsShowCustomization:Z

    .line 192
    return-void
.end method

.method protected reloadCustomizationSettings()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 88
    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mSelectedTiles:[Landroid/view/View;

    if-eqz v7, :cond_0

    .line 89
    const/4 v4, 0x0

    .local v4, "page":I
    :goto_0
    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mSelectedTiles:[Landroid/view/View;

    array-length v7, v7

    if-ge v4, v7, :cond_0

    .line 90
    invoke-direct {p0, v4}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->clearSelectedTile(I)V

    .line 91
    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mSelectedTiles:[Landroid/view/View;

    const/4 v8, 0x0

    aput-object v8, v7, v4

    .line 89
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    .end local v4    # "page":I
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getInstance()Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    move-result-object v7

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getKeyguardClockStyle()I

    move-result v7

    iput v7, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mLockClockStyle:I

    .line 96
    invoke-static {}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getInstance()Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    move-result-object v7

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getClockStyle()I

    move-result v7

    iput v7, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mHomeClockStyle:I

    .line 97
    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getChildCount()I

    move-result v1

    .line 98
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 99
    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    invoke-virtual {v7, v3}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 100
    .local v6, "tile":Landroid/view/View;
    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->getTileInfo(Landroid/view/View;)Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;

    move-result-object v7

    iget v0, v7, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;->clockStyle:I

    .line 101
    .local v0, "clockStyle":I
    iget v7, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mLockClockStyle:I

    if-ne v0, v7, :cond_1

    .line 102
    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mSelectedTiles:[Landroid/view/View;

    aput-object v6, v7, v9

    .line 104
    :cond_1
    iget v7, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mHomeClockStyle:I

    if-ne v0, v7, :cond_2

    .line 105
    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mSelectedTiles:[Landroid/view/View;

    const/4 v8, 0x1

    aput-object v6, v7, v8

    .line 98
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 109
    .end local v0    # "clockStyle":I
    .end local v6    # "tile":Landroid/view/View;
    :cond_3
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v7

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getCurrentPage()I

    move-result v2

    .line 110
    .local v2, "currentPage":I
    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mSelectedTiles:[Landroid/view/View;

    aget-object v5, v7, v2

    .line 111
    .local v5, "selectedTile":Landroid/view/View;
    if-eqz v5, :cond_4

    .line 112
    invoke-direct {p0, v5}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->selectTile(Landroid/view/View;)V

    .line 115
    :cond_4
    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    if-eqz v7, :cond_5

    .line 116
    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mScrollView:Landroid/widget/ScrollView;

    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v8

    invoke-virtual {v7, v8, v9}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 118
    :cond_5
    return-void
.end method

.method public toggleLockScreenTimeWidgetTiles(I)V
    .locals 6
    .param p1, "currentPage"    # I

    .prologue
    const/4 v2, 0x1

    .line 266
    if-ne p1, v2, :cond_0

    .line 267
    .local v2, "selectable":Z
    :goto_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getChildCount()I

    move-result v0

    .line 268
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 269
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    invoke-virtual {v4, v1}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 270
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "selectable":Z
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 272
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "selectable":Z
    :cond_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->mCard:Landroid/view/View;

    if-eqz v2, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    .line 273
    return-void

    .line 272
    :cond_2
    const v4, 0x3e851eb8    # 0.26f

    goto :goto_2
.end method
