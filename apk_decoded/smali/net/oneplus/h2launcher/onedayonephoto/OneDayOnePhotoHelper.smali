.class public Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoHelper;
.super Ljava/lang/Object;
.source "OneDayOnePhotoHelper.java"


# static fields
.field private static final ACTION_PICK_WALLPAPER:Ljava/lang/String; = "oneplus.intent.action.PICK_WALLPAPER"

.field private static final ONE_DAY_ONE_PHOTO_THUMB_CONTENT_URI:Landroid/net/Uri;

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoHelper;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, "content://cn.oneplus.photos.contentprovider/today"

    .line 27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoHelper;->ONE_DAY_ONE_PHOTO_THUMB_CONTENT_URI:Landroid/net/Uri;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadLatestThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 49
    .local v3, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoHelper;->ONE_DAY_ONE_PHOTO_THUMB_CONTENT_URI:Landroid/net/Uri;

    .line 50
    .local v4, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 51
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 52
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 53
    if-eqz v2, :cond_0

    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 57
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 53
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    :try_start_3
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoHelper;->TAG:Ljava/lang/String;

    const-string v6, "Failed to get latest wallpaper thumbnail from one day one photo, error: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 55
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 54
    invoke-static {v5, v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 51
    :catch_2
    move-exception v6

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 53
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_2

    if-eqz v6, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_1
    :try_start_7
    throw v5

    :catch_3
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method public static oneDayOnePhotoAppExists(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 37
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "oneplus.intent.action.PICK_WALLPAPER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static startOneDayOnePhotoPicker(Landroid/content/Context;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screen"    # I

    .prologue
    .line 67
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstanceNoCreate()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 69
    .local v0, "appState":Lnet/oneplus/h2launcher/LauncherAppState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v3

    .local v3, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-nez v3, :cond_1

    .line 70
    .end local v3    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    :cond_0
    sget-object v5, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoHelper;->TAG:Ljava/lang/String;

    const-string v6, "unable to get launcher instance"

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 74
    .restart local v3    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    :cond_1
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersView()Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    move-result-object v5

    if-nez v5, :cond_2

    .line 75
    invoke-static {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    move-result-object v5

    invoke-virtual {v5, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->preloadWallpapers(Landroid/content/Context;)V

    .line 76
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->inflateViewStubs()V

    .line 79
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "oneplus.intent.action.PICK_WALLPAPER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const/4 v5, 0x1

    if-ne p1, v5, :cond_3

    const/16 v4, 0xa

    .line 84
    .local v4, "requestCode":I
    :goto_1
    :try_start_0
    invoke-virtual {v3, v2, v4}, Lnet/oneplus/h2launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v5, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoHelper;->TAG:Ljava/lang/String;

    const-string v6, "Activity not found !"

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "requestCode":I
    :cond_3
    const/16 v4, 0x19

    goto :goto_1

    .line 87
    .restart local v4    # "requestCode":I
    :catch_1
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v5, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Launcher does not have the permission to launch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "or use the exported attribute for this activity."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
