.class Lnet/oneplus/h2launcher/customizations/WallpaperCard$1;
.super Ljava/lang/Object;
.source "WallpaperCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 95
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "tile"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .line 98
    .local v0, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v2}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$000(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getCurrentPage()I

    move-result v2

    invoke-static {v1, p1, v0, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$100(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Landroid/view/View;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;I)V

    .line 103
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$200(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    .line 104
    return-void
.end method
