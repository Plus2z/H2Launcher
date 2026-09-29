.class public Lnet/oneplus/h2launcher/AssetCache;
.super Ljava/lang/Object;
.source "AssetCache.java"


# static fields
.field public static final ASSET_PACK_NAME_CUSTOM:Ljava/lang/String; = "custom"

.field public static final ASSET_PACK_NAME_DYNAMIC:Ljava/lang/String; = "dynamic"

.field public static final ASSET_PACK_NAME_NONE:Ljava/lang/String; = "none"

.field public static final ASSET_PACK_NAME_SYSTEM_DEFAULT:Ljava/lang/String; = "SYSTEM_DEFAULT_ICONS"

.field public static final ASSET_PACK_TAG:Ljava/lang/String; = "AssetPack"

.field public static final CACHE_TYPE_ASSETPACK:I = 0x2

.field public static final CACHE_TYPE_CUSTOM:I = 0x8

.field public static final CACHE_TYPE_DB:I = 0x4

.field public static final CACHE_TYPE_DYNAMIC_ICON:I = 0x10

.field public static final CACHE_TYPE_ORIGINAL:I = 0x1

.field public static final EMPTY_CLASS_NAME:Ljava/lang/String; = "."

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAssetPackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/oneplus/h2launcher/IconPackHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentAssetPack:Lnet/oneplus/h2launcher/IconPackHelper;

.field private mCurrentAssetPackName:Ljava/lang/String;

.field private final mDynamicIconConfigCache:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

.field private final mDynamicIconDrawableCache:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

.field private final mIconCache:Lnet/oneplus/h2launcher/IconCache;

