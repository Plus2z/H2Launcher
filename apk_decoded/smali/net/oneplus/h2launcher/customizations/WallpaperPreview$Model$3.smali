.class Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$3;
.super Ljava/lang/Object;
.source "WallpaperPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->loadSystemWallpaper(Landroid/content/Context;ILnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

.field final synthetic val$b:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    .prologue
    .line 552
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$3;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$3;->val$b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$3;->val$callback:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;

    iput p4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 555
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$3;->val$b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$3;->val$callback:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;

    iget v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$3;->val$index:I

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$3;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;->onWallpaperLoaded(ILandroid/graphics/Bitmap;)V

    .line 560
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$3;->val$callback:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;

    iget v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$3;->val$index:I

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;->onFailure(I)V

    goto :goto_0
.end method
