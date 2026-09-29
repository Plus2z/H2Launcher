.class public interface abstract Lnet/oneplus/h2launcher/customizations/WallpaperCard$WallpaperColorsListener;
.super Ljava/lang/Object;
.source "WallpaperCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WallpaperColorsListener"
.end annotation


# virtual methods
.method public abstract onWallpaperColorsChanged(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;)V"
        }
    .end annotation
.end method
