.class Lnet/oneplus/h2launcher/customizations/WallpaperCard$3;
.super Ljava/lang/Object;
.source "WallpaperCard.java"

# interfaces
.implements Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 134
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$3;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)Z
    .locals 4
    .param p1, "tileInfo"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 137
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$3;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getCurrentPage()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 138
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->GALLERY:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getType()Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->ONEDAYONEPHOTO:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    .line 139
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getType()Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->isLive()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->isThirdParty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getOrientation()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$3;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$300(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)I

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 143
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->isLive()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->isThirdParty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->isLandscape()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method
