.class public Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;
.super Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
.source "FileWallpaperInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IILjava/lang/String;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "maskColor"    # I
    .param p3, "orientation"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;-><init>()V

    .line 30
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->mFile:Ljava/io/File;

    .line 31
    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->FILE:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->init(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;Ljava/lang/String;IILjava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;IILjava/lang/String;)V
    .locals 6
    .param p1, "target"    # Ljava/io/File;
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "maskColor"    # I
    .param p4, "orientation"    # I
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;-><init>()V

    .line 24
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->mFile:Ljava/io/File;

    .line 25
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 26
    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->FILE:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->init(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;Ljava/lang/String;IILjava/lang/String;)V

    .line 27
    return-void
.end method

.method private init(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;
    .param p2, "wallpaper"    # Ljava/lang/String;
    .param p3, "maskColor"    # I
    .param p4, "orientation"    # I
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->mType:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    .line 36
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->mWallpaper:Ljava/lang/String;

    .line 37
    iput p3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->mMaskColor:I

    .line 38
    iput p4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->mOrientation:I

    .line 39
    iput-object p5, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->mName:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getPreviewCacheKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "screen"    # I

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preview_file_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screen"    # I

    .prologue
    .line 86
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->mFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 87
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;

    const/4 v3, 0x0

    iget v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->mOrientation:I

    invoke-direct {v0, v1, p2, v3, v4}, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;-><init>(Landroid/net/Uri;IZI)V

    .line 88
    .local v0, "params":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    invoke-static {p1, v0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->createBackground(Landroid/content/Context;Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 89
    .local v2, "wallpaper":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 90
    sget-object v3, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->TAG:Ljava/lang/String;

    const-string v4, "failed to get wallpaper bitmap"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v2, 0x0

    .line 93
    .end local v2    # "wallpaper":Landroid/graphics/Bitmap;
    :cond_0
    return-object v2
.end method

.method public onClick(Lnet/oneplus/h2launcher/customizations/WallpaperCard;IZ)V
    .locals 11
    .param p1, "card"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p2, "screen"    # I
    .param p3, "changed"    # Z

    .prologue
    const/4 v8, 0x1

    .line 49
    if-eqz p3, :cond_0

    .line 50
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->getPreviewCacheKey(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "cacheKey":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 53
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 54
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p0, v2, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->getWallpaperBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 55
    .local v5, "temp":Landroid/graphics/Bitmap;
    if-nez v5, :cond_1

    .line 56
    sget-object v6, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->TAG:Ljava/lang/String;

    const-string v7, "failed to decode file: %s"

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "cacheKey":Ljava/lang/String;
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "temp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "cacheKey":Ljava/lang/String;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v5    # "temp":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    .local v4, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x46

    invoke-virtual {v5, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 61
    new-instance v3, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;

    .line 62
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iget v7, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->mOrientation:I

    invoke-direct {v3, v6, p2, v8, v7}, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;-><init>([BIZI)V

    .line 63
    .local v3, "params":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->createBackground(Landroid/content/Context;Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "params":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    .end local v4    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "temp":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p1, p2, v1, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->setWallpaper(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onSave(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screen"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;->getWallpaperBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, p2}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->saveWallpaperByInputStream(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 73
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 77
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 78
    invoke-static {p1, p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperTile(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-static {p1, p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setLockWallpaperTile(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    goto :goto_0
.end method
