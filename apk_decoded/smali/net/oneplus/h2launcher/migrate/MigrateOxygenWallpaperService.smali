.class public Lnet/oneplus/h2launcher/migrate/MigrateOxygenWallpaperService;
.super Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;
.source "MigrateOxygenWallpaperService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lnet/oneplus/h2launcher/migrate/MigrateOxygenWallpaperService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected cleanUpMigratedPreferencesAndFiles()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 54
    iget-object v5, p0, Lnet/oneplus/h2launcher/migrate/MigrateOxygenWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 55
    .local v3, "filesDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 56
    .local v2, "files":[Ljava/io/File;
    array-length v7, v2

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v0, v2, v5

    .line 57
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "filename":Ljava/lang/String;
    const-string v8, "migrated_wallpaper"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    .line 60
    .local v4, "result":Z
    if-nez v4, :cond_0

    .line 61
    iget-object v8, p0, Lnet/oneplus/h2launcher/migrate/MigrateOxygenWallpaperService;->mTag:Ljava/lang/String;

    const-string v9, "failed to delete file: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v8, v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .end local v4    # "result":Z
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "filename":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected createBlurWallpaperSettings(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/oneplus/h2launcher/migrate/MigrateOxygenWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getBlurWallpaperSettings(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v0

    return-object v0
.end method

.method protected createWallpaperTile(Ljava/io/File;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;
    .locals 3
    .param p1, "output"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 43
    .local v0, "outputUri":Landroid/net/Uri;
    new-instance v1, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    invoke-direct {v1, v0, v0, v2, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    return-object v1
.end method

.method protected getWallpaperForMigration()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 30
    iget-object v3, p0, Lnet/oneplus/h2launcher/migrate/MigrateOxygenWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 31
    .local v1, "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 32
    .end local v1    # "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/migrate/MigrateOxygenWallpaperService;->mTag:Ljava/lang/String;

    const-string v4, "failed to create wallpaper bitmap"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 37
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-object v0

    .restart local v1    # "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object v0, v2

    .line 32
    goto :goto_0
.end method
