.class public abstract Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;
.super Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;
.source "MigrateWallpaperService.java"


# static fields
.field protected static final MIGRATED_WALLPAPER_FILENAME:Ljava/lang/String; = "migrated_wallpaper"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->mTag:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private saveWallpaperToFile(Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 90
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "migrated_wallpaper"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .local v4, "output":Ljava/io/File;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x800

    invoke-direct {v5, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 92
    .local v5, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p1, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 93
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 94
    .local v2, "imageBytes":[B
    const/4 v3, 0x0

    .line 95
    .local v3, "mode":I
    :try_start_0
    iget-object v7, p0, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 96
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    if-eqz v1, :cond_0

    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 105
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "imageBytes":[B
    .end local v3    # "mode":I
    .end local v4    # "output":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v4

    .line 97
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "imageBytes":[B
    .restart local v3    # "mode":I
    .restart local v4    # "output":Ljava/io/File;
    :catch_0
    move-exception v8

    :try_start_3
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    iget-object v7, p0, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed writing images to storage "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 99
    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 95
    :catch_2
    move-exception v8

    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 97
    :catchall_0
    move-exception v7

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v8, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_2
    :try_start_7
    throw v7

    :catch_3
    move-exception v9

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 102
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "imageBytes":[B
    .end local v3    # "mode":I
    :cond_4
    iget-object v7, p0, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->mTag:Ljava/lang/String;

    const-string v8, "Cannot compress bitmap."

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 103
    goto :goto_0

    .line 97
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "imageBytes":[B
    .restart local v3    # "mode":I
    :catchall_1
    move-exception v7

    move-object v8, v6

    goto :goto_1
.end method


# virtual methods
.method protected abstract cleanUpMigratedPreferencesAndFiles()V
.end method

.method protected abstract createBlurWallpaperSettings(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
.end method

.method protected abstract createWallpaperTile(Ljava/io/File;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;
.end method

.method protected abstract getWallpaperForMigration()Landroid/graphics/Bitmap;
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Lnet/oneplus/h2launcher/wallpaper/SetWallpaperService;->onCreate()V

    .line 37
    iget-object v0, p0, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->mTag:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method protected onSetWallpaper()V
    .locals 14

    .prologue
    .line 45
    :try_start_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->getWallpaperForMigration()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 46
    .local v7, "wallpaper":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 47
    :cond_0
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "failed to get wallpaper for migration"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v7    # "wallpaper":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    iget-object v9, p0, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->mTag:Ljava/lang/String;

    const-string v10, "error while migrating wallpaper: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->cleanUpMigratedPreferencesAndFiles()V

    .line 87
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 51
    .restart local v7    # "wallpaper":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_2
    invoke-direct {p0, v7}, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->saveWallpaperToFile(Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object v3

    .line 52
    .local v3, "output":Ljava/io/File;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 53
    :cond_2
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "failed to create wallpaper file"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .end local v3    # "output":Ljava/io/File;
    .end local v7    # "wallpaper":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->cleanUpMigratedPreferencesAndFiles()V

    throw v9

    .line 57
    .restart local v3    # "output":Ljava/io/File;
    .restart local v7    # "wallpaper":Landroid/graphics/Bitmap;
    :cond_3
    :try_start_3
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->createWallpaperTile(Ljava/io/File;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    move-result-object v1

    .line 58
    .local v1, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;
    if-nez v1, :cond_4

    .line 59
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "failed to create uri wallpaper tile info"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 63
    :cond_4
    iget-object v9, p0, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    move-result-object v2

    .line 64
    .local v2, "model":Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;
    iget-object v9, p0, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->invalidateWallpaper(Landroid/content/Context;I)V

    .line 67
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->createBlurWallpaperSettings(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v6

    .line 68
    .local v6, "settings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    iget-object v9, p0, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setBlurWallpaperSettings(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;)V

    .line 71
    const/4 v5, 0x1

    .line 72
    .local v5, "screen":I
    iget-object v9, p0, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9, v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->loadImage(Landroid/content/Context;I)V

    .line 73
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->getOrientation()I

    move-result v9

    invoke-virtual {v1, v9}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->onBeforeSave(I)V

    .line 74
    iget-object v9, p0, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9, v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->onSave(Landroid/content/Context;I)V

    .line 76
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->getMaskColor()I

    move-result v4

    .line 77
    .local v4, "rgb":I
    new-instance v8, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    const/4 v9, 0x0

    iget-boolean v10, v6, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    invoke-direct {v8, v9, v4, v10}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;-><init>(IIZ)V

    .line 78
    .local v8, "wallpaperColor":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
    iget-object v9, p0, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v9, v8}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperColor(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;)V

    .line 81
    iget-object v9, p0, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperSetupCompleted(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/migrate/MigrateWallpaperService;->cleanUpMigratedPreferencesAndFiles()V

    goto :goto_0
.end method
