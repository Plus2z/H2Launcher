.class Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;
.super Landroid/os/AsyncTask;
.source "SetLockscreenWallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$1;

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v8, 0x0

    .line 348
    :try_start_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    .line 349
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 348
    invoke-static {v5}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 352
    .local v3, "manager":Landroid/app/WallpaperManager;
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 353
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 354
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 355
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 356
    .local v4, "output":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 363
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "output":[B
    .local v2, "in":Ljava/io/InputStream;
    :goto_0
    :try_start_1
    invoke-static {v3, v2}, Lcom/oneplus/sdk/wrapper/android/app/OpWallpaperManager;->setKeyguardStream(Landroid/app/WallpaperManager;Ljava/io/InputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    if-eqz v2, :cond_0

    .line 366
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 376
    :cond_0
    const/4 v5, 0x1

    :try_start_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    .line 382
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "manager":Landroid/app/WallpaperManager;
    :goto_1
    return-object v5

    .line 359
    .restart local v3    # "manager":Landroid/app/WallpaperManager;
    :cond_1
    :try_start_4
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    invoke-static {v6}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->access$100(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 365
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_2

    .line 366
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    .line 369
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "manager":Landroid/app/WallpaperManager;
    :catch_0
    move-exception v1

    .line 370
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    .line 377
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 378
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 379
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1

    .line 380
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 382
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 337
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 388
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->access$300(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;)V

    .line 389
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 393
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->finish()V

    .line 394
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 337
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 341
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 342
    return-void
.end method
