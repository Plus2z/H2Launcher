.class public Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider;
.super Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;
.source "LiveWallpaperProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/WallpaperTileInfoProvider;-><init>()V

    .line 45
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public loadTiles()V
    .locals 17

    .prologue
    .line 50
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 51
    .local v9, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v13, "android.service.wallpaper.WallpaperService"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v4, "intent":Landroid/content/Intent;
    const/16 v2, 0x80

    .line 53
    .local v2, "flags":I
    const/16 v13, 0x80

    invoke-virtual {v9, v4, v13}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 54
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 55
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 56
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 57
    .local v10, "packageName":Ljava/lang/String;
    sget-object v13, Lnet/oneplus/h2launcher/util/WallpaperUtils;->LEGACY_ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    sget-object v13, Lnet/oneplus/h2launcher/util/WallpaperUtils;->ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    .line 58
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    sget-object v13, Lnet/oneplus/h2launcher/util/WallpaperUtils;->ONEPLUS_BLUR_WALLPAPER2:Landroid/content/ComponentName;

    .line 59
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    sget-object v13, Lnet/oneplus/h2launcher/util/WallpaperUtils;->ONEPLUS_LIVE_WALLPAPER:Landroid/content/ComponentName;

    .line 60
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 61
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 65
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_2
    new-instance v13, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v9}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider$1;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider;Landroid/content/pm/PackageManager;)V

    invoke-static {v8, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 74
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 77
    .local v11, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_0
    new-instance v3, Landroid/app/WallpaperInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider;->mContext:Landroid/content/Context;

    invoke-direct {v3, v14, v11}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    .local v3, "info":Landroid/app/WallpaperInfo;
    invoke-virtual {v3, v9}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 87
    .local v12, "thumb":Landroid/graphics/drawable/Drawable;
    if-nez v12, :cond_3

    .line 88
    invoke-virtual {v3, v9}, Landroid/app/WallpaperInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 90
    :cond_3
    invoke-virtual {v3, v9}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "label":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.service.wallpaper.WallpaperService"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v7, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    new-instance v14, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/LiveWallpaperTileInfo;

    invoke-direct {v14, v12, v6, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/LiveWallpaperTileInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/app/WallpaperInfo;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider;->addTile(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    goto :goto_1

    .line 78
    .end local v3    # "info":Landroid/app/WallpaperInfo;
    .end local v6    # "label":Ljava/lang/String;
    .end local v7    # "launchIntent":Landroid/content/Intent;
    .end local v12    # "thumb":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v14, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Skipping wallpaper "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 81
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    sget-object v14, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Skipping wallpaper "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 95
    .end local v1    # "e":Ljava/io/IOException;
    .end local v11    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    return-void
.end method
