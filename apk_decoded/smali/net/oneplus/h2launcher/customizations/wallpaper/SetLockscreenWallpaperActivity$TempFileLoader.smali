.class Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$TempFileLoader;
.super Landroid/os/AsyncTask;
.source "SetLockscreenWallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TempFileLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mTempFile:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;)V
    .locals 6

    .prologue
    .line 315
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$TempFileLoader;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 317
    :try_start_0
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->access$100(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "rw"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$TempFileLoader;->mTempFile:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cannot find cropped wallpaper file: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->access$100(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 326
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$TempFileLoader;->mTempFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 312
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$TempFileLoader;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "newWallpaper"    # Landroid/graphics/Bitmap;

    .prologue
    .line 331
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$TempFileLoader;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$1;)V

    .line 332
    .local v0, "loader":Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;
    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 333
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 334
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 312
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$TempFileLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
