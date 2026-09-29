.class public Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;
.super Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;
.source "OneDayOnePhotoTileViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder$LoadOneDayOnePhotoTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLoadOneDayOnePhotoTask:Landroid/os/AsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "wallpaperCard"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;-><init>(Landroid/view/View;Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V

    .line 25
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected bind(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V
    .locals 4
    .param p1, "info"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;->TAG:Ljava/lang/String;

    const-string v2, "invalid wallpaper tile info"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 34
    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;->TAG:Ljava/lang/String;

    const-string v2, "invalid image view"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getColorOverlay()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 40
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;->mLoadOneDayOnePhotoTask:Landroid/os/AsyncTask;

    invoke-static {v1}, Lnet/oneplus/h2launcher/Utilities;->isTaskUnfinished(Landroid/os/AsyncTask;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 41
    new-instance v1, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder$LoadOneDayOnePhotoTask;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder$LoadOneDayOnePhotoTask;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;Landroid/content/Context;Landroid/widget/ImageView;Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder$LoadOneDayOnePhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;->mLoadOneDayOnePhotoTask:Landroid/os/AsyncTask;

    .line 43
    :cond_2
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;->setupItemView(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    goto :goto_0
.end method
