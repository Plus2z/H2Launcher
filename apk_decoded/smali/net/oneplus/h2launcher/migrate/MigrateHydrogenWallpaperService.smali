.class public Lnet/oneplus/h2launcher/migrate/MigrateHydrogenWallpaperService;
.super Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;
.source "MigrateHydrogenWallpaperService.java"


# static fields
.field public static final EXTRA_WALLPAPER_URI:Ljava/lang/String; = "extra_wallpaper_uri"


# instance fields
.field private mMaskColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lnet/oneplus/h2launcher/migrate/MigrateHydrogenWallpaperService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected cleanUpMigratedPreferencesAndFiles()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    .line 87
    iget-object v6, p0, Lnet/oneplus/h2launcher/migrate/MigrateHydrogenWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 88
    .local v3, "filesDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 89
    .local v2, "files":[Ljava/io/File;
    array-length v8, v2

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v0, v2, v6

    .line 90
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "filename":Ljava/lang/String;
    const-string v9, "migrated_wallpaper"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "current_wallpaper"

    .line 92
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "temp_img_filename"

    .line 93
    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "temp_thumb_filename"

    .line 94
    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 95
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    .line 96
    .local v5, "result":Z
    if-nez v5, :cond_1

    .line 97
    iget-object v9, p0, Lnet/oneplus/h2launcher/migrate/MigrateHydrogenWallpaperService;->mTag:Ljava/lang/String;

    const-string v10, "failed to delete file: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-static {v9, v10, v11}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .end local v5    # "result":Z
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "filename":Ljava/lang/String;
    :cond_2
    const-string v4, "com.oneplus.hydrogen.launcher_preferences"

    .line 103
    .local v4, "name":Ljava/lang/String;
    iget-object v6, p0, Lnet/oneplus/h2launcher/migrate/MigrateHydrogenWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->deletePref(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method protected createBlurWallpaperSettings(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    .prologue
    .line 78
    iget-object v1, p0, Lnet/oneplus/h2launcher/migrate/MigrateHydrogenWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getBlurWallpaperSettings(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v0

    .line 79
    .local v0, "settings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    .line 80
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->getMaskColor()I

    move-result v1

    iput v1, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    .line 81
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->getOrientation()I

    move-result v1

    iput v1, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    .line 82
    return-object v0
.end method

.method protected createWallpaperTile(Ljava/io/File;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;
    .locals 4
    .param p1, "output"    # Ljava/io/File;

    .prologue
    .line 71
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 72
    .local v0, "outputUri":Landroid/net/Uri;
    new-instance v1, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    iget v2, p0, Lnet/oneplus/h2launcher/migrate/MigrateHydrogenWallpaperService;->mMaskColor:I

    const/4 v3, 0x1

    invoke-direct {v1, v0, v0, v2, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    return-object v1
.end method

.method protected getWallpaperForMigration()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    .line 33
    const/4 v8, 0x0

    .line 34
    .local v8, "wallpaperUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/migrate/MigrateHydrogenWallpaperService;->getJobParameters()Landroid/app/job/JobParameters;

    move-result-object v3

    .line 35
    .local v3, "jobParameters":Landroid/app/job/JobParameters;
    if-eqz v3, :cond_0

    .line 36
    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 37
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 38
    const-string v9, "extra_wallpaper_uri"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .end local v8    # "wallpaperUri":Landroid/net/Uri;
    check-cast v8, Landroid/net/Uri;

    .line 42
    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "wallpaperUri":Landroid/net/Uri;
    :cond_0
    if-nez v8, :cond_1

    .line 43
    iget-object v9, p0, Lnet/oneplus/h2launcher/migrate/MigrateHydrogenWallpaperService;->mTag:Ljava/lang/String;

    const-string v10, "cannot find hydrogen wallpaper file in intent"

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 46
    :cond_1
    iget-object v9, p0, Lnet/oneplus/h2launcher/migrate/MigrateHydrogenWallpaperService;->mTag:Ljava/lang/String;

    const-string v10, "hydrogen wallpaper uri path: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    new-instance v2, Ljava/io/File;

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v2, "hydrogenWallpaper":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 50
    iget-object v9, p0, Lnet/oneplus/h2launcher/migrate/MigrateHydrogenWallpaperService;->mTag:Ljava/lang/String;

    const-string v10, "hydrogen wallpaper file doesn\'t exist"

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :cond_2
    iget-object v9, p0, Lnet/oneplus/h2launcher/migrate/MigrateHydrogenWallpaperService;->mTag:Ljava/lang/String;

    const-string v10, "hydrogen wallpaper: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 57
    .local v7, "uri":Landroid/net/Uri;
    const/4 v6, 0x1

    .line 58
    .local v6, "screen":I
    const/4 v4, 0x1

    .line 59
    .local v4, "orientation":I
    new-instance v5, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;

    const/4 v9, 0x0

    invoke-direct {v5, v7, v6, v9, v4}, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;-><init>(Landroid/net/Uri;IZI)V

    .line 60
    .local v5, "params":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    iget-object v9, p0, Lnet/oneplus/h2launcher/migrate/MigrateHydrogenWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v9, v5}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->createBackground(Landroid/content/Context;Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 62
    :cond_3
    iget-object v9, p0, Lnet/oneplus/h2launcher/migrate/MigrateHydrogenWallpaperService;->mTag:Ljava/lang/String;

    const-string v10, "failed to create wallpaper bitmap"

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_4
    invoke-static {v0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v9

    iput v9, p0, Lnet/oneplus/h2launcher/migrate/MigrateHydrogenWallpaperService;->mMaskColor:I

    goto :goto_0
.end method
