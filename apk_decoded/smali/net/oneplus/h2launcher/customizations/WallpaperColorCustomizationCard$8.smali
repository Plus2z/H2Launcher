.class Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$8;
.super Ljava/lang/Object;
.source "WallpaperColorCustomizationCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->loadWallpaperColors(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

.field final synthetic val$info:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

.field final synthetic val$onLoaded:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    .prologue
    .line 279
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$8;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$8;->val$info:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    iput-object p3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$8;->val$onLoaded:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$8;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$8;->val$info:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$8;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->loadSwatches(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$1402(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;Ljava/util/List;)Ljava/util/List;

    .line 283
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$8;->val$onLoaded:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 284
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->get()Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$8;->val$onLoaded:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 286
    :cond_0
    return-void
.end method
