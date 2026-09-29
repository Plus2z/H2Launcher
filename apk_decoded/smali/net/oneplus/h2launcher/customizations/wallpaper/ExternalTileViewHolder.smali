.class public Lnet/oneplus/h2launcher/customizations/wallpaper/ExternalTileViewHolder;
.super Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;
.source "ExternalTileViewHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/ExternalTileViewHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/ExternalTileViewHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "wallpaperCard"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$BaseWallpaperTileViewHolder;-><init>(Landroid/view/View;Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V

    .line 19
    const v0, 0x7f1101e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/ExternalTileViewHolder;->mLabel:Landroid/widget/TextView;

    .line 20
    return-void
.end method


# virtual methods
.method protected bind(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V
    .locals 4
    .param p1, "info"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .prologue
    .line 24
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getType()Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->EXTERNAL:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    if-eq v2, v3, :cond_1

    .line 25
    :cond_0
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/ExternalTileViewHolder;->TAG:Ljava/lang/String;

    const-string v3, "invalid wallpaper tile info"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_0
    return-void

    .line 28
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/ExternalTileViewHolder;->mImageView:Landroid/widget/ImageView;

    if-nez v2, :cond_2

    .line 29
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/ExternalTileViewHolder;->TAG:Ljava/lang/String;

    const-string v3, "invalid image view"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p1, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 34
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 35
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/ExternalTileViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    move-object v2, p1

    .line 38
    check-cast v2, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ExternalWallpaperTileInfo;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ExternalWallpaperTileInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "label":Ljava/lang/String;
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/ExternalTileViewHolder;->mLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 40
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/ExternalTileViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_4
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/ExternalTileViewHolder;->setupItemView(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    goto :goto_0
.end method
