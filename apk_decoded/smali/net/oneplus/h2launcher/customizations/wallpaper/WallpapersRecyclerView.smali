.class public Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.source "WallpapersRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$SpacingDecoration;,
        Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCellSpacing:I

.field private mGridAdapter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;

.field private mGridLayoutManager:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;

.field private mPickWallpaperTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
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
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mProviders:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mPickWallpaperTiles:Ljava/util/List;

    .line 52
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mGridAdapter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;

    .line 53
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mGridLayoutManager:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;

    .line 54
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mCellSpacing:I

    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mGridLayoutManager:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    .line 57
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mGridAdapter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    .line 58
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$SpacingDecoration;

    iget v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mCellSpacing:I

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$SpacingDecoration;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;I)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->addItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V

    .line 60
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mProviders:Ljava/util/List;

    new-instance v1, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/SavedWallpaperProvider;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/SavedWallpaperProvider;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mProviders:Ljava/util/List;

    new-instance v1, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mProviders:Ljava/util/List;

    new-instance v1, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mProviders:Ljava/util/List;

    new-instance v1, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ThirdPartyWallpaperProvider;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ThirdPartyWallpaperProvider;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    .prologue
    .line 33
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->loadAndAddPickWallpaperTiles()V

    return-void
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    .prologue
    .line 33
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mProviders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    .prologue
    .line 33
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mGridAdapter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    .prologue
    .line 33
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->clearWallpaperTileImages()V

    return-void
.end method

.method private clearWallpaperTileImages()V
    .locals 5

    .prologue
    .line 187
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->getChildCount()I

    move-result v1

    .line 188
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 189
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 190
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lnet/oneplus/h2launcher/CheckableFrameLayout;

    if-eqz v4, :cond_0

    .line 191
    const v4, 0x7f1101e3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 192
    .local v3, "image":Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    .line 193
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    .end local v3    # "image":Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private loadAndAddPickWallpaperTiles()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mPickWallpaperTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 100
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mPickWallpaperTiles:Ljava/util/List;

    new-instance v2, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/PickWallpaperTileInfo;

    invoke-direct {v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/PickWallpaperTileInfo;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoHelper;->oneDayOnePhotoAppExists(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mPickWallpaperTiles:Ljava/util/List;

    new-instance v2, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/OneDayOnePhotoWallpaperTileInfo;

    invoke-direct {v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/OneDayOnePhotoWallpaperTileInfo;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mPickWallpaperTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 106
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mPickWallpaperTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->addWallpaperTile(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    return-void
.end method


# virtual methods
.method public addWallpaperTile(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V
    .locals 2
    .param p1, "tileInfo"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .prologue
    .line 111
    const/high16 v0, -0x80000000

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->addWallpaperTiles(ILjava/util/List;)V

    .line 112
    return-void
.end method

.method public addWallpaperTiles(ILjava/util/List;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<+",
            "Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p2, "tileInfos":Ljava/util/List;, "Ljava/util/List<+Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;>;"
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$2;

    invoke-direct {v0, p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$2;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;ILjava/util/List;)V

    .line 129
    .local v0, "addWallpaperTiles":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method

.method public applyFilter(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;)V
    .locals 1
    .param p1, "filter"    # Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;

    .prologue
    .line 162
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mGridAdapter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mGridAdapter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->applyFilter(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;)V

    .line 165
    :cond_0
    return-void
.end method

.method public findWallpaperTileInfo(Ljava/lang/String;I)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "orientation"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mGridAdapter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mGridAdapter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->findWallpaperTileInfo(Ljava/lang/String;I)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findWallpaperTileView(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)Landroid/view/View;
    .locals 5
    .param p1, "info"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .prologue
    .line 146
    const/4 v3, 0x0

    .line 147
    .local v3, "view":Landroid/view/View;
    if-nez p1, :cond_0

    .line 148
    const/4 v4, 0x0

    .line 158
    :goto_0
    return-object v4

    .line 150
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->getChildCount()I

    move-result v1

    .line 151
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 152
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    move-object v3, v0

    .end local v0    # "child":Landroid/view/View;
    :cond_1
    move-object v4, v3

    .line 158
    goto :goto_0

    .line 151
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getPickWallpaperTilesCount()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mPickWallpaperTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isMemoryTrimmed()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mGridAdapter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadWallpaperThumbnails()V
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->TAG:Ljava/lang/String;

    const-string v1, "loadWallpaperThumbnails"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->removeAllWallpaperTiles()V

    .line 74
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->get()Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$1;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->post(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public removeAllWallpaperTiles()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mGridAdapter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mGridAdapter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->removeAllWallpaperTiles()V

    .line 136
    :cond_0
    return-void
.end method

.method public setWallpaperCard(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V
    .locals 1
    .param p1, "wallpaperCard"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 168
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mGridAdapter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mGridAdapter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->setWallpaperCard(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V

    .line 171
    :cond_0
    return-void
.end method

.method public trimWallpaperTileData()V
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->mProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;

    .line 175
    .local v0, "provider":Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;->clearTiles()V

    goto :goto_0

    .line 177
    .end local v0    # "provider":Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;
    :cond_0
    new-instance v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$3;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$3;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;)V

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method
