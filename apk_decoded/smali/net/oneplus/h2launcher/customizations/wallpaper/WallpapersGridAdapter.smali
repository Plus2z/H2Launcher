.class public Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
.source "WallpapersGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;
    }
.end annotation


# static fields
.field protected static final INDEX_NONE:I = -0x80000000

.field private static final ITEM_VIEW_TYPE_EXTERNAL:I = 0x3

.field private static final ITEM_VIEW_TYPE_GALLERY:I = 0x1

.field private static final ITEM_VIEW_TYPE_ONEDAYONEPHOTO:I = 0x4

.field private static final ITEM_VIEW_TYPE_SELECTABLE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFilter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;

.field private mFilteredWallpaperTileInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

.field private mWallpaperTileInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mWallpaperTileInfos:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mFilteredWallpaperTileInfos:Ljava/util/List;

    .line 34
    return-void
.end method

.method private applyFilter()V
    .locals 5

    .prologue
    .line 66
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->getItemCount()I

    move-result v1

    .line 67
    .local v1, "itemCount":I
    if-lez v1, :cond_0

    .line 68
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mFilteredWallpaperTileInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 69
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->notifyItemRangeRemoved(II)V

    .line 72
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, "temp":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;>;"
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mWallpaperTileInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .line 74
    .local v0, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mFilter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mFilter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;

    invoke-interface {v4, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;->filter(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v0    # "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    :cond_3
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mFilteredWallpaperTileInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method


# virtual methods
.method protected addWallpaperTiles(ILjava/util/List;)V
    .locals 5
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
    .line 46
    .local p2, "tileInfos":Ljava/util/List;, "Ljava/util/List<+Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mWallpaperTileInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 47
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->TAG:Ljava/lang/String;

    const-string v1, "failed to add wallpaper tiles: index=%d, wallpaper tile info list size=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mWallpaperTileInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 47
    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mWallpaperTileInfos:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 52
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->applyFilter()V

    goto :goto_0
.end method

.method protected addWallpaperTiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "tileInfos":Ljava/util/List;, "Ljava/util/List<+Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mWallpaperTileInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->applyFilter()V

    .line 43
    return-void
.end method

.method protected applyFilter(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;)V
    .locals 0
    .param p1, "filter"    # Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;

    .prologue
    .line 61
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mFilter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;

    .line 62
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->applyFilter()V

    .line 63
    return-void
.end method

.method protected findWallpaperTileInfo(Ljava/lang/String;I)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "orientation"    # I

    .prologue
    .line 84
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mWallpaperTileInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .line 85
    .local v0, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getOrientation()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    .end local v0    # "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mFilteredWallpaperTileInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 144
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mFilteredWallpaperTileInfos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .line 145
    .local v0, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    if-eqz v0, :cond_0

    .line 146
    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$1;->$SwitchMap$net$oneplus$h2launcher$customizations$wallpaper$tileInfo$WallpaperTileInfo$Type:[I

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getType()Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 157
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v1

    .line 160
    :goto_0
    return v1

    .line 148
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 150
    :pswitch_1
    const/4 v1, 0x4

    goto :goto_0

    .line 153
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 155
    :pswitch_3
    const/4 v1, 0x3

    goto :goto_0

    .line 160
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v1

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 117
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mFilteredWallpaperTileInfos:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .line 118
    .local v0, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->getItemViewType(I)I

    move-result v1

    .line 119
    .local v1, "itemViewType":I
    packed-switch v1, :pswitch_data_0

    .line 133
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->TAG:Ljava/lang/String;

    const-string v3, "unknown item view type: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    .end local p1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :goto_0
    return-void

    .line 121
    .restart local p1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :pswitch_0
    check-cast p1, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;

    .end local p1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;->bind(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    goto :goto_0

    .line 124
    .restart local p1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :pswitch_1
    check-cast p1, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;

    .end local p1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;->bind(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    goto :goto_0

    .line 127
    .restart local p1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :pswitch_2
    check-cast p1, Lnet/oneplus/h2launcher/customizations/wallpaper/SelectableTileViewHolder;

    .end local p1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SelectableTileViewHolder;->bind(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    goto :goto_0

    .line 130
    .restart local p1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :pswitch_3
    check-cast p1, Lnet/oneplus/h2launcher/customizations/wallpaper/ExternalTileViewHolder;

    .end local p1    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/ExternalTileViewHolder;->bind(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 96
    .local v0, "inflater":Landroid/view/LayoutInflater;
    packed-switch p2, :pswitch_data_0

    .line 110
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->TAG:Ljava/lang/String;

    const-string v3, "invalid item type"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 98
    :pswitch_0
    const v2, 0x7f0400d4

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, "itemView":Landroid/view/View;
    new-instance v2, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-direct {v2, v1, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;-><init>(Landroid/view/View;Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V

    goto :goto_0

    .line 101
    .end local v1    # "itemView":Landroid/view/View;
    :pswitch_1
    const v2, 0x7f0400d6

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 102
    .restart local v1    # "itemView":Landroid/view/View;
    new-instance v2, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-direct {v2, v1, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;-><init>(Landroid/view/View;Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V

    goto :goto_0

    .line 104
    .end local v1    # "itemView":Landroid/view/View;
    :pswitch_2
    const v2, 0x7f0400d5

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 105
    .restart local v1    # "itemView":Landroid/view/View;
    new-instance v2, Lnet/oneplus/h2launcher/customizations/wallpaper/SelectableTileViewHolder;

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-direct {v2, v1, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/SelectableTileViewHolder;-><init>(Landroid/view/View;Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V

    goto :goto_0

    .line 107
    .end local v1    # "itemView":Landroid/view/View;
    :pswitch_3
    const v2, 0x7f0400d3

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 108
    .restart local v1    # "itemView":Landroid/view/View;
    new-instance v2, Lnet/oneplus/h2launcher/customizations/wallpaper/ExternalTileViewHolder;

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-direct {v2, v1, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/ExternalTileViewHolder;-><init>(Landroid/view/View;Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected removeAllWallpaperTiles()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mWallpaperTileInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->applyFilter()V

    .line 58
    return-void
.end method

.method public setWallpaperCard(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V
    .locals 0
    .param p1, "wallpaperCard"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 37
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .line 38
    return-void
.end method
