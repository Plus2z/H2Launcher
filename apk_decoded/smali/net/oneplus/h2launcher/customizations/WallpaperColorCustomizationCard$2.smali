.class Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$2;
.super Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;
.source "WallpaperColorCustomizationCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    .prologue
    .line 55
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 58
    iget v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$2;->mCurrentPosition:I

    if-eq v3, p1, :cond_0

    .line 59
    new-array v0, v1, [Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    sget-object v3, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;->CARD:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    aput-object v3, v0, v2

    .line 60
    .local v0, "components":[Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$100(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    if-ne p1, v1, :cond_1

    :goto_0
    invoke-static {v3, v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$400(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;[Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;Z)V

    .line 63
    .end local v0    # "components":[Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;
    :cond_0
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;->onPageSelected(I)V

    .line 64
    return-void

    .restart local v0    # "components":[Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;
    :cond_1
    move v1, v2

    .line 60
    goto :goto_0
.end method
