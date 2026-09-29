.class Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$2;
.super Ljava/lang/Object;
.source "BlurWallpaper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->saveBitmapAsFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    .prologue
    .line 850
    iput-object p1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$2;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 853
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$2;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$1600(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->access$1500(Landroid/content/Context;)V

    .line 854
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$2;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$2;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$1600(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "blur_wallpaper"

    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$2;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v2, v2, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->saveBitmapAsFile(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 857
    :cond_0
    return-void
.end method
