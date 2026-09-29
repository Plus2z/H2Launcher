.class Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask$1;
.super Ljava/lang/Object;
.source "WallpaperCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;

.field final synthetic val$info:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

.field final synthetic val$swatches:Ljava/util/List;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;

    .prologue
    .line 764
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask$1;->this$1:Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask$1;->val$info:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    iput-object p3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask$1;->val$swatches:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 767
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ApplyPreviewWithColorMask2] info=%s, screen=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask$1;->this$1:Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;

    .line 768
    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;->access$1600(Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask$1;->this$1:Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;->access$1700(Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 767
    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask$1;->this$1:Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$1800(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/WallpaperCard$WallpaperColorsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask$1;->this$1:Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$1800(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/WallpaperCard$WallpaperColorsListener;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask$1;->val$info:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask$1;->val$swatches:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$WallpaperColorsListener;->onWallpaperColorsChanged(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;Ljava/util/List;)V

    .line 772
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask$1;->val$info:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask$1;->this$1:Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;

    iget-object v1, v1, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask$1;->this$1:Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;

    invoke-static {v2}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;->access$1700(Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->onClick(Lnet/oneplus/h2launcher/customizations/WallpaperCard;IZ)V

    .line 773
    return-void
.end method
