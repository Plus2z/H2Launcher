.class public Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;
.super Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
.source "ResourceWallpaperInfo.java"


# instance fields
.field private mOverlayResId:I

.field private mResId:I

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;II)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;-><init>()V

    .line 20
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mResources:Landroid/content/res/Resources;

    .line 21
    iput p3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mResId:I

    .line 22
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->RESOURCE:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mType:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    .line 23
    iput p4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mOrientation:I

    .line 24
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mWallpaper:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private hasOverlay(I)Z
    .locals 2
    .param p1, "screen"    # I

    .prologue
    const/4 v0, 0x1

    .line 37
    if-ne p1, v0, :cond_0

    iget v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mOverlayResId:I

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPreviewCacheKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "screen"    # I

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preview_res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screen"    # I

    .prologue
    .line 86
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->hasOverlay(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mOverlayResId:I

    .line 87
    .local v0, "resId":I
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 86
    .end local v0    # "resId":I
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mResId:I

    goto :goto_0
.end method

.method public isNamelessWallpaper()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Lnet/oneplus/h2launcher/customizations/WallpaperCard;IZ)V
    .locals 6
    .param p1, "card"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p2, "screen"    # I
    .param p3, "changed"    # Z

    .prologue
    .line 47
    if-eqz p3, :cond_1

    .line 48
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->getPreviewCacheKey(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "cacheKey":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->hasOverlay(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mOverlayResId:I

    .line 52
    .local v3, "resId":I
    :goto_0
    new-instance v2, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;

    const/4 v4, 0x1

    iget v5, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mOrientation:I

    invoke-direct {v2, v3, p2, v4, v5}, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;-><init>(IIZI)V

    .line 53
    .local v2, "params":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->createBackground(Landroid/content/Context;Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    .end local v2    # "params":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    .end local v3    # "resId":I
    :cond_0
    invoke-virtual {p1, p2, v1, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->setWallpaper(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 57
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "cacheKey":Ljava/lang/String;
    :cond_1
    return-void

    .line 51
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "cacheKey":Ljava/lang/String;
    :cond_2
    iget v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mResId:I

    goto :goto_0
.end method

.method public onSave(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screen"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->getWallpaperBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, p2}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->saveWallpaperByInputStream(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 68
    invoke-static {p1, p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperTile(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-static {p1, p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setLockWallpaperTile(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    goto :goto_0
.end method

.method public setOverlayResId(I)V
    .locals 2
    .param p1, "overlayResId"    # I

    .prologue
    .line 29
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mOverlayResId:I

    .line 31
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mOverlayResId:I

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mOverlayResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->mOverlayWallpaper:Ljava/lang/String;

    .line 34
    :cond_0
    return-void
.end method
