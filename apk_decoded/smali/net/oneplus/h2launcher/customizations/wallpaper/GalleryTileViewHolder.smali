.class Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;
.super Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;
.source "GalleryTileViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLoadLastGalleryPhotoTask:Landroid/os/AsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/View;Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "wallpaperCard"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;-><init>(Landroid/view/View;Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V

    .line 31
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected bind(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V
    .locals 7
    .param p1, "info"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;->TAG:Ljava/lang/String;

    const-string v1, "invalid wallpaper tile info"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 40
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;->TAG:Ljava/lang/String;

    const-string v1, "invalid image view"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object v6, p1, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 45
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;->mLoadLastGalleryPhotoTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->isTaskUnfinished(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 47
    .local v2, "context":Landroid/content/Context;
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;->mImageView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;Landroid/widget/ImageView;Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;->mLoadLastGalleryPhotoTask:Landroid/os/AsyncTask;

    .line 51
    .end local v2    # "context":Landroid/content/Context;
    :goto_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getColorOverlay()I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 52
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;->setupItemView(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
