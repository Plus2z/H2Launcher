.class Lnet/oneplus/h2launcher/customizations/WallpaperCard$2;
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
    .line 107
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v6, 0x7f1100d6

    if-ne v4, v6, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v5, v4}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$302(Lnet/oneplus/h2launcher/customizations/WallpaperCard;I)I

    .line 113
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$400(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V

    .line 114
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$600(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    move-result-object v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v5}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$500(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->applyFilter(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;)V

    .line 116
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$700(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v5}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$000(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getCurrentPage()I

    move-result v5

    aget-object v0, v4, v5

    .line 117
    .local v0, "current":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    if-nez v0, :cond_2

    .line 118
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "last selected tile is null"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    :goto_1
    return-void

    .line 110
    .end local v0    # "current":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 124
    .restart local v0    # "current":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    :cond_2
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$300(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)I

    move-result v3

    .line 126
    .local v3, "orientation":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$600(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->findWallpaperTileInfo(Ljava/lang/String;I)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v1

    .line 127
    .local v1, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    if-nez v1, :cond_got_info

    move-object v1, v0

    iput v3, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mOrientation:I

    :cond_got_info
    .line 128
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    const/4 v5, 0x0

    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v6}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$000(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getCurrentPage()I

    move-result v6

    invoke-static {v4, v5, v1, v6}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$100(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Landroid/view/View;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;I)V

    goto :goto_1
.end method
