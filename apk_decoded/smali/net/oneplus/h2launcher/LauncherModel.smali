.class public Lnet/oneplus/h2launcher/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"

# interfaces
.implements Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;,
        Lnet/oneplus/h2launcher/LauncherModel$AppsAvailabilityCheck;,
        Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;,
        Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;,
        Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field static final DEBUG_LOADERS:Z = true

.field private static final DEBUG_RECEIVER:Z = false

.field private static final HAS_EXTERNAL_STORAGE:Z = false

.field private static final INVALID_SCREEN_ID:J = -0x1L

.field private static final ITEMS_CHUNK:I = 0x6

.field public static final LOADER_FLAG_CLEAR_WORKSPACE:I = 0x1

.field public static final LOADER_FLAG_MIGRATE_SHORTCUTS:I = 0x2

.field public static final LOADER_FLAG_NONE:I = 0x0

.field private static final MIGRATE_AUTHORITY:Ljava/lang/String; = "com.android.launcher2.settings"

.field private static final REMOVE_UNRESTORED_ICONS:Z = true

.field public static final STK_PACKAGE_NAME:Ljava/lang/String; = "com.android.stk"

.field static final TAG:Ljava/lang/String; = "Launcher.Model"

.field static final mBindCompleteRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgDynamicItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/oneplus/h2launcher/util/LongArrayMap",
            "<",
            "Lnet/oneplus/h2launcher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/oneplus/h2launcher/util/LongArrayMap",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgLock:Ljava/lang/Object;

.field public static sBgWidgetProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            "Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgWorkspaceItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgWorkspaceScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sCustomAppWidgetProviderInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sPendingPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static final sWorker:Landroid/os/Handler;

.field static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field mAllAppsLoaded:Z

.field final mApp:Lnet/oneplus/h2launcher/LauncherAppState;

.field final mAppsCanBeOnRemoveableStorage:Z

.field mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

.field mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

.field mBgWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

.field mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/oneplus/h2launcher/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPageBindingFinished:Z

.field private mDelayBindOtherWorkspaceRunnable:Ljava/lang/Runnable;

.field mFgWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

.field mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

.field mHasLoaderCompletedOnce:Z

.field mIsLoaderTaskRunning:Z

.field final mLauncherApps:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

.field mLoaderTask:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

.field final mLock:Ljava/lang/Object;

.field private final mOldContentProviderExists:Z

.field final mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

.field mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 126
    sget-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 128
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    .line 159
    new-instance v0, Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/util/LongArrayMap;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sBgDynamicItems:Ljava/util/HashSet;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/util/LongArrayMap;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sBgFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sCustomAppWidgetProviderInfos:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Lnet/oneplus/h2launcher/LauncherAppState;Lnet/oneplus/h2launcher/AssetCache;Lnet/oneplus/h2launcher/AppFilter;)V
    .locals 9
    .param p1, "app"    # Lnet/oneplus/h2launcher/LauncherAppState;
    .param p2, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;
    .param p3, "appFilter"    # Lnet/oneplus/h2launcher/AppFilter;

    .prologue
    const/4 v5, 0x0

    .line 235
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 116
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLock:Ljava/lang/Object;

    .line 117
    new-instance v6, Lnet/oneplus/h2launcher/DeferredHandler;

    invoke-direct {v6}, Lnet/oneplus/h2launcher/DeferredHandler;-><init>()V

    iput-object v6, p0, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    .line 236
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 238
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherModel;->isExternalStorageRemovable()Z

    move-result v6

    iput-boolean v6, p0, Lnet/oneplus/h2launcher/LauncherModel;->mAppsCanBeOnRemoveableStorage:Z

    .line 240
    const v6, 0x7f0b010c

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "oldProvider":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "redirectAuthority":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.android.launcher2.settings"

    invoke-virtual {v6, v7, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 247
    .local v2, "providerInfo":Landroid/content/pm/ProviderInfo;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 249
    .local v4, "redirectProvider":Landroid/content/pm/ProviderInfo;
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Old launcher provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    :cond_0
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/LauncherModel;->mOldContentProviderExists:Z

    .line 252
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/LauncherModel;->mOldContentProviderExists:Z

    if-eqz v5, :cond_1

    .line 253
    const-string v5, "Launcher.Model"

    const-string v6, "Old launcher provider exists."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel;->mApp:Lnet/oneplus/h2launcher/LauncherAppState;

    .line 259
    new-instance v5, Lnet/oneplus/h2launcher/AllAppsList;

    invoke-direct {v5, p2, p3}, Lnet/oneplus/h2launcher/AllAppsList;-><init>(Lnet/oneplus/h2launcher/AssetCache;Lnet/oneplus/h2launcher/AppFilter;)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    .line 260
    new-instance v5, Lnet/oneplus/h2launcher/model/WidgetsModel;

    invoke-direct {v5, v0, p2, p3}, Lnet/oneplus/h2launcher/model/WidgetsModel;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/AssetCache;Lnet/oneplus/h2launcher/AppFilter;)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/LauncherModel;->mBgWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

    .line 261
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherModel;->mBgWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/model/WidgetsModel;->clone()Lnet/oneplus/h2launcher/model/WidgetsModel;

    move-result-object v5

    iput-object v5, p0, Lnet/oneplus/h2launcher/LauncherModel;->mFgWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

    .line 262
    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 264
    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v5

    iput-object v5, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLauncherApps:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    .line 265
    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v5

    iput-object v5, p0, Lnet/oneplus/h2launcher/LauncherModel;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    .line 266
    return-void

    .line 255
    :cond_1
    const-string v5, "Launcher.Model"

    const-string v6, "Old launcher provider does not exist."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/LauncherModel;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/LauncherModel;

    .prologue
    .line 96
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mDelayBindOtherWorkspaceRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lnet/oneplus/h2launcher/LauncherModel;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/LauncherModel;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 96
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel;->mDelayBindOtherWorkspaceRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/LauncherModel;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/LauncherModel;

    .prologue
    .line 96
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mCurrentPageBindingFinished:Z

    return v0
.end method

