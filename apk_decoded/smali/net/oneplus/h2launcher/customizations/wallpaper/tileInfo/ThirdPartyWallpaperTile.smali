.class public Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ThirdPartyWallpaperTile;
.super Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ExternalWallpaperTileInfo;
.source "ThirdPartyWallpaperTile.java"


# instance fields
.field mResolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 15
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ExternalWallpaperTileInfo;-><init>()V

    .line 16
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ThirdPartyWallpaperTile;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 17
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ThirdPartyWallpaperTile;->mLabel:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ThirdPartyWallpaperTile;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ThirdPartyWallpaperTile;->mIsThirdParty:Z

    .line 20
    return-void
.end method


# virtual methods
.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ThirdPartyWallpaperTile;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public onClick(Lnet/oneplus/h2launcher/customizations/WallpaperCard;IZ)V
    .locals 4
    .param p1, "card"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p2, "screen"    # I
    .param p3, "changed"    # Z

    .prologue
    .line 24
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ThirdPartyWallpaperTile;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ThirdPartyWallpaperTile;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .local v0, "itemComponentName":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 28
    const/16 v2, 0x1a

    invoke-virtual {p1, v1, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->startActivityForResult(Landroid/content/Intent;I)V

    .line 30
    return-void
.end method
