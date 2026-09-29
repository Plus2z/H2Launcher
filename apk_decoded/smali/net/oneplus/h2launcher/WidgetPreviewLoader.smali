.class public Lnet/oneplus/h2launcher/WidgetPreviewLoader;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;,
        Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;,
        Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;,
        Lnet/oneplus/h2launcher/WidgetPreviewLoader$CacheDb;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WidgetPreviewLoader"

.field private static final WIDGET_PREVIEW_ICON_PADDING_PERCENTAGE:F = 0.25f


# instance fields
.field private final mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

.field private final mContext:Landroid/content/Context;

.field private final mDb:Lnet/oneplus/h2launcher/WidgetPreviewLoader$CacheDb;

.field private final mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

.field private final mMainThreadExecutor:Lnet/oneplus/h2launcher/MainThreadExecutor;

.field private mManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

.field private final mPackageVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field private final mProfileBadgeMargin:I

.field final mUnusedBitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

.field mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/AssetCache;Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;
    .param p3, "deviceProfile"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 66
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    .line 76
    new-instance v0, Lnet/oneplus/h2launcher/MainThreadExecutor;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mMainThreadExecutor:Lnet/oneplus/h2launcher/MainThreadExecutor;

    .line 80
    iput-object p1, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 83
    iget-object v0, p3, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->portraitProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    iput-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    .line 84
    invoke-static {p1}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    .line 85
    invoke-static {p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    .line 86
    new-instance v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$CacheDb;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$CacheDb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mDb:Lnet/oneplus/h2launcher/WidgetPreviewLoader$CacheDb;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lnet/oneplus/h2launcher/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02dc

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mProfileBadgeMargin:I

    .line 90
    return-void
.end method

.method private generateShortcutPreview(Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "info"    # Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    .line 445
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 446
    .local v1, "c":Landroid/graphics/Canvas;
    if-nez p4, :cond_0

    .line 447
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 448
    invoke-virtual {v1, p4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 457
    :goto_0
    iget-object v9, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {p1, v9}, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;->getFullResIcon(Lnet/oneplus/h2launcher/AssetCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {p0, v9}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 458
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 461
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 462
    .local v2, "colorMatrix":Landroid/graphics/ColorMatrix;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 463
    new-instance v9, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v9, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 464
    const/16 v9, 0xf

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 466
    iget-object v9, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 467
    .local v7, "res":Landroid/content/res/Resources;
    const v9, 0x7f0c02ee

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 468
    .local v6, "paddingTop":I
    const v9, 0x7f0c02ec

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 469
    .local v4, "paddingLeft":I
    const v9, 0x7f0c02ed

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 470
    .local v5, "paddingRight":I
    sub-int v9, p2, v4

    sub-int v8, v9, v5

    .line 471
    .local v8, "scaledIconWidth":I
    add-int v9, v4, v8

    add-int v10, v6, v8

    invoke-virtual {v3, v4, v6, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 473
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 477
    iget-object v9, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    iget v0, v9, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    .line 479
    .local v0, "appIconSize":I
    const/16 v9, 0xff

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 480
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 481
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 482
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 484
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 485
    return-object p4

    .line 449
    .end local v0    # "appIconSize":I
    .end local v2    # "colorMatrix":Landroid/graphics/ColorMatrix;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "paddingLeft":I
    .end local v5    # "paddingRight":I
    .end local v6    # "paddingTop":I
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v8    # "scaledIconWidth":I
    :cond_0
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, p2, :cond_1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-eq v9, p3, :cond_2

    .line 450
    :cond_1
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Improperly sized bitmap passed as argument"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 453
    :cond_2
    invoke-virtual {v1, p4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 454
    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0
.end method

.method private getObjectKey(Ljava/lang/Object;Ljava/lang/String;)Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "size"    # Ljava/lang/String;

    .prologue
    .line 168
    instance-of v1, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 169
    check-cast v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 170
    .local v0, "info":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    new-instance v1, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v3, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getUser(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)V

    .line 175
    .end local v0    # "info":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    :goto_0
    return-object v1

    :cond_0
    move-object v0, p1

    .line 172
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 173
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    new-instance v1, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 490
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mMainThreadExecutor:Lnet/oneplus/h2launcher/MainThreadExecutor;

    new-instance v2, Lnet/oneplus/h2launcher/WidgetPreviewLoader$1;

    invoke-direct {v2, p0, p1}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$1;-><init>(Lnet/oneplus/h2launcher/WidgetPreviewLoader;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/MainThreadExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 495
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 498
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 499
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 500
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private removePackage(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;J)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "userSerial"    # J

    .prologue
    .line 202
    iget-object v2, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    monitor-enter v2

    .line 203
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :try_start_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mDb:Lnet/oneplus/h2launcher/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$CacheDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "shortcut_and_widget_previews"

    const-string v3, "packageName = ? AND profileId = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    .line 209
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 207
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    :goto_0
    return-void

    .line 204
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "WidgetPreviewLoader"

    const-string v2, "Unable to delete items from DB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public clearDB()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mDb:Lnet/oneplus/h2launcher/WidgetPreviewLoader$CacheDb;

    iget-object v1, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mDb:Lnet/oneplus/h2launcher/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$CacheDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$CacheDb;->access$000(Lnet/oneplus/h2launcher/WidgetPreviewLoader$CacheDb;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 527
    return-void
.end method

.method generatePreview(Lnet/oneplus/h2launcher/model/WidgetItem;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "item"    # Lnet/oneplus/h2launcher/model/WidgetItem;
    .param p2, "recycle"    # Landroid/graphics/Bitmap;
    .param p3, "previewWidth"    # I
    .param p4, "previewHeight"    # I

    .prologue
    .line 327
    iget-object v0, p1, Lnet/oneplus/h2launcher/model/WidgetItem;->widgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p1, Lnet/oneplus/h2launcher/model/WidgetItem;->widgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, p2, v1}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->generateWidgetPreview(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lnet/oneplus/h2launcher/model/WidgetItem;->activityInfo:Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;

    invoke-direct {p0, v0, p3, p4, p2}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->generateShortcutPreview(Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public generateWidgetPreview(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 36
    .param p1, "info"    # Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .param p2, "maxPreviewWidth"    # I
    .param p3, "preview"    # Landroid/graphics/Bitmap;
    .param p4, "preScaledWidthOut"    # [I

    .prologue
    .line 337
    if-gez p2, :cond_0

    const p2, 0x7fffffff

    .line 339
    :cond_0
    const/4 v7, 0x0

    .line 340
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p1

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->previewImage:I

    move/from16 v32, v0

    if-eqz v32, :cond_1

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 342
    if-eqz v7, :cond_5

    .line 343
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 350
    :cond_1
    :goto_0
    if-eqz v7, :cond_6

    const/16 v29, 0x1

    .line 351
    .local v29, "widgetPreviewExists":Z
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->spanX:I

    move/from16 v21, v0

    .line 352
    .local v21, "spanX":I
    move-object/from16 v0, p1

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->spanY:I

    move/from16 v22, v0

    .line 356
    .local v22, "spanY":I
    const/16 v24, 0x0

    .line 358
    .local v24, "tileBitmap":Landroid/graphics/Bitmap;
    if-eqz v29, :cond_7

    .line 359
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .line 360
    .local v18, "previewWidth":I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    .line 371
    .local v17, "previewHeight":I
    :goto_2
    const/high16 v19, 0x3f800000    # 1.0f

    .line 372
    .local v19, "scale":F
    if-eqz p4, :cond_2

    .line 373
    const/16 v32, 0x0

    aput v18, p4, v32

    .line 375
    :cond_2
    move/from16 v0, v18

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    .line 376
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mProfileBadgeMargin:I

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x2

    sub-int v32, p2, v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v19, v32, v33

    .line 378
    :cond_3
    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v32, v19, v32

    if-eqz v32, :cond_4

    .line 379
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v19

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v18, v0

    .line 380
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v19

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v17, v0

    .line 384
    :cond_4
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6}, Landroid/graphics/Canvas;-><init>()V

    .line 385
    .local v6, "c":Landroid/graphics/Canvas;
    if-nez p3, :cond_8

    .line 386
    sget-object v32, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 387
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 395
    :goto_3
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    sub-int v32, v32, v18

    div-int/lit8 v30, v32, 0x2

    .line 396
    .local v30, "x":I
    if-eqz v29, :cond_9

    .line 397
    const/16 v32, 0x0

    add-int v33, v30, v18

    move/from16 v0, v30

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v17

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 398
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 440
    :goto_4
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mProfileBadgeMargin:I

    move/from16 v33, v0

    add-int v33, v33, v17

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 441
    .local v13, "imageHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v13}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getBadgeBitmap(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v32

    return-object v32

    .line 345
    .end local v6    # "c":Landroid/graphics/Canvas;
    .end local v13    # "imageHeight":I
    .end local v17    # "previewHeight":I
    .end local v18    # "previewWidth":I
    .end local v19    # "scale":F
    .end local v21    # "spanX":I
    .end local v22    # "spanY":I
    .end local v24    # "tileBitmap":Landroid/graphics/Bitmap;
    .end local v29    # "widgetPreviewExists":Z
    .end local v30    # "x":I
    :cond_5
    const-string v32, "WidgetPreviewLoader"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Can\'t load widget preview drawable 0x"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p1

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->previewImage:I

    move/from16 v34, v0

    .line 346
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " for provider: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 345
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 350
    :cond_6
    const/16 v29, 0x0

    goto/16 :goto_1

    .line 363
    .restart local v21    # "spanX":I
    .restart local v22    # "spanY":I
    .restart local v24    # "tileBitmap":Landroid/graphics/Bitmap;
    .restart local v29    # "widgetPreviewExists":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f020266

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    check-cast v32, Landroid/graphics/drawable/BitmapDrawable;

    .line 364
    invoke-virtual/range {v32 .. v32}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v24

    .line 365
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    mul-int v18, v32, v21

    .line 366
    .restart local v18    # "previewWidth":I
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v32

    mul-int v17, v32, v22

    .restart local v17    # "previewHeight":I
    goto/16 :goto_2

    .line 390
    .restart local v6    # "c":Landroid/graphics/Canvas;
    .restart local v19    # "scale":F
    :cond_8
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 391
    const/16 v32, 0x0

    sget-object v33, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_3

    .line 400
    .restart local v30    # "x":I
    :cond_9
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 401
    .local v16, "p":Landroid/graphics/Paint;
    const/16 v32, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v5, v0, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    .line 405
    .local v5, "appIconSize":I
    new-instance v23, Landroid/graphics/Rect;

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v34

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    move-object/from16 v0, v23

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 407
    .local v23, "src":Landroid/graphics/Rect;
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v26, v19, v32

    .line 408
    .local v26, "tileW":F
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v25, v19, v32

    .line 409
    .local v25, "tileH":F
    new-instance v8, Landroid/graphics/RectF;

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v26

    move/from16 v3, v25

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 411
    .local v8, "dst":Landroid/graphics/RectF;
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v27, v0

    .line 412
    .local v27, "tx":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    move/from16 v0, v21

    if-ge v10, v0, :cond_b

    .line 413
    const/16 v28, 0x0

    .line 414
    .local v28, "ty":F
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_6
    move/from16 v0, v22

    if-ge v14, v0, :cond_a

    .line 415
    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 416
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v6, v0, v1, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 414
    add-int/lit8 v14, v14, 0x1

    add-float v28, v28, v25

    goto :goto_6

    .line 412
    :cond_a
    add-int/lit8 v10, v10, 0x1

    add-float v27, v27, v26

    goto :goto_5

    .line 422
    .end local v14    # "j":I
    .end local v28    # "ty":F
    :cond_b
    int-to-float v0, v5

    move/from16 v32, v0

    const/high16 v33, 0x3e800000    # 0.25f

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v15, v0

    .line 423
    .local v15, "minOffset":I
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 424
    .local v20, "smallestSide":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v32, v0

    mul-int/lit8 v33, v15, 0x2

    add-int v33, v33, v5

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    move/from16 v0, v32

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 427
    .local v12, "iconScale":F
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->loadIcon(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;Lnet/oneplus/h2launcher/AssetCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 428
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_c

    .line 429
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 430
    int-to-float v0, v5

    move/from16 v32, v0

    mul-float v32, v32, v12

    sub-float v32, v26, v32

    const/high16 v33, 0x40000000    # 2.0f

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    add-int v9, v32, v30

    .line 431
    .local v9, "hoffset":I
    int-to-float v0, v5

    move/from16 v32, v0

    mul-float v32, v32, v12

    sub-float v32, v25, v32

    const/high16 v33, 0x40000000    # 2.0f

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v31, v0

    .line 432
    .local v31, "yoffset":I
    int-to-float v0, v5

    move/from16 v32, v0

    mul-float v32, v32, v12

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    add-int v32, v32, v9

    int-to-float v0, v5

    move/from16 v33, v0

    mul-float v33, v33, v12

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    add-int v33, v33, v31

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v11, v9, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 435
    invoke-virtual {v11, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v9    # "hoffset":I
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v31    # "yoffset":I
    :cond_c
    :goto_7
    const/16 v32, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 437
    :catch_0
    move-exception v32

    goto :goto_7
.end method

.method getPackageVersion(Ljava/lang/String;)[J
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 508
    iget-object v4, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    monitor-enter v4

    .line 509
    :try_start_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 510
    .local v2, "versions":[J
    if-nez v2, :cond_0

    .line 511
    const/4 v3, 0x2

    new-array v2, v3, [J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :try_start_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 514
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v6, v5

    aput-wide v6, v2, v3

    .line 515
    const/4 v3, 0x1

    iget-wide v6, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    aput-wide v6, v2, v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    :try_start_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_0
    monitor-exit v4

    return-object v2

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "WidgetPreviewLoader"

    const-string v5, "PackageInfo not found"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 522
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "versions":[J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public getPreview(Lnet/oneplus/h2launcher/model/WidgetItem;IILnet/oneplus/h2launcher/widget/WidgetCell;)Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;
    .locals 9
    .param p1, "item"    # Lnet/oneplus/h2launcher/model/WidgetItem;
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I
    .param p4, "caller"    # Lnet/oneplus/h2launcher/widget/WidgetCell;

    .prologue
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 102
    .local v8, "size":Ljava/lang/String;
    new-instance v2, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v1, p1, Lnet/oneplus/h2launcher/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lnet/oneplus/h2launcher/model/WidgetItem;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-direct {v2, v1, v3, v8}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)V

    .line 104
    .local v2, "key":Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;
    new-instance v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;-><init>(Lnet/oneplus/h2launcher/WidgetPreviewLoader;Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;Lnet/oneplus/h2launcher/model/WidgetItem;IILnet/oneplus/h2launcher/widget/WidgetCell;)V

    .line 105
    .local v0, "task":Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v3}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    new-instance v7, Landroid/os/CancellationSignal;

    invoke-direct {v7}, Landroid/os/CancellationSignal;-><init>()V

    .line 108
    .local v7, "signal":Landroid/os/CancellationSignal;
    invoke-virtual {v7, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 109
    new-instance v1, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;

    invoke-direct {v1, p0, v0}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;-><init>(Lnet/oneplus/h2launcher/WidgetPreviewLoader;Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;)V

    return-object v1
.end method

.method readFromDb(Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "key"    # Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;
    .param p2, "recycle"    # Landroid/graphics/Bitmap;
    .param p3, "loadTask"    # Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    .prologue
    .line 287
    const/4 v9, 0x0

    .line 289
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mDb:Lnet/oneplus/h2launcher/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$CacheDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "shortcut_and_widget_previews"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "preview_bitmap"

    aput-object v4, v2, v3

    const-string v3, "componentName = ? AND profileId = ? AND size = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    .line 294
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    iget-object v7, p1, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 295
    invoke-virtual {v6, v7}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p1, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 289
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 300
    invoke-virtual {p3}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    const/4 v0, 0x0

    .line 318
    if-eqz v9, :cond_0

    .line 319
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_0
    :goto_0
    return-object v0

    .line 303
    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 305
    .local v8, "blob":[B
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 306
    .local v11, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-object p2, v11, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :try_start_2
    invoke-virtual {p3}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 309
    const/4 v0, 0x0

    array-length v1, v8

    invoke-static {v8, v0, v1, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 318
    if-eqz v9, :cond_0

    .line 319
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 311
    :catch_0
    move-exception v10

    .line 312
    .local v10, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 318
    if-eqz v9, :cond_0

    .line 319
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 318
    .end local v8    # "blob":[B
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    if-eqz v9, :cond_3

    .line 319
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 315
    :catch_1
    move-exception v10

    .line 316
    .local v10, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v0, "WidgetPreviewLoader"

    const-string v1, "Error loading preview from DB"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    if-eqz v9, :cond_3

    .line 319
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 318
    .end local v10    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_4

    .line 319
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public removeObsoletePreviews(Ljava/util/ArrayList;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lnet/oneplus/h2launcher/util/ComponentKey;>;"
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->assertWorkerThread()V

    .line 224
    new-instance v26, Landroid/util/LongSparseArray;

    invoke-direct/range {v26 .. v26}, Landroid/util/LongSparseArray;-><init>()V

    .line 226
    .local v26, "validPackages":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lnet/oneplus/h2launcher/util/ComponentKey;

    .line 227
    .local v17, "key":Lnet/oneplus/h2launcher/util/ComponentKey;
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-object/from16 v0, v17

    iget-object v8, v0, Lnet/oneplus/h2launcher/util/ComponentKey;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v7, v8}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v24

    .line 228
    .local v24, "userId":J
    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashSet;

    .line 229
    .local v20, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v20, :cond_0

    .line 230
    new-instance v20, Ljava/util/HashSet;

    .end local v20    # "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 231
    .restart local v20    # "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 233
    :cond_0
    move-object/from16 v0, v17

    iget-object v7, v0, Lnet/oneplus/h2launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    .end local v17    # "key":Lnet/oneplus/h2launcher/util/ComponentKey;
    .end local v20    # "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "userId":J
    :cond_1
    new-instance v21, Landroid/util/LongSparseArray;

    invoke-direct/range {v21 .. v21}, Landroid/util/LongSparseArray;-><init>()V

    .line 237
    .local v21, "packagesToDelete":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v14, 0x0

    .line 239
    .local v14, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mDb:Lnet/oneplus/h2launcher/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$CacheDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "shortcut_and_widget_previews"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "profileId"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "packageName"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "lastUpdated"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "version"

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 243
    :cond_2
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 244
    const/4 v6, 0x0

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 245
    .restart local v24    # "userId":J
    const/4 v6, 0x1

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 246
    .local v22, "pkg":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 247
    .local v18, "lastUpdated":J
    const/4 v6, 0x3

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 249
    .local v28, "version":J
    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashSet;

    .line 250
    .restart local v20    # "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v20, :cond_3

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->getPackageVersion(Ljava/lang/String;)[J

    move-result-object v27

    .line 252
    .local v27, "versions":[J
    const/4 v6, 0x0

    aget-wide v6, v27, v6

    cmp-long v6, v6, v28

    if-nez v6, :cond_3

    const/4 v6, 0x1

    aget-wide v6, v27, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_2

    .line 259
    .end local v27    # "versions":[J
    :cond_3
    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    check-cast v20, Ljava/util/HashSet;

    .line 260
    .restart local v20    # "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v20, :cond_4

    .line 261
    new-instance v20, Ljava/util/HashSet;

    .end local v20    # "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 262
    .restart local v20    # "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 264
    :cond_4
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 274
    .end local v18    # "lastUpdated":J
    .end local v20    # "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22    # "pkg":Ljava/lang/String;
    .end local v24    # "userId":J
    .end local v28    # "version":J
    :catch_0
    move-exception v15

    .line 275
    .local v15, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v6, "WidgetPreviewLoader"

    const-string v7, "Error updatating widget previews"

    invoke-static {v6, v7, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    if-eqz v14, :cond_5

    .line 278
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 281
    .end local v15    # "e":Landroid/database/SQLException;
    :cond_5
    :goto_2
    return-void

    .line 267
    :cond_6
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    move/from16 v0, v16

    if-ge v0, v6, :cond_9

    .line 268
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v24

    .line 269
    .restart local v24    # "userId":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getUserForSerialNumber(J)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v23

    .line 270
    .local v23, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 271
    .restart local v22    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;J)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 277
    .end local v16    # "i":I
    .end local v22    # "pkg":Ljava/lang/String;
    .end local v23    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v24    # "userId":J
    :catchall_0
    move-exception v6

    if-eqz v14, :cond_7

    .line 278
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v6

    .line 267
    .restart local v16    # "i":I
    .restart local v23    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .restart local v24    # "userId":J
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 277
    .end local v23    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v24    # "userId":J
    :cond_9
    if-eqz v14, :cond_5

    .line 278
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public removePackage(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 198
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;J)V

    .line 199
    return-void
.end method

.method writeToDb(Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;[JLandroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "key"    # Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;
    .param p2, "versions"    # [J
    .param p3, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    .line 180
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 181
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "componentName"

    iget-object v3, p1, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v2, "profileId"

    iget-object v3, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    iget-object v4, p1, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    const-string v2, "size"

    iget-object v3, p1, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v2, "packageName"

    iget-object v3, p1, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v2, "version"

    const/4 v3, 0x0

    aget-wide v4, p2, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    const-string v2, "lastUpdated"

    const/4 v3, 0x1

    aget-wide v4, p2, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    const-string v2, "preview_bitmap"

    invoke-static {p3}, Lnet/oneplus/h2launcher/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 190
    :try_start_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mDb:Lnet/oneplus/h2launcher/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$CacheDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "shortcut_and_widget_previews"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/database/SQLException;
    const-string v2, "WidgetPreviewLoader"

    const-string v3, "Error saving image to DB"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
