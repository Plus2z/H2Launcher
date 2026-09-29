.class public Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/SavedWallpaperTile;
.super Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;
.source "SavedWallpaperTile.java"


# instance fields
.field private mDbId:I


# direct methods
.method public constructor <init>(ILjava/io/File;Landroid/graphics/drawable/Drawable;IILjava/lang/String;)V
    .locals 6
    .param p1, "dbId"    # I
    .param p2, "target"    # Ljava/io/File;
    .param p3, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p4, "maskColor"    # I
    .param p5, "orientation"    # I
    .param p6, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;-><init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;IILjava/lang/String;)V

    .line 16
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/SavedWallpaperTile;->mDbId:I

    .line 17
    return-void
.end method


# virtual methods
.method public isSelectable()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public onDelete(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V
    .locals 2
    .param p1, "a"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 21
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/SavedWallpaperTile;->mDbId:I

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperManager;->deleteImage(Landroid/content/Context;I)V

    .line 22
    return-void
.end method
