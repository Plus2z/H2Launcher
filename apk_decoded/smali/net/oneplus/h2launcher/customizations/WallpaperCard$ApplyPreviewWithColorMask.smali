.class Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;
.super Ljava/lang/Object;
.source "WallpaperCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplyPreviewWithColorMask"
.end annotation


# instance fields
.field private final mScreen:I

.field private final mWallpaperTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;I)V
    .locals 0
    .param p2, "wallpaperTileInfo"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .param p3, "screen"    # I

    .prologue
    .line 750
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;->mWallpaperTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .line 752
    iput p3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;->mScreen:I

    .line 753
    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;ILnet/oneplus/h2launcher/customizations/WallpaperCard$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard$1;

    .prologue
    .line 746
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;I)V

    return-void
.end method

.method static synthetic access$1600(Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;

    .prologue
    .line 746
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;->mWallpaperTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    return-object v0
.end method

.method static synthetic access$1700(Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;

    .prologue
    .line 746
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;->mScreen:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 757
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[ApplyPreviewWithColorMask1] info=%s, screen=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;->mWallpaperTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    aput-object v6, v5, v1

    const/4 v6, 0x1

    iget v7, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;->mScreen:I

    .line 758
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 757
    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 759
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;->mWallpaperTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .line 760
    .local v0, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->loadSwatches(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 761
    .local v2, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 763
    .local v1, "maskColor":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$000(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setMaskColor(I)V

    .line 764
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->get()Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    move-result-object v3

    new-instance v4, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask$1;

    invoke-direct {v4, p0, v0, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask$1;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 775
    return-void

    .line 762
    .end local v1    # "maskColor":I
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v3}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    goto :goto_0
.end method
