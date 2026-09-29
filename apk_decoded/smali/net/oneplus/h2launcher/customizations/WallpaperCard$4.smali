.class Lnet/oneplus/h2launcher/customizations/WallpaperCard$4;
.super Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;
.source "WallpaperCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 162
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;-><init>()V

    .line 163
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .line 164
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$4;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-void
.end method

.method private updateWallpaperBackground(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x1

    .line 180
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$700(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v4

    aget-object v3, v4, p1

    .line 181
    .local v3, "tileInfo":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    const/4 v2, 0x0

    .line 184
    .local v2, "preview":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 185
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v3, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getPreviewCacheKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 189
    :cond_0
    if-nez v2, :cond_1

    .line 190
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    move-result-object v1

    .line 191
    .local v1, "model":Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$4;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 192
    .local v0, "info":Landroid/app/WallpaperInfo;
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, p1, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->loadWallpaperFromCache(Landroid/content/Context;ILandroid/app/WallpaperInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 195
    .end local v0    # "info":Landroid/app/WallpaperInfo;
    .end local v1    # "model":Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;
    :cond_1
    if-eqz v2, :cond_2

    .line 196
    invoke-static {v2, v6}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->updateWallpaperBackground(Landroid/graphics/Bitmap;Z)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cannot get wallpaper preview: position=%d"

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 168
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$4;->mCurrentPosition:I

    if-eq v0, p1, :cond_1

    .line 169
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->isWallpaperScrollable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$400(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$600(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$500(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->applyFilter(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;)V

    .line 173
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$600(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->scrollToPosition(I)V

    .line 174
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$4;->updateWallpaperBackground(I)V

    .line 176
    :cond_1
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;->onPageSelected(I)V

    .line 177
    return-void
.end method
