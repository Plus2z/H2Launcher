.class public abstract Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
.source "WallpapersGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseWallpaperTileViewHolder"
.end annotation


# instance fields
.field protected mImageView:Landroid/widget/ImageView;

.field protected mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;


# direct methods
.method public constructor <init>(Landroid/view/View;Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "wallpaperCard"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 169
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .line 170
    const v0, 0x7f1101e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 171
    return-void
.end method


# virtual methods
.method protected abstract bind(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V
.end method

.method protected setupItemView(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V
    .locals 3
    .param p1, "info"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .prologue
    .line 176
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 177
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getOnThumbnailClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->shouldPerformClickOnBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->setShouldPerformClickOnBound(Z)V

    .line 180
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 183
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getDefaultThumbnailSize(Landroid/content/res/Resources;)Landroid/util/Size;

    move-result-object v0

    .line 184
    .local v0, "size":Landroid/util/Size;
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 185
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 186
    return-void
.end method
