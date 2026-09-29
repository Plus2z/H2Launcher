.class Lnet/oneplus/h2launcher/customizations/WallpaperPreview$ApplyPreviewWallpaper;
.super Ljava/lang/Object;
.source "WallpaperPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplyPreviewWallpaper"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mIndex:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p2, "index"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 706
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$ApplyPreviewWallpaper;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    iput p2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$ApplyPreviewWallpaper;->mIndex:I

    .line 708
    iput-object p3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$ApplyPreviewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    .line 709
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 713
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$ApplyPreviewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 714
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$ApplyPreviewWallpaper;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$ApplyPreviewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 715
    .local v0, "wallpaper":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$ApplyPreviewWallpaper;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    iget v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$ApplyPreviewWallpaper;->mIndex:I

    invoke-virtual {v1, v2, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setPreviewItemBackground(ILandroid/graphics/drawable/Drawable;)V

    .line 716
    iget v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$ApplyPreviewWallpaper;->mIndex:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 717
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$ApplyPreviewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->updateWallpaperBackground(Landroid/graphics/Bitmap;Z)V

    .line 720
    .end local v0    # "wallpaper":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method