.field private mIconPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/AssetCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inv"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mAssetPackMap:Ljava/util/HashMap;

    .line 54
    iput-object p1, p0, Lnet/oneplus/h2launcher/AssetCache;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lnet/oneplus/h2launcher/IconCache;

    invoke-direct {v0, p1, p2, p0}, Lnet/oneplus/h2launcher/IconCache;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/InvariantDeviceProfile;Lnet/oneplus/h2launcher/AssetCache;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    .line 56
    new-instance v0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-direct {v0, p1, p0}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/AssetCache;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mDynamicIconConfigCache:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    .line 57
    new-instance v0, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    invoke-direct {v0, p1, p2, p0}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/InvariantDeviceProfile;Lnet/oneplus/h2launcher/AssetCache;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mDynamicIconDrawableCache:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    .line 58
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mContext:Landroid/content/Context;

    const-string v1, "icon_pack_shared_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconPreferences:Landroid/content/SharedPreferences;

    .line 59
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/AssetCache;->loadCurrentAssetPack()V

    .line 60
    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 392
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 393
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 402
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v1, "canvas":Landroid/graphics/Canvas;
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 396
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 397
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 396
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 398
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 399
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 400
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method static getPackageComponent(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 388
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "."

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addPreloadAssetPackTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "assetPackName"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/IconCache;->addPreloadAssetPackTask(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mDynamicIconConfigCache:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->addPreloadAssetPackTask(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public declared-synchronized cachePackageInstallInfo(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "icon"    # Landroid/graphics/Bitmap;
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/IconCache;->cachePackageInstallInfo(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized changeAssetPack()V
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/AssetCache;->loadCurrentAssetPack()V

    .line 142
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/IconCache;->changeAssetPack()V

    .line 143
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mDynamicIconConfigCache:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->changeAssetPack()V

    .line 144
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mDynamicIconDrawableCache:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->changeAssetPack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized changeCustomIcon(Lnet/oneplus/h2launcher/compat/UserHandleCompat;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p2, p1}, Lnet/oneplus/h2launcher/IconCache;->removeCustomIconCache(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkAndPreloadAllItem()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/IconCache;->checkAndPreloadAllTask()V

    .line 415
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mDynamicIconConfigCache:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->checkAndPreloadAllTask()V

    .line 416
    return-void
.end method

.method public checkResourceExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "assetPackName"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 436
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v5, "SYSTEM_DEFAULT_ICONS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v4

    .line 439
    :cond_1
    const/4 v2, 0x0

    .line 440
    .local v2, "id":I
    const-string v5, "none"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 441
    iget-object v5, p0, Lnet/oneplus/h2launcher/AssetCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 442
    .local v3, "resources":Landroid/content/res/Resources;
    const-string v5, "drawable"

    iget-object v6, p0, Lnet/oneplus/h2launcher/AssetCache;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p2, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 447
    .end local v3    # "resources":Landroid/content/res/Resources;
    :goto_1
    if-lez v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 444
    :cond_2
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/AssetCache;->loadAssetPack(Ljava/lang/String;)Lnet/oneplus/h2launcher/IconPackHelper;

    move-result-object v1

    .line 445
    .local v1, "helper":Lnet/oneplus/h2launcher/IconPackHelper;
    invoke-virtual {v1, p2}, Lnet/oneplus/h2launcher/IconPackHelper;->getResourceIdForDrawable(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 448
    .end local v1    # "helper":Lnet/oneplus/h2launcher/IconPackHelper;
    .end local v2    # "id":I
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "AssetPack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check resource assetPackName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exception, message = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public containsDynamicIconCache(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 427
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/IconCache;->containsDynamicIconCache(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized flush(I)V
    .locals 1
    .param p1, "cacheType"    # I

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/IconCache;->flush(I)V

    .line 136
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mDynamicIconConfigCache:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->flush(I)V

    .line 137
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mDynamicIconDrawableCache:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->flush(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized flushAssetPackIcon(Ljava/lang/String;)V
    .locals 1
    .param p1, "assetPackName"    # Ljava/lang/String;

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/IconCache;->flushAssetPackIcon(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mDynamicIconDrawableCache:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->flushAssetPackIcon(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mDynamicIconConfigCache:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->flushAssetPackIcon(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentAssetPackName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    iget-object v1, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconPreferences:Landroid/content/SharedPreferences;

    const-string v2, "current_icon_pack"

    const-string v3, "SYSTEM_DEFAULT_ICONS"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "packageName":Ljava/lang/String;
    return-object v0
.end method

.method public declared-synchronized getDefaultIcon(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/IconCache;->getDefaultIcon(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDynamicIconConfig(Landroid/content/ComponentName;I)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "type"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mDynamicIconConfigCache:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->getDynamicIconConfig(Landroid/content/ComponentName;I)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicIconConfig(Lnet/oneplus/h2launcher/ShortcutInfo;I)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "type"    # I

    .prologue
    .line 380
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mDynamicIconConfigCache:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->getDynamicIconConfig(Lnet/oneplus/h2launcher/ShortcutInfo;I)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicIconDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "assetPack"    # Ljava/lang/String;

    .prologue
    .line 384
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mDynamicIconDrawableCache:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->getDynamicIconDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/AssetCache;->getIcon(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getIcon(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "ignoreCustomIcon"    # Z

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/IconCache;->getIcon(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIcon(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/AssetCache;->getIcon(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getIcon(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "ignoreCustomIcons"    # Z

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/IconCache;->getIcon(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitle(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/IconCache;->getTitle(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIcon(Lnet/oneplus/h2launcher/AppInfo;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Z)V
    .locals 1
    .param p1, "application"    # Lnet/oneplus/h2launcher/AppInfo;
    .param p2, "info"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p3, "useLowResIcon"    # Z

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/IconCache;->getTitleAndIcon(Lnet/oneplus/h2launcher/AppInfo;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZZ)V
    .locals 7
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "info"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p4, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p5, "usePkgIcon"    # Z
    .param p6, "useLowResIcon"    # Z

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lnet/oneplus/h2launcher/IconCache;->getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZZZ)V
    .locals 8
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "info"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p4, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p5, "usePkgIcon"    # Z
    .param p6, "useLowResIcon"    # Z
    .param p7, "ignoreCache"    # Z

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lnet/oneplus/h2launcher/IconCache;->getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    .locals 1
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p4, "useLowResIcon"    # Z

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/IconCache;->getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    monitor-exit p0

    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZZ)V
    .locals 6
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p4, "useLowResIcon"    # Z
    .param p5, "ignoreCache"    # Z

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/IconCache;->getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIconForApp(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZLnet/oneplus/h2launcher/model/PackageItemInfo;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "useLowResIcon"    # Z
    .param p4, "infoOut"    # Lnet/oneplus/h2launcher/model/PackageItemInfo;

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/IconCache;->getTitleAndIconForApp(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZLnet/oneplus/h2launcher/model/PackageItemInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAssetPackPackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 63
    iget-object v4, p0, Lnet/oneplus/h2launcher/AssetCache;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lnet/oneplus/h2launcher/IconPackHelper;->getIconPackList(Landroid/content/Context;Z)[[Ljava/lang/CharSequence;

    move-result-object v0

    .line 64
    .local v0, "assetPackArray":[[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 65
    aget-object v4, v0, v2

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    :goto_1
    return v2

    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 69
    goto :goto_1
.end method

.method public isDefaultIcon(Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 348
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v0

    return v0
.end method

.method protected isPackageInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 201
    :try_start_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/AssetCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    const/4 v1, 0x1

    .line 204
    :goto_0
    return v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected isPreloadCache(Ljava/lang/Class;)Z
    .locals 3
    .param p1, "cache"    # Ljava/lang/Class;

    .prologue
    .line 406
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected loadAssetPack(Ljava/lang/String;)Lnet/oneplus/h2launcher/IconPackHelper;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/AssetCache;->loadAssetPack(Ljava/lang/String;Z)Lnet/oneplus/h2launcher/IconPackHelper;

    move-result-object v0

    return-object v0
.end method

.method protected loadAssetPack(Ljava/lang/String;Z)Lnet/oneplus/h2launcher/IconPackHelper;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "forceReload"    # Z

    .prologue
    .line 183
    iget-object v2, p0, Lnet/oneplus/h2launcher/AssetCache;->mAssetPackMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/IconPackHelper;

    .line 184
    .local v1, "helper":Lnet/oneplus/h2launcher/IconPackHelper;
    if-eqz v1, :cond_0

    if-eqz p2, :cond_2

    .line 185
    :cond_0
    if-nez v1, :cond_1

    .line 186
    new-instance v1, Lnet/oneplus/h2launcher/IconPackHelper;

    .end local v1    # "helper":Lnet/oneplus/h2launcher/IconPackHelper;
    iget-object v2, p0, Lnet/oneplus/h2launcher/AssetCache;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/IconPackHelper;-><init>(Landroid/content/Context;)V

    .line 189
    .restart local v1    # "helper":Lnet/oneplus/h2launcher/IconPackHelper;
    :cond_1
    :try_start_0
    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/IconPackHelper;->loadIconPack(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/AssetCache;->mAssetPackMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_2
    return-object v1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 192
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadCurrentAssetPack()V
    .locals 5

    .prologue
    .line 156
    iget-object v2, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconPreferences:Landroid/content/SharedPreferences;

    const-string v3, "current_icon_pack"

    const-string v4, "SYSTEM_DEFAULT_ICONS"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "SYSTEM_DEFAULT_ICONS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/AssetCache;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 162
    .local v1, "useSystemDefaultIcon":Z
    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Lnet/oneplus/h2launcher/IconPackHelper;->CUSTOM_SYSTEM_DEFAULT_ICONS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
    sget-object v0, Lnet/oneplus/h2launcher/IconPackHelper;->CUSTOM_SYSTEM_DEFAULT_ICONS:Ljava/lang/String;

    .line 165
    iget-object v2, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "current_icon_pack"

    .line 166
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 167
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    :cond_1
    iput-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mCurrentAssetPackName:Ljava/lang/String;

    .line 171
    iget-object v2, p0, Lnet/oneplus/h2launcher/AssetCache;->mCurrentAssetPackName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/oneplus/h2launcher/AssetCache;->mCurrentAssetPackName:Ljava/lang/String;

    const-string v3, "SYSTEM_DEFAULT_ICONS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 172
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/AssetCache;->loadAssetPack(Ljava/lang/String;)Lnet/oneplus/h2launcher/IconPackHelper;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/AssetCache;->mCurrentAssetPack:Lnet/oneplus/h2launcher/IconPackHelper;

    .line 176
    :goto_1
    return-void

    .line 160
    .end local v1    # "useSystemDefaultIcon":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 174
    .restart local v1    # "useSystemDefaultIcon":Z
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/oneplus/h2launcher/AssetCache;->mCurrentAssetPack:Lnet/oneplus/h2launcher/IconPackHelper;

    goto :goto_1
.end method

.method public declared-synchronized packagedUpdated(Lnet/oneplus/h2launcher/ShortcutInfo;)V
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/oneplus/h2launcher/IconCache;->removeOriginalCache(Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public preloadAllAssetPackTask()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/IconCache;->preloadAllAssetPackTask()V

    .line 237
    return-void
.end method

.method protected preloadDynamicIconDrawable(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 1
    .param p2, "assetpackName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "resources":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mDynamicIconDrawableCache:Lnet/oneplus/h2launcher/DynamicIconDrawableCache;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/DynamicIconDrawableCache;->preloadIcon(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public preloadIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;ILjava/lang/String;JLnet/oneplus/h2launcher/InvariantDeviceProfile;)V
    .locals 9
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "dpi"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "userSerial"    # J
    .param p7, "idp"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .prologue
    .line 372
    iget-object v1, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lnet/oneplus/h2launcher/IconCache;->preloadIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;ILjava/lang/String;JLnet/oneplus/h2launcher/InvariantDeviceProfile;)V

    .line 373
    return-void
.end method

.method public remove(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 87
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/IconCache;->remove(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 88
    return-void
.end method

.method public declared-synchronized remove(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "cacheType"    # I

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/IconCache;->remove(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeFromMemCacheLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "cacheType"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/IconCache;->removeFromMemCacheLocked(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V

    .line 101
    return-void
.end method

.method public declared-synchronized removeIconForPackageUpdate(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/IconCache;->removeIconForPackageUpdate(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setPreloadCache(Ljava/lang/Class;Z)V
    .locals 2
    .param p1, "cache"    # Ljava/lang/Class;
    .param p2, "value"    # Z

    .prologue
    .line 410
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 411
    return-void
.end method

.method public updateCurrentLocale()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/IconCache;->updateCurrentLocale()V

    .line 432
    return-void
.end method

.method public updateDbIcons(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "ignorePackagesForMainUser":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/IconCache;->updateDbIcons(Ljava/util/Set;)V

    .line 253
    return-void
.end method

.method public declared-synchronized updateDbIconsForIconPackChanged()V
    .locals 7

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 210
    .local v3, "packagesToIgnore":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v5, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ItemInfo;

    .line 211
    .local v1, "info":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v6, v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v6, :cond_1

    .line 212
    move-object v0, v1

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    move-object v4, v0

    .line 213
    .local v4, "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->isPromise()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 214
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 209
    .end local v1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v3    # "packagesToIgnore":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 216
    .restart local v1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .restart local v3    # "packagesToIgnore":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    instance-of v6, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    if-eqz v6, :cond_0

    .line 217
    move-object v0, v1

    check-cast v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    move-object v2, v0

    .line 218
    .local v2, "lawi":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 219
    iget-object v6, v2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    .end local v1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v2    # "lawi":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    :cond_2
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/AssetCache;->updateDbIcons(Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    monitor-exit p0

    return-void
.end method

.method public updateDynamicIconCache(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 423
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/IconCache;->updateDynamicIconCache(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    .line 424
    return-void
.end method

.method public updateIconInBackground(Lnet/oneplus/h2launcher/BubbleTextView;Lnet/oneplus/h2launcher/ItemInfo;)Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;
    .locals 1
    .param p1, "caller"    # Lnet/oneplus/h2launcher/BubbleTextView;
    .param p2, "info"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    .line 260
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/IconCache;->updateIconInBackground(Lnet/oneplus/h2launcher/BubbleTextView;Lnet/oneplus/h2launcher/ItemInfo;)Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;

    move-result-object v0

    return-object v0
.end method

.method public updateIconsForComponentName(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/AssetCache;->updateIconsForComponentName(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V

    .line 122
    return-void
.end method

.method public declared-synchronized updateIconsForComponentName(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "resetToDefault"    # Z

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/IconCache;->updateIconsForComponentName(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateIconsForPkg(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/AssetCache;->updateIconsForPkg(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V

    .line 108
    return-void
.end method

.method public declared-synchronized updateIconsForPkg(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "resetToDefault"    # Z

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/IconCache;->updateIconsForPkg(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateTitleAndIcon(Lnet/oneplus/h2launcher/AppInfo;)V
    .locals 1
    .param p1, "application"    # Lnet/oneplus/h2launcher/AppInfo;

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/AssetCache;->mIconCache:Lnet/oneplus/h2launcher/IconCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/IconCache;->updateTitleAndIcon(Lnet/oneplus/h2launcher/AppInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
