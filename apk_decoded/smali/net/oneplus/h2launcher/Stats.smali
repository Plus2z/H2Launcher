.class public Lnet/oneplus/h2launcher/Stats;
.super Ljava/lang/Object;
.source "Stats.java"

# interfaces
.implements Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/Stats$ContactHistoryComparator;,
        Lnet/oneplus/h2launcher/Stats$PkgHistoryComparator;,
        Lnet/oneplus/h2launcher/Stats$ContactHistory;,
        Lnet/oneplus/h2launcher/Stats$PkgHistory;,
        Lnet/oneplus/h2launcher/Stats$Stat;,
        Lnet/oneplus/h2launcher/Stats$LoadStats;,
        Lnet/oneplus/h2launcher/Stats$SaveStats;,
        Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;,
        Lnet/oneplus/h2launcher/Stats$LaunchSourceUtils;,
        Lnet/oneplus/h2launcher/Stats$LaunchSourceProvider;
    }
.end annotation


# static fields
.field private static final APP_UPDATE_DELAY:I = 0x1f4

.field public static final CONTAINER_ALL_APPS:Ljava/lang/String; = "all_apps"

.field public static final CONTAINER_HOMESCREEN:Ljava/lang/String; = "homescreen"

.field public static final CONTAINER_HOTSEAT:Ljava/lang/String; = "hotseat"

.field public static final CONTAINER_SEARCH_BOX:Ljava/lang/String; = "search_box"

.field public static final DATABASE_COLUMN_COMPONENT_NAME:I = 0x1

.field public static final DATABASE_COLUMN_DISPLAY_NAME:I = 0x1

.field public static final DATABASE_COLUMN_HISTORY_TIME:I = 0x4

.field public static final DATABASE_COLUMN_ID:I = 0x0

.field public static final DATABASE_COLUMN_LAUNCH_COUNT:I = 0x3

.field public static final DATABASE_COLUMN_PACKAGE_NAME:I = 0x2

.field public static final DATABASE_COLUMN_PHOTO_URI:I = 0x2

.field private static final INITIAL_STATS_SIZE:I = 0x64

.field private static final LOCAL_LAUNCH_LOG:Z = false

.field private static final LOG_TAG_LAUNCH:I = 0x1000

.field private static final LOG_TAG_VERSION:I = 0x1

.field private static final LOG_VERSION:I = 0x1

.field private static final PACKAGE_NAME_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field private static final PACKAGE_NAME_DIALER:Ljava/lang/String; = "com.android.dialer"

.field private static final PACKAGE_NAME_MMS:Ljava/lang/String; = "com.android.mms"

.field public static final SOURCE_EXTRA_CONTAINER:Ljava/lang/String; = "container"

.field public static final SOURCE_EXTRA_CONTAINER_PAGE:Ljava/lang/String; = "container_page"

.field public static final SOURCE_EXTRA_SUB_CONTAINER:Ljava/lang/String; = "sub_container"

.field public static final SOURCE_EXTRA_SUB_CONTAINER_PAGE:Ljava/lang/String; = "sub_container_page"

.field private static final STATS_VERSION:I = 0x2

.field public static final SUB_CONTAINER_ALL_APPS_A_Z:Ljava/lang/String; = "a-z"

.field public static final SUB_CONTAINER_ALL_APPS_PREDICTION:Ljava/lang/String; = "prediction"

.field public static final SUB_CONTAINER_ALL_APPS_SEARCH:Ljava/lang/String; = "search"

.field public static final SUB_CONTAINER_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG:Ljava/lang/String; = "Stats"


# instance fields
.field private mAppPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsHistoryLaunchCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsHistoryTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;

.field private mContactComparator:Lnet/oneplus/h2launcher/Stats$ContactHistoryComparator;

.field private mContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsHistoryLaunchCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsHistoryTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/Stats$Stat;",
            ">;"
        }
    .end annotation
.end field

.field mDeepShortcutDarkList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalSearchDbHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;

.field private final mLaunchBroadcastPermission:Ljava/lang/String;

.field private mLaunchHandler:Landroid/os/Handler;

.field private mPackageChangedHandler:Landroid/os/Handler;

