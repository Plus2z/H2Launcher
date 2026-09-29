.class Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;
.super Lnet/oneplus/h2launcher/customizations/WallpaperCard$SaveWallpaperCustomizationTask;
.source "WallpaperCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getSaveCustomizationTask()Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

.field final synthetic val$homeScreenTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

.field final synthetic val$isHomeScreenWallpaperChanged:Z

.field final synthetic val$isLockScreenWallpaperChanged:Z

.field final synthetic val$lockScreenTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

.field final synthetic val$settings:Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Ljava/lang/String;ILnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;ZLnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "screen"    # I

    .prologue
    .line 363
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    iput-object p4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->val$settings:Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    iput-boolean p5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->val$isLockScreenWallpaperChanged:Z

    iput-object p6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->val$lockScreenTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    iput-object p7, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->val$homeScreenTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    iput-boolean p8, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->val$isHomeScreenWallpaperChanged:Z

    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$SaveWallpaperCustomizationTask;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 367
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->val$settings:Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->val$settings:Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setBlurWallpaperSettings(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;)V

    .line 369
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->val$settings:Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->notify:Z

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$900(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V

    .line 374
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 375
    .local v0, "context":Landroid/content/Context;
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->val$isLockScreenWallpaperChanged:Z

    if-eqz v1, :cond_1

    .line 376
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->val$lockScreenTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v2}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$300(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->onBeforeSave(I)V

    .line 377
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->val$lockScreenTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->onSave(Landroid/content/Context;I)V

    .line 379
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->val$homeScreenTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    if-eqz v1, :cond_3

    .line 380
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->val$homeScreenTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v2}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$300(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->onBeforeSave(I)V

    .line 381
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->val$homeScreenTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    invoke-virtual {v1, v0, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->onSave(Landroid/content/Context;I)V

    :cond_3
    :cond_4
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$1100(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V

    .line 393
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 394
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->val$settings:Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;->val$homeScreenTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    invoke-static {v1, v2, v3}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$1200(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    .line 396
    :cond_5
    return-void
.end method
