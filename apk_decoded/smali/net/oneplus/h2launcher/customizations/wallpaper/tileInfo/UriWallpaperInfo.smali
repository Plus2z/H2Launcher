.class public Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;
.super Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
.source "UriWallpaperInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSourceUri:Landroid/net/Uri;

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;II)V
    .locals 1
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "maskColor"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;-><init>()V

    .line 29
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mSourceUri:Landroid/net/Uri;

    .line 30
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mUri:Landroid/net/Uri;

    .line 31
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mWallpaper:Ljava/lang/String;

    .line 32
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->FILE:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mType:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    .line 33
    iput p3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mMaskColor:I

    .line 34
    iput p4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mOrientation:I

    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mSourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mSourceUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mName:Ljava/lang/String;

    .line 36
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPreviewCacheKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "screen"    # I

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preview_uri_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getWallpaperBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screen"    # I

    .prologue
    .line 128
    new-instance v1, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    iget v5, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mOrientation:I

    invoke-direct {v1, v3, p2, v4, v5}, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;-><init>(Landroid/net/Uri;IZI)V

    .line 129
    .local v1, "params":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    invoke-static {p1, v1}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->createBackground(Landroid/content/Context;Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 130
    .local v2, "wallpaper":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 131
    sget-object v3, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->TAG:Ljava/lang/String;

    const-string v4, "failed to get wallpaper bitmap"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v3, 0x0

    .line 137
    :goto_0
    return-object v3

    .line 135
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x800

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 136
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 137
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method public isNamelessWallpaper()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public loadImage(Landroid/content/Context;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screen"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 45
    new-instance v9, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mOrientation:I

    invoke-direct {v9, v1, p2, v2, v4}, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;-><init>(Landroid/net/Uri;IZI)V

    .line 46
    .local v9, "params":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    invoke-static {p1, v9}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->createBackground(Landroid/content/Context;Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 47
    .local v10, "preview":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->getPreviewCacheKey(I)Ljava/lang/String;

    move-result-object v8

    .line 48
    .local v8, "cacheKey":Ljava/lang/String;
    invoke-static {v8}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 49
    invoke-static {v8, v10}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->cacheImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 53
    :cond_0
    if-eqz v10, :cond_1

    .line 54
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mSourceUri:Landroid/net/Uri;

    invoke-static {p1, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapUtils;->getRotationFromExif(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v6

    .line 55
    .local v6, "rotation":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getDefaultThumbnailSize(Landroid/content/res/Resources;)Landroid/util/Size;

    move-result-object v0

    .line 56
    .local v0, "thumbSize":Landroid/util/Size;
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mSourceUri:Landroid/net/Uri;

    move-object v1, p1

    move-object v4, v3

    move v7, v5

    invoke-static/range {v0 .. v7}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->createThumbnail(Landroid/util/Size;Landroid/content/Context;Landroid/net/Uri;[BLandroid/content/res/Resources;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mThumbnail:Landroid/graphics/Bitmap;

    .line 57
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 59
    .end local v0    # "thumbSize":Landroid/util/Size;
    .end local v6    # "rotation":I
    :cond_1
    return-void
.end method

.method public onClick(Lnet/oneplus/h2launcher/customizations/WallpaperCard;IZ)V
    .locals 4
    .param p1, "card"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p2, "screen"    # I
    .param p3, "changed"    # Z

    .prologue
    .line 72
    if-eqz p3, :cond_0

    .line 73
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->getPreviewCacheKey(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "cacheKey":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p1, p2, v1, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->setWallpaper(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 81
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "cacheKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "cacheKey":Ljava/lang/String;
    :cond_1
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->TAG:Ljava/lang/String;

    const-string v3, "Couldn\'t get bitmap"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSave(Landroid/content/Context;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screen"    # I

    .prologue
    .line 85
    new-instance v7, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mOrientation:I

    invoke-direct {v7, v0, p2, v2, v3}, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;-><init>(Landroid/net/Uri;IZI)V

    .line 86
    .local v7, "params":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    invoke-static {p1, v7}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->createBackground(Landroid/content/Context;Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 87
    .local v1, "wallpaper":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 88
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->TAG:Ljava/lang/String;

    const-string v2, "cannot apply the wallpaper cause the bitmap is null object."

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 91
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->TAG:Ljava/lang/String;

    const-string v2, "apply wallpaper size width = %d , height = %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mThumbnail:Landroid/graphics/Bitmap;

    iget v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mMaskColor:I

    iget v5, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mOrientation:I

    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mName:Ljava/lang/String;

    move-object v0, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->saveWallpaperFiles(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mWallpaper:Ljava/lang/String;

    .line 98
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 101
    .local v10, "start":J
    invoke-static {p1, v1, p2}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->saveWallpaperByInputStream(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v8, v2, v10

    .line 103
    .local v8, "diff":J
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->TAG:Ljava/lang/String;

    const-string v2, "apply to wallpaperManager spend %d ms"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .end local v8    # "diff":J
    .end local v10    # "start":J
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 108
    invoke-static {p1, p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperTile(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    .line 113
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 109
    :cond_4
    if-nez p2, :cond_3

    .line 110
    invoke-static {p1, p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setLockWallpaperTile(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    goto :goto_1
.end method

.method public updateMetaData(Ljava/lang/String;)V
    .locals 2
    .param p1, "serialNumber"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mWallpaper:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mWallpaper:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->mName:Ljava/lang/String;

    .line 41
    return-void
.end method
