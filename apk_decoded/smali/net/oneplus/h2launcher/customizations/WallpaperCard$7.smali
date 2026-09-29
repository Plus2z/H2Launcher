.class synthetic Lnet/oneplus/h2launcher/customizations/WallpaperCard$7;
.super Ljava/lang/Object;
.source "WallpaperCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$oneplus$h2launcher$customizations$wallpaper$tileInfo$WallpaperTileInfo$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 424
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->values()[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$7;->$SwitchMap$net$oneplus$h2launcher$customizations$wallpaper$tileInfo$WallpaperTileInfo$Type:[I

    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$7;->$SwitchMap$net$oneplus$h2launcher$customizations$wallpaper$tileInfo$WallpaperTileInfo$Type:[I

    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->RESOURCE:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$7;->$SwitchMap$net$oneplus$h2launcher$customizations$wallpaper$tileInfo$WallpaperTileInfo$Type:[I

    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->FILE:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
