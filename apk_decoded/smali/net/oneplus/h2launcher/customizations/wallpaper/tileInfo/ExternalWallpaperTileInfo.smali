.class public Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ExternalWallpaperTileInfo;
.super Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
.source "ExternalWallpaperTileInfo.java"


# instance fields
.field protected mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;-><init>()V

    .line 7
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->EXTERNAL:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ExternalWallpaperTileInfo;->mType:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    .line 8
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ExternalWallpaperTileInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method
