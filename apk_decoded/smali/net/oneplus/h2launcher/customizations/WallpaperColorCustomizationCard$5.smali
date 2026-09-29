.class Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$5;
.super Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
.source "WallpaperColorCustomizationCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getSaveCustomizationTask()Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

.field final synthetic val$color:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;Ljava/lang/String;Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$5;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    iput-object p3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$5;->val$color:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;-><init>(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$5;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$5;->val$color:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperColor(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;)V

    .line 159
    return-void
.end method
