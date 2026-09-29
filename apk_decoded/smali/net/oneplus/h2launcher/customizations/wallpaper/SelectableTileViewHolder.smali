.class public Lnet/oneplus/h2launcher/customizations/wallpaper/SelectableTileViewHolder;
.super Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;
.source "SelectableTileViewHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSelection:Lnet/oneplus/h2launcher/customizations/Selection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SelectableTileViewHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SelectableTileViewHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "wallpaperCard"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;-><init>(Landroid/view/View;Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V

    .line 18
    const v0, 0x7f110130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/Selection;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SelectableTileViewHolder;->mSelection:Lnet/oneplus/h2launcher/customizations/Selection;

    .line 19
    return-void
.end method


# virtual methods
.method protected bind(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V
    .locals 5
    .param p1, "info"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .prologue
    const/4 v3, 0x0

    .line 23
    if-nez p1, :cond_0

    .line 24
    sget-object v3, Lnet/oneplus/h2launcher/customizations/wallpaper/SelectableTileViewHolder;->TAG:Ljava/lang/String;

    const-string v4, "invalid wallpaper tile info"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p1, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 28
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SelectableTileViewHolder;->mImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    if-nez v0, :cond_2

    .line 29
    :cond_1
    sget-object v3, Lnet/oneplus/h2launcher/customizations/wallpaper/SelectableTileViewHolder;->TAG:Ljava/lang/String;

    const-string v4, "invalid image view or thumbnail"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_2
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SelectableTileViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SelectableTileViewHolder;->mSelection:Lnet/oneplus/h2launcher/customizations/Selection;

    if-eqz v4, :cond_3

    .line 35
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SelectableTileViewHolder;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getSelectedTile()Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v2

    .line 36
    .local v2, "selectedTile":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    .line 37
    .local v1, "isSelected":Z
    :goto_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SelectableTileViewHolder;->mSelection:Lnet/oneplus/h2launcher/customizations/Selection;

    invoke-virtual {v4, v1, v3}, Lnet/oneplus/h2launcher/customizations/Selection;->setSelected(ZI)V

    .line 40
    .end local v1    # "isSelected":Z
    .end local v2    # "selectedTile":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    :cond_3
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SelectableTileViewHolder;->setupItemView(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    goto :goto_0

    .restart local v2    # "selectedTile":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    :cond_4
    move v1, v3

    .line 36
    goto :goto_1
.end method
