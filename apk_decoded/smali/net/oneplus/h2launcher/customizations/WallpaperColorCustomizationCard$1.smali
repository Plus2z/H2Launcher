.class Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$1;
.super Ljava/lang/Object;
.source "WallpaperColorCustomizationCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 39
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    move-object v0, p1

    check-cast v0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;

    .line 43
    .local v0, "circleView":Lnet/oneplus/h2launcher/customizations/ColorCircleView;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->getSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    .line 44
    .local v2, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    if-eqz v2, :cond_1

    .line 45
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$000(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v3

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setMaskColor(I)V

    .line 46
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$100(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 47
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$000(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getCurrentPage()I

    move-result v1

    .line 48
    .local v1, "screen":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$100(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$200(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->onClick(Lnet/oneplus/h2launcher/customizations/WallpaperCard;IZ)V

    .line 50
    .end local v1    # "screen":I
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v3, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$300(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;Lnet/oneplus/h2launcher/customizations/ColorCircleView;)V

    .line 52
    :cond_1
    return-void
.end method
