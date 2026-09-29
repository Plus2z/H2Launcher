.class public Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/PickWallpaperTileInfo;
.super Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
.source "PickWallpaperTileInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;-><init>()V

    .line 11
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->GALLERY:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/PickWallpaperTileInfo;->mType:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Lnet/oneplus/h2launcher/customizations/WallpaperCard;IZ)V
    .locals 3
    .param p1, "card"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p2, "screen"    # I
    .param p3, "changed"    # Z

    .prologue
    .line 16
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/16 v1, 0xa

    .line 21
    .local v1, "requestCode":I
    :goto_0
    invoke-virtual {p1, v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->startActivityForResult(Landroid/content/Intent;I)V

    .line 22
    return-void

    .line 19
    .end local v1    # "requestCode":I
    :cond_0
    const/16 v1, 0x19

    goto :goto_0
.end method