.method static synthetic access$102(Lnet/oneplus/h2launcher/LauncherModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/LauncherModel;->mCurrentPageBindingFinished:Z

    return p1
.end method

.method static synthetic access$400(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 96
    invoke-static {p0, p1}, Lnet/oneplus/h2launcher/LauncherModel;->getItemsByPackageName(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static addItemToDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 1229
    iput-wide p2, p1, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    .line 1230
    iput p6, p1, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .line 1231
    iput p7, p1, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .line 1234
    instance-of v4, p0, Lnet/oneplus/h2launcher/Launcher;

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-gez v4, :cond_0

    const-wide/16 v4, -0x65

    cmp-long v4, p2, v4

    if-nez v4, :cond_0

    move-object v4, p0

    .line 1236
    check-cast v4, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getHotseatController()Lnet/oneplus/h2launcher/HotseatController;

    move-result-object v4

    invoke-virtual {v4, p6, p7}, Lnet/oneplus/h2launcher/HotseatController;->getOrderInHotseat(II)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p1, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    .line 1241
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1242
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1243
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1, p0, v3}, Lnet/oneplus/h2launcher/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 1245
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherProvider;->generateNewItemId()J

    move-result-wide v4

    iput-wide v4, p1, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    .line 1246
    const-string v4, "_id"

    iget-wide v6, p1, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1248
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 1249
    .local v2, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$15;

    invoke-direct {v1, v0, v3, p1, v2}, Lnet/oneplus/h2launcher/LauncherModel$15;-><init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Lnet/oneplus/h2launcher/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 1289
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1290
    return-void

    .line 1238
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "r":Ljava/lang/Runnable;
    .end local v2    # "stackTrace":[Ljava/lang/StackTraceElement;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    iput-wide p4, p1, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    goto :goto_0
.end method

.method public static addNoteReminder(Landroid/content/Context;IJJ)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "reminderTime"    # J
    .param p4, "reminderId"    # J

    .prologue
    .line 1146
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1147
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1148
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v4, "reminderTime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1149
    const-string v4, "reminderId"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1150
    const-string v6, "_id = ? AND type = ?"

    .line 1151
    .local v6, "where":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1152
    .local v3, "whereArgs":[Ljava/lang/String;
    new-instance v0, Lnet/oneplus/h2launcher/LauncherModel$14;

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherModel$14;-><init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;[Ljava/lang/String;J)V

    .line 1158
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1159
    return-void
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 671
    iget-wide v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 673
    invoke-static/range {p0 .. p7}, Lnet/oneplus/h2launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V

    .line 678
    :goto_0
    return-void

    .line 676
    :cond_0
    invoke-static/range {p0 .. p7}, Lnet/oneplus/h2launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V

    goto :goto_0
.end method

.method public static addQuickPageItem(Landroid/content/Context;IIILjava/lang/String;ILjava/lang/String;JJ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "size"    # I
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "widgetId"    # I
    .param p6, "component"    # Ljava/lang/String;
    .param p7, "reminderTime"    # J
    .param p9, "reminderId"    # J

    .prologue
    .line 1058
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1059
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1060
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1061
    const-string v3, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1062
    const-string v3, "size"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1063
    const-string v3, "content"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const-string v3, "widgetId"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1065
    const-string v3, "component"

    invoke-virtual {v2, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const-string v3, "reminderTime"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1067
    const-string v3, "reminderId"

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1069
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$9;

    invoke-direct {v1, v0, v2}, Lnet/oneplus/h2launcher/LauncherModel$9;-><init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 1074
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1075
    return-void
.end method

.method private assertWorkspaceLoaded()V
    .locals 3

    .prologue
    .line 939
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->isDogfoodBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 940
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 941
    :try_start_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mHasLoaderCompletedOnce:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLoaderTask:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLoaderTask:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    if-eqz v0, :cond_1

    .line 943
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Trying to add shortcut while loader is running"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 947
    :cond_2
    return-void
.end method

.method static checkItemInfo(Lnet/oneplus/h2launcher/ItemInfo;)V
    .locals 5
    .param p0, "item"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    .line 724
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 725
    .local v3, "stackTrace":[Ljava/lang/StackTraceElement;
    iget-wide v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    .line 726
    .local v0, "itemId":J
    new-instance v2, Lnet/oneplus/h2launcher/LauncherModel$6;

    invoke-direct {v2, v0, v1, p0, v3}, Lnet/oneplus/h2launcher/LauncherModel$6;-><init>(JLnet/oneplus/h2launcher/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 733
    .local v2, "r":Ljava/lang/Runnable;
    invoke-static {v2}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 734
    return-void
.end method

.method static checkItemInfoLocked(JLnet/oneplus/h2launcher/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 12
    .param p0, "itemId"    # J
    .param p2, "item"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p3, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 682
    sget-object v5, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v5, p0, p1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ItemInfo;

    .line 683
    .local v1, "modelItem":Lnet/oneplus/h2launcher/ItemInfo;
    if-eqz v1, :cond_1

    if-eq p2, v1, :cond_1

    .line 685
    instance-of v5, v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v5, :cond_2

    instance-of v5, p2, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v5, :cond_2

    move-object v2, v1

    .line 686
    check-cast v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    .local v2, "modelShortcut":Lnet/oneplus/h2launcher/ShortcutInfo;
    move-object v4, p2

    .line 687
    check-cast v4, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 688
    .local v4, "shortcut":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    iget-object v6, v4, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 689
    invoke-virtual {v5, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-wide v6, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->id:J

    iget-wide v8, v4, Lnet/oneplus/h2launcher/ShortcutInfo;->id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    iget v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    iget v6, v4, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    if-ne v5, v6, :cond_2

    iget-wide v6, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->container:J

    iget-wide v8, v4, Lnet/oneplus/h2launcher/ShortcutInfo;->container:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    iget-wide v6, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->screenId:J

    iget-wide v8, v4, Lnet/oneplus/h2launcher/ShortcutInfo;->screenId:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    iget v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->cellX:I

    iget v6, v4, Lnet/oneplus/h2launcher/ShortcutInfo;->cellX:I

    if-ne v5, v6, :cond_2

    iget v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->cellY:I

    iget v6, v4, Lnet/oneplus/h2launcher/ShortcutInfo;->cellY:I

    if-ne v5, v6, :cond_2

    iget v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->spanX:I

    iget v6, v4, Lnet/oneplus/h2launcher/ShortcutInfo;->spanX:I

    if-ne v5, v6, :cond_2

    iget v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->spanY:I

    iget v6, v4, Lnet/oneplus/h2launcher/ShortcutInfo;->spanY:I

    if-ne v5, v6, :cond_2

    iget-object v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->dropPos:[I

    if-nez v5, :cond_0

    iget-object v5, v4, Lnet/oneplus/h2launcher/ShortcutInfo;->dropPos:[I

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->dropPos:[I

    if-eqz v5, :cond_2

    iget-object v5, v4, Lnet/oneplus/h2launcher/ShortcutInfo;->dropPos:[I

    if-eqz v5, :cond_2

    iget-object v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->dropPos:[I

    aget v5, v5, v10

    iget-object v6, v4, Lnet/oneplus/h2launcher/ShortcutInfo;->dropPos:[I

    aget v6, v6, v10

    if-ne v5, v6, :cond_2

    iget-object v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->dropPos:[I

    aget v5, v5, v11

    iget-object v6, v4, Lnet/oneplus/h2launcher/ShortcutInfo;->dropPos:[I

    aget v6, v6, v11

    if-ne v5, v6, :cond_2

    .line 721
    .end local v2    # "modelShortcut":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v4    # "shortcut":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    return-void

    .line 711
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lnet/oneplus/h2launcher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "modelItem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_5

    .line 713
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 715
    .local v3, "msg":Ljava/lang/String;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 716
    .local v0, "e":Ljava/lang/RuntimeException;
    if-eqz p3, :cond_3

    .line 717
    invoke-virtual {v0, p3}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 719
    :cond_3
    throw v0

    .line 711
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_4
    const-string v5, "null"

    goto :goto_0

    .line 713
    :cond_5
    const-string v5, "null"

    goto :goto_1
.end method

.method public static clearQuickPageDb(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1219
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1220
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lnet/oneplus/h2launcher/LauncherSettings$QuickPage;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1221
    return-void
.end method

.method public static deleteFolderContentsFromDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/FolderInfo;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lnet/oneplus/h2launcher/FolderInfo;

    .prologue
    .line 1439
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1441
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$19;

    invoke-direct {v1, v0, p1}, Lnet/oneplus/h2launcher/LauncherModel$19;-><init>(Landroid/content/ContentResolver;Lnet/oneplus/h2launcher/FolderInfo;)V

    .line 1465
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1466
    return-void
.end method

.method public static deleteItemFromDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    .line 1326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1327
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1328
    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1329
    return-void
.end method

.method static deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<+",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1337
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lnet/oneplus/h2launcher/ItemInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1338
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$17;

    invoke-direct {v1, p1, v0}, Lnet/oneplus/h2launcher/LauncherModel$17;-><init>(Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    .line 1384
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1385
    return-void
.end method

.method static deletePackageFromDatabase(Landroid/content/Context;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pn"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 1317
    invoke-static {p1, p2}, Lnet/oneplus/h2launcher/LauncherModel;->getItemsByPackageName(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1318
    return-void
.end method

.method public static filterItemInfos(Ljava/lang/Iterable;Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "f"    # Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;",
            "Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "infos":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lnet/oneplus/h2launcher/ItemInfo;>;"
    const/4 v8, 0x0

    .line 4751
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4752
    .local v1, "filtered":Ljava/util/HashSet;, "Ljava/util/HashSet<Lnet/oneplus/h2launcher/ItemInfo;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4753
    .local v4, "itemInfoIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4754
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/ItemInfo;

    .line 4756
    .local v2, "i":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v6, v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v6, :cond_1

    move-object v3, v2

    .line 4757
    check-cast v3, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 4758
    .local v3, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4759
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-interface {p1, v8, v3, v0}, Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;->filterItem(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4760
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4762
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    instance-of v6, v2, Lnet/oneplus/h2launcher/FolderInfo;

    if-eqz v6, :cond_3

    move-object v3, v2

    .line 4763
    check-cast v3, Lnet/oneplus/h2launcher/FolderInfo;

    .line 4764
    .local v3, "info":Lnet/oneplus/h2launcher/FolderInfo;
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 4765
    .local v5, "s":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4766
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    invoke-interface {p1, v3, v5, v0}, Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;->filterItem(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4767
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4770
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Lnet/oneplus/h2launcher/FolderInfo;
    .end local v5    # "s":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_3
    instance-of v6, v2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    if-eqz v6, :cond_0

    move-object v3, v2

    .line 4771
    check-cast v3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    .line 4772
    .local v3, "info":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    iget-object v0, v3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 4773
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-interface {p1, v8, v3, v0}, Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;->filterItem(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4774
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4779
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v3    # "info":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v6
.end method

.method private static findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z
    .locals 13
    .param p1, "xy"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;[III)Z"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "occupiedPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v6

    .line 438
    .local v6, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {v6}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v8

    .line 439
    .local v8, "profile":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    iget v3, v8, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    .line 440
    .local v3, "xCount":I
    iget v4, v8, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    .line 441
    .local v4, "yCount":I
    filled-new-array {v3, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    .line 442
    .local v5, "occupied":[[Z
    if-eqz p0, :cond_2

    .line 443
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/oneplus/h2launcher/ItemInfo;

    .line 444
    .local v9, "r":Lnet/oneplus/h2launcher/ItemInfo;
    iget v1, v9, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    iget v2, v9, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    add-int v10, v1, v2

    .line 445
    .local v10, "right":I
    iget v1, v9, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    iget v2, v9, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    add-int v7, v1, v2

    .line 446
    .local v7, "bottom":I
    iget v11, v9, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .local v11, "x":I
    :goto_0
    if-ltz v11, :cond_0

    if-ge v11, v10, :cond_0

    if-ge v11, v3, :cond_0

    .line 447
    iget v12, v9, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .local v12, "y":I
    :goto_1
    if-ltz v12, :cond_1

    if-ge v12, v7, :cond_1

    if-ge v12, v4, :cond_1

    .line 448
    aget-object v1, v5, v11

    const/4 v2, 0x1

    aput-boolean v2, v1, v12

    .line 447
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 446
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .end local v7    # "bottom":I
    .end local v9    # "r":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v10    # "right":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_2
    move-object v0, p1

    move v1, p2

    move/from16 v2, p3

    .line 453
    invoke-static/range {v0 .. v5}, Lnet/oneplus/h2launcher/Utilities;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0
.end method

.method static findOrMakeFolder(Lnet/oneplus/h2launcher/util/LongArrayMap;J)Lnet/oneplus/h2launcher/FolderInfo;
    .locals 1
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/util/LongArrayMap",
            "<",
            "Lnet/oneplus/h2launcher/FolderInfo;",
            ">;J)",
            "Lnet/oneplus/h2launcher/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 4884
    .local p0, "folders":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/FolderInfo;>;"
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/FolderInfo;

    .line 4885
    .local v0, "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    if-nez v0, :cond_0

    .line 4887
    new-instance v0, Lnet/oneplus/h2launcher/FolderInfo;

    .end local v0    # "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    invoke-direct {v0}, Lnet/oneplus/h2launcher/FolderInfo;-><init>()V

    .line 4888
    .restart local v0    # "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 4890
    :cond_0
    return-object v0
.end method

.method static getCellLayoutChildId(JJIIII)I
    .locals 2
    .param p0, "container"    # J
    .param p2, "screen"    # J
    .param p4, "localCellX"    # I
    .param p5, "localCellY"    # I
    .param p6, "spanX"    # I
    .param p7, "spanY"    # I

    .prologue
    .line 1297
    long-to-int v0, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    long-to-int v1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p5, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static getCustomAppWidgetProviderInfo(Ljava/lang/String;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4947
    sget-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sCustomAppWidgetProviderInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    return-object v0
.end method

.method public static getCustomAppWidgetProviderInfos()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4955
    sget-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sCustomAppWidgetProviderInfos:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getDynamicItems()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4943
    sget-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sBgDynamicItems:Ljava/util/HashSet;

    return-object v0
.end method

.method private static getItemsByPackageName(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "pn"    # Ljava/lang/String;
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1303
    new-instance v0, Lnet/oneplus/h2launcher/LauncherModel$16;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/LauncherModel$16;-><init>(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 1309
    .local v0, "filter":Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;
    sget-object v1, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/LauncherModel;->filterItemInfos(Ljava/lang/Iterable;Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method static getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4683
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "market"

    .line 4685
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "details"

    .line 4686
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "id"

    .line 4687
    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 4688
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 4684
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 4542
    sget-object v3, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4543
    :try_start_0
    sget-object v2, Lnet/oneplus/h2launcher/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 4544
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnet/oneplus/h2launcher/LauncherModel;->getWidgetProviders(Landroid/content/Context;Z)Ljava/util/List;

    .line 4555
    :cond_0
    sget-object v2, Lnet/oneplus/h2launcher/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    new-instance v4, Lnet/oneplus/h2launcher/util/ComponentKey;

    invoke-direct {v4, p1, p2}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    monitor-exit v3

    return-object v2

    .line 4545
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4547
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherModel;->getCustomAppWidgetProviderInfos()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 4548
    .local v0, "customWidgetProviderInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 4549
    .local v1, "widgetinfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    sget-object v4, Lnet/oneplus/h2launcher/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    new-instance v5, Lnet/oneplus/h2launcher/util/ComponentKey;

    iget-object v6, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v5, v6, p2}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4550
    const-string v4, "Launcher.Model"

    const-string v5, "[getProviderInfo] SimplifiedLayout add custom provider:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4551
    sget-object v4, Lnet/oneplus/h2launcher/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    new-instance v5, Lnet/oneplus/h2launcher/util/ComponentKey;

    iget-object v6, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v5, v6, p2}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4556
    .end local v0    # "customWidgetProviderInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;>;"
    .end local v1    # "widgetinfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getWidgetProviders(Landroid/content/Context;Z)Ljava/util/List;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "refresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/model/WidgetItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4477
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4478
    .local v8, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/WidgetItem;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 4479
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v4

    .line 4482
    .local v4, "idp":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    :try_start_0
    sget-object v17, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4483
    :try_start_1
    sget-object v16, Lnet/oneplus/h2launcher/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    if-eqz v16, :cond_0

    if-eqz p1, :cond_5

    .line 4484
    :cond_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 4486
    .local v9, "tmpWidgetProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Lnet/oneplus/h2launcher/util/ComponentKey;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;>;"
    invoke-static/range {p0 .. p0}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-result-object v15

    .line 4489
    .local v15, "wm":Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;
    invoke-virtual {v15}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v14

    .line 4490
    .local v14, "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/appwidget/AppWidgetProviderInfo;

    .line 4491
    .local v6, "pInfo":Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    move-result-object v5

    .line 4492
    .local v5, "info":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    invoke-virtual {v15, v5}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getUser(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v10

    .line 4493
    .local v10, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    new-instance v18, Lnet/oneplus/h2launcher/util/ComponentKey;

    iget-object v0, v5, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v10}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4495
    new-instance v18, Lnet/oneplus/h2launcher/model/WidgetItem;

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v7, v4}, Lnet/oneplus/h2launcher/model/WidgetItem;-><init>(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;Landroid/content/pm/PackageManager;Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4524
    .end local v5    # "info":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .end local v6    # "pInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v9    # "tmpWidgetProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Lnet/oneplus/h2launcher/util/ComponentKey;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;>;"
    .end local v10    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v14    # "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v15    # "wm":Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4525
    :catch_0
    move-exception v3

    .line 4526
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/os/TransactionTooLargeException;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 4531
    sget-object v17, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v17

    .line 4532
    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 4498
    .restart local v9    # "tmpWidgetProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Lnet/oneplus/h2launcher/util/ComponentKey;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;>;"
    .restart local v14    # "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .restart local v15    # "wm":Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;
    :cond_1
    :try_start_4
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherModel;->getCustomAppWidgetProviderInfos()Ljava/util/HashMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 4499
    .local v2, "customWidgetProviderInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 4500
    .local v13, "widgetinfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    if-eqz v13, :cond_2

    .line 4501
    const-string v18, "Launcher.Model"

    const-string v19, "custom widget provider:%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-object v0, v13, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4502
    invoke-virtual {v15, v13}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getUser(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v10

    .line 4503
    .restart local v10    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    new-instance v18, Lnet/oneplus/h2launcher/util/ComponentKey;

    iget-object v0, v13, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v10}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4505
    new-instance v18, Lnet/oneplus/h2launcher/model/WidgetItem;

    move-object/from16 v0, v18

    invoke-direct {v0, v13, v7, v4}, Lnet/oneplus/h2launcher/model/WidgetItem;-><init>(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;Landroid/content/pm/PackageManager;Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4507
    .end local v10    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_2
    const-string v18, "Launcher.Model"

    const-string v19, "custom widget info is null."

    invoke-static/range {v18 .. v19}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4513
    .end local v13    # "widgetinfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    :cond_3
    sput-object v9, Lnet/oneplus/h2launcher/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    .line 4523
    .end local v2    # "customWidgetProviderInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;>;"
    .end local v9    # "tmpWidgetProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Lnet/oneplus/h2launcher/util/ComponentKey;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;>;"
    .end local v14    # "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v15    # "wm":Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;
    :cond_4
    monitor-exit v17

    goto :goto_1

    .line 4516
    :cond_5
    new-instance v12, Ljava/util/ArrayList;

    sget-object v16, Lnet/oneplus/h2launcher/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    .line 4517
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4518
    .local v12, "widgetProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 4519
    .local v11, "widgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    new-instance v18, Lnet/oneplus/h2launcher/model/WidgetItem;

    move-object/from16 v0, v18

    invoke-direct {v0, v11, v7, v4}, Lnet/oneplus/h2launcher/model/WidgetItem;-><init>(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;Landroid/content/pm/PackageManager;Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 4533
    .end local v11    # "widgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .end local v12    # "widgetProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;>;"
    .restart local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v16

    :try_start_5
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v16

    .line 4535
    :cond_6
    throw v3
.end method

.method public static getWorkerLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 4929
    sget-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static haveSameItemOnDesktop(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1484
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1485
    :cond_0
    const-string v0, "Launcher.Model"

    const-string v1, "invalid component name:%s"

    new-array v3, v13, [Ljava/lang/Object;

    aput-object p1, v3, v12

    invoke-static {v0, v1, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v11, v12

    .line 1509
    :goto_0
    return v11

    .line 1489
    :cond_1
    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "intent"

    aput-object v0, v2, v12

    .line 1490
    .local v2, "columns":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1491
    .local v6, "c":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 1492
    .local v11, "match":Z
    :cond_2
    :goto_1
    if-nez v11, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1494
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1495
    .local v8, "data":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 1496
    const/4 v0, 0x0

    invoke-static {v8, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    .line 1497
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 1498
    .local v7, "cn":Landroid/content/ComponentName;
    invoke-virtual {p1, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1499
    const/4 v11, 0x1

    goto :goto_1

    .line 1502
    .end local v7    # "cn":Landroid/content/ComponentName;
    .end local v8    # "data":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 1503
    .local v9, "e":Ljava/net/URISyntaxException;
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "haveSameItemOnDesktop Invalid uri : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1504
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1503
    invoke-static {v0, v1, v13}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1508
    .end local v9    # "e":Ljava/net/URISyntaxException;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static isPackageDisabled(Landroid/content/Context;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 4606
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v0

    .line 4607
    .local v0, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValidPackage(Landroid/content/Context;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 4624
    if-nez p1, :cond_0

    .line 4625
    const/4 v1, 0x0

    .line 4628
    :goto_0
    return v1

    .line 4627
    :cond_0
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v0

    .line 4628
    .local v0, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isValidPackageActivity(Landroid/content/Context;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    const/4 v1, 0x0

    .line 4612
    if-nez p1, :cond_1

    .line 4619
    :cond_0
    :goto_0
    return v1

    .line 4615
    :cond_1
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v0

    .line 4616
    .local v0, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4619
    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v1

    goto :goto_0
.end method

.method static isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 1
    .param p0, "provider"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 4895
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 4896
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadQuickPageDb(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1165
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1166
    .local v14, "quickPageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1167
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lnet/oneplus/h2launcher/LauncherSettings$QuickPage;->CONTENT_URI:Landroid/net/Uri;

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "size"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "content"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "modified"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "widgetId"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "component"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "reminderTime"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "reminderId"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1179
    .local v17, "sc":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1180
    .local v11, "idIndex":I
    const-string v3, "type"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 1181
    .local v19, "typeIndex":I
    const-string v3, "size"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1182
    .local v18, "sizeIndex":I
    const-string v3, "content"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1183
    .local v9, "contentIndex":I
    const-string v3, "modified"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1184
    .local v13, "modificationIndex":I
    const-string v3, "widgetId"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 1185
    .local v20, "widgetIdIndex":I
    const-string v3, "component"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1186
    .local v8, "componentIndex":I
    const-string v3, "reminderTime"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1187
    .local v16, "reminderTimeIndex":I
    const-string v3, "reminderId"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1188
    .local v15, "reminderIdIndex":I
    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1190
    :try_start_1
    new-instance v12, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;

    invoke-direct {v12}, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;-><init>()V

    .line 1191
    .local v12, "info":Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->id:I

    .line 1192
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->type:I

    .line 1193
    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->size:I

    .line 1194
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->content:Ljava/lang/String;

    .line 1195
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v12, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->modified:J

    .line 1196
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->widgetId:I

    .line 1197
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->component:Ljava/lang/String;

    .line 1198
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v12, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->reminderTime:J

    .line 1199
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v12, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->reminderId:J

    .line 1200
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1201
    .end local v12    # "info":Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;
    :catch_0
    move-exception v10

    .line 1202
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quick page loading interrupted - invalid item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1207
    .end local v8    # "componentIndex":I
    .end local v9    # "contentIndex":I
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "idIndex":I
    .end local v13    # "modificationIndex":I
    .end local v15    # "reminderIdIndex":I
    .end local v16    # "reminderTimeIndex":I
    .end local v18    # "sizeIndex":I
    .end local v19    # "typeIndex":I
    .end local v20    # "widgetIdIndex":I
    :catchall_0
    move-exception v3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v3

    .restart local v8    # "componentIndex":I
    .restart local v9    # "contentIndex":I
    .restart local v11    # "idIndex":I
    .restart local v13    # "modificationIndex":I
    .restart local v15    # "reminderIdIndex":I
    .restart local v16    # "reminderTimeIndex":I
    .restart local v18    # "sizeIndex":I
    .restart local v19    # "typeIndex":I
    .restart local v20    # "widgetIdIndex":I
    :cond_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1211
    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1212
    return-object v14
.end method

.method public static loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1718
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1719
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lnet/oneplus/h2launcher/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 1720
    .local v1, "screensUri":Landroid/net/Uri;
    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadWorkspaceScreensDb - screensUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    const-string v5, "screenRank"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1726
    .local v8, "sc":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1728
    .local v9, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1729
    .local v7, "idIndex":I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1731
    :try_start_1
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1732
    :catch_0
    move-exception v6

    .line 1733
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Desktop items loading interrupted - invalid screens: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1737
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "idIndex":I
    :catch_1
    move-exception v6

    .line 1738
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "Launcher.Model"

    const-string v3, "loadWorkspaceScreensDb - "

    invoke-static {v2, v3, v6}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1740
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1742
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v9

    .line 1740
    .restart local v7    # "idIndex":I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "idIndex":I
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static modifyItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJIIII)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I

    .prologue
    .line 895
    iput-wide p2, p1, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    .line 896
    iput p6, p1, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .line 897
    iput p7, p1, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .line 898
    iput p8, p1, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    .line 899
    iput p9, p1, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    .line 903
    instance-of v1, p0, Lnet/oneplus/h2launcher/Launcher;

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-gez v1, :cond_0

    const-wide/16 v2, -0x65

    cmp-long v1, p2, v2

    if-nez v1, :cond_0

    move-object v1, p0

    .line 905
    check-cast v1, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getHotseatController()Lnet/oneplus/h2launcher/HotseatController;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Lnet/oneplus/h2launcher/HotseatController;->getOrderInHotseat(II)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    .line 910
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 911
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "container"

    iget-wide v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 912
    const-string v1, "cellX"

    iget v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 913
    const-string v1, "cellY"

    iget v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 914
    const-string v1, "rank"

    iget v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 915
    const-string v1, "spanX"

    iget v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 916
    const-string v1, "spanY"

    iget v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 917
    const-string v1, "screen"

    iget-wide v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 919
    const-string v1, "modifyItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lnet/oneplus/h2launcher/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lnet/oneplus/h2launcher/ItemInfo;Ljava/lang/String;)V

    .line 920
    return-void

    .line 907
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    iput-wide p4, p1, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    goto :goto_0
.end method

.method public static modifyItemToIconRearrangementInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    .line 932
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 933
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "container"

    const/16 v2, -0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 935
    const-string v1, "modifyItemToIconRearrangementInDatabase"

    invoke-static {p0, v0, p1, v1}, Lnet/oneplus/h2launcher/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lnet/oneplus/h2launcher/ItemInfo;Ljava/lang/String;)V

    .line 936
    return-void
.end method

.method public static moveItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 831
    iput-wide p2, p1, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    .line 832
    iput p6, p1, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .line 833
    iput p7, p1, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .line 837
    instance-of v1, p0, Lnet/oneplus/h2launcher/Launcher;

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-gez v1, :cond_0

    const-wide/16 v2, -0x65

    cmp-long v1, p2, v2

    if-nez v1, :cond_0

    move-object v1, p0

    .line 839
    check-cast v1, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getHotseatController()Lnet/oneplus/h2launcher/HotseatController;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Lnet/oneplus/h2launcher/HotseatController;->getOrderInHotseat(II)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    .line 844
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 845
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "container"

    iget-wide v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 846
    const-string v1, "cellX"

    iget v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 847
    const-string v1, "cellY"

    iget v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 848
    const-string v1, "rank"

    iget v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 849
    const-string v1, "screen"

    iget-wide v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 851
    const-string v1, "moveItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lnet/oneplus/h2launcher/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lnet/oneplus/h2launcher/ItemInfo;Ljava/lang/String;)V

    .line 852
    return-void

    .line 841
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    iput-wide p4, p1, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    goto :goto_0
.end method

.method static moveItemsInDatabase(Landroid/content/Context;Ljava/util/ArrayList;JI)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;JI)V"
        }
    .end annotation

    .prologue
    .line 861
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 862
    .local v0, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 864
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 865
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/ItemInfo;

    .line 866
    .local v3, "item":Lnet/oneplus/h2launcher/ItemInfo;
    iput-wide p2, v3, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    .line 870
    instance-of v5, p0, Lnet/oneplus/h2launcher/Launcher;

    if-eqz v5, :cond_0

    if-gez p4, :cond_0

    const-wide/16 v6, -0x65

    cmp-long v5, p2, v6

    if-nez v5, :cond_0

    move-object v5, p0

    .line 872
    check-cast v5, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getHotseatController()Lnet/oneplus/h2launcher/HotseatController;

    move-result-object v5

    iget v6, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    iget v7, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    invoke-virtual {v5, v6, v7}, Lnet/oneplus/h2launcher/HotseatController;->getOrderInHotseat(II)I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, v3, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    .line 878
    :goto_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 879
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "container"

    iget-wide v6, v3, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 880
    const-string v5, "cellX"

    iget v6, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 881
    const-string v5, "cellY"

    iget v6, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 882
    const-string v5, "rank"

    iget v6, v3, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 883
    const-string v5, "screen"

    iget-wide v6, v3, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 885
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 875
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    int-to-long v6, p4

    iput-wide v6, v3, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    goto :goto_1

    .line 887
    .end local v3    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_1
    const-string v5, "moveItemInDatabase"

    invoke-static {p0, v0, p1, v5}, Lnet/oneplus/h2launcher/LauncherModel;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 888
    return-void
.end method

.method public static removeQuickPageItem(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 1130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1131
    .local v0, "cr":Landroid/content/ContentResolver;
    int-to-long v4, p1

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/LauncherSettings$QuickPage;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 1133
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$13;

    invoke-direct {v1, v0, v2}, Lnet/oneplus/h2launcher/LauncherModel$13;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1138
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1139
    return-void
.end method

.method static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 282
    sget-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 283
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private stopLoaderLocked()V
    .locals 1

    .prologue
    .line 1672
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLoaderTask:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    .line 1673
    .local v0, "oldTask":Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;
    if-eqz v0, :cond_0

    .line 1674
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->stopLocked()V

    .line 1676
    :cond_0
    return-void
.end method

.method private unbindItemInfosAndClearQueuedBindRunnables()V
    .locals 2

    .prologue
    .line 634
    sget-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 635
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected unbindLauncherItemInfos() to be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DeferredHandler;->cancelAll()V

    .line 642
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherModel;->unbindWorkspaceItemsOnMainThread()V

    .line 643
    return-void
.end method

.method public static updateClockWidgetProviderInfo(I)V
    .locals 4
    .param p0, "widgetLayout"    # I

    .prologue
    .line 4964
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateClockWidgetProviderInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4965
    sget-object v1, Lnet/oneplus/h2launcher/LauncherModel;->sCustomAppWidgetProviderInfos:Ljava/util/HashMap;

    sget-object v2, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 4966
    .local v0, "clockProviderInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    if-eqz v0, :cond_0

    .line 4967
    iput p0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->initialLayout:I

    .line 4969
    :cond_0
    return-void
.end method

.method static updateItemArrays(Lnet/oneplus/h2launcher/ItemInfo;J[Ljava/lang/StackTraceElement;)V
    .locals 11
    .param p0, "item"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p1, "itemId"    # J
    .param p3, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    const-wide/16 v8, -0x64

    const-wide/16 v6, -0x65

    .line 784
    sget-object v3, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 785
    :try_start_0
    invoke-static {p1, p2, p0, p3}, Lnet/oneplus/h2launcher/LauncherModel;->checkItemInfoLocked(JLnet/oneplus/h2launcher/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 787
    iget-wide v4, p0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    cmp-long v2, v4, v8

    if-eqz v2, :cond_0

    iget-wide v4, p0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    .line 790
    sget-object v2, Lnet/oneplus/h2launcher/LauncherModel;->sBgFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    iget-wide v4, p0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Lnet/oneplus/h2launcher/util/LongArrayMap;->containsKey(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " container being set to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", not in the list of folders"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 795
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "Launcher.Model"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    sget-object v2, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v2, p1, p2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/ItemInfo;

    .line 803
    .local v0, "modelItem":Lnet/oneplus/h2launcher/ItemInfo;
    if-eqz v0, :cond_3

    iget-wide v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    cmp-long v2, v4, v8

    if-eqz v2, :cond_1

    iget-wide v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    .line 806
    :cond_1
    iget v2, v0, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 823
    .end local v0    # "modelItem":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_2
    :goto_0
    monitor-exit v3

    .line 824
    return-void

    .line 810
    .restart local v0    # "modelItem":Lnet/oneplus/h2launcher/ItemInfo;
    :pswitch_0
    sget-object v2, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 811
    sget-object v2, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    instance-of v2, v0, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    if-eqz v2, :cond_2

    .line 813
    sget-object v2, Lnet/oneplus/h2launcher/LauncherModel;->sBgDynamicItems:Ljava/util/HashSet;

    check-cast v0, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    .end local v0    # "modelItem":Lnet/oneplus/h2launcher/ItemInfo;
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 823
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 821
    .restart local v0    # "modelItem":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_3
    :try_start_1
    sget-object v2, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 806
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static updateItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    .line 926
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 927
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p1, p0, v0}, Lnet/oneplus/h2launcher/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 928
    const-string v1, "updateItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lnet/oneplus/h2launcher/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lnet/oneplus/h2launcher/ItemInfo;Ljava/lang/String;)V

    .line 929
    return-void
.end method

.method static updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lnet/oneplus/h2launcher/ItemInfo;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "item"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p3, "callingFunction"    # Ljava/lang/String;

    .prologue
    .line 738
    iget-wide v6, p2, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    .line 739
    .local v6, "itemId":J
    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    .line 740
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 742
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    .line 743
    .local v8, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$7;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v8}, Lnet/oneplus/h2launcher/LauncherModel$7;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Lnet/oneplus/h2launcher/ItemInfo;J[Ljava/lang/StackTraceElement;)V

    .line 749
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 750
    return-void
.end method

.method static updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "callingFunction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 754
    .local p1, "valuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 756
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 757
    .local v2, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$8;

    invoke-direct {v1, p2, p1, v2, v0}, Lnet/oneplus/h2launcher/LauncherModel$8;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/StackTraceElement;Landroid/content/ContentResolver;)V

    .line 779
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 780
    return-void
.end method

.method public static updateQuickPageItemContent(Landroid/content/Context;ILjava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1098
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1099
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1100
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v4, "content"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const-string v4, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1104
    .local v3, "where":Ljava/lang/String;
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$11;

    invoke-direct {v1, v0, v2, v3}, Lnet/oneplus/h2launcher/LauncherModel$11;-><init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1109
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1110
    return-void
.end method

.method public static updateQuickPageItemId(Landroid/content/Context;II)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldId"    # I
    .param p2, "newId"    # I

    .prologue
    .line 1081
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1082
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1083
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v4, "_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1084
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1086
    .local v3, "where":Ljava/lang/String;
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$10;

    invoke-direct {v1, v0, v2, v3}, Lnet/oneplus/h2launcher/LauncherModel$10;-><init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1091
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1092
    return-void
.end method

.method public static updateQuickPageItemWidgetId(Landroid/content/Context;II)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "widgetId"    # I

    .prologue
    .line 1113
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1114
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1115
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v4, "widgetId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1116
    const-string v4, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1118
    .local v3, "where":Ljava/lang/String;
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$12;

    invoke-direct {v1, v0, v2, v3}, Lnet/oneplus/h2launcher/LauncherModel$12;-><init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1123
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1124
    return-void
.end method


# virtual methods
.method public addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<+",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p2, "workspaceApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lnet/oneplus/h2launcher/ItemInfo;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v1

    .line 532
    .local v1, "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 631
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/ItemInfo;

    .line 536
    .local v2, "item":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v5, v2, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v5, :cond_1

    move-object v0, v2

    .line 537
    check-cast v0, Lnet/oneplus/h2launcher/AppInfo;

    .line 538
    .local v0, "appInfo":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v5, v0, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    const-string v5, "com.android.stk"

    iget-object v6, v0, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 539
    const-string v5, "Launcher.Model"

    const-string v6, "addAndBindAddedWorkspaceItems contains STK"

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 544
    .end local v0    # "appInfo":Lnet/oneplus/h2launcher/AppInfo;
    .end local v2    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_2
    new-instance v3, Lnet/oneplus/h2launcher/LauncherModel$4;

    invoke-direct {v3, p0, p1, p2, v1}, Lnet/oneplus/h2launcher/LauncherModel$4;-><init>(Lnet/oneplus/h2launcher/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)V

    .line 630
    .local v3, "r":Ljava/lang/Runnable;
    invoke-static {v3}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public addAppsToAllApps(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p2, "allAppsApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 412
    .local v0, "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-nez p2, :cond_0

    .line 413
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "allAppsApps must not be null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 433
    :goto_0
    return-void

    .line 420
    :cond_1
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$3;

    invoke-direct {v1, p0, v0, p2}, Lnet/oneplus/h2launcher/LauncherModel$3;-><init>(Lnet/oneplus/h2launcher/LauncherModel;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 432
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public addClockWidgetProviderInfo(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)V
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .prologue
    .line 4959
    const-string v0, "Launcher.Model"

    const-string v1, "addClockWidgetProviderInfo:"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4960
    sget-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sCustomAppWidgetProviderInfos:Ljava/util/HashMap;

    sget-object v1, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4961
    return-void
.end method

.method canMigrateFromOldLauncherDb(Lnet/oneplus/h2launcher/Launcher;)Z
    .locals 1
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 300
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mOldContentProviderExists:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->isLauncherPreinstalled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 4900
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4901
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.data"

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v2, v2, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/AppInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4902
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.added"

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v2, v2, Lnet/oneplus/h2launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/AppInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4903
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.removed"

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v2, v2, Lnet/oneplus/h2launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/AppInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4904
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.modified"

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v2, v2, Lnet/oneplus/h2launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/AppInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4905
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLoaderTask:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 4906
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLoaderTask:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->dumpState()V

    .line 4910
    :goto_0
    return-void

    .line 4908
    :cond_0
    const-string v0, "Launcher.Model"

    const-string v1, "mLoaderTask=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method enqueuePackageUpdated(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;)V
    .locals 1
    .param p1, "task"    # Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    .prologue
    .line 3998
    sget-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3999
    return-void
.end method

.method public findFolderById(Ljava/lang/Long;)Lnet/oneplus/h2launcher/FolderInfo;
    .locals 4
    .param p1, "folderId"    # Ljava/lang/Long;

    .prologue
    .line 4920
    sget-object v1, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4921
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sBgFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/FolderInfo;

    monitor-exit v1

    return-object v0

    .line 4922
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method findSpaceForItem(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 465
    .local p2, "workspaceScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p3, "addedWorkspaceScreensFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v9, Landroid/util/LongSparseArray;

    invoke-direct {v9}, Landroid/util/LongSparseArray;-><init>()V

    .line 468
    .local v9, "screenItems":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;>;"
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherModel;->assertWorkspaceLoaded()V

    .line 469
    sget-object v13, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v13

    .line 470
    :try_start_0
    sget-object v12, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v12}, Lnet/oneplus/h2launcher/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/ItemInfo;

    .line 471
    .local v4, "info":Lnet/oneplus/h2launcher/ItemInfo;
    iget-wide v14, v4, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    const-wide/16 v16, -0x64

    cmp-long v14, v14, v16

    if-nez v14, :cond_0

    .line 472
    iget-wide v14, v4, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-virtual {v9, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 473
    .local v5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    if-nez v5, :cond_1

    .line 474
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .restart local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    iget-wide v14, v4, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-virtual {v9, v14, v15, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 477
    :cond_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 480
    .end local v4    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    :cond_2
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    const-wide/16 v10, 0x0

    .line 484
    .local v10, "screenId":J
    const/4 v12, 0x2

    new-array v2, v12, [I

    .line 485
    .local v2, "cordinates":[I
    const/4 v3, 0x0

    .line 487
    .local v3, "found":Z
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 489
    .local v8, "screenCount":I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v6, 0x0

    .line 490
    .local v6, "preferredScreenIndex":I
    :goto_1
    if-ge v6, v8, :cond_3

    .line 491
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 493
    invoke-virtual {v9, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 492
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v12, v2, v0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z

    move-result v3

    .line 496
    :cond_3
    if-nez v3, :cond_4

    .line 498
    const/4 v7, 0x1

    .local v7, "screen":I
    :goto_2
    if-ge v7, v8, :cond_4

    .line 499
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 501
    invoke-virtual {v9, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 500
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v12, v2, v0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 503
    const/4 v3, 0x1

    .line 509
    .end local v7    # "screen":I
    :cond_4
    if-nez v3, :cond_7

    .line 511
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v12

    invoke-virtual {v12}, Lnet/oneplus/h2launcher/LauncherProvider;->generateNewScreenId()J

    move-result-wide v10

    .line 514
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-virtual {v9, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 518
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v12, v2, v0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z

    move-result v12

    if-nez v12, :cond_7

    .line 520
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "Can\'t find space to add the item"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 489
    .end local v6    # "preferredScreenIndex":I
    :cond_5
    const/4 v6, 0x1

    goto :goto_1

    .line 498
    .restart local v6    # "preferredScreenIndex":I
    .restart local v7    # "screen":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 523
    .end local v7    # "screen":I
    :cond_7
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    return-object v12
.end method

.method forceReload()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1621
    invoke-virtual {p0, v0, v0}, Lnet/oneplus/h2launcher/LauncherModel;->resetLoadedState(ZZ)V

    .line 1626
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherModel;->startLoaderFromBackground()V

    .line 1627
    return-void
.end method

.method public getAllAppsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4936
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v0, v0, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAppShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Landroid/content/Context;Landroid/database/Cursor;IIZZ)Lnet/oneplus/h2launcher/ShortcutInfo;
    .locals 7
    .param p1, "manager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "c"    # Landroid/database/Cursor;
    .param p6, "iconIndex"    # I
    .param p7, "titleIndex"    # I
    .param p8, "allowMissingTarget"    # Z
    .param p9, "useLowResIcon"    # Z

    .prologue
    .line 4699
    if-nez p3, :cond_1

    .line 4700
    const-string v4, "Launcher.Model"

    const-string v5, "Null user found in getShortcutInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4701
    const/4 v1, 0x0

    .line 4746
    :cond_0
    :goto_0
    return-object v1

    .line 4704
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4705
    .local v0, "componentName":Landroid/content/ComponentName;
    if-nez v0, :cond_2

    .line 4706
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing component found in getShortcutInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4707
    const/4 v1, 0x0

    goto :goto_0

    .line 4710
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4711
    .local v3, "newIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4712
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4713
    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLauncherApps:Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    invoke-virtual {v4, v3, p3}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    move-result-object v2

    .line 4714
    .local v2, "lai":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    if-nez v2, :cond_3

    if-nez p8, :cond_3

    .line 4715
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing activity found in getShortcutInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4716
    const/4 v1, 0x0

    goto :goto_0

    .line 4720
    :cond_3
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/oos/StyleManager;->showDynamicIcon()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->isDynamicIcon(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4721
    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->createShortcutInfo(Landroid/content/ComponentName;)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v1

    .line 4728
    .local v1, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :goto_1
    iget-object v4, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_4

    if-eqz p5, :cond_4

    .line 4729
    invoke-interface {p5, p7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 4733
    :cond_4
    iget-object v4, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_5

    .line 4734
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 4737
    :cond_5
    const/4 v4, 0x0

    iput v4, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    .line 4738
    iput-object p3, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 4739
    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherModel;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    iget-object v5, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object v6, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v4, v5, v6}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 4740
    if-eqz v2, :cond_0

    .line 4741
    invoke-static {v2}, Lnet/oneplus/h2launcher/AppInfo;->initFlags(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;)I

    move-result v4

    iput v4, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    .line 4742
    instance-of v4, v1, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 4743
    check-cast v4, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    invoke-interface {v4}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->initFlags()V

    goto/16 :goto_0

    .line 4723
    .end local v1    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_6
    new-instance v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>()V

    .restart local v1    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    goto :goto_1
.end method

.method public getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    .locals 1

    .prologue
    .line 4913
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFolderById(Landroid/content/Context;Lnet/oneplus/h2launcher/util/LongArrayMap;J)Lnet/oneplus/h2launcher/FolderInfo;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lnet/oneplus/h2launcher/util/LongArrayMap",
            "<",
            "Lnet/oneplus/h2launcher/FolderInfo;",
            ">;J)",
            "Lnet/oneplus/h2launcher/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 1010
    .local p2, "folderList":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/FolderInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1011
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id=? and (itemType=? or itemType=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 1013
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x1

    const/16 v17, 0x2

    .line 1014
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x0

    .line 1011
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1017
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1018
    const-string v3, "itemType"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1019
    .local v13, "itemTypeIndex":I
    const-string v3, "title"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1020
    .local v16, "titleIndex":I
    const-string v3, "container"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1021
    .local v11, "containerIndex":I
    const-string v3, "screen"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1022
    .local v15, "screenIndex":I
    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1023
    .local v9, "cellXIndex":I
    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1024
    .local v10, "cellYIndex":I
    const-string v3, "options"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1026
    .local v14, "optionsIndex":I
    const/4 v12, 0x0

    .line 1027
    .local v12, "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1034
    :goto_0
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lnet/oneplus/h2launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1035
    move-wide/from16 v0, p3

    iput-wide v0, v12, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    .line 1036
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v12, Lnet/oneplus/h2launcher/FolderInfo;->container:J

    .line 1037
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v12, Lnet/oneplus/h2launcher/FolderInfo;->screenId:J

    .line 1038
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lnet/oneplus/h2launcher/FolderInfo;->cellX:I

    .line 1039
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lnet/oneplus/h2launcher/FolderInfo;->cellY:I

    .line 1040
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lnet/oneplus/h2launcher/FolderInfo;->options:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1048
    .end local v9    # "cellXIndex":I
    .end local v10    # "cellYIndex":I
    .end local v11    # "containerIndex":I
    .end local v12    # "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    .end local v13    # "itemTypeIndex":I
    .end local v14    # "optionsIndex":I
    .end local v15    # "screenIndex":I
    .end local v16    # "titleIndex":I
    :goto_1
    return-object v12

    .line 1029
    .restart local v9    # "cellXIndex":I
    .restart local v10    # "cellYIndex":I
    .restart local v11    # "containerIndex":I
    .restart local v12    # "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    .restart local v13    # "itemTypeIndex":I
    .restart local v14    # "optionsIndex":I
    .restart local v15    # "screenIndex":I
    .restart local v16    # "titleIndex":I
    :pswitch_0
    :try_start_1
    invoke-static/range {p2 .. p4}, Lnet/oneplus/h2launcher/LauncherModel;->findOrMakeFolder(Lnet/oneplus/h2launcher/util/LongArrayMap;J)Lnet/oneplus/h2launcher/FolderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    goto :goto_0

    .line 1045
    .end local v9    # "cellXIndex":I
    .end local v10    # "cellYIndex":I
    .end local v11    # "containerIndex":I
    .end local v12    # "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    .end local v13    # "itemTypeIndex":I
    .end local v14    # "optionsIndex":I
    .end local v15    # "screenIndex":I
    .end local v16    # "titleIndex":I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1048
    const/4 v12, 0x0

    goto :goto_1

    .line 1045
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1027
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method getItemInfoForComponentName(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "cname"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4784
    new-instance v0, Lnet/oneplus/h2launcher/LauncherModel$23;

    invoke-direct {v0, p0, p1, p2}, Lnet/oneplus/h2launcher/LauncherModel$23;-><init>(Lnet/oneplus/h2launcher/LauncherModel;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4794
    .local v0, "filter":Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;
    sget-object v1, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/LauncherModel;->filterItemInfos(Ljava/lang/Iterable;Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getRestoredItemInfo(Landroid/database/Cursor;ILandroid/content/Intent;IILnet/oneplus/h2launcher/util/CursorIconInfo;Landroid/content/Context;)Lnet/oneplus/h2launcher/ShortcutInfo;
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "titleIndex"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "promiseType"    # I
    .param p5, "itemType"    # I
    .param p6, "iconInfo"    # Lnet/oneplus/h2launcher/util/CursorIconInfo;
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 4638
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/oos/StyleManager;->showDynamicIcon()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->isDynamicIcon(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4639
    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->createShortcutInfo(Landroid/content/Intent;)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v1

    .line 4643
    .local v1, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :goto_0
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v3

    iput-object v3, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 4645
    invoke-virtual {p6, p1, v1, p7}, Lnet/oneplus/h2launcher/util/CursorIconInfo;->loadIcon(Landroid/database/Cursor;Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4647
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 4648
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    iget-object v4, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, p3, v4, v5}, Lnet/oneplus/h2launcher/AssetCache;->getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V

    .line 4653
    :goto_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4

    .line 4654
    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4655
    .local v2, "title":Ljava/lang/String;
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4656
    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 4666
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    :goto_3
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    iget-object v4, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object v5, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 4667
    iput p5, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    .line 4668
    iput-object p3, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    .line 4669
    iput p4, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->status:I

    .line 4670
    return-object v1

    .line 4641
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    .end local v1    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    new-instance v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>()V

    .restart local v1    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    goto :goto_0

    .line 4650
    .restart local v0    # "icon":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 4654
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 4658
    :cond_4
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_6

    .line 4659
    iget-object v3, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4660
    if-eqz p1, :cond_5

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    iput-object v3, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_5
    const-string v3, ""

    goto :goto_4

    .line 4663
    :cond_6
    new-instance v3, Ljava/security/InvalidParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid restoreType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method getRestoredItemIntent(Landroid/database/Cursor;Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4678
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4679
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;ILnet/oneplus/h2launcher/util/CursorIconInfo;)Lnet/oneplus/h2launcher/ShortcutInfo;
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "titleIndex"    # I
    .param p4, "iconInfo"    # Lnet/oneplus/h2launcher/util/CursorIconInfo;

    .prologue
    const/4 v4, 0x1

    .line 4802
    new-instance v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>()V

    .line 4804
    .local v1, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v2

    iput-object v2, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 4805
    iput v4, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    .line 4809
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 4811
    invoke-virtual {p4, p1, v1, p2}, Lnet/oneplus/h2launcher/util/CursorIconInfo;->loadIcon(Landroid/database/Cursor;Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4813
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 4814
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    iget-object v3, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/AssetCache;->getDefaultIcon(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4815
    iput-boolean v4, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->usingFallbackIcon:Z

    .line 4817
    :cond_0
    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 4818
    return-object v1
.end method

.method infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lnet/oneplus/h2launcher/ShortcutInfo;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 4822
    const-string v9, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 4823
    .local v6, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4824
    .local v7, "name":Ljava/lang/String;
    const-string v9, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 4826
    .local v0, "bitmap":Landroid/os/Parcelable;
    if-nez v6, :cond_0

    .line 4828
    const-string v9, "Launcher.Model"

    const-string v10, "Can\'t construct ShorcutInfo with null intent"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4829
    const/4 v5, 0x0

    .line 4875
    .end local v0    # "bitmap":Landroid/os/Parcelable;
    :goto_0
    return-object v5

    .line 4832
    .restart local v0    # "bitmap":Landroid/os/Parcelable;
    :cond_0
    const/4 v3, 0x0

    .line 4833
    .local v3, "icon":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 4834
    .local v1, "customIcon":Z
    const/4 v4, 0x0

    .line 4836
    .local v4, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    instance-of v9, v0, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_3

    .line 4837
    check-cast v0, Landroid/graphics/Bitmap;

    .end local v0    # "bitmap":Landroid/os/Parcelable;
    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 4838
    const/4 v1, 0x1

    .line 4849
    :cond_1
    :goto_1
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v9

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/oos/StyleManager;->showDynamicIcon()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->isDynamicIcon(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 4850
    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->createShortcutInfo(Landroid/content/Intent;)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v5

    .line 4857
    .local v5, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :goto_2
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v9

    iput-object v9, v5, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 4858
    if-nez v3, :cond_5

    .line 4859
    iget-object v9, p0, Lnet/oneplus/h2launcher/LauncherModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    iget-object v10, v5, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v9, v10}, Lnet/oneplus/h2launcher/AssetCache;->getDefaultIcon(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 4860
    const/4 v9, 0x1

    iput-boolean v9, v5, Lnet/oneplus/h2launcher/ShortcutInfo;->usingFallbackIcon:Z

    .line 4867
    :cond_2
    :goto_3
    invoke-virtual {v5, v3}, Lnet/oneplus/h2launcher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 4869
    invoke-static {v7}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 4870
    iget-object v9, p0, Lnet/oneplus/h2launcher/LauncherModel;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    iget-object v10, v5, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object v11, v5, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v9, v10, v11}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v5, Lnet/oneplus/h2launcher/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 4871
    iput-object v6, v5, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 4872
    iput-boolean v1, v5, Lnet/oneplus/h2launcher/ShortcutInfo;->customIcon:Z

    .line 4873
    iput-object v4, v5, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    goto :goto_0

    .line 4840
    .end local v5    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    .restart local v0    # "bitmap":Landroid/os/Parcelable;
    :cond_3
    const-string v9, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 4841
    .local v2, "extra":Landroid/os/Parcelable;
    instance-of v9, v2, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v9, :cond_1

    move-object v4, v2

    .line 4842
    check-cast v4, Landroid/content/Intent$ShortcutIconResource;

    .line 4843
    iget-object v9, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-static {v9, v10, p1}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    .line 4852
    .end local v0    # "bitmap":Landroid/os/Parcelable;
    .end local v2    # "extra":Landroid/os/Parcelable;
    :cond_4
    new-instance v5, Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-direct {v5}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>()V

    .restart local v5    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    goto :goto_2

    .line 4862
    :cond_5
    invoke-static {v3}, Lnet/oneplus/h2launcher/IconCache;->checkAndResizeIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 4863
    .local v8, "resizedIcon":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_2

    .line 4864
    move-object v3, v8

    goto :goto_3
.end method

.method public initialize(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    .prologue
    .line 1472
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1475
    :try_start_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherModel;->unbindItemInfosAndClearQueuedBindRunnables()V

    .line 1476
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 1477
    monitor-exit v1

    .line 1478
    return-void

    .line 1477
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAllAppsLoaded()Z
    .locals 1

    .prologue
    .line 1746
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method public isCurrentCallbacks(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)Z
    .locals 1
    .param p1, "callbacks"    # Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    .prologue
    .line 1679
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isExternalStorageRemovable()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public loadAndBindWidgetsAndShortcuts(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Z)V
    .locals 1
    .param p1, "callbacks"    # Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    .param p2, "refresh"    # Z

    .prologue
    .line 4561
    new-instance v0, Lnet/oneplus/h2launcher/LauncherModel$22;

    invoke-direct {v0, p0, p2, p1}, Lnet/oneplus/h2launcher/LauncherModel$22;-><init>(Lnet/oneplus/h2launcher/LauncherModel;ZLnet/oneplus/h2launcher/LauncherModel$Callbacks;)V

    invoke-static {v0}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 4579
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 1528
    const/4 v0, 0x1

    .line 1529
    .local v0, "op":I
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v0, v2, p2}, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;-><init>(Lnet/oneplus/h2launcher/LauncherModel;I[Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->enqueuePackageUpdated(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;)V

    .line 1531
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 1514
    const/4 v0, 0x2

    .line 1515
    .local v0, "op":I
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v0, v2, p2}, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;-><init>(Lnet/oneplus/h2launcher/LauncherModel;I[Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->enqueuePackageUpdated(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;)V

    .line 1517
    return-void
.end method

.method public onPackageIconsUpdated(Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 11
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3946
    .local p1, "updatedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v1

    .line 3947
    .local v1, "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3948
    .local v5, "updatedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3952
    .local v6, "updatedShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    sget-object v9, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3953
    :try_start_0
    sget-object v8, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/ItemInfo;

    .line 3954
    .local v3, "info":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v10, v3, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v10, :cond_0

    iget-object v10, v3, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {p2, v10}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget v10, v3, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    if-nez v10, :cond_0

    .line 3956
    move-object v0, v3

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    move-object v4, v0

    .line 3957
    .local v4, "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 3958
    .local v2, "cn":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3959
    iget-object v10, p0, Lnet/oneplus/h2launcher/LauncherModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v4, v10}, Lnet/oneplus/h2launcher/ShortcutInfo;->updateIcon(Lnet/oneplus/h2launcher/AssetCache;)V

    .line 3960
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3965
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v4    # "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 3964
    :cond_1
    :try_start_1
    iget-object v8, p0, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    invoke-virtual {v8, p1, p2, v5}, Lnet/oneplus/h2launcher/AllAppsList;->updateIconsAndLabels(Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/ArrayList;)V

    .line 3965
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3967
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 3968
    move-object v7, p2

    .line 3969
    .local v7, "userFinal":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    iget-object v8, p0, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    new-instance v9, Lnet/oneplus/h2launcher/LauncherModel$20;

    invoke-direct {v9, p0, v1, v6, v7}, Lnet/oneplus/h2launcher/LauncherModel$20;-><init>(Lnet/oneplus/h2launcher/LauncherModel;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3981
    .end local v7    # "userFinal":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 3982
    iget-object v8, p0, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    new-instance v9, Lnet/oneplus/h2launcher/LauncherModel$21;

    invoke-direct {v9, p0, v1, v5}, Lnet/oneplus/h2launcher/LauncherModel$21;-><init>(Lnet/oneplus/h2launcher/LauncherModel;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3994
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p0, v1, v8}, Lnet/oneplus/h2launcher/LauncherModel;->loadAndBindWidgetsAndShortcuts(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Z)V

    .line 3995
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 1521
    const/4 v0, 0x3

    .line 1522
    .local v0, "op":I
    new-instance v1, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v0, v2, p2}, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;-><init>(Lnet/oneplus/h2launcher/LauncherModel;I[Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->enqueuePackageUpdated(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;)V

    .line 1524
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "replacing"    # Z

    .prologue
    .line 1536
    if-nez p3, :cond_1

    .line 1537
    new-instance v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;-><init>(Lnet/oneplus/h2launcher/LauncherModel;I[Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/LauncherModel;->enqueuePackageUpdated(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;)V

    .line 1539
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mAppsCanBeOnRemoveableStorage:Z

    if-eqz v0, :cond_0

    .line 1543
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherModel;->startLoaderFromBackground()V

    .line 1550
    :cond_0
    :goto_0
    return-void

    .line 1547
    :cond_1
    new-instance v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p2}, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;-><init>(Lnet/oneplus/h2launcher/LauncherModel;I[Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/LauncherModel;->enqueuePackageUpdated(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0
.end method

.method public onPackagesSuspended([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 1564
    new-instance v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1, p2}, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;-><init>(Lnet/oneplus/h2launcher/LauncherModel;I[Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/LauncherModel;->enqueuePackageUpdated(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;)V

    .line 1567
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "replacing"    # Z

    .prologue
    .line 1555
    if-nez p3, :cond_0

    .line 1556
    new-instance v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p2}, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;-><init>(Lnet/oneplus/h2launcher/LauncherModel;I[Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/LauncherModel;->enqueuePackageUpdated(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;)V

    .line 1560
    :cond_0
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 1571
    new-instance v0, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1, p2}, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;-><init>(Lnet/oneplus/h2launcher/LauncherModel;I[Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/LauncherModel;->enqueuePackageUpdated(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;)V

    .line 1574
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1584
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1585
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1587
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    .line 1588
    .local v1, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    if-eqz v1, :cond_1

    .line 1589
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v2

    .line 1590
    .local v2, "assetCache":Lnet/oneplus/h2launcher/AssetCache;
    if-eqz v2, :cond_0

    .line 1591
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/AssetCache;->updateCurrentLocale()V

    .line 1593
    :cond_0
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getWidgetCache()Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    move-result-object v6

    .line 1594
    .local v6, "widgetCache":Lnet/oneplus/h2launcher/WidgetPreviewLoader;
    if-eqz v6, :cond_1

    .line 1595
    invoke-virtual {v6}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->clearDB()V

    .line 1598
    .end local v2    # "assetCache":Lnet/oneplus/h2launcher/AssetCache;
    .end local v6    # "widgetCache":Lnet/oneplus/h2launcher/WidgetPreviewLoader;
    :cond_1
    invoke-static {p1}, Lnet/oneplus/h2launcher/Folder;->updateHintText(Landroid/content/Context;)V

    .line 1599
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherModel;->forceReload()V

    .line 1618
    .end local v1    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    :cond_2
    :goto_0
    return-void

    .line 1600
    :cond_3
    const-string v7, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1601
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v3

    .line 1602
    .local v3, "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-eqz v3, :cond_2

    .line 1603
    const/4 v7, 0x1

    invoke-interface {v3, v7}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->bindSearchProviderChanged(Z)V

    goto :goto_0

    .line 1605
    .end local v3    # "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    :cond_4
    const-string v7, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 1606
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1607
    :cond_5
    invoke-static {p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v7

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->enableAndResetCache()V

    .line 1608
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherModel;->forceReload()V

    goto :goto_0

    .line 1609
    :cond_6
    const-string v7, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 1610
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1611
    :cond_7
    invoke-static {p2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->fromIntent(Landroid/content/Intent;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v5

    .line 1612
    .local v5, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    if-eqz v5, :cond_2

    .line 1613
    const-string v7, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v4, 0x7

    .line 1615
    .local v4, "operation":I
    :goto_1
    new-instance v7, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-direct {v7, p0, v4, v8, v5}, Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;-><init>(Lnet/oneplus/h2launcher/LauncherModel;I[Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    invoke-virtual {p0, v7}, Lnet/oneplus/h2launcher/LauncherModel;->enqueuePackageUpdated(Lnet/oneplus/h2launcher/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 1613
    .end local v4    # "operation":I
    :cond_8
    const/16 v4, 0x8

    goto :goto_1
.end method

.method public onWorkspaceBindItem()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 4972
    const-string v0, "Launcher.Model"

    const-string v1, "onWorkspaceBindItem# isLoading: %b, currentPageBindingFinished: %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lnet/oneplus/h2launcher/LauncherModel;->mIsLoaderTaskRunning:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/LauncherModel;->mCurrentPageBindingFinished:Z

    .line 4973
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    .line 4972
    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4974
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mCurrentPageBindingFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mIsLoaderTaskRunning:Z

    if-eqz v0, :cond_0

    .line 4975
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/LauncherModel;->mCurrentPageBindingFinished:Z

    .line 4976
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLoaderTask:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    invoke-static {v0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->access$800(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;)V

    .line 4978
    :cond_0
    return-void
.end method

.method public resetLoadedState(ZZ)V
    .locals 4
    .param p1, "resetAllAppsLoaded"    # Z
    .param p2, "resetWorkspaceLoaded"    # Z

    .prologue
    .line 1630
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1633
    :try_start_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherModel;->stopLoaderLocked()V

    .line 1634
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/LauncherModel;->mAllAppsLoaded:Z

    .line 1635
    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/LauncherModel;->mWorkspaceLoaded:Z

    .line 1637
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1639
    :cond_2
    const-string v1, "Launcher.Model"

    const-string v3, "LoaderTask running with no launcher"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    monitor-exit v2

    .line 1646
    :goto_0
    return-void

    .line 1642
    :cond_3
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    .line 1643
    .local v0, "callback":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->resetLoaderTask()V

    .line 1645
    monitor-exit v2

    goto :goto_0

    .end local v0    # "callback":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 271
    sget-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mHandler:Lnet/oneplus/h2launcher/DeferredHandler;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public setPackageState(Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 1
    .param p1, "installInfo"    # Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;

    .prologue
    .line 304
    new-instance v0, Lnet/oneplus/h2launcher/LauncherModel$1;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/LauncherModel$1;-><init>(Lnet/oneplus/h2launcher/LauncherModel;Lnet/oneplus/h2launcher/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 355
    .local v0, "updateRunnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 356
    return-void
.end method

.method shortcutExists(Landroid/content/Context;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 954
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherModel;->assertWorkspaceLoaded()V

    .line 955
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 956
    .local v7, "matchUri":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v13, "profile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    .line 958
    .local v2, "existExtraProfile":Z
    if-eqz v2, :cond_1

    .line 959
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 960
    .local v4, "intentWithExtraProfile":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 961
    .local v5, "intentWithoutExtraProfile":Landroid/content/Intent;
    const-string v13, "profile"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 967
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 970
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 971
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 972
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 973
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 974
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 975
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 987
    .end local v8    # "packageName":Ljava/lang/String;
    :goto_1
    sget-object v14, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v14

    .line 988
    :try_start_0
    sget-object v13, Lnet/oneplus/h2launcher/LauncherModel;->sBgItemsIdMap:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v13}, Lnet/oneplus/h2launcher/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/ItemInfo;

    .line 989
    .local v6, "item":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v15, v6, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v15, :cond_0

    .line 990
    move-object v0, v6

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    move-object v3, v0

    .line 991
    .local v3, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v15, v3, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    if-nez v15, :cond_4

    iget-object v12, v3, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 993
    .local v12, "targetIntent":Landroid/content/Intent;
    :goto_2
    if-eqz v12, :cond_0

    iget-object v15, v3, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 994
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 995
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    .line 996
    .local v9, "s":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 997
    const/4 v13, 0x1

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    .end local v3    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v6    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v9    # "s":Ljava/lang/String;
    .end local v12    # "targetIntent":Landroid/content/Intent;
    :goto_3
    return v13

    .line 963
    .end local v4    # "intentWithExtraProfile":Landroid/content/Intent;
    .end local v5    # "intentWithoutExtraProfile":Landroid/content/Intent;
    :cond_1
    invoke-static/range {p1 .. p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v10

    .line 964
    .local v10, "serialNumber":J
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 965
    .restart local v5    # "intentWithoutExtraProfile":Landroid/content/Intent;
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v14, "profile"

    invoke-virtual {v13, v14, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    .restart local v4    # "intentWithExtraProfile":Landroid/content/Intent;
    goto/16 :goto_0

    .line 977
    .end local v10    # "serialNumber":J
    .restart local v8    # "packageName":Ljava/lang/String;
    :cond_2
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v13, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 978
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 979
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v13, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 980
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 983
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 984
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 991
    .restart local v3    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    .restart local v6    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_4
    :try_start_1
    iget-object v12, v3, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    goto/16 :goto_2

    .line 1002
    .end local v3    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v6    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_5
    monitor-exit v14

    .line 1003
    const/4 v13, 0x0

    goto :goto_3

    .line 1002
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13
.end method

.method public startLoader(I)V
    .locals 1
    .param p1, "synchronousBindPage"    # I

    .prologue
    .line 1683
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/LauncherModel;->startLoader(II)V

    .line 1684
    return-void
.end method

.method public startLoader(II)V
    .locals 3
    .param p1, "synchronousBindPage"    # I
    .param p2, "loadFlags"    # I

    .prologue
    .line 1688
    invoke-static {}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->enableInstallQueue()V

    .line 1689
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1691
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1693
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherModel;->stopLoaderLocked()V

    .line 1694
    new-instance v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel;->mApp:Lnet/oneplus/h2launcher/LauncherAppState;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2, p2}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;-><init>(Lnet/oneplus/h2launcher/LauncherModel;Landroid/content/Context;I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLoaderTask:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    .line 1695
    const/16 v0, -0x3e9

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mAllAppsLoaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mWorkspaceLoaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mIsLoaderTaskRunning:Z

    if-nez v0, :cond_1

    .line 1697
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLoaderTask:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->runBindSynchronousPage(I)V

    .line 1703
    :cond_0
    :goto_0
    monitor-exit v1

    .line 1704
    return-void

    .line 1699
    :cond_1
    sget-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 1700
    sget-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLoaderTask:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1703
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startLoaderFromBackground()V
    .locals 3

    .prologue
    .line 1655
    const/4 v1, 0x0

    .line 1656
    .local v1, "runLoader":Z
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 1657
    .local v0, "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1659
    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1660
    const/4 v1, 0x1

    .line 1663
    :cond_0
    if-eqz v1, :cond_1

    .line 1664
    const/16 v2, -0x3e9

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/LauncherModel;->startLoader(I)V

    .line 1666
    :cond_1
    return-void
.end method

.method public stopLoader()V
    .locals 2

    .prologue
    .line 1707
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1708
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLoaderTask:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel;->mLoaderTask:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->stopLocked()V

    .line 1711
    :cond_0
    monitor-exit v1

    .line 1712
    return-void

    .line 1711
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method unbindWorkspaceItemsOnMainThread()V
    .locals 4

    .prologue
    .line 649
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 650
    .local v1, "tmpItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    sget-object v3, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 651
    :try_start_0
    sget-object v2, Lnet/oneplus/h2launcher/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 652
    sget-object v2, Lnet/oneplus/h2launcher/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 653
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    new-instance v0, Lnet/oneplus/h2launcher/LauncherModel$5;

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/LauncherModel$5;-><init>(Lnet/oneplus/h2launcher/LauncherModel;Ljava/util/ArrayList;)V

    .line 662
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 663
    return-void

    .line 653
    .end local v0    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateSessionDisplayInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 362
    new-instance v0, Lnet/oneplus/h2launcher/LauncherModel$2;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/LauncherModel$2;-><init>(Lnet/oneplus/h2launcher/LauncherModel;Ljava/lang/String;)V

    .line 406
    .local v0, "updateRunnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 407
    return-void
.end method

.method updateWidgetsModel(Z)V
    .locals 8
    .param p1, "refresh"    # Z

    .prologue
    .line 4587
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->assertWorkerThread()V

    .line 4588
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherModel;->mApp:Lnet/oneplus/h2launcher/LauncherAppState;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4589
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4590
    .local v5, "widgetsAndShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/WidgetItem;>;"
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherModel;->mApp:Lnet/oneplus/h2launcher/LauncherAppState;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lnet/oneplus/h2launcher/LauncherModel;->getWidgetProviders(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4591
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4595
    .local v4, "shortcutsIntent":Landroid/content/Intent;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4596
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getCustomShortcutActivityList(Lnet/oneplus/h2launcher/util/PackageUserKey;)Ljava/util/List;

    move-result-object v2

    .line 4597
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;

    .line 4598
    .local v1, "info":Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;
    new-instance v7, Lnet/oneplus/h2launcher/model/WidgetItem;

    invoke-direct {v7, v1}, Lnet/oneplus/h2launcher/model/WidgetItem;-><init>(Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4600
    .end local v1    # "info":Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;
    :cond_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherModel;->mBgWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

    invoke-virtual {v6, v5, p1}, Lnet/oneplus/h2launcher/model/WidgetsModel;->setWidgetsAndShortcuts(Ljava/util/ArrayList;Z)V

    .line 4601
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherModel;->mBgWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/model/WidgetsModel;->clone()Lnet/oneplus/h2launcher/model/WidgetsModel;

    move-result-object v6

    iput-object v6, p0, Lnet/oneplus/h2launcher/LauncherModel;->mFgWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

    .line 4602
    return-void
.end method

.method public updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1392
    .local p2, "screens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1393
    .local v5, "screensCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1394
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v6, Lnet/oneplus/h2launcher/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 1397
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1398
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1399
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1400
    .local v2, "id":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gez v7, :cond_0

    .line 1401
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1405
    .end local v2    # "id":J
    :cond_1
    new-instance v4, Lnet/oneplus/h2launcher/LauncherModel$18;

    invoke-direct {v4, p0, v6, v5, v0}, Lnet/oneplus/h2launcher/LauncherModel$18;-><init>(Lnet/oneplus/h2launcher/LauncherModel;Landroid/net/Uri;Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    .line 1432
    .local v4, "r":Ljava/lang/Runnable;
    invoke-static {v4}, Lnet/oneplus/h2launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1433
    return-void
.end method
