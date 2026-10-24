.class Lnet/oneplus/h2launcher/util/WallpaperComposer$1;
.super Ljava/lang/Object;
.source "WallpaperComposer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/util/WallpaperComposer;->ensureBlurWallpaper(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lnet/oneplus/h2launcher/util/WallpaperComposer$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 276
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lnet/oneplus/h2launcher/util/WallpaperComposer$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "wallpaper"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 277
    nop

    .line 278
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 279
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    .line 281
    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 283
    :try_start_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/util/WallpaperComposer$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 284
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 285
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :cond_1
    goto :goto_1

    .line 287
    :catchall_0
    move-exception v2

    .line 291
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    if-eqz v1, :cond_failmark

    const-wide/16 v4, -0x1

    sput-wide v4, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sLastEnsureFailAt:J

    goto :goto_failmark_done

    :cond_failmark
    sput-wide v2, Lnet/oneplus/h2launcher/util/WallpaperComposer;->sLastEnsureFailAt:J

    :goto_failmark_done
    if-eqz v1, :cond_4

    .line 292
    nop

    .line 294
    :try_start_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/util/WallpaperComposer$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getBlurWallpaperSettings(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v2

    .line 295
    if-eqz v2, :cond_3

    .line 296
    iget v2, v2, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 295
    :cond_3
    const/4 v2, 0x0

    .line 299
    :goto_2
    goto :goto_3

    .line 298
    :catchall_1
    move-exception v2

    const/4 v2, 0x0

    .line 300
    :goto_3
    :try_start_3
    iget-object v3, p0, Lnet/oneplus/h2launcher/util/WallpaperComposer$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lnet/oneplus/h2launcher/util/WallpaperComposer;->generateBlurWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    .line 302
    :catchall_2
    move-exception v1

    .line 303
    :try_start_4
    const-string v2, "WallpaperComposer"

    const-string v3, "ensureBlurWallpaper failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 305
    :cond_4
    :goto_4
    invoke-static {v0}, Lnet/oneplus/h2launcher/util/WallpaperComposer;->-$$Nest$sfputsIsGenerating(Z)V

    .line 306
    nop

    .line 307
    return-void

    .line 305
    :catchall_3
    move-exception v1

    invoke-static {v0}, Lnet/oneplus/h2launcher/util/WallpaperComposer;->-$$Nest$sfputsIsGenerating(Z)V

    .line 306
    throw v1
.end method
