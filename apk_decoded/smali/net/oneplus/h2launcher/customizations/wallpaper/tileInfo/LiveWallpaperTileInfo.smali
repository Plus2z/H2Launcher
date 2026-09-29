.class public Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/LiveWallpaperTileInfo;
.super Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ExternalWallpaperTileInfo;
.source "LiveWallpaperTileInfo.java"


# instance fields
.field mInfo:Landroid/app/WallpaperInfo;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/app/WallpaperInfo;)V
    .locals 1
    .param p1, "thumbnail"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "info"    # Landroid/app/WallpaperInfo;

    .prologue
    .line 14
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ExternalWallpaperTileInfo;-><init>()V

    .line 15
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/LiveWallpaperTileInfo;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 16
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/LiveWallpaperTileInfo;->mLabel:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/LiveWallpaperTileInfo;->mInfo:Landroid/app/WallpaperInfo;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/LiveWallpaperTileInfo;->mIsLive:Z

    .line 19
    return-void
.end method


# virtual methods
.method public getInfo()Landroid/app/WallpaperInfo;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/LiveWallpaperTileInfo;->mInfo:Landroid/app/WallpaperInfo;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/LiveWallpaperTileInfo;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onClick(Lnet/oneplus/h2launcher/customizations/WallpaperCard;IZ)V
    .locals 3
    .param p1, "a"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p2, "screen"    # I
    .param p3, "changed"    # Z

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, "preview":Landroid/content/Intent;
    const-string v1, "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/LiveWallpaperTileInfo;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 25
    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->startActivityForResult(Landroid/content/Intent;I)V

    .line 27
    return-void
.end method
