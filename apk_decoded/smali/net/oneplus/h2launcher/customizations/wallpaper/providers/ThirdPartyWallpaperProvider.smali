.class public Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ThirdPartyWallpaperProvider;
.super Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;
.source "ThirdPartyWallpaperProvider.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;-><init>()V

    .line 34
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ThirdPartyWallpaperProvider;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public loadTiles()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 39
    iget-object v11, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ThirdPartyWallpaperProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 40
    .local v10, "pm":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v9, "pickWallpaperIntent":Landroid/content/Intent;
    invoke-virtual {v10, v9, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 45
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.GET_CONTENT"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v8, "pickImageIntent":Landroid/content/Intent;
    const-string v11, "image/*"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {v10, v8, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 50
    .local v2, "imagePickerActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 51
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v12, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .local v5, "itemComponentName":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "itemPackageName":Ljava/lang/String;
    iget-object v12, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ThirdPartyWallpaperProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "net.oneplus.launcher"

    .line 57
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "com.android.launcher"

    .line 58
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "com.android.wallpaperpicker"

    .line 59
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "com.android.wallpaper.livepicker"

    .line 60
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 64
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 65
    .local v3, "imagePickerActivityInfo":Landroid/content/pm/ResolveInfo;
    iget-object v13, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_0

    .line 71
    .end local v3    # "imagePickerActivityInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-virtual {v4, v10}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 72
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "label":Ljava/lang/String;
    new-instance v12, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ThirdPartyWallpaperTile;

    invoke-direct {v12, v1, v7, v4}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ThirdPartyWallpaperTile;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {p0, v12}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ThirdPartyWallpaperProvider;->addTile(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    goto :goto_0

    .line 75
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v5    # "itemComponentName":Landroid/content/ComponentName;
    .end local v6    # "itemPackageName":Ljava/lang/String;
    .end local v7    # "label":Ljava/lang/String;
    :cond_3
    return-void
.end method
