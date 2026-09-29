.class Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$1;
.super Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;
.source "WallpaperPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    .prologue
    .line 336
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->access$700(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;)[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 352
    return-void
.end method

.method public onWallpaperLoaded(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 339
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 340
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->updateWallpaperBackground(Landroid/graphics/Bitmap;Z)V

    .line 343
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->areWallpapersLoaded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->access$600(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->access$600(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 345
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->access$602(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 347
    :cond_1
    return-void
.end method
