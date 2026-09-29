.class synthetic Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$1;
.super Ljava/lang/Object;
.source "WallpapersGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter;
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
    .line 146
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->values()[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$1;->$SwitchMap$net$oneplus$h2launcher$customizations$wallpaper$tileInfo$WallpaperTileInfo$Type:[I

    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$1;->$SwitchMap$net$oneplus$h2launcher$customizations$wallpaper$tileInfo$WallpaperTileInfo$Type:[I

    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->GALLERY:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$1;->$SwitchMap$net$oneplus$h2launcher$customizations$wallpaper$tileInfo$WallpaperTileInfo$Type:[I

    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->ONEDAYONEPHOTO:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$1;->$SwitchMap$net$oneplus$h2launcher$customizations$wallpaper$tileInfo$WallpaperTileInfo$Type:[I

    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->RESOURCE:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$1;->$SwitchMap$net$oneplus$h2launcher$customizations$wallpaper$tileInfo$WallpaperTileInfo$Type:[I

    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->FILE:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersGridAdapter$1;->$SwitchMap$net$oneplus$h2launcher$customizations$wallpaper$tileInfo$WallpaperTileInfo$Type:[I

    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->EXTERNAL:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