.field private mPkgComparator:Lnet/oneplus/h2launcher/Stats$PkgHistoryComparator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryLaunchCount:Ljava/util/HashMap;

    .line 76
    iput-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryLaunchCount:Ljava/util/HashMap;

    .line 79
    iput-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mGlobalSearchDbHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mCurrentState:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mDeepShortcutDarkList:Ljava/util/HashSet;

    .line 178
    iput-object p1, p0, Lnet/oneplus/h2launcher/Stats;->mContext:Landroid/content/Context;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mLaunchBroadcastPermission:Ljava/lang/String;

    .line 183
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mPackageChangedHandler:Landroid/os/Handler;

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mLaunchHandler:Landroid/os/Handler;

    .line 186
    new-instance v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mGlobalSearchDbHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;

    .line 188
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mDeepShortcutDarkList:Ljava/util/HashSet;

    const-string v1, "com.android.dialer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mDeepShortcutDarkList:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mDeepShortcutDarkList:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v0, Lnet/oneplus/h2launcher/Stats$LoadStats;

    invoke-direct {v0, p0, v2}, Lnet/oneplus/h2launcher/Stats$LoadStats;-><init>(Lnet/oneplus/h2launcher/Stats;Lnet/oneplus/h2launcher/Stats$1;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/Stats$LoadStats;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 193
    return-void
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/Stats;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Stats;

    .prologue
    .line 61
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mCurrentState:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/Stats;)Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Stats;

    .prologue
    .line 61
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mCallback:Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/Stats;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Stats;

    .prologue
    .line 61
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mGlobalSearchDbHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/Stats;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Stats;

    .prologue
    .line 61
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/Stats;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Stats;

    .prologue
    .line 61
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mLaunchHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/Stats;Ljava/util/ArrayList;)Ljava/lang/Void;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Stats;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/Stats;->saveStatToFile(Ljava/util/ArrayList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method private getPackageFromIntentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "intentStr"    # Ljava/lang/String;

    .prologue
    .line 703
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 704
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 705
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 710
    .end local v1    # "intent":Landroid/content/Intent;
    .end local p1    # "intentStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 707
    .restart local p1    # "intentStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method private incrementAppHistory(Landroid/content/ComponentName;J)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "time"    # J

    .prologue
    .line 757
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mAppPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 758
    .local v0, "pos":I
    if-gez v0, :cond_0

    .line 759
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mAppPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryLaunchCount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 763
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryLaunchCount:Ljava/util/HashMap;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryLaunchCount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryTime:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    return-void

    .line 765
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryLaunchCount:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private incrementContactHistory(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "iconUri"    # Landroid/net/Uri;
    .param p4, "time"    # J

    .prologue
    .line 772
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mContactNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 773
    .local v0, "pos":I
    if-gez v0, :cond_0

    .line 774
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mContactNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryLaunchCount:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 778
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryLaunchCount:Ljava/util/HashMap;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryLaunchCount:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryTime:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    return-void

    .line 780
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryLaunchCount:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private incrementLaunchForIntent(Landroid/view/View;Ljava/lang/String;Lnet/oneplus/h2launcher/ShortcutInfo;JILnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intentStr"    # Ljava/lang/String;
    .param p3, "shortcut"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p4, "id"    # J
    .param p6, "itemType"    # I
    .param p7, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 338
    new-instance v1, Lnet/oneplus/h2launcher/Stats$SaveStats;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lnet/oneplus/h2launcher/Stats$SaveStats;-><init>(Lnet/oneplus/h2launcher/Stats;Landroid/view/View;Ljava/lang/String;Lnet/oneplus/h2launcher/ShortcutInfo;JILnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 339
    invoke-virtual {v1, v0, v2}, Lnet/oneplus/h2launcher/Stats$SaveStats;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 340
    return-void
.end method

.method private isIncrementLaunchAllowed(Lnet/oneplus/h2launcher/ItemInfo;)Z
    .locals 7
    .param p1, "item"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    .line 350
    :try_start_0
    sget-boolean v4, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v4, :cond_1

    instance-of v4, p1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v4, :cond_1

    iget v4, p1, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    move-object v0, p1

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    move-object v4, v0

    .line 353
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->isPromise()Z

    move-result v4

    if-nez v4, :cond_1

    .line 354
    move-object v0, p1

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    move-object v2, v0

    .line 355
    .local v2, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v4, p0, Lnet/oneplus/h2launcher/Stats;->mDeepShortcutDarkList:Ljava/util/HashSet;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/ShortcutInfo;->getDeepShortcutComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 356
    move-object v0, p1

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    move-object v4, v0

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->isDeepShortcutDeclaredInManifest()Z

    move-result v3

    .line 357
    .local v3, "isAllow":Z
    if-nez v3, :cond_0

    .line 358
    const-string v4, "Stats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disallow to increment launch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 359
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/ShortcutInfo;->getDeepShortcutComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", shortcut_id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 360
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/ShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 358
    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 370
    .end local v2    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v3    # "isAllow":Z
    :cond_0
    :goto_0
    return v3

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_1
    const-string v4, "Stats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to increment launch. tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    .line 367
    :catch_1
    move-exception v1

    .line 368
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string v4, "Stats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to increment launch. tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 365
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private saveAppHistory(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 797
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mGlobalSearchDbHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 798
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p1, :cond_0

    .line 799
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 800
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "launch_count"

    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryLaunchCount:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 801
    const-string v3, "history_time"

    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryTime:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 803
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryLaunchCount:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 804
    const-string v2, "component_name"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v2, "package_name"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string v2, "global_search_apps"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 813
    :goto_0
    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/Stats;->loadAppsHistory(Z)Z

    .line 815
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 808
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_1
    const-string v2, "global_search_apps"

    const-string v3, "component_name=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 810
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 808
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveContactHistory(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "iconUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 818
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mGlobalSearchDbHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 820
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 821
    :cond_0
    const-string v2, "Stats"

    const-string v3, "invalid id:%s or displayname:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 842
    :goto_0
    return-void

    .line 825
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 826
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "launch_count"

    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryLaunchCount:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    const-string v3, "history_time"

    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryTime:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 829
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryLaunchCount:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 830
    const-string v2, "_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string v2, "display_name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    if-eqz p3, :cond_2

    .line 833
    const-string v2, "photo_thumbnail_uri"

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :cond_2
    const-string v2, "global_search_contacts"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 841
    :goto_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Stats;->loadContactsHistory()Z

    goto :goto_0

    .line 837
    :cond_3
    const-string v2, "global_search_contacts"

    const-string v3, "display_name=?"

    new-array v4, v5, [Ljava/lang/String;

    aput-object p2, v4, v6

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method private saveStatToFile(Ljava/util/ArrayList;)Ljava/lang/Void;
    .locals 18
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/Stats$Stat;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 497
    .local p1, "stateCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/Stats$Stat;>;"
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 498
    const-string v4, "stats_simplified.log"

    .line 503
    .local v4, "fileName":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v10, Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/Stats;->mContext:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".tmp"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .local v10, "stats":Ljava/io/DataOutputStream;
    const/4 v12, 0x0

    .line 505
    const/4 v11, 0x2

    :try_start_1
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 506
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 508
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 509
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/oneplus/h2launcher/Stats$Stat;

    .line 510
    .local v9, "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/Stats;->mContext:Landroid/content/Context;

    iget-object v13, v9, Lnet/oneplus/h2launcher/Stats$Stat;->componentName:Landroid/content/ComponentName;

    invoke-static {v11, v13}, Lnet/oneplus/h2launcher/Utilities;->isPackageInstalled(Landroid/content/Context;Landroid/content/ComponentName;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-nez v11, :cond_1

    .line 508
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 500
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v9    # "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    .end local v10    # "stats":Ljava/io/DataOutputStream;
    :cond_0
    const-string v4, "stats_standard.log"

    .restart local v4    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 511
    .restart local v5    # "i":I
    .restart local v9    # "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    .restart local v10    # "stats":Ljava/io/DataOutputStream;
    :cond_1
    :try_start_2
    iget-object v11, v9, Lnet/oneplus/h2launcher/Stats$Stat;->intentStr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 512
    iget v11, v9, Lnet/oneplus/h2launcher/Stats$Stat;->launchCount:I

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 513
    iget v11, v9, Lnet/oneplus/h2launcher/Stats$Stat;->itemType:I

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 514
    iget-wide v14, v9, Lnet/oneplus/h2launcher/Stats$Stat;->id:J

    invoke-virtual {v10, v14, v15}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 516
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 517
    .local v6, "parcel":Landroid/os/Parcel;
    iget-object v11, v9, Lnet/oneplus/h2launcher/Stats$Stat;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v11}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->hashCode()I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 519
    .local v2, "byt":[B
    const/4 v11, 0x0

    array-length v13, v2

    const/4 v14, 0x0

    invoke-static {v2, v11, v13, v14}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v8

    .line 520
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 521
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 503
    .end local v2    # "byt":[B
    .end local v5    # "i":I
    .end local v6    # "parcel":Landroid/os/Parcel;
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    :catch_0
    move-exception v11

    :try_start_3
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 527
    :catchall_0
    move-exception v12

    move-object/from16 v17, v12

    move-object v12, v11

    move-object/from16 v11, v17

    :goto_3
    if-eqz v10, :cond_2

    if-eqz v12, :cond_7

    :try_start_4
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_4
    :try_start_5
    throw v11
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .end local v10    # "stats":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v3

    .line 528
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v11, "Stats"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unable to create stats data: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_5
    const/4 v11, 0x0

    return-object v11

    .line 524
    .restart local v5    # "i":I
    .restart local v10    # "stats":Ljava/io/DataOutputStream;
    :cond_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/Stats;->mContext:Landroid/content/Context;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".tmp"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/Stats;->mContext:Landroid/content/Context;

    .line 525
    invoke-virtual {v13, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    .line 526
    .local v7, "result":Z
    const-string v13, "Stats"

    const-string v14, "the stat log file %s renamed"

    const/4 v11, 0x1

    new-array v15, v11, [Ljava/lang/Object;

    const/16 v16, 0x0

    if-eqz v7, :cond_5

    const-string v11, "has"

    :goto_6
    aput-object v11, v15, v16

    invoke-static {v13, v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 527
    if-eqz v10, :cond_3

    if-eqz v12, :cond_6

    :try_start_7
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_2
    move-exception v11

    :try_start_8
    invoke-virtual {v12, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    .line 529
    .end local v5    # "i":I
    .end local v7    # "result":Z
    .end local v10    # "stats":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v3

    .line 530
    .local v3, "e":Ljava/io/IOException;
    const-string v11, "Stats"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unable to write to stats data: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 526
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "i":I
    .restart local v7    # "result":Z
    .restart local v10    # "stats":Ljava/io/DataOutputStream;
    :cond_5
    :try_start_9
    const-string v11, "wasn\'t"
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_6

    .line 527
    :cond_6
    :try_start_a
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    goto :goto_5

    .end local v5    # "i":I
    .end local v7    # "result":Z
    :catch_4
    move-exception v13

    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_4

    :catchall_1
    move-exception v11

    goto/16 :goto_3
.end method


# virtual methods
.method public clearAppHistory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 845
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mGlobalSearchDbHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 846
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mAppPkgs:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mAppPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 849
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryTime:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 850
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryTime:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 852
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryLaunchCount:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 853
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryLaunchCount:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 855
    :cond_2
    const-string v1, "global_search_apps"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 856
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Stats;->loadAppsHistory(Z)Z

    .line 857
    return-void
.end method

.method public clearContactHistory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 860
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mGlobalSearchDbHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 861
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mContactIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mContactIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 864
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mContactNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 865
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mContactNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 867
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryTime:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 868
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryTime:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 870
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryLaunchCount:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 871
    iget-object v1, p0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryLaunchCount:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 873
    :cond_3
    const-string v1, "global_search_contacts"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 874
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Stats;->loadContactsHistory()Z

    .line 875
    return-void
.end method

.method public getAppsHistoryTime()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1143
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryTime:Ljava/util/HashMap;

    return-object v0
.end method

.method public getComponentFromIntentString(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 5
    .param p1, "intentStr"    # Ljava/lang/String;

    .prologue
    .line 715
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 716
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 717
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 723
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v2

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 723
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContactIdList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1151
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mContactIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGlobalSearchDbHelper()Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mGlobalSearchDbHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;

    return-object v0
.end method

.method public getHistoryAppPkgs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1139
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mAppPkgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMostLaunchedPackages(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "pkgCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/Stats$Stat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v1, "mostLaunchedPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/Stats$Stat;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 401
    iget-object v3, p0, Lnet/oneplus/h2launcher/Stats;->mCurrentState:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 402
    iget-object v3, p0, Lnet/oneplus/h2launcher/Stats;->mCurrentState:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/Stats$Stat;

    .line 403
    .local v2, "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    .end local v2    # "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    :cond_0
    return-object v1
.end method

.method public getOrderedAppList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1019
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1020
    .local v0, "pkgHistoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/Stats$PkgHistory;>;"
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mAppPkgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1021
    .local v3, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryLaunchCount:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1022
    new-instance v1, Lnet/oneplus/h2launcher/Stats$PkgHistory;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryTime:Ljava/util/HashMap;

    .line 1023
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryLaunchCount:Ljava/util/HashMap;

    .line 1024
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/h2launcher/Stats$PkgHistory;-><init>(Lnet/oneplus/h2launcher/Stats;Landroid/content/ComponentName;JI)V

    .line 1025
    .local v1, "pkgHistory":Lnet/oneplus/h2launcher/Stats$PkgHistory;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1029
    .end local v1    # "pkgHistory":Lnet/oneplus/h2launcher/Stats$PkgHistory;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mPkgComparator:Lnet/oneplus/h2launcher/Stats$PkgHistoryComparator;

    if-nez v2, :cond_2

    .line 1030
    new-instance v2, Lnet/oneplus/h2launcher/Stats$PkgHistoryComparator;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/Stats$PkgHistoryComparator;-><init>(Lnet/oneplus/h2launcher/Stats;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mPkgComparator:Lnet/oneplus/h2launcher/Stats$PkgHistoryComparator;

    .line 1033
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mPkgComparator:Lnet/oneplus/h2launcher/Stats$PkgHistoryComparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1034
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    .local v7, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/Stats$PkgHistory;

    .line 1036
    .restart local v1    # "pkgHistory":Lnet/oneplus/h2launcher/Stats$PkgHistory;
    iget-object v4, v1, Lnet/oneplus/h2launcher/Stats$PkgHistory;->mComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_3

    .line 1037
    iget-object v4, v1, Lnet/oneplus/h2launcher/Stats$PkgHistory;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1040
    .end local v1    # "pkgHistory":Lnet/oneplus/h2launcher/Stats$PkgHistory;
    :cond_4
    return-object v7
.end method

.method public getOrderedContactList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1044
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    .local v0, "contactHistoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/Stats$ContactHistory;>;"
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mContactNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1046
    .local v3, "displayName":Ljava/lang/String;
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryLaunchCount:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1047
    new-instance v1, Lnet/oneplus/h2launcher/Stats$ContactHistory;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryTime:Ljava/util/HashMap;

    .line 1048
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryLaunchCount:Ljava/util/HashMap;

    .line 1049
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/h2launcher/Stats$ContactHistory;-><init>(Lnet/oneplus/h2launcher/Stats;Ljava/lang/String;JI)V

    .line 1050
    .local v1, "contactHistory":Lnet/oneplus/h2launcher/Stats$ContactHistory;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1054
    .end local v1    # "contactHistory":Lnet/oneplus/h2launcher/Stats$ContactHistory;
    .end local v3    # "displayName":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mContactComparator:Lnet/oneplus/h2launcher/Stats$ContactHistoryComparator;

    if-nez v2, :cond_2

    .line 1055
    new-instance v2, Lnet/oneplus/h2launcher/Stats$ContactHistoryComparator;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/Stats$ContactHistoryComparator;-><init>(Lnet/oneplus/h2launcher/Stats;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mContactComparator:Lnet/oneplus/h2launcher/Stats$ContactHistoryComparator;

    .line 1058
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/Stats;->mContactComparator:Lnet/oneplus/h2launcher/Stats$ContactHistoryComparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1059
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    .local v7, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/Stats$ContactHistory;

    .line 1061
    .restart local v1    # "contactHistory":Lnet/oneplus/h2launcher/Stats$ContactHistory;
    iget-object v4, v1, Lnet/oneplus/h2launcher/Stats$ContactHistory;->mDisplayName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1062
    iget-object v4, v1, Lnet/oneplus/h2launcher/Stats$ContactHistory;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1065
    .end local v1    # "contactHistory":Lnet/oneplus/h2launcher/Stats$ContactHistory;
    :cond_4
    return-object v7
.end method

.method public loadAppsHistory(Z)Z
    .locals 22
    .param p1, "isLegacyFormatWithCount"    # Z

    .prologue
    .line 878
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mAppPkgs:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 879
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mAppPkgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 884
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryTime:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 885
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryTime:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 890
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryLaunchCount:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    .line 891
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryLaunchCount:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 896
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mGlobalSearchDbHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 897
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "global_search_apps"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "component_name"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "package_name"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "launch_count"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "history_time"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id DESC"

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 910
    .local v16, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherAppState;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v3

    iget-object v3, v3, Lnet/oneplus/h2launcher/LauncherModel;->mBgAllAppsList:Lnet/oneplus/h2launcher/AllAppsList;

    iget-object v12, v3, Lnet/oneplus/h2launcher/AllAppsList;->data:Ljava/util/ArrayList;

    .line 911
    .local v12, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 912
    .local v13, "appMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ComponentName;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/oneplus/h2launcher/AppInfo;

    .line 913
    .local v11, "appInfo":Lnet/oneplus/h2launcher/AppInfo;
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v11, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v13, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 881
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "appInfo":Lnet/oneplus/h2launcher/AppInfo;
    .end local v12    # "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    .end local v13    # "appMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ComponentName;>;"
    .end local v16    # "cursor":Landroid/database/Cursor;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mAppPkgs:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 887
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryTime:Ljava/util/HashMap;

    goto/16 :goto_1

    .line 893
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryLaunchCount:Ljava/util/HashMap;

    goto/16 :goto_2

    .line 916
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    .restart local v13    # "appMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ComponentName;>;"
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_4
    if-eqz v16, :cond_9

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 917
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 918
    .local v18, "strComponent":Ljava/lang/String;
    const-string v3, "/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 919
    .local v14, "componentArray":[Ljava/lang/String;
    const/4 v15, 0x0

    .line 920
    .local v15, "componentName":Landroid/content/ComponentName;
    array-length v3, v14

    const/4 v4, 0x1

    if-le v3, v4, :cond_6

    .line 921
    new-instance v15, Landroid/content/ComponentName;

    .end local v15    # "componentName":Landroid/content/ComponentName;
    const/4 v3, 0x0

    aget-object v3, v14, v3

    const/4 v4, 0x1

    aget-object v4, v14, v4

    invoke-direct {v15, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    .restart local v15    # "componentName":Landroid/content/ComponentName;
    :cond_4
    :goto_5
    if-eqz v15, :cond_8

    .line 930
    const/4 v3, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 931
    .local v20, "time":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mAppPkgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryTime:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    array-length v3, v14

    const/4 v4, 0x1

    if-gt v3, v4, :cond_5

    if-eqz p1, :cond_7

    .line 935
    :cond_5
    const/4 v3, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 936
    .local v17, "launchCount":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryLaunchCount:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 922
    .end local v17    # "launchCount":I
    .end local v20    # "time":J
    :cond_6
    array-length v3, v14

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 924
    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 925
    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "componentName":Landroid/content/ComponentName;
    check-cast v15, Landroid/content/ComponentName;

    .restart local v15    # "componentName":Landroid/content/ComponentName;
    goto :goto_5

    .line 939
    .restart local v20    # "time":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryLaunchCount:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 943
    .end local v20    # "time":J
    :cond_8
    if-eqz p1, :cond_b

    .line 954
    .end local v14    # "componentArray":[Ljava/lang/String;
    .end local v15    # "componentName":Landroid/content/ComponentName;
    .end local v18    # "strComponent":Ljava/lang/String;
    :cond_9
    :goto_6
    if-eqz v16, :cond_a

    .line 955
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 958
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mAppsHistoryLaunchCount:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_7
    return v3

    .line 948
    .restart local v14    # "componentArray":[Ljava/lang/String;
    .restart local v15    # "componentName":Landroid/content/ComponentName;
    .restart local v18    # "strComponent":Ljava/lang/String;
    :cond_b
    const-string v3, "Stats"

    const-string v4, "legacy format with count column, retry the history loading process"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/Stats;->loadAppsHistory(Z)Z

    goto :goto_6

    .line 958
    .end local v14    # "componentArray":[Ljava/lang/String;
    .end local v15    # "componentName":Landroid/content/ComponentName;
    .end local v18    # "strComponent":Ljava/lang/String;
    :cond_c
    const/4 v3, 0x0

    goto :goto_7
.end method

.method public loadContactsHistory()Z
    .locals 18

    .prologue
    .line 962
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mContactIds:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 963
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mContactIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 968
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mContactNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 969
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mContactNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 974
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryTime:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryTime:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 980
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryLaunchCount:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    .line 981
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryLaunchCount:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 986
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mGlobalSearchDbHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 987
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "global_search_contacts"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "photo_thumbnail_uri"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "launch_count"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "history_time"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id DESC"

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1000
    .local v11, "cursor":Landroid/database/Cursor;
    :goto_4
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1001
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1002
    .local v13, "id":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1003
    .local v12, "displayName":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1004
    .local v14, "launchCount":I
    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1005
    .local v16, "time":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mContactIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mContactNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryTime:Ljava/util/HashMap;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryLaunchCount:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 965
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "displayName":Ljava/lang/String;
    .end local v13    # "id":Ljava/lang/String;
    .end local v14    # "launchCount":I
    .end local v16    # "time":J
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mContactIds:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 971
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mContactNames:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 977
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryTime:Ljava/util/HashMap;

    goto/16 :goto_2

    .line 983
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryLaunchCount:Ljava/util/HashMap;

    goto/16 :goto_3

    .line 1011
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    :cond_4
    if-eqz v11, :cond_5

    .line 1012
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1015
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats;->mContactsHistoryLaunchCount:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_5
    return v3

    :cond_6
    const/4 v3, 0x0

    goto :goto_5
.end method

.method public onPackageAdded(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 261
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 265
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mCurrentState:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mPackageChangedHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/Stats$3;

    invoke-direct {v1, p0, p1, p2}, Lnet/oneplus/h2launcher/Stats$3;-><init>(Lnet/oneplus/h2launcher/Stats;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 307
    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 198
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mCurrentState:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mPackageChangedHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/Stats$1;

    invoke-direct {v1, p0, p1, p2}, Lnet/oneplus/h2launcher/Stats$1;-><init>(Lnet/oneplus/h2launcher/Stats;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    :cond_0
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "replacing"    # Z

    .prologue
    .line 313
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 324
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "replacing"    # Z

    .prologue
    .line 319
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 329
    return-void
.end method

.method onShortcutRemoved(JLnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 235
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mCurrentState:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lnet/oneplus/h2launcher/Stats;->mPackageChangedHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/Stats$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lnet/oneplus/h2launcher/Stats$2;-><init>(Lnet/oneplus/h2launcher/Stats;JLnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    :cond_0
    return-void
.end method

.method public recordAppHistory(Landroid/content/ComponentName;J)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "time"    # J

    .prologue
    .line 787
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/Stats;->incrementAppHistory(Landroid/content/ComponentName;J)V

    .line 788
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/Stats;->saveAppHistory(Landroid/content/ComponentName;)V

    .line 789
    return-void
.end method

.method public recordContactHistory(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "iconUri"    # Landroid/net/Uri;
    .param p4, "time"    # J

    .prologue
    .line 792
    invoke-direct/range {p0 .. p5}, Lnet/oneplus/h2launcher/Stats;->incrementContactHistory(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 793
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/Stats;->saveContactHistory(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 794
    return-void
.end method

.method public recordLaunch(Landroid/view/View;Landroid/content/Intent;Lnet/oneplus/h2launcher/ShortcutInfo;JILnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "shortcut"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p4, "id"    # J
    .param p6, "itemType"    # I
    .param p7, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 389
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 390
    .end local p2    # "intent":Landroid/content/Intent;
    .local v8, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 391
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "flat":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 393
    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/Stats;->incrementLaunchForIntent(Landroid/view/View;Ljava/lang/String;Lnet/oneplus/h2launcher/ShortcutInfo;JILnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 394
    return-void
.end method

.method public recordLaunch(Landroid/view/View;Landroid/content/Intent;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "shortcut"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p4, "item"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p5, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 376
    invoke-direct {p0, p4}, Lnet/oneplus/h2launcher/Stats;->isIncrementLaunchAllowed(Lnet/oneplus/h2launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 380
    :cond_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 381
    .end local p2    # "intent":Landroid/content/Intent;
    .local v8, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 382
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "flat":Ljava/lang/String;
    iget-wide v4, p4, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    iget v6, p4, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/Stats;->incrementLaunchForIntent(Landroid/view/View;Ljava/lang/String;Lnet/oneplus/h2launcher/ShortcutInfo;JILnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    move-object p2, v8

    .line 385
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local p2    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public setCallback(Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;)V
    .locals 0
    .param p1, "callback"    # Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;

    .prologue
    .line 332
    iput-object p1, p0, Lnet/oneplus/h2launcher/Stats;->mCallback:Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;

    .line 333
    return-void
.end method
