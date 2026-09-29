.class public Lnet/oneplus/h2launcher/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/LauncherProvider$ChangeListenerWrapper;,
        Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;,
        Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String;

.field private static final DATABASE_VERSION:I = 0x1f

.field static final EMPTY_DATABASE_CREATED:Ljava/lang/String; = "EMPTY_DATABASE_CREATED"

.field public static final HAS_LOADED_QUICK_PAGE_DEFAULT_VALUES:Ljava/lang/String; = "HAS_LOADED_QUICK_PAGE_DEFAULT_VALUES"

.field private static final LOGD:Z = false

.field static final METHOD_SET_LAUNCHER_PROVIDER:Ljava/lang/String; = "set_launcher_provider"

.field private static final NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto/net.oneplus.h2launcher"

.field static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field private static final PREF_KEY_REPLACE_MARKET_TO_OPPO:Ljava/lang/String; = "replace_1+market_to_oppo_market"

.field private static final RESTRICTION_PACKAGE_NAME:Ljava/lang/String; = "workspace.configuration.package.name"

.field private static final TAG:Ljava/lang/String; = "LauncherProvider"

.field static final UPGRADED_FROM_OLD_DATABASE:Ljava/lang/String; = "UPGRADED_FROM_OLD_DATABASE"


# instance fields
.field mListener:Lnet/oneplus/h2launcher/LauncherProviderChangeListener;

.field private mListenerHandler:Landroid/os/Handler;

.field private final mListenerWrapper:Lnet/oneplus/h2launcher/LauncherProvider$ChangeListenerWrapper;

