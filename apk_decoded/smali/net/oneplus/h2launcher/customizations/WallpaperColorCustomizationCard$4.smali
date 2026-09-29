.class Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$4;
.super Ljava/lang/Object;
.source "WallpaperColorCustomizationCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->reloadCustomizationSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mIsBlurEnabled:Z

.field mIsBlurWallpaper:Z

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    .prologue
    .line 129
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->isOnePlusBlurWallpaper(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$4;->mIsBlurWallpaper:Z

    .line 131
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$700(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$4;->mIsBlurEnabled:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$800(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$800(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Landroid/widget/Switch;

    move-result-object v0

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$4;->mIsBlurEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 137
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$4;->mIsBlurWallpaper:Z

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$900(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;Z)V

    .line 139
    :cond_0
    return-void
.end method
