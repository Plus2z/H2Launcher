.class Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5$1;
.super Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;
.source "WallpaperPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5;

    .prologue
    .line 279
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5$1;->this$1:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 287
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to load system wallpaper and apply preview wallpaper, index=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 288
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 287
    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method onWallpaperLoaded(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 282
    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$ApplyPreviewWallpaper;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5$1;->this$1:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5;

    iget-object v1, v1, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-direct {v0, v1, p1, p2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$ApplyPreviewWallpaper;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$ApplyPreviewWallpaper;->run()V

    .line 283
    return-void
.end method