.field mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lnet/oneplus/h2launcher/config/ProviderConfig;->AUTHORITY:Ljava/lang/String;

    sput-object v0, Lnet/oneplus/h2launcher/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 112
    new-instance v0, Lnet/oneplus/h2launcher/LauncherProvider$ChangeListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/LauncherProvider$ChangeListenerWrapper;-><init>(Lnet/oneplus/h2launcher/LauncherProvider$1;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mListenerWrapper:Lnet/oneplus/h2launcher/LauncherProvider$ChangeListenerWrapper;

    return-void
.end method

.method static synthetic access$300(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 87
    invoke-static {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->addReminderColumns(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method private static addReminderColumns(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 14
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1883
    const/4 v8, 0x0

    .line 1885
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "quickPage"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1887
    if-nez v8, :cond_1

    .line 1888
    const-string v0, "LauncherProvider"

    const-string v1, "addReminderColumns failed: cannot query quick page database"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1908
    if-eqz v8, :cond_0

    .line 1909
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v12

    .line 1913
    :goto_0
    return v0

    .line 1892
    :cond_1
    :try_start_1
    const-string v0, "reminderTime"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1893
    .local v11, "indexTime":I
    const-string v0, "reminderId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1894
    .local v10, "indexId":I
    if-gez v11, :cond_3

    if-gez v10, :cond_3

    .line 1895
    const-string v0, "ALTER TABLE quickPage ADD COLUMN reminderTime INTEGER NOT NULL DEFAULT -1;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1897
    const-string v0, "ALTER TABLE quickPage ADD COLUMN reminderId INTEGER NOT NULL DEFAULT -1;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1908
    if-eqz v8, :cond_2

    .line 1909
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v13

    .line 1913
    goto :goto_0

    .line 1900
    :cond_3
    :try_start_2
    const-string v0, "LauncherProvider"

    const-string v1, "addReminderColumns failed: the target columns already exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1908
    if-eqz v8, :cond_4

    .line 1909
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v13

    goto :goto_0

    .line 1904
    .end local v10    # "indexId":I
    .end local v11    # "indexTime":I
    :catch_0
    move-exception v9

    .line 1905
    .local v9, "ex":Landroid/database/SQLException;
    :try_start_3
    const-string v0, "LauncherProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addReminderColumns failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1908
    if-eqz v8, :cond_5

    .line 1909
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v12

    goto :goto_0

    .line 1908
    .end local v9    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 1909
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private createWorkspaceLoaderFromAppRestriction()Lnet/oneplus/h2launcher/AutoInstallsLayout;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 485
    sget-boolean v7, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_JB_MR2:Z

    if-nez v7, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-object v6

    .line 489
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 490
    .local v1, "ctx":Landroid/content/Context;
    const-string v7, "user"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 491
    .local v5, "um":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 492
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 496
    const-string v7, "workspace.configuration.package.name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 497
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 499
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 500
    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 501
    .local v4, "targetResources":Landroid/content/res/Resources;
    iget-object v7, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    iget-object v7, v7, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v8, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-static {v1, v3, v4, v7, v8}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/appwidget/AppWidgetHost;Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;)Lnet/oneplus/h2launcher/AutoInstallsLayout;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 503
    .end local v4    # "targetResources":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 504
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "LauncherProvider"

    const-string v8, "Target package for restricted profile not found"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static dbInsertAndCheck(Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p0, "helper"    # Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "nullColumnHack"    # Ljava/lang/String;
    .param p4, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 171
    if-nez p4, :cond_0

    .line 172
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to insert null values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    const-string v0, "_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to add item without specifying an id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    invoke-virtual {p0, p2, p4}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->checkId(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 178
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDefaultLayoutParser()Lnet/oneplus/h2launcher/DefaultLayoutParser;
    .locals 6

    .prologue
    .line 529
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v0

    iget v5, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->defaultLayoutId:I

    .line 531
    .local v5, "defaultLayout":I
    new-instance v0, Lnet/oneplus/h2launcher/DefaultLayoutParser;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    .line 532
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method static getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 1413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT MAX(_id) FROM "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1415
    .local v0, "c":Landroid/database/Cursor;
    const-wide/16 v2, -0x1

    .line 1416
    .local v2, "id":J
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1417
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1419
    :cond_0
    if-eqz v0, :cond_1

    .line 1420
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1423
    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 1424
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: could not query max id in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1427
    :cond_2
    return-wide v2
.end method

.method private notifyListeners()V
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;->dataChanged(Landroid/content/Context;)V

    .line 381
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mListener:Lnet/oneplus/h2launcher/LauncherProviderChangeListener;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mListener:Lnet/oneplus/h2launcher/LauncherProviderChangeListener;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherProviderChangeListener;->onLauncherProviderChange()V

    .line 384
    :cond_0
    return-void
.end method

.method private reloadLauncherIfExternal()V
    .locals 3

    .prologue
    .line 182
    sget-boolean v1, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 183
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstanceNoCreate()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 184
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->reloadWorkspace()V

    .line 188
    .end local v0    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    :cond_0
    return-void
.end method

.method private shouldMigrateToSeparateTable(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1531
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1533
    const-string v0, "favorites"

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/LauncherProvider;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1534
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1535
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1536
    const/4 v0, 0x1

    .line 1541
    :goto_0
    return v0

    .line 1539
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1540
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1541
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 255
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 257
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 258
    .local v1, "result":[Landroid/content/ContentProviderResult;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 259
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->reloadLauncherIfExternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v1

    .end local v1    # "result":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 229
    new-instance v0, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 231
    .local v0, "args":Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;
    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 232
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 234
    :try_start_0
    array-length v3, p2

    .line 235
    .local v3, "numValues":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 236
    aget-object v4, p2, v2

    invoke-static {v4}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 237
    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v2

    invoke-static {v4, v1, v5, v6, v7}, Lnet/oneplus/h2launcher/LauncherProvider;->dbInsertAndCheck(Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 238
    const/4 v4, 0x0

    .line 243
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 248
    :goto_1
    return v4

    .line 235
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 246
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->notifyListeners()V

    .line 247
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->reloadLauncherIfExternal()V

    .line 248
    array-length v4, p2

    goto :goto_1

    .line 243
    .end local v2    # "i":I
    .end local v3    # "numValues":I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 293
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    if-eq v4, v8, :cond_0

    .line 339
    :goto_0
    return-object v1

    .line 296
    :cond_0
    const-string v4, "LauncherProvider"

    const-string v8, "method: %s"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object p1, v9, v5

    invoke-static {v4, v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 337
    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected method: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :sswitch_0
    const-string v6, "set_extracted_colors_and_wallpaper_id_setting"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    goto :goto_1

    :sswitch_1
    const-string v8, "get_boolean_setting"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v4, v6

    goto :goto_1

    :sswitch_2
    const-string v6, "set_boolean_setting"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v7

    goto :goto_1

    :sswitch_3
    const-string v6, "set_launcher_provider"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    .line 300
    :pswitch_0
    const-string v4, "extra_extractedColors"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "extractedColors":Ljava/lang/String;
    const-string v4, "extra_wallpaperId"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 303
    .local v3, "wallpaperId":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lnet/oneplus/h2launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pref_extractedColors"

    .line 304
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pref_wallpaperId"

    .line 305
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 306
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 307
    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 308
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v1, "result":Landroid/os/Bundle;
    const-string v4, "value"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    .end local v0    # "extractedColors":Ljava/lang/String;
    .end local v1    # "result":Landroid/os/Bundle;
    .end local v3    # "wallpaperId":I
    :pswitch_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 314
    .restart local v1    # "result":Landroid/os/Bundle;
    const-string v4, "value"

    .line 315
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 316
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v7

    .line 315
    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "default_value"

    .line 317
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-interface {v5, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 314
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 322
    .end local v1    # "result":Landroid/os/Bundle;
    :pswitch_2
    const-string v4, "value"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 323
    .local v2, "value":Z
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 324
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v6

    .line 323
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 325
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 326
    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mListener:Lnet/oneplus/h2launcher/LauncherProviderChangeListener;

    if-eqz v4, :cond_2

    .line 327
    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mListener:Lnet/oneplus/h2launcher/LauncherProviderChangeListener;

    invoke-interface {v4, p2, v2}, Lnet/oneplus/h2launcher/LauncherProviderChangeListener;->onSettingsChanged(Ljava/lang/String;Z)V

    .line 329
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 330
    .restart local v1    # "result":Landroid/os/Bundle;
    const-string v4, "value"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 334
    .end local v1    # "result":Landroid/os/Bundle;
    .end local v2    # "value":Z
    :pswitch_3
    invoke-static {p0}, Lnet/oneplus/h2launcher/LauncherAppState;->setLauncherProvider(Lnet/oneplus/h2launcher/LauncherProvider;)V

    goto/16 :goto_0

    .line 298
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b7b0db0 -> :sswitch_1
        -0x38ac0c1c -> :sswitch_0
        0x3881875c -> :sswitch_2
        0x7bb8cd13 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public clearFlagEmptyDbCreated()V
    .locals 3

    .prologue
    .line 406
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "spKey":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 408
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "EMPTY_DATABASE_CREATED"

    .line 409
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 410
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 411
    return-void
.end method

.method public convertShortcutsToLauncherActivities()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->convertShortcutsToLauncherActivities(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 546
    return-void
.end method

.method public declared-synchronized createEmptyDB()V
    .locals 2

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    monitor-exit p0

    return-void

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 268
    new-instance v0, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 270
    .local v0, "args":Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 271
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 272
    .local v1, "count":I
    if-lez v1, :cond_0

    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->notifyListeners()V

    .line 274
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->reloadLauncherIfExternal()V

    .line 275
    return v1
.end method

.method public deleteDatabase()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 551
    return-void
.end method

.method public deleteEmptyFolders()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v10, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 349
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 352
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemType = 2 AND _id NOT IN (SELECT container FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 356
    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getFavoritesTable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "selection":Ljava/lang/String;
    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getFavoritesTable()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 360
    .local v8, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 369
    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 370
    .local v9, "ex":Landroid/database/SQLException;
    :try_start_1
    const-string v1, "LauncherProvider"

    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 375
    .end local v9    # "ex":Landroid/database/SQLException;
    :goto_1
    return-object v10

    .line 363
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v8    # "c":Landroid/database/Cursor;
    :cond_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 364
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 365
    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getFavoritesTable()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    invoke-static {v2, v10}, Lnet/oneplus/h2launcher/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 368
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public generateNewItemId()J
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewScreenId()J
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->generateNewScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 146
    new-instance v0, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 147
    .local v0, "args":Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;
    iget-object v1, v0, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x0

    .line 192
    new-instance v1, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;

    invoke-direct {v1, p1}, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 195
    .local v1, "args":Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 196
    iget-object v7, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v7, p2}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->initializeExternalAdd(Landroid/content/ContentValues;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-object v6

    .line 201
    :cond_1
    iget-object v7, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 202
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p2}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 203
    iget-object v7, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    iget-object v8, v1, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v7, v2, v8, v6, p2}, Lnet/oneplus/h2launcher/LauncherProvider;->dbInsertAndCheck(Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 204
    .local v4, "rowId":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-ltz v7, :cond_0

    .line 206
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 207
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->notifyListeners()V

    .line 209
    sget-boolean v7, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v7, :cond_3

    .line 210
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->reloadLauncherIfExternal()V

    :cond_2
    :goto_1
    move-object v6, p1

    .line 223
    goto :goto_0

    .line 213
    :cond_3
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstanceNoCreate()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 214
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    if-eqz v0, :cond_4

    const-string v7, "true"

    const-string v8, "isExternalAdd"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 215
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->reloadWorkspace()V

    .line 218
    :cond_4
    const-string v7, "notify"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "notify":Ljava/lang/String;
    if-eqz v3, :cond_5

    const-string v7, "true"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 220
    :cond_5
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method public isTableEmpty(Ljava/lang/String;)Z
    .locals 11
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 1508
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1509
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 1510
    const-string v1, "LauncherProvider"

    const-string v2, "[isTableEmpty] db is null. Should not be here!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :goto_0
    return v10

    .line 1514
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1515
    const-string v1, "LauncherProvider"

    const-string v2, "[isTableEmpty] tableName is null. Should not be here!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 1519
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1520
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 1521
    const-string v1, "LauncherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isTableEmpty] cursor is null. table = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1525
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1526
    .local v8, "count":I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1527
    if-nez v8, :cond_3

    move v1, v10

    :goto_1
    move v10, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1480
    if-nez p1, :cond_1

    .line 1481
    const-string v3, "LauncherProvider"

    const-string v4, "[isTableExists] db is null. Should not be here!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_0
    :goto_0
    return v2

    .line 1485
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1486
    const-string v3, "LauncherProvider"

    const-string v4, "[isTableExists] tableName is null. Should not be here!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1490
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(*) FROM sqlite_master WHERE type = \'table\' AND name = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1492
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_3

    .line 1493
    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isTableExists] cursor is null. table = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1497
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1498
    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isTableExists] moveToFirst fail. table = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1502
    :cond_4
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1503
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1504
    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public declared-synchronized loadDefaultFavoritesIfNecessary()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 421
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v10

    .line 422
    .local v10, "spKey":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 423
    .local v9, "sp":Landroid/content/SharedPreferences;
    const-string v1, "EMPTY_DATABASE_CREATED"

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 425
    .local v7, "isEmptyDBCreate":Z
    if-nez v7, :cond_0

    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getFavoritesTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/LauncherProvider;->isTableEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 426
    :cond_0
    const-string v1, "LauncherProvider"

    const-string v2, "loading default workspace"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->createWorkspaceLoaderFromAppRestriction()Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-result-object v0

    .line 430
    .local v0, "loader":Lnet/oneplus/h2launcher/AutoInstallsLayout;
    if-nez v0, :cond_1

    .line 431
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-static {v1, v2, v3}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;)Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-result-object v0

    .line 436
    :cond_1
    if-nez v0, :cond_2

    .line 437
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/Partner;->get(Landroid/content/pm/PackageManager;)Lnet/oneplus/h2launcher/Partner;

    move-result-object v8

    .line 438
    .local v8, "partner":Lnet/oneplus/h2launcher/Partner;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Partner;->hasDefaultLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 440
    .local v4, "partnerRes":Landroid/content/res/Resources;
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Partner;->getIdentifierName()Ljava/lang/String;

    move-result-object v6

    .line 441
    .local v6, "identifierName":Ljava/lang/String;
    const-string v1, "xml"

    .line 442
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-virtual {v4, v6, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 443
    .local v5, "workspaceResId":I
    if-eqz v5, :cond_2

    .line 444
    new-instance v0, Lnet/oneplus/h2launcher/DefaultLayoutParser;

    .end local v0    # "loader":Lnet/oneplus/h2launcher/AutoInstallsLayout;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 447
    .restart local v0    # "loader":Lnet/oneplus/h2launcher/AutoInstallsLayout;
    const-string v1, "LauncherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadDefaultFavoritesIfNecessary] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .end local v4    # "partnerRes":Landroid/content/res/Resources;
    .end local v5    # "workspaceResId":I
    .end local v6    # "identifierName":Ljava/lang/String;
    .end local v8    # "partner":Lnet/oneplus/h2launcher/Partner;
    :cond_2
    if-eqz v0, :cond_3

    const/4 v11, 0x1

    .line 454
    .local v11, "usingExternallyProvidedLayout":Z
    :cond_3
    if-nez v0, :cond_4

    .line 455
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getDefaultLayoutParser()Lnet/oneplus/h2launcher/DefaultLayoutParser;

    move-result-object v0

    .line 456
    const-string v1, "LauncherProvider"

    const-string v2, "[loadDefaultFavoritesIfNecessary] use default layout"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_4
    if-eqz v7, :cond_5

    .line 462
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->createEmptyDB()V

    .line 466
    :cond_5
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lnet/oneplus/h2launcher/AutoInstallsLayout;)I

    move-result v1

    if-gtz v1, :cond_6

    if-eqz v11, :cond_6

    .line 469
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->createEmptyDB()V

    .line 470
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 471
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getDefaultLayoutParser()Lnet/oneplus/h2launcher/DefaultLayoutParser;

    move-result-object v3

    .line 470
    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lnet/oneplus/h2launcher/AutoInstallsLayout;)I

    .line 473
    :cond_6
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->clearFlagEmptyDbCreated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    .end local v0    # "loader":Lnet/oneplus/h2launcher/AutoInstallsLayout;
    .end local v11    # "usingExternallyProvidedLayout":Z
    :cond_7
    monitor-exit p0

    return-void

    .line 421
    .end local v7    # "isEmptyDBCreate":Z
    .end local v9    # "sp":Landroid/content/SharedPreferences;
    .end local v10    # "spKey":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized loadDefaultQuickPageItemsIfNecessary()V
    .locals 6

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, "spKey":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 519
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "HAS_LOADED_QUICK_PAGE_DEFAULT_VALUES"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 521
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->access$200(Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 523
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "HAS_LOADED_QUICK_PAGE_DEFAULT_VALUES"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 524
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    monitor-exit p0

    return-void

    .line 517
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "spKey":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public migrateLauncher2Shortcuts()V
    .locals 4

    .prologue
    .line 536
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 537
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b010c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 536
    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->migrateLauncher2Shortcuts(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)V

    .line 538
    return-void
.end method

.method public migrateShortcutsToSeparateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 68
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1545
    invoke-direct/range {p0 .. p1}, Lnet/oneplus/h2launcher/LauncherProvider;->shouldMigrateToSeparateTable(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1860
    :goto_0
    return-void

    .line 1549
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v63

    .line 1550
    .local v63, "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v64

    .line 1552
    .local v64, "userSerialNumber":J
    const/4 v15, 0x0

    .line 1553
    .local v15, "c":Landroid/database/Cursor;
    const/16 v23, 0x0

    .line 1554
    .local v23, "count":I
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .line 1555
    .local v50, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v4, 0x14

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "intent"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "title"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "iconType"

    aput-object v5, v6, v4

    const/4 v4, 0x4

    const-string v5, "icon"

    aput-object v5, v6, v4

    const/4 v4, 0x5

    const-string v5, "iconPackage"

    aput-object v5, v6, v4

    const/4 v4, 0x6

    const-string v5, "iconResource"

    aput-object v5, v6, v4

    const/4 v4, 0x7

    const-string v5, "container"

    aput-object v5, v6, v4

    const/16 v4, 0x8

    const-string v5, "itemType"

    aput-object v5, v6, v4

    const/16 v4, 0x9

    const-string v5, "screen"

    aput-object v5, v6, v4

    const/16 v4, 0xa

    const-string v5, "cellX"

    aput-object v5, v6, v4

    const/16 v4, 0xb

    const-string v5, "cellY"

    aput-object v5, v6, v4

    const/16 v4, 0xc

    const-string v5, "uri"

    aput-object v5, v6, v4

    const/16 v4, 0xd

    const-string v5, "displayMode"

    aput-object v5, v6, v4

    const/16 v4, 0xe

    const-string v5, "profileId"

    aput-object v5, v6, v4

    const/16 v4, 0xf

    const-string v5, "spanX"

    aput-object v5, v6, v4

    const/16 v4, 0x10

    const-string v5, "spanY"

    aput-object v5, v6, v4

    const/16 v4, 0x11

    const-string v5, "appWidgetId"

    aput-object v5, v6, v4

    const/16 v4, 0x12

    const-string v5, "appWidgetProvider"

    aput-object v5, v6, v4

    const/16 v4, 0x13

    const-string v5, "rank"

    aput-object v5, v6, v4

    .line 1568
    .local v6, "columns":[Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1571
    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getFavoritesTable()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lnet/oneplus/h2launcher/LauncherProvider;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v29

    .line 1572
    .local v29, "favoritesTableExist":Z
    if-nez v29, :cond_1

    .line 1573
    move-object/from16 v0, p1

    move-wide/from16 v1, v64

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1577
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getWorkspaceScreensTable()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lnet/oneplus/h2launcher/LauncherProvider;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v67

    .line 1578
    .local v67, "workspaceScreensTableExist":Z
    if-nez v67, :cond_2

    .line 1579
    invoke-static/range {p1 .. p1}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1582
    :cond_2
    const-string v5, "favorites"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "title ASC"

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1585
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1589
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1593
    .end local v29    # "favoritesTableExist":Z
    .end local v67    # "workspaceScreensTableExist":Z
    :goto_1
    if-eqz v15, :cond_3

    .line 1595
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_17

    .line 1596
    const-string v4, "_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 1597
    .local v37, "idIndex":I
    const-string v4, "intent"

    .line 1598
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 1599
    .local v41, "intentIndex":I
    const-string v4, "title"

    .line 1600
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v60

    .line 1601
    .local v60, "titleIndex":I
    const-string v4, "iconType"

    .line 1602
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 1603
    .local v36, "iconTypeIndex":I
    const-string v4, "icon"

    .line 1604
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 1605
    .local v33, "iconIndex":I
    const-string v4, "iconPackage"

    .line 1606
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 1607
    .local v34, "iconPackageIndex":I
    const-string v4, "iconResource"

    .line 1608
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 1609
    .local v35, "iconResourceIndex":I
    const-string v4, "container"

    .line 1610
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 1611
    .local v22, "containerIndex":I
    const-string v4, "itemType"

    .line 1612
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 1613
    .local v44, "itemTypeIndex":I
    const-string v4, "screen"

    .line 1614
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v51

    .line 1615
    .local v51, "screenIndex":I
    const-string v4, "cellX"

    .line 1616
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1617
    .local v17, "cellXIndex":I
    const-string v4, "cellY"

    .line 1618
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 1619
    .local v19, "cellYIndex":I
    const-string v4, "uri"

    .line 1620
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v61

    .line 1621
    .local v61, "uriIndex":I
    const-string v4, "displayMode"

    .line 1622
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 1623
    .local v26, "displayModeIndex":I
    const-string v4, "profileId"

    .line 1624
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    .line 1627
    .local v46, "profileIndex":I
    const-string v4, "spanX"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v57

    .line 1628
    .local v57, "spanXIndex":I
    const-string v4, "spanY"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v59

    .line 1629
    .local v59, "spanYIndex":I
    const-string v4, "appWidgetId"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1630
    .local v13, "appWidgetIdIndex":I
    const-string v4, "appWidgetProvider"

    .line 1631
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1632
    .local v14, "appWidgetProviderIndex":I
    const-string v4, "rank"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 1634
    .local v47, "rankIndex":I
    const/16 v32, 0x0

    .line 1635
    .local v32, "i":I
    const/16 v24, 0x0

    .line 1636
    .local v24, "curX":I
    const/16 v25, 0x0

    .line 1638
    .local v25, "curY":I
    new-instance v52, Ljava/util/HashSet;

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, v52

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 1640
    .local v52, "seenIntents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v53, Ljava/util/ArrayList;

    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    .line 1641
    .local v53, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 1643
    .local v31, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1644
    move/from16 v0, v44

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    .line 1645
    .local v43, "itemType":I
    if-eqz v43, :cond_4

    const/4 v4, 0x1

    move/from16 v0, v43

    if-eq v0, v4, :cond_4

    const/4 v4, 0x2

    move/from16 v0, v43

    if-eq v0, v4, :cond_4

    const/4 v4, 0x4

    move/from16 v0, v43

    if-eq v0, v4, :cond_4

    const/4 v4, 0x5

    move/from16 v0, v43

    if-eq v0, v4, :cond_4

    .line 1650
    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[migrateShortcutsToSeparateTable] invalid itemType = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 1832
    .end local v13    # "appWidgetIdIndex":I
    .end local v14    # "appWidgetProviderIndex":I
    .end local v17    # "cellXIndex":I
    .end local v19    # "cellYIndex":I
    .end local v22    # "containerIndex":I
    .end local v24    # "curX":I
    .end local v25    # "curY":I
    .end local v26    # "displayModeIndex":I
    .end local v31    # "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v32    # "i":I
    .end local v33    # "iconIndex":I
    .end local v34    # "iconPackageIndex":I
    .end local v35    # "iconResourceIndex":I
    .end local v36    # "iconTypeIndex":I
    .end local v37    # "idIndex":I
    .end local v41    # "intentIndex":I
    .end local v43    # "itemType":I
    .end local v44    # "itemTypeIndex":I
    .end local v46    # "profileIndex":I
    .end local v47    # "rankIndex":I
    .end local v51    # "screenIndex":I
    .end local v52    # "seenIntents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v53    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v57    # "spanXIndex":I
    .end local v59    # "spanYIndex":I
    .end local v60    # "titleIndex":I
    .end local v61    # "uriIndex":I
    :catch_0
    move-exception v28

    .line 1833
    .local v28, "ex":Landroid/database/SQLException;
    :try_start_2
    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[migrateShortcutsToSeparateTable] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v28 .. v28}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1835
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1839
    .end local v28    # "ex":Landroid/database/SQLException;
    :cond_3
    :goto_3
    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "migrated "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " icons from Launcher3 H2/O2 into "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1840
    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " screens"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    .line 1839
    invoke-static {v4, v5, v7}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1843
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v55

    .line 1844
    .local v55, "spKey":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v54

    .line 1845
    .local v54, "sp":Landroid/content/SharedPreferences;
    invoke-interface/range {v54 .. v54}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "EMPTY_DATABASE_CREATED"

    const/4 v7, 0x0

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1848
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1851
    const-string v4, "DROP TABLE IF EXISTS favorites"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1852
    const-string v4, "DROP TABLE IF EXISTS workspaceScreens"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1854
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1858
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1586
    .end local v54    # "sp":Landroid/content/SharedPreferences;
    .end local v55    # "spKey":Ljava/lang/String;
    :catch_1
    move-exception v27

    .line 1587
    .local v27, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "LauncherProvider"

    const-string v5, "[migrateShortcutsToSeparateTable] query favorite table fail."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1589
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v27    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 1654
    .restart local v13    # "appWidgetIdIndex":I
    .restart local v14    # "appWidgetProviderIndex":I
    .restart local v17    # "cellXIndex":I
    .restart local v19    # "cellYIndex":I
    .restart local v22    # "containerIndex":I
    .restart local v24    # "curX":I
    .restart local v25    # "curY":I
    .restart local v26    # "displayModeIndex":I
    .restart local v31    # "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v32    # "i":I
    .restart local v33    # "iconIndex":I
    .restart local v34    # "iconPackageIndex":I
    .restart local v35    # "iconResourceIndex":I
    .restart local v36    # "iconTypeIndex":I
    .restart local v37    # "idIndex":I
    .restart local v41    # "intentIndex":I
    .restart local v43    # "itemType":I
    .restart local v44    # "itemTypeIndex":I
    .restart local v46    # "profileIndex":I
    .restart local v47    # "rankIndex":I
    .restart local v51    # "screenIndex":I
    .restart local v52    # "seenIntents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v53    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v57    # "spanXIndex":I
    .restart local v59    # "spanYIndex":I
    .restart local v60    # "titleIndex":I
    .restart local v61    # "uriIndex":I
    :cond_4
    :try_start_5
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1655
    .local v16, "cellX":I
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1656
    .local v18, "cellY":I
    move/from16 v0, v57

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v56

    .line 1657
    .local v56, "spanX":I
    move/from16 v0, v59

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    .line 1658
    .local v58, "spanY":I
    move/from16 v0, v51

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 1659
    .local v49, "screen":I
    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1660
    .local v21, "container":I
    move/from16 v0, v41

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 1662
    .local v42, "intentStr":Ljava/lang/String;
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, -0x64

    move/from16 v0, v21

    if-ne v0, v4, :cond_5

    .line 1663
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1667
    :cond_5
    const/4 v4, -0x1

    move/from16 v0, v46

    if-eq v0, v4, :cond_6

    move/from16 v0, v46

    invoke-interface {v15, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1668
    move/from16 v0, v46

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v64, v0

    .line 1669
    invoke-virtual/range {v63 .. v65}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getUserForSerialNumber(J)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v62

    .line 1677
    .local v62, "userHandle":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :goto_4
    if-nez v62, :cond_7

    .line 1678
    const-string v4, "LauncherProvider"

    const-string v5, "skipping deleted user"

    const/4 v7, 0x1

    invoke-static {v4, v5, v7}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    .line 1835
    .end local v13    # "appWidgetIdIndex":I
    .end local v14    # "appWidgetProviderIndex":I
    .end local v16    # "cellX":I
    .end local v17    # "cellXIndex":I
    .end local v18    # "cellY":I
    .end local v19    # "cellYIndex":I
    .end local v21    # "container":I
    .end local v22    # "containerIndex":I
    .end local v24    # "curX":I
    .end local v25    # "curY":I
    .end local v26    # "displayModeIndex":I
    .end local v31    # "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v32    # "i":I
    .end local v33    # "iconIndex":I
    .end local v34    # "iconPackageIndex":I
    .end local v35    # "iconResourceIndex":I
    .end local v36    # "iconTypeIndex":I
    .end local v37    # "idIndex":I
    .end local v41    # "intentIndex":I
    .end local v42    # "intentStr":Ljava/lang/String;
    .end local v43    # "itemType":I
    .end local v44    # "itemTypeIndex":I
    .end local v46    # "profileIndex":I
    .end local v47    # "rankIndex":I
    .end local v49    # "screen":I
    .end local v51    # "screenIndex":I
    .end local v52    # "seenIntents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v53    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v56    # "spanX":I
    .end local v57    # "spanXIndex":I
    .end local v58    # "spanY":I
    .end local v59    # "spanYIndex":I
    .end local v60    # "titleIndex":I
    .end local v61    # "uriIndex":I
    .end local v62    # "userHandle":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :catchall_1
    move-exception v4

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1673
    .restart local v13    # "appWidgetIdIndex":I
    .restart local v14    # "appWidgetProviderIndex":I
    .restart local v16    # "cellX":I
    .restart local v17    # "cellXIndex":I
    .restart local v18    # "cellY":I
    .restart local v19    # "cellYIndex":I
    .restart local v21    # "container":I
    .restart local v22    # "containerIndex":I
    .restart local v24    # "curX":I
    .restart local v25    # "curY":I
    .restart local v26    # "displayModeIndex":I
    .restart local v31    # "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v32    # "i":I
    .restart local v33    # "iconIndex":I
    .restart local v34    # "iconPackageIndex":I
    .restart local v35    # "iconResourceIndex":I
    .restart local v36    # "iconTypeIndex":I
    .restart local v37    # "idIndex":I
    .restart local v41    # "intentIndex":I
    .restart local v42    # "intentStr":Ljava/lang/String;
    .restart local v43    # "itemType":I
    .restart local v44    # "itemTypeIndex":I
    .restart local v46    # "profileIndex":I
    .restart local v47    # "rankIndex":I
    .restart local v49    # "screen":I
    .restart local v51    # "screenIndex":I
    .restart local v52    # "seenIntents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v53    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v56    # "spanX":I
    .restart local v57    # "spanXIndex":I
    .restart local v58    # "spanY":I
    .restart local v59    # "spanYIndex":I
    .restart local v60    # "titleIndex":I
    .restart local v61    # "uriIndex":I
    :cond_6
    :try_start_6
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v62

    .line 1674
    .restart local v62    # "userHandle":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    move-object/from16 v0, v63

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v64

    goto :goto_4

    .line 1682
    :cond_7
    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "migrating \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1683
    move/from16 v0, v60

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\" ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "@"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1685
    invoke-static/range {v21 .. v21}, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->containerToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    .line 1682
    invoke-static {v4, v5, v7}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1689
    const/4 v4, 0x2

    move/from16 v0, v43

    if-eq v0, v4, :cond_9

    const/4 v4, 0x4

    move/from16 v0, v43

    if-eq v0, v4, :cond_9

    const/4 v4, 0x5

    move/from16 v0, v43

    if-eq v0, v4, :cond_9

    .line 1696
    const/4 v4, 0x0

    :try_start_7
    move-object/from16 v0, v42

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v40

    .line 1704
    .local v40, "intent":Landroid/content/Intent;
    :try_start_8
    invoke-virtual/range {v40 .. v40}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    .line 1705
    .local v20, "cn":Landroid/content/ComponentName;
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1707
    const-string v4, "LauncherProvider"

    const-string v5, "skipping empty intent"

    const/4 v7, 0x1

    invoke-static {v4, v5, v7}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1697
    .end local v20    # "cn":Landroid/content/ComponentName;
    .end local v40    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v27

    .line 1699
    .local v27, "e":Ljava/net/URISyntaxException;
    const-string v4, "LauncherProvider"

    const-string v5, "skipping invalid intent uri"

    const/4 v7, 0x1

    invoke-static {v4, v5, v7}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1709
    .end local v27    # "e":Ljava/net/URISyntaxException;
    .restart local v20    # "cn":Landroid/content/ComponentName;
    .restart local v40    # "intent":Landroid/content/Intent;
    :cond_8
    if-eqz v20, :cond_c

    .line 1710
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v20

    move-object/from16 v1, v62

    invoke-static {v4, v0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->isValidPackageActivity(Landroid/content/Context;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1714
    const-string v4, "LauncherProvider"

    const-string v5, "Item whose component no longer exists."

    const/4 v7, 0x1

    invoke-static {v4, v5, v7}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1747
    .end local v20    # "cn":Landroid/content/ComponentName;
    .end local v40    # "intent":Landroid/content/Intent;
    :cond_9
    :goto_5
    new-instance v66, Landroid/content/ContentValues;

    invoke-interface {v15}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    move-object/from16 v0, v66

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1748
    .local v66, "values":Landroid/content/ContentValues;
    const-string v4, "_id"

    move/from16 v0, v37

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1749
    const-string v4, "intent"

    move-object/from16 v0, v66

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    const-string v4, "title"

    move/from16 v0, v60

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    const-string v4, "iconType"

    .line 1752
    move/from16 v0, v36

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1751
    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1753
    const-string v4, "icon"

    move/from16 v0, v33

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1754
    const-string v4, "iconPackage"

    .line 1755
    move/from16 v0, v34

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1754
    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    const-string v4, "iconResource"

    .line 1757
    move/from16 v0, v35

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1756
    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    const-string v4, "itemType"

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1759
    const-string v4, "appWidgetId"

    invoke-interface {v15, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1760
    const-string v4, "appWidgetProvider"

    .line 1761
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1760
    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    const-string v4, "uri"

    move/from16 v0, v61

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    const-string v4, "displayMode"

    .line 1764
    move/from16 v0, v26

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1763
    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1765
    const-string v4, "profileId"

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1766
    const-string v4, "rank"

    move/from16 v0, v47

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1768
    const/16 v4, -0x64

    move/from16 v0, v21

    if-eq v0, v4, :cond_a

    const/16 v4, -0x65

    move/from16 v0, v21

    if-ne v0, v4, :cond_b

    .line 1770
    :cond_a
    const-string v4, "screen"

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1771
    const-string v4, "cellX"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1772
    const-string v4, "cellY"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1773
    const-string v4, "spanX"

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1774
    const-string v4, "spanY"

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1777
    :cond_b
    const-string v4, "container"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1779
    const/4 v4, 0x2

    move/from16 v0, v43

    if-eq v0, v4, :cond_f

    .line 1780
    move-object/from16 v0, v53

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1716
    .end local v66    # "values":Landroid/content/ContentValues;
    .restart local v20    # "cn":Landroid/content/ComponentName;
    .restart local v40    # "intent":Landroid/content/Intent;
    :cond_c
    const/16 v4, -0x64

    move/from16 v0, v21

    if-ne v0, v4, :cond_9

    .line 1719
    if-eqz v20, :cond_d

    const-string v4, "com.oneplus.security"

    .line 1720
    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1722
    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "don\'t migrate managerCenter. Should not show on workspace. cn = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1732
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1733
    invoke-virtual/range {v40 .. v40}, Landroid/content/Intent;->getFlags()I

    move-result v30

    .line 1734
    .local v30, "flags":I
    const/4 v4, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1735
    const/4 v4, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v45

    .line 1736
    .local v45, "key":Ljava/lang/String;
    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1738
    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1739
    const-string v4, "LauncherProvider"

    const-string v5, "skipping duplicate"

    const/4 v7, 0x1

    invoke-static {v4, v5, v7}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1742
    :cond_e
    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1782
    .end local v20    # "cn":Landroid/content/ComponentName;
    .end local v30    # "flags":I
    .end local v40    # "intent":Landroid/content/Intent;
    .end local v45    # "key":Ljava/lang/String;
    .restart local v66    # "values":Landroid/content/ContentValues;
    :cond_f
    move-object/from16 v0, v31

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1786
    .end local v16    # "cellX":I
    .end local v18    # "cellY":I
    .end local v21    # "container":I
    .end local v42    # "intentStr":Ljava/lang/String;
    .end local v43    # "itemType":I
    .end local v49    # "screen":I
    .end local v56    # "spanX":I
    .end local v58    # "spanY":I
    .end local v62    # "userHandle":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v66    # "values":Landroid/content/ContentValues;
    :cond_10
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1788
    .local v12, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1790
    move-object/from16 v0, v53

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1792
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_14

    .line 1793
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1795
    :try_start_9
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/ContentValues;

    .line 1796
    .local v48, "row":Landroid/content/ContentValues;
    if-eqz v48, :cond_11

    .line 1798
    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getFavoritesTable()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 1797
    move-object/from16 v0, p1

    move-object/from16 v1, v48

    invoke-virtual {v0, v5, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v38

    .line 1799
    .local v38, "insertId":J
    const-wide/16 v8, 0x0

    cmp-long v5, v38, v8

    if-gez v5, :cond_12

    .line 1800
    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[migrateShortcutsToSeparateTable] invalid item = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1808
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1835
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1803
    :cond_12
    add-int/lit8 v23, v23, 0x1

    .line 1805
    goto :goto_6

    .line 1806
    .end local v38    # "insertId":J
    .end local v48    # "row":Landroid/content/ContentValues;
    :cond_13
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1808
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1812
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1814
    const/16 v32, 0x0

    :goto_7
    :try_start_d
    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v32

    if-ge v0, v4, :cond_16

    .line 1815
    new-instance v66, Landroid/content/ContentValues;

    invoke-direct/range {v66 .. v66}, Landroid/content/ContentValues;-><init>()V

    .line 1816
    .restart local v66    # "values":Landroid/content/ContentValues;
    const-string v5, "_id"

    move-object/from16 v0, v50

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v0, v66

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1817
    const-string v5, "screenRank"

    move-object/from16 v0, v50

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v0, v66

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1819
    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getWorkspaceScreensTable()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1818
    move-object/from16 v0, p1

    move-object/from16 v1, v66

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v38

    .line 1820
    .restart local v38    # "insertId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v38, v4

    if-gez v4, :cond_15

    .line 1821
    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[migrateShortcutsToSeparateTable] invalid screen = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v66

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1827
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1835
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1808
    .end local v38    # "insertId":J
    .end local v66    # "values":Landroid/content/ContentValues;
    :catchall_2
    move-exception v4

    :try_start_f
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_f
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1814
    .restart local v38    # "insertId":J
    .restart local v66    # "values":Landroid/content/ContentValues;
    :cond_15
    add-int/lit8 v32, v32, 0x1

    goto :goto_7

    .line 1825
    .end local v38    # "insertId":J
    .end local v66    # "values":Landroid/content/ContentValues;
    :cond_16
    :try_start_10
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 1827
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1830
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    :try_end_11
    .catch Landroid/database/SQLException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1835
    .end local v12    # "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v13    # "appWidgetIdIndex":I
    .end local v14    # "appWidgetProviderIndex":I
    .end local v17    # "cellXIndex":I
    .end local v19    # "cellYIndex":I
    .end local v22    # "containerIndex":I
    .end local v24    # "curX":I
    .end local v25    # "curY":I
    .end local v26    # "displayModeIndex":I
    .end local v31    # "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v32    # "i":I
    .end local v33    # "iconIndex":I
    .end local v34    # "iconPackageIndex":I
    .end local v35    # "iconResourceIndex":I
    .end local v36    # "iconTypeIndex":I
    .end local v37    # "idIndex":I
    .end local v41    # "intentIndex":I
    .end local v44    # "itemTypeIndex":I
    .end local v46    # "profileIndex":I
    .end local v47    # "rankIndex":I
    .end local v51    # "screenIndex":I
    .end local v52    # "seenIntents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v53    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v57    # "spanXIndex":I
    .end local v59    # "spanYIndex":I
    .end local v60    # "titleIndex":I
    .end local v61    # "uriIndex":I
    :cond_17
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 1827
    .restart local v12    # "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v13    # "appWidgetIdIndex":I
    .restart local v14    # "appWidgetProviderIndex":I
    .restart local v17    # "cellXIndex":I
    .restart local v19    # "cellYIndex":I
    .restart local v22    # "containerIndex":I
    .restart local v24    # "curX":I
    .restart local v25    # "curY":I
    .restart local v26    # "displayModeIndex":I
    .restart local v31    # "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v32    # "i":I
    .restart local v33    # "iconIndex":I
    .restart local v34    # "iconPackageIndex":I
    .restart local v35    # "iconResourceIndex":I
    .restart local v36    # "iconTypeIndex":I
    .restart local v37    # "idIndex":I
    .restart local v41    # "intentIndex":I
    .restart local v44    # "itemTypeIndex":I
    .restart local v46    # "profileIndex":I
    .restart local v47    # "rankIndex":I
    .restart local v51    # "screenIndex":I
    .restart local v52    # "seenIntents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v53    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v57    # "spanXIndex":I
    .restart local v59    # "spanYIndex":I
    .restart local v60    # "titleIndex":I
    .restart local v61    # "uriIndex":I
    :catchall_3
    move-exception v4

    :try_start_12
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_12
    .catch Landroid/database/SQLException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 1855
    .end local v12    # "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v13    # "appWidgetIdIndex":I
    .end local v14    # "appWidgetProviderIndex":I
    .end local v17    # "cellXIndex":I
    .end local v19    # "cellYIndex":I
    .end local v22    # "containerIndex":I
    .end local v24    # "curX":I
    .end local v25    # "curY":I
    .end local v26    # "displayModeIndex":I
    .end local v31    # "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v32    # "i":I
    .end local v33    # "iconIndex":I
    .end local v34    # "iconPackageIndex":I
    .end local v35    # "iconResourceIndex":I
    .end local v36    # "iconTypeIndex":I
    .end local v37    # "idIndex":I
    .end local v41    # "intentIndex":I
    .end local v44    # "itemTypeIndex":I
    .end local v46    # "profileIndex":I
    .end local v47    # "rankIndex":I
    .end local v51    # "screenIndex":I
    .end local v52    # "seenIntents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v53    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v57    # "spanXIndex":I
    .end local v59    # "spanYIndex":I
    .end local v60    # "titleIndex":I
    .end local v61    # "uriIndex":I
    .restart local v54    # "sp":Landroid/content/SharedPreferences;
    .restart local v55    # "spKey":Ljava/lang/String;
    :catch_3
    move-exception v28

    .line 1856
    .local v28, "ex":Ljava/lang/Exception;
    :try_start_13
    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[migrateShortcutsToSeparateTable] DROP TABLE fail. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 1858
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v28    # "ex":Ljava/lang/Exception;
    :catchall_4
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    .line 119
    const-string v2, "LauncherProvider"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->init(Landroid/content/Context;)V

    .line 122
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 123
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {p0}, Lnet/oneplus/h2launcher/LauncherAppState;->setLauncherProvider(Lnet/oneplus/h2launcher/LauncherProvider;)V

    .line 124
    new-instance v2, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-direct {v2, v0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    .line 125
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 126
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mListenerWrapper:Lnet/oneplus/h2launcher/LauncherProvider$ChangeListenerWrapper;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mListenerHandler:Landroid/os/Handler;

    .line 127
    const/4 v2, 0x1

    return v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 158
    new-instance v8, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 159
    .local v8, "args":Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 160
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 163
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 164
    .local v9, "result":Landroid/database/Cursor;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 166
    return-object v9
.end method

.method public reloadOpenDatabaseHelper()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    .line 132
    return-void
.end method

.method public setLauncherProviderChangeListener(Lnet/oneplus/h2launcher/LauncherProviderChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lnet/oneplus/h2launcher/LauncherProviderChangeListener;

    .prologue
    .line 139
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mListener:Lnet/oneplus/h2launcher/LauncherProviderChangeListener;

    .line 140
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mListener:Lnet/oneplus/h2launcher/LauncherProviderChangeListener;

    iput-object v1, v0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mListener:Lnet/oneplus/h2launcher/LauncherProviderChangeListener;

    .line 141
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mListenerWrapper:Lnet/oneplus/h2launcher/LauncherProvider$ChangeListenerWrapper;

    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/LauncherProvider$ChangeListenerWrapper;->access$102(Lnet/oneplus/h2launcher/LauncherProvider$ChangeListenerWrapper;Lnet/oneplus/h2launcher/LauncherProviderChangeListener;)Lnet/oneplus/h2launcher/LauncherProviderChangeListener;

    .line 142
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 280
    new-instance v0, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 282
    .local v0, "args":Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;
    invoke-static {p2}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 283
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 284
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 285
    .local v1, "count":I
    if-lez v1, :cond_0

    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->notifyListeners()V

    .line 287
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherProvider;->reloadLauncherIfExternal()V

    .line 288
    return v1
.end method

.method public updateFolderItemsRank()V
    .locals 3

    .prologue
    .line 541
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z

    .line 542
    return-void
.end method

.method public updateMaxItemId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 391
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->updateMaxItemId(J)V

    .line 392
    return-void
.end method

.method public wasNewDbCreated()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider;->mOpenHelper:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->wasNewDbCreated()Z

    move-result v0

    return v0
.end method
