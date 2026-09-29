.class public Lnet/oneplus/h2launcher/LauncherBackupHelper;
.super Ljava/lang/Object;
.source "LauncherBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/LauncherBackupHelper$ItemTypeMatcher;,
        Lnet/oneplus/h2launcher/LauncherBackupHelper$InvalidBackupException;
    }
.end annotation


# static fields
.field private static final APPWIDGET_ID_INDEX:I = 0x4

.field private static final APPWIDGET_PROVIDER_INDEX:I = 0x3

.field private static final BACKUP_VERSION:I = 0x4

.field private static final CELLX_INDEX:I = 0x5

.field private static final CELLY_INDEX:I = 0x6

.field private static final CONTAINER_INDEX:I = 0x7

.field private static final DEBUG:Z = false

.field private static final FAVORITE_PROJECTION:[Ljava/lang/String;

.field private static final ICON_INDEX:I = 0x8

.field private static final ICON_PACKAGE_INDEX:I = 0x9

.field private static final ICON_RESOURCE_INDEX:I = 0xa

.field private static final ICON_TYPE_INDEX:I = 0xb

.field private static final ID_INDEX:I = 0x0

.field private static final ID_MODIFIED:I = 0x1

.field private static final INTENT_INDEX:I = 0x2

.field private static final ITEM_TYPE_INDEX:I = 0xc

.field private static final JOURNAL_KEY:Ljava/lang/String; = "#"

.field private static final MAX_ICONS_PER_PASS:I = 0xa

.field private static final MAX_JOURNAL_SIZE:I = 0xf4240

.field private static final MAX_WIDGETS_PER_PASS:I = 0x5

.field private static final RANK_INDEX:I = 0x12

.field private static final SCREEN_INDEX:I = 0xd

.field private static final SCREEN_PROJECTION:[Ljava/lang/String;

.field private static final SCREEN_RANK_INDEX:I = 0x2

.field private static final SPANX_INDEX:I = 0xe

.field private static final SPANY_INDEX:I = 0xf

.field private static final TAG:Ljava/lang/String; = "LauncherBackupHelper"

.field private static final TITLE_INDEX:I = 0x10

.field private static final VERBOSE:Z


# instance fields
.field private mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

.field private mBackupDataWasUpdated:Z

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mBuffer:[B

.field final mContext:Landroid/content/Context;

.field private mDeviceProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

.field private final mExistingKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHotseatShift:I

.field private mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

.field private final mItemTypeMatchers:[Lnet/oneplus/h2launcher/LauncherBackupHelper$ItemTypeMatcher;

.field private final mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/backup/BackupProtos$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLastBackupRestoreTime:J

.field private final mUserSerial:J

.field migrationCompatibleProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

.field restoreSuccessful:Z

.field restoredBackupVersion:I

.field widgetSizes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "modified"

    aput-object v1, v0, v4

    const-string v1, "intent"

    aput-object v1, v0, v5

    const-string v1, "appWidgetProvider"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "appWidgetId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cellX"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cellY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "container"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "iconPackage"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "iconResource"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "iconType"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "itemType"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "screen"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "spanX"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "spanY"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "profileId"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rank"

    aput-object v2, v0, v1

    sput-object v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    .line 132
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "modified"

    aput-object v1, v0, v4

    const-string v1, "screenRank"

    aput-object v1, v0, v5

    sput-object v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->SCREEN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/16 v1, 0x200

    new-array v1, v1, [B

    iput-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mBuffer:[B

    .line 156
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->widgetSizes:Ljava/util/HashSet;

    .line 159
    iput v2, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->restoredBackupVersion:I

    .line 163
    const/4 v1, 0x0

    iput v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mHotseatShift:I

    .line 166
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    .line 167
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    .line 169
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->restoreSuccessful:Z

    .line 170
    const/4 v1, 0x7

    new-array v1, v1, [Lnet/oneplus/h2launcher/LauncherBackupHelper$ItemTypeMatcher;

    iput-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mItemTypeMatchers:[Lnet/oneplus/h2launcher/LauncherBackupHelper$ItemTypeMatcher;

    .line 172
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    .line 173
    .local v0, "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mUserSerial:J

    .line 174
    return-void
.end method

.method private applyJournal(Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;)V
    .locals 6
    .param p1, "journal"    # Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;

    .prologue
    .line 184
    iget-wide v2, p1, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;->t:J

    iput-wide v2, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mLastBackupRestoreTime:J

    .line 185
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 186
    iget-object v1, p1, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;->key:[Lnet/oneplus/h2launcher/backup/BackupProtos$Key;

    if-eqz v1, :cond_0

    .line 187
    iget-object v2, p1, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;->key:[Lnet/oneplus/h2launcher/backup/BackupProtos$Key;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 188
    .local v0, "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->keyToBackupKey(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    :cond_0
    iget v1, p1, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;->backupVersion:I

    iput v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->restoredBackupVersion:I

    .line 192
    return-void
.end method

.method private backupFavorites(Landroid/app/backup/BackupDataOutput;)V
    .locals 14
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 453
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 455
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lnet/oneplus/h2launcher/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    .line 456
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->getUserSelectionArg()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 455
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 458
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v1, -0x1

    :try_start_0
    invoke-interface {v7, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 459
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 461
    .local v8, "id":J
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 462
    .local v12, "updateTime":J
    const/4 v1, 0x1

    invoke-direct {p0, v1, v8, v9}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->getKey(IJ)Lnet/oneplus/h2launcher/backup/BackupProtos$Key;

    move-result-object v10

    .line 463
    .local v10, "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-direct {p0, v10}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->keyToBackupKey(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v6

    .line 467
    .local v6, "backupKey":Ljava/lang/String;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mLastBackupRestoreTime:J

    cmp-long v1, v12, v2

    if-gez v1, :cond_1

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->restoredBackupVersion:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 469
    :cond_1
    invoke-direct {p0, v7}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->packFavorite(Landroid/database/Cursor;)Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;

    move-result-object v1

    invoke-direct {p0, v10, v1, p1}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->writeRowToBackup(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 475
    .end local v6    # "backupKey":Ljava/lang/String;
    .end local v8    # "id":J
    .end local v10    # "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    .end local v12    # "updateTime":J
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 477
    return-void
.end method

.method private backupIcons(Landroid/app/backup/BackupDataOutput;)V
    .locals 23
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 557
    .local v4, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v14, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 558
    .local v14, "dpi":I
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v22

    .line 559
    .local v22, "myUserHandle":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    const/4 v11, 0x0

    .line 562
    .local v11, "backupUpIconCount":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(itemType=0 OR itemType=1) AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 564
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->getUserSelectionArg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 565
    .local v7, "where":Ljava/lang/String;
    sget-object v5, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lnet/oneplus/h2launcher/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 568
    .local v13, "cursor":Landroid/database/Cursor;
    const/4 v5, -0x1

    :try_start_0
    invoke-interface {v13, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 569
    :cond_0
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 570
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 571
    .local v18, "id":J
    const/4 v5, 0x2

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 573
    .local v20, "intentDescription":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, v20

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v17

    .line 574
    .local v17, "intent":Landroid/content/Intent;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 575
    .local v12, "cn":Landroid/content/ComponentName;
    const/16 v21, 0x0

    .line 576
    .local v21, "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    const/4 v10, 0x0

    .line 577
    .local v10, "backupKey":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 578
    const/4 v5, 0x3

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->getKey(ILjava/lang/String;)Lnet/oneplus/h2launcher/backup/BackupProtos$Key;

    move-result-object v21

    .line 579
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->keyToBackupKey(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v10

    .line 583
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 587
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 604
    .end local v10    # "backupKey":Ljava/lang/String;
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v21    # "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    :catch_0
    move-exception v15

    .line 605
    .local v15, "e":Ljava/net/URISyntaxException;
    :try_start_2
    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid URI on application favorite: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 612
    .end local v15    # "e":Ljava/net/URISyntaxException;
    .end local v18    # "id":J
    .end local v20    # "intentDescription":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    .line 581
    .restart local v10    # "backupKey":Ljava/lang/String;
    .restart local v12    # "cn":Landroid/content/ComponentName;
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v18    # "id":J
    .restart local v20    # "intentDescription":Ljava/lang/String;
    .restart local v21    # "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    :cond_1
    :try_start_3
    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "empty intent on application favorite: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 606
    .end local v10    # "backupKey":Ljava/lang/String;
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v21    # "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    :catch_1
    move-exception v15

    .line 607
    .local v15, "e":Ljava/io/IOException;
    :try_start_4
    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to save application icon for favorite: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 588
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v10    # "backupKey":Ljava/lang/String;
    .restart local v12    # "cn":Landroid/content/ComponentName;
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v21    # "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    :cond_2
    if-eqz v10, :cond_0

    .line 590
    const/16 v5, 0xa

    if-ge v11, v5, :cond_3

    .line 592
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lnet/oneplus/h2launcher/AssetCache;->getIcon(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 593
    .local v16, "icon":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lnet/oneplus/h2launcher/AssetCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 594
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->packIcon(ILandroid/graphics/Bitmap;)Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->writeRowToBackup(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 601
    .end local v16    # "icon":Landroid/graphics/Bitmap;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->dataChanged()V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 612
    .end local v10    # "backupKey":Ljava/lang/String;
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "id":J
    .end local v20    # "intentDescription":Ljava/lang/String;
    .end local v21    # "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 614
    return-void
.end method

.method private backupKeyToKey(Ljava/lang/String;)Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    .locals 6
    .param p1, "backupKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/oneplus/h2launcher/LauncherBackupHelper$InvalidBackupException;
        }
    .end annotation

    .prologue
    .line 766
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->parseFrom([B)Lnet/oneplus/h2launcher/backup/BackupProtos$Key;

    move-result-object v1

    .line 767
    .local v1, "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    iget-wide v2, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->checksum:J

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->checkKey(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 768
    const/4 v1, 0x0

    .line 769
    new-instance v2, Lnet/oneplus/h2launcher/LauncherBackupHelper$InvalidBackupException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid key read from stream"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lnet/oneplus/h2launcher/LauncherBackupHelper$InvalidBackupException;-><init>(Lnet/oneplus/h2launcher/LauncherBackupHelper;Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 772
    .end local v1    # "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    new-instance v2, Lnet/oneplus/h2launcher/LauncherBackupHelper$InvalidBackupException;

    invoke-direct {v2, p0, v0}, Lnet/oneplus/h2launcher/LauncherBackupHelper$InvalidBackupException;-><init>(Lnet/oneplus/h2launcher/LauncherBackupHelper;Ljava/lang/Throwable;)V

    throw v2

    .line 774
    .end local v0    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :catch_1
    move-exception v0

    .line 775
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lnet/oneplus/h2launcher/LauncherBackupHelper$InvalidBackupException;

    invoke-direct {v2, p0, v0}, Lnet/oneplus/h2launcher/LauncherBackupHelper$InvalidBackupException;-><init>(Lnet/oneplus/h2launcher/LauncherBackupHelper;Ljava/lang/Throwable;)V

    throw v2

    .line 771
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    :cond_0
    return-object v1
.end method

.method private backupScreens(Landroid/app/backup/BackupDataOutput;)V
    .locals 14
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 506
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 507
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lnet/oneplus/h2launcher/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lnet/oneplus/h2launcher/LauncherBackupHelper;->SCREEN_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 510
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v1, -0x1

    :try_start_0
    invoke-interface {v7, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 512
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 513
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 514
    .local v8, "id":J
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 515
    .local v12, "updateTime":J
    const/4 v1, 0x2

    invoke-direct {p0, v1, v8, v9}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->getKey(IJ)Lnet/oneplus/h2launcher/backup/BackupProtos$Key;

    move-result-object v10

    .line 516
    .local v10, "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    invoke-direct {p0, v10}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->keyToBackupKey(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v6

    .line 518
    .local v6, "backupKey":Ljava/lang/String;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mLastBackupRestoreTime:J

    cmp-long v1, v12, v2

    if-ltz v1, :cond_0

    .line 519
    :cond_1
    invoke-direct {p0, v7}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->packScreen(Landroid/database/Cursor;)Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;

    move-result-object v1

    invoke-direct {p0, v10, v1, p1}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->writeRowToBackup(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 525
    .end local v6    # "backupKey":Ljava/lang/String;
    .end local v8    # "id":J
    .end local v10    # "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    .end local v12    # "updateTime":J
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 527
    return-void
.end method

.method private backupWidgets(Landroid/app/backup/BackupDataOutput;)V
    .locals 18
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 654
    .local v2, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v11, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 655
    .local v11, "dpi":I
    const/4 v9, 0x0

    .line 657
    .local v9, "backupWidgetCount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "itemType=4 AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 658
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->getUserSelectionArg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 659
    .local v5, "where":Ljava/lang/String;
    sget-object v3, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lnet/oneplus/h2launcher/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 662
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v3, -0x1

    :try_start_0
    invoke-interface {v10, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 663
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 664
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 665
    .local v12, "id":J
    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 666
    .local v16, "providerName":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v15

    .line 667
    .local v15, "provider":Landroid/content/ComponentName;
    const/4 v14, 0x0

    .line 668
    .local v14, "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    const/4 v8, 0x0

    .line 669
    .local v8, "backupKey":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 670
    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->getKey(ILjava/lang/String;)Lnet/oneplus/h2launcher/backup/BackupProtos$Key;

    move-result-object v14

    .line 671
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->keyToBackupKey(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v8

    .line 677
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->restoredBackupVersion:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    .line 681
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 698
    .end local v8    # "backupKey":Ljava/lang/String;
    .end local v12    # "id":J
    .end local v14    # "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    .end local v15    # "provider":Landroid/content/ComponentName;
    .end local v16    # "providerName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    .line 673
    .restart local v8    # "backupKey":Ljava/lang/String;
    .restart local v12    # "id":J
    .restart local v14    # "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    .restart local v15    # "provider":Landroid/content/ComponentName;
    .restart local v16    # "providerName":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v3, "LauncherBackupHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "empty intent on appwidget: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 682
    :cond_2
    if-eqz v8, :cond_0

    .line 684
    const/4 v3, 0x5

    if-ge v9, v3, :cond_3

    .line 686
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v17

    .line 687
    .local v17, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v15, v1}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->packWidget(ILandroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v3, v1}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->writeRowToBackup(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    add-int/lit8 v9, v9, 0x1

    .line 690
    goto :goto_0

    .line 693
    .end local v17    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->dataChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 698
    .end local v8    # "backupKey":Ljava/lang/String;
    .end local v12    # "id":J
    .end local v14    # "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    .end local v15    # "provider":Landroid/content/ComponentName;
    .end local v16    # "providerName":Ljava/lang/String;
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 700
    return-void
.end method

.method private checkKey(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;)J
    .locals 6
    .param p1, "key"    # Lnet/oneplus/h2launcher/backup/BackupProtos$Key;

    .prologue
    const-wide/32 v4, 0xffff

    .line 781
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 782
    .local v0, "checksum":Ljava/util/zip/CRC32;
    iget v1, p1, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->type:I

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 783
    iget-wide v2, p1, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->id:J

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 784
    iget-wide v2, p1, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->id:J

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 785
    iget-object v1, p1, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 786
    iget-object v1, p1, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 788
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    return-wide v2
.end method

.method private dataChanged()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mBackupManager:Landroid/app/backup/BackupManager;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 180
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 181
    return-void
.end method

.method private getAppVersion()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 429
    :try_start_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    .line 430
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_0
    return v1

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private getCurrentStateJournal()Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;
    .locals 4

    .prologue
    .line 418
    new-instance v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;-><init>()V

    .line 419
    .local v0, "journal":Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;
    iget-wide v2, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mLastBackupRestoreTime:J

    iput-wide v2, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;->t:J

    .line 420
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lnet/oneplus/h2launcher/backup/BackupProtos$Key;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lnet/oneplus/h2launcher/backup/BackupProtos$Key;

    iput-object v1, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;->key:[Lnet/oneplus/h2launcher/backup/BackupProtos$Key;

    .line 421
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->getAppVersion()I

    move-result v1

    iput v1, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;->appVersion:I

    .line 422
    const/4 v1, 0x4

    iput v1, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;->backupVersion:I

    .line 423
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mDeviceProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    iput-object v1, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;->profile:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    .line 424
    return-object v0
.end method

.method private getKey(IJ)Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    .locals 4
    .param p1, "type"    # I
    .param p2, "id"    # J

    .prologue
    .line 738
    new-instance v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;-><init>()V

    .line 739
    .local v0, "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    iput p1, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->type:I

    .line 740
    iput-wide p2, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->id:J

    .line 741
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->checkKey(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;)J

    move-result-wide v2

    iput-wide v2, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->checksum:J

    .line 742
    return-object v0
.end method

.method private getKey(ILjava/lang/String;)Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    .locals 4
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 751
    new-instance v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;-><init>()V

    .line 752
    .local v0, "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    iput p1, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->type:I

    .line 753
    iput-object p2, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->name:Ljava/lang/String;

    .line 754
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->checkKey(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;)J

    move-result-wide v2

    iput-wide v2, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->checksum:J

    .line 755
    return-object v0
.end method

.method private getUserSelectionArg()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v1

    .line 1194
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initDeviceProfileData(Lnet/oneplus/h2launcher/InvariantDeviceProfile;)Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;
    .locals 2
    .param p1, "profile"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .prologue
    .line 437
    new-instance v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;-><init>()V

    .line 438
    .local v0, "data":Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;
    iget v1, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    int-to-float v1, v1

    iput v1, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    .line 439
    iget v1, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    int-to-float v1, v1

    iput v1, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    .line 440
    iget v1, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numHotseatIcons:I

    int-to-float v1, v1

    iput v1, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    .line 441
    iget v1, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatAllAppsRank:I

    iput v1, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    .line 442
    return-object v0
.end method

.method private isBackupCompatible(Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;)Z
    .locals 8
    .param p1, "oldState"    # Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 286
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mDeviceProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    .line 287
    .local v0, "currentProfile":Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;
    iget-object v2, p1, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;->profile:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    .line 289
    .local v2, "oldProfile":Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;
    if-eqz v2, :cond_0

    iget v5, v2, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 325
    :cond_1
    :goto_0
    return v3

    .line 294
    :cond_2
    const/4 v1, 0x0

    .line 295
    .local v1, "isHotseatCompatible":Z
    iget v5, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    int-to-float v5, v5

    iget v6, v2, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    .line 296
    const/4 v1, 0x1

    .line 297
    iput v3, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mHotseatShift:I

    .line 300
    :cond_3
    iget v5, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    iget v6, v2, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    if-lt v5, v6, :cond_4

    iget v5, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    iget v6, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, v2, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    iget v7, v2, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_4

    .line 304
    const/4 v1, 0x1

    .line 305
    iget v5, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    iget v6, v2, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    sub-int/2addr v5, v6

    iput v5, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mHotseatShift:I

    .line 308
    :cond_4
    if-eqz v1, :cond_1

    .line 311
    iget v5, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    iget v6, v2, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5

    iget v5, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    iget v6, v2, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5

    move v3, v4

    .line 313
    goto :goto_0

    .line 316
    :cond_5
    sget-boolean v5, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->ENABLED:Z

    if-eqz v5, :cond_1

    .line 318
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->initDeviceProfileData(Lnet/oneplus/h2launcher/InvariantDeviceProfile;)Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->migrationCompatibleProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    .line 319
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->migrationCompatibleProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    iget v5, v2, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    iput v5, v3, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    .line 320
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->migrationCompatibleProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    iget v5, v2, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    iput v5, v3, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    .line 321
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->migrationCompatibleProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    iget v5, v2, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    iput v5, v3, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    .line 322
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->migrationCompatibleProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    iget v5, v2, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    iput v5, v3, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    move v3, v4

    .line 323
    goto :goto_0
.end method

.method private isReplaceableHotseatItem(Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;)Z
    .locals 3
    .param p1, "favorite"    # Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;

    .prologue
    const/4 v0, 0x1

    .line 796
    iget v1, p1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->container:I

    const/16 v2, -0x65

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget v1, p1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->itemType:I

    if-eqz v1, :cond_0

    iget v1, p1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->itemType:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyToBackupKey(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Lnet/oneplus/h2launcher/backup/BackupProtos$Key;

    .prologue
    .line 760
    invoke-static {p1}, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private launcherIsReady()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1176
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1177
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lnet/oneplus/h2launcher/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1178
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v1, v7

    .line 1189
    :goto_0
    return v1

    .line 1182
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1184
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstanceNoCreate()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v7

    .line 1186
    goto :goto_0

    .line 1189
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private packFavorite(Landroid/database/Cursor;)Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;
    .locals 17
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 804
    new-instance v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;

    invoke-direct {v6}, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;-><init>()V

    .line 805
    .local v6, "favorite":Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->id:J

    .line 806
    const/16 v14, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->screen:I

    .line 807
    const/4 v14, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->container:I

    .line 808
    const/4 v14, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellX:I

    .line 809
    const/4 v14, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellY:I

    .line 810
    const/16 v14, 0xe

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->spanX:I

    .line 811
    const/16 v14, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->spanY:I

    .line 812
    const/16 v14, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconType:I

    .line 813
    const/16 v14, 0x12

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->rank:I

    .line 815
    const/16 v14, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 816
    .local v13, "title":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 817
    iput-object v13, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    .line 819
    :cond_0
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 820
    .local v11, "intentDescription":Ljava/lang/String;
    const/4 v10, 0x0

    .line 821
    .local v10, "intent":Landroid/content/Intent;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 823
    const/4 v14, 0x0

    :try_start_0
    invoke-static {v11, v14}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    .line 824
    const-string v14, "profile"

    invoke-virtual {v10, v14}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 825
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :cond_1
    :goto_0
    const/16 v14, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->itemType:I

    .line 831
    iget v14, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->itemType:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_4

    .line 832
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->appWidgetId:I

    .line 833
    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 834
    .local v3, "appWidgetProvider":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 835
    iput-object v3, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    .line 855
    .end local v3    # "appWidgetProvider":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->isReplaceableHotseatItem(Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 856
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 857
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 858
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 860
    .local v2, "activity":Landroid/content/pm/ActivityInfo;
    :try_start_1
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 864
    :goto_2
    if-nez v2, :cond_7

    .line 880
    .end local v2    # "activity":Landroid/content/pm/ActivityInfo;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    :goto_3
    return-object v6

    .line 826
    :catch_0
    move-exception v5

    .line 827
    .local v5, "e":Ljava/net/URISyntaxException;
    const-string v14, "LauncherBackupHelper"

    const-string v15, "Invalid intent"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 837
    .end local v5    # "e":Ljava/net/URISyntaxException;
    :cond_4
    iget v14, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->itemType:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 838
    iget v14, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconType:I

    if-nez v14, :cond_6

    .line 839
    const/16 v14, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 840
    .local v8, "iconPackage":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 841
    iput-object v8, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    .line 843
    :cond_5
    const/16 v14, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 844
    .local v9, "iconResource":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 845
    iput-object v9, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    .line 849
    .end local v8    # "iconPackage":Ljava/lang/String;
    .end local v9    # "iconResource":Ljava/lang/String;
    :cond_6
    const/16 v14, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 850
    .local v4, "blob":[B
    if-eqz v4, :cond_2

    array-length v14, v4

    if-lez v14, :cond_2

    .line 851
    iput-object v4, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->icon:[B

    goto :goto_1

    .line 861
    .end local v4    # "blob":[B
    .restart local v2    # "activity":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v5

    .line 862
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "LauncherBackupHelper"

    const-string v15, "Target not found"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 867
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mItemTypeMatchers:[Lnet/oneplus/h2launcher/LauncherBackupHelper$ItemTypeMatcher;

    array-length v14, v14

    if-ge v7, v14, :cond_3

    .line 868
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mItemTypeMatchers:[Lnet/oneplus/h2launcher/LauncherBackupHelper$ItemTypeMatcher;

    aget-object v14, v14, v7

    if-nez v14, :cond_8

    .line 869
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mItemTypeMatchers:[Lnet/oneplus/h2launcher/LauncherBackupHelper$ItemTypeMatcher;

    new-instance v15, Lnet/oneplus/h2launcher/LauncherBackupHelper$ItemTypeMatcher;

    .line 870
    invoke-static {v7}, Lnet/oneplus/h2launcher/CommonAppTypeParser;->getResourceForItemType(I)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lnet/oneplus/h2launcher/LauncherBackupHelper$ItemTypeMatcher;-><init>(Lnet/oneplus/h2launcher/LauncherBackupHelper;I)V

    aput-object v15, v14, v7

    .line 872
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mItemTypeMatchers:[Lnet/oneplus/h2launcher/LauncherBackupHelper$ItemTypeMatcher;

    aget-object v14, v14, v7

    invoke-virtual {v14, v2, v12}, Lnet/oneplus/h2launcher/LauncherBackupHelper$ItemTypeMatcher;->matches(Landroid/content/pm/ActivityInfo;Landroid/content/pm/PackageManager;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 873
    iput v7, v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->targetType:I

    goto :goto_3

    .line 867
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4
.end method

.method private packIcon(ILandroid/graphics/Bitmap;)Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;
    .locals 2
    .param p1, "dpi"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1001
    new-instance v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;-><init>()V

    .line 1002
    .local v0, "res":Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;
    iput p1, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->dpi:I

    .line 1003
    invoke-static {p2}, Lnet/oneplus/h2launcher/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->data:[B

    .line 1004
    return-object v0
.end method

.method private packScreen(Landroid/database/Cursor;)Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 983
    new-instance v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;-><init>()V

    .line 984
    .local v0, "screen":Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->id:J

    .line 985
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->rank:I

    .line 986
    return-object v0
.end method

.method private packWidget(ILandroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;
    .locals 8
    .param p1, "dpi"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 1009
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    .line 1010
    invoke-static {v5, p2, p3}, Lnet/oneplus/h2launcher/LauncherModel;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    move-result-object v2

    .line 1011
    .local v2, "info":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    new-instance v4, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;

    invoke-direct {v4}, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;-><init>()V

    .line 1012
    .local v4, "widget":Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    .line 1013
    iget-object v5, v2, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v5, v4, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    .line 1014
    iget-object v5, v2, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v4, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->configure:Z

    .line 1015
    iget v5, v2, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->icon:I

    if-eqz v5, :cond_0

    .line 1016
    new-instance v5, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    invoke-direct {v5}, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;-><init>()V

    iput-object v5, v4, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->icon:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    .line 1017
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, v2, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->icon:I

    invoke-virtual {v5, v6, v7}, Lnet/oneplus/h2launcher/AssetCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1018
    .local v0, "fullResIcon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1019
    .local v1, "icon":Landroid/graphics/Bitmap;
    iget-object v5, v4, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->icon:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    invoke-static {v1}, Lnet/oneplus/h2launcher/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    iput-object v6, v5, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->data:[B

    .line 1020
    iget-object v5, v4, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->icon:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    iput p1, v5, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->dpi:I

    .line 1023
    .end local v0    # "fullResIcon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v6}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->getMinSpans(Lnet/oneplus/h2launcher/InvariantDeviceProfile;Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    .line 1024
    .local v3, "spans":Landroid/graphics/Point;
    iget v5, v3, Landroid/graphics/Point;->x:I

    iput v5, v4, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->minSpanX:I

    .line 1025
    iget v5, v3, Landroid/graphics/Point;->y:I

    iput v5, v4, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->minSpanY:I

    .line 1027
    return-object v4

    .line 1014
    .end local v3    # "spans":Landroid/graphics/Point;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static readCheckedBytes([BI)[B
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "dataSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1162
    new-instance v1, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;-><init>()V

    .line 1163
    .local v1, "wrapper":Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;
    const/4 v2, 0x0

    invoke-static {v1, p0, v2, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[BII)Lcom/google/protobuf/nano/MessageNano;

    .line 1164
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 1165
    .local v0, "checksum":Ljava/util/zip/CRC32;
    iget-object v2, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->payload:[B

    invoke-virtual {v0, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 1166
    iget-wide v2, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->checksum:J

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1167
    new-instance v2, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    const-string v3, "checksum does not match"

    invoke-direct {v2, v3}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1169
    :cond_0
    iget-object v2, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->payload:[B

    return-object v2
.end method

.method private readJournal(Landroid/os/ParcelFileDescriptor;)Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;
    .locals 12
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 1050
    new-instance v5, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;

    invoke-direct {v5}, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;-><init>()V

    .line 1051
    .local v5, "journal":Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;
    if-nez p1, :cond_0

    .line 1110
    :goto_0
    return-object v5

    .line 1054
    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1056
    .local v4, "inStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 1058
    .local v0, "availableBytes":I
    const v9, 0xf4240

    if-ge v0, v9, :cond_3

    .line 1059
    new-array v1, v0, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 1061
    .local v2, "bytesRead":I
    const/4 v8, 0x0

    .line 1062
    .local v8, "valid":Z
    const/4 v6, 0x0

    .line 1063
    .local v6, "lastProtoException":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :goto_1
    if-lez v0, :cond_2

    .line 1069
    const/4 v9, 0x1

    :try_start_1
    invoke-virtual {v4, v1, v2, v9}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 1070
    .local v7, "result":I
    if-lez v7, :cond_1

    .line 1071
    sub-int/2addr v0, v7

    .line 1072
    add-int/2addr v2, v7

    .line 1085
    .end local v7    # "result":I
    :goto_2
    :try_start_2
    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->readCheckedBytes([BI)[B

    move-result-object v9

    invoke-static {v5, v9}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;
    :try_end_2
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1087
    const/4 v8, 0x1

    .line 1088
    const/4 v0, 0x0

    goto :goto_1

    .line 1074
    .restart local v7    # "result":I
    :cond_1
    :try_start_3
    const-string v9, "LauncherBackupHelper"

    const-string v10, "unexpected end of file while reading journal."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1076
    const/4 v0, 0x0

    goto :goto_2

    .line 1078
    .end local v7    # "result":I
    :catch_0
    move-exception v3

    .line 1079
    .local v3, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 1080
    const/4 v0, 0x0

    goto :goto_2

    .line 1090
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 1092
    .local v3, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    move-object v6, v3

    .line 1093
    :try_start_4
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;->clear()Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1101
    .end local v0    # "availableBytes":I
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v3    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    .end local v6    # "lastProtoException":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    .end local v8    # "valid":Z
    :catch_2
    move-exception v3

    .line 1102
    .local v3, "e":Ljava/io/IOException;
    :try_start_5
    const-string v9, "LauncherBackupHelper"

    const-string v10, "failed to close the journal"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1105
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 1106
    :catch_3
    move-exception v3

    .line 1107
    const-string v9, "LauncherBackupHelper"

    const-string v10, "failed to close the journal"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1097
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "availableBytes":I
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v6    # "lastProtoException":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    .restart local v8    # "valid":Z
    :cond_2
    if-nez v8, :cond_3

    .line 1098
    :try_start_7
    const-string v9, "LauncherBackupHelper"

    const-string v10, "could not find a valid journal"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1105
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v6    # "lastProtoException":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    .end local v8    # "valid":Z
    :cond_3
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 1106
    :catch_4
    move-exception v3

    .line 1107
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v9, "LauncherBackupHelper"

    const-string v10, "failed to close the journal"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1104
    .end local v0    # "availableBytes":I
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1105
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1108
    :goto_3
    throw v9

    .line 1106
    :catch_5
    move-exception v3

    .line 1107
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v10, "LauncherBackupHelper"

    const-string v11, "failed to close the journal"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private restoreFavorite(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;[BI)V
    .locals 3
    .param p1, "key"    # Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    .param p2, "buffer"    # [B
    .param p3, "dataSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 494
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, p2, p3}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->unpackFavorite([BI)Landroid/content/ContentValues;

    move-result-object v1

    .line 495
    .local v1, "values":Landroid/content/ContentValues;
    sget-object v2, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 496
    return-void
.end method

.method private restoreIcon(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;[BI)V
    .locals 9
    .param p1, "key"    # Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    .param p2, "buffer"    # [B
    .param p3, "dataSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    new-instance v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;-><init>()V

    invoke-direct {p0, v1, p2, p3}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    .line 634
    .local v0, "res":Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;
    iget-object v1, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->data:[B

    const/4 v2, 0x0

    iget-object v4, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->data:[B

    array-length v4, v4

    invoke-static {v1, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 635
    .local v3, "icon":Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 636
    const-string v1, "LauncherBackupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unpack icon for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    iget-object v2, p1, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iget v4, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->dpi:I

    const-string v5, ""

    iget-wide v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mUserSerial:J

    iget-object v8, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    invoke-virtual/range {v1 .. v8}, Lnet/oneplus/h2launcher/AssetCache;->preloadIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;ILjava/lang/String;JLnet/oneplus/h2launcher/InvariantDeviceProfile;)V

    goto :goto_0
.end method

.method private restoreScreen(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;[BI)V
    .locals 3
    .param p1, "key"    # Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    .param p2, "buffer"    # [B
    .param p3, "dataSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 544
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, p2, p3}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->unpackScreen([BI)Landroid/content/ContentValues;

    move-result-object v1

    .line 545
    .local v1, "values":Landroid/content/ContentValues;
    sget-object v2, Lnet/oneplus/h2launcher/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 546
    return-void
.end method

.method private restoreWidget(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;[BI)V
    .locals 9
    .param p1, "key"    # Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    .param p2, "buffer"    # [B
    .param p3, "dataSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    new-instance v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;-><init>()V

    invoke-direct {p0, v1, p2, p3}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;

    .line 717
    .local v0, "widget":Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;
    iget-object v1, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->icon:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    iget-object v1, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->data:[B

    if-eqz v1, :cond_0

    .line 718
    iget-object v1, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->icon:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    iget-object v1, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->data:[B

    const/4 v2, 0x0

    iget-object v4, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->icon:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    iget-object v4, v4, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->data:[B

    array-length v4, v4

    .line 719
    invoke-static {v1, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 720
    .local v3, "icon":Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    .line 721
    const-string v1, "LauncherBackupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unpack widget icon for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    .end local v3    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->widgetSizes:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->minSpanX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->minSpanY:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 730
    return-void

    .line 723
    .restart local v3    # "icon":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    iget-object v2, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iget-object v4, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->icon:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    iget v4, v4, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->dpi:I

    iget-object v5, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    iget-wide v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mUserSerial:J

    iget-object v8, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    invoke-virtual/range {v1 .. v8}, Lnet/oneplus/h2launcher/AssetCache;->preloadIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;ILjava/lang/String;JLnet/oneplus/h2launcher/InvariantDeviceProfile;)V

    goto :goto_0
.end method

.method private unpackFavorite([BI)Landroid/content/ContentValues;
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "dataSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    new-instance v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;

    invoke-direct {v6}, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;-><init>()V

    invoke-direct {p0, v6, p1, p2}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;

    .line 889
    .local v1, "favorite":Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;
    iget v6, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->container:I

    const/16 v7, -0x65

    if-ne v6, v7, :cond_0

    .line 890
    iget v6, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->screen:I

    iget v7, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mHotseatShift:I

    add-int/2addr v6, v7

    iput v6, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->screen:I

    .line 893
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 894
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "_id"

    iget-wide v8, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 895
    const-string v6, "screen"

    iget v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->screen:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 896
    const-string v6, "container"

    iget v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->container:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 897
    const-string v6, "cellX"

    iget v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellX:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 898
    const-string v6, "cellY"

    iget v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellY:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 899
    const-string v6, "spanX"

    iget v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->spanX:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 900
    const-string v6, "spanY"

    iget v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->spanY:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 901
    const-string v6, "rank"

    iget v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->rank:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 903
    iget v6, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->itemType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 904
    const-string v6, "iconType"

    iget v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 905
    iget v6, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconType:I

    if-nez v6, :cond_1

    .line 906
    const-string v6, "iconPackage"

    iget-object v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v6, "iconResource"

    iget-object v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :cond_1
    const-string v6, "icon"

    iget-object v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->icon:[B

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 912
    :cond_2
    iget-object v6, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 913
    const-string v6, "title"

    iget-object v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :goto_0
    iget-object v6, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 918
    const-string v6, "intent"

    iget-object v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    :cond_3
    const-string v6, "itemType"

    iget v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->itemType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 922
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v2

    .line 923
    .local v2, "myUserHandle":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    .line 924
    invoke-static {v6}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v6

    invoke-virtual {v6, v2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v4

    .line 925
    .local v4, "userSerialNumber":J
    const-string v6, "profileId"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 930
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->migrationCompatibleProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    if-nez v6, :cond_7

    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mDeviceProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    .line 933
    .local v0, "currentProfile":Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;
    :goto_1
    iget v6, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->itemType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_8

    .line 934
    iget-object v6, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 935
    const-string v6, "appWidgetProvider"

    iget-object v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :cond_4
    const-string v6, "appWidgetId"

    iget v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->appWidgetId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 938
    const-string v6, "restored"

    const/4 v7, 0x7

    .line 939
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 938
    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 944
    iget v6, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellX:I

    iget v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->spanX:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_5

    iget v6, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellY:I

    iget v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->spanY:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_d

    .line 946
    :cond_5
    const/4 v6, 0x0

    iput-boolean v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->restoreSuccessful:Z

    .line 947
    new-instance v6, Lnet/oneplus/h2launcher/LauncherBackupHelper$InvalidBackupException;

    const-string v7, "Widget not in screen bounds, aborting restore"

    invoke-direct {v6, p0, v7}, Lnet/oneplus/h2launcher/LauncherBackupHelper$InvalidBackupException;-><init>(Lnet/oneplus/h2launcher/LauncherBackupHelper;Ljava/lang/String;)V

    throw v6

    .line 915
    .end local v0    # "currentProfile":Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;
    .end local v2    # "myUserHandle":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v4    # "userSerialNumber":J
    :cond_6
    const-string v6, "title"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 930
    .restart local v2    # "myUserHandle":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .restart local v4    # "userSerialNumber":J
    :cond_7
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->migrationCompatibleProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    goto :goto_1

    .line 951
    .restart local v0    # "currentProfile":Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;
    :cond_8
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->isReplaceableHotseatItem(Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->targetType:I

    if-eqz v6, :cond_a

    iget v6, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->targetType:I

    const/4 v7, 0x7

    if-ge v6, v7, :cond_a

    .line 954
    const-string v6, "LauncherBackupHelper"

    const-string v7, "Added item type flag"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-string v6, "restored"

    iget v7, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->targetType:I

    .line 956
    invoke-static {v7}, Lnet/oneplus/h2launcher/CommonAppTypeParser;->encodeItemTypeToFlag(I)I

    move-result v7

    or-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 955
    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 963
    :goto_2
    iget v6, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->container:I

    const/16 v7, -0x65

    if-ne v6, v7, :cond_b

    .line 964
    iget v6, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->screen:I

    int-to-float v6, v6

    iget v7, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    cmpl-float v6, v6, v7

    if-gez v6, :cond_9

    iget v6, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->screen:I

    iget v7, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    if-ne v6, v7, :cond_d

    .line 966
    :cond_9
    const/4 v6, 0x0

    iput-boolean v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->restoreSuccessful:Z

    .line 967
    new-instance v6, Lnet/oneplus/h2launcher/LauncherBackupHelper$InvalidBackupException;

    const-string v7, "Item not in hotseat bounds, aborting restore"

    invoke-direct {v6, p0, v7}, Lnet/oneplus/h2launcher/LauncherBackupHelper$InvalidBackupException;-><init>(Lnet/oneplus/h2launcher/LauncherBackupHelper;Ljava/lang/String;)V

    throw v6

    .line 959
    :cond_a
    const-string v6, "restored"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 970
    :cond_b
    iget v6, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellX:I

    int-to-float v6, v6

    iget v7, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    cmpl-float v6, v6, v7

    if-gez v6, :cond_c

    iget v6, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellY:I

    int-to-float v6, v6

    iget v7, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_d

    .line 972
    :cond_c
    const/4 v6, 0x0

    iput-boolean v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->restoreSuccessful:Z

    .line 973
    new-instance v6, Lnet/oneplus/h2launcher/LauncherBackupHelper$InvalidBackupException;

    const-string v7, "Item not in desktop bounds, aborting restore"

    invoke-direct {v6, p0, v7}, Lnet/oneplus/h2launcher/LauncherBackupHelper$InvalidBackupException;-><init>(Lnet/oneplus/h2launcher/LauncherBackupHelper;Ljava/lang/String;)V

    throw v6

    .line 978
    :cond_d
    return-object v3
.end method

.method private unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p2, "buffer"    # [B
    .param p3, "dataSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;[BI)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1035
    .local p1, "proto":Lcom/google/protobuf/nano/MessageNano;, "TT;"
    invoke-static {p2, p3}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->readCheckedBytes([BI)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    .line 1037
    return-object p1
.end method

.method private unpackScreen([BI)Landroid/content/ContentValues;
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "dataSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 992
    new-instance v2, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;

    invoke-direct {v2}, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;-><init>()V

    invoke-direct {p0, v2, p1, p2}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;

    .line 993
    .local v0, "screen":Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 994
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "_id"

    iget-wide v4, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 995
    const-string v2, "screenRank"

    iget v3, v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->rank:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 996
    return-object v1
.end method

.method private writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B
    .locals 4
    .param p1, "proto"    # Lcom/google/protobuf/nano/MessageNano;

    .prologue
    .line 1151
    new-instance v1, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;-><init>()V

    .line 1152
    .local v1, "wrapper":Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    iput-object v2, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->payload:[B

    .line 1153
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 1154
    .local v0, "checksum":Ljava/util/zip/CRC32;
    iget-object v2, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->payload:[B

    invoke-virtual {v0, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 1155
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    iput-wide v2, v1, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->checksum:J

    .line 1156
    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    return-object v2
.end method

.method private writeJournal(Landroid/os/ParcelFileDescriptor;Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;)V
    .locals 6
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "journal"    # Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;

    .prologue
    .line 1137
    const/4 v2, 0x0

    .line 1139
    .local v2, "outStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .local v3, "outStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 1141
    .local v1, "journalBytes":[B
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1142
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 1147
    .end local v1    # "journalBytes":[B
    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    const-string v4, "LauncherBackupHelper"

    const-string v5, "failed to write backup journal"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1144
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private writeRowToBackup(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    .locals 2
    .param p1, "backupKey"    # Ljava/lang/String;
    .param p2, "proto"    # Lcom/google/protobuf/nano/MessageNano;
    .param p3, "data"    # Landroid/app/backup/BackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1120
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 1121
    .local v0, "blob":[B
    array-length v1, v0

    invoke-virtual {p3, p1, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 1122
    array-length v1, v0

    invoke-virtual {p3, v0, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 1123
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    .line 1125
    return-void
.end method

.method private writeRowToBackup(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    .locals 1
    .param p1, "key"    # Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    .param p2, "proto"    # Lcom/google/protobuf/nano/MessageNano;
    .param p3, "data"    # Landroid/app/backup/BackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->keyToBackupKey(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->writeRowToBackup(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V

    .line 1116
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 16
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 210
    invoke-direct/range {p0 .. p1}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->readJournal(Landroid/os/ParcelFileDescriptor;)Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;

    move-result-object v5

    .line 211
    .local v5, "in":Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->launcherIsReady()Z

    move-result v11

    if-nez v11, :cond_0

    .line 212
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->dataChanged()V

    .line 214
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v5}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->writeJournal(Landroid/os/ParcelFileDescriptor;Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;)V

    .line 279
    :goto_0
    return-void

    .line 218
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mDeviceProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    if-nez v11, :cond_1

    .line 219
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v2

    .line 220
    .local v2, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .line 221
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->initDeviceProfileData(Lnet/oneplus/h2launcher/InvariantDeviceProfile;)Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mDeviceProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    .line 222
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 225
    .end local v2    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    :cond_1
    const-string v11, "LauncherBackupHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lastBackupTime = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v5, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;->t:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 227
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->applyJournal(Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;)V

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 232
    .local v8, "newBackupTime":J
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    .line 234
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->backupFavorites(Landroid/app/backup/BackupDataOutput;)V

    .line 235
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->backupScreens(Landroid/app/backup/BackupDataOutput;)V

    .line 236
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->backupIcons(Landroid/app/backup/BackupDataOutput;)V

    .line 237
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->backupWidgets(Landroid/app/backup/BackupDataOutput;)V

    .line 240
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 241
    .local v10, "validKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;

    .line 242
    .local v6, "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->keyToBackupKey(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 274
    .end local v6    # "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    .end local v10    # "validKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 275
    .local v4, "e":Ljava/io/IOException;
    const-string v11, "LauncherBackupHelper"

    const-string v12, "launcher backup has failed"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_0

    .line 244
    .restart local v10    # "validKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v11, v10}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 247
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 249
    .local v3, "deleted":Ljava/lang/String;
    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v12}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 250
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    goto :goto_3

    .line 253
    .end local v3    # "deleted":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->clear()V

    .line 254
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    if-nez v11, :cond_6

    .line 256
    iget-object v11, v5, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;->profile:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    if-eqz v11, :cond_5

    iget-object v11, v5, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;->profile:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    .line 257
    invoke-static {v11}, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mDeviceProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    .line 258
    invoke-static {v12}, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v12

    .line 257
    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_5

    iget v11, v5, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;->backupVersion:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_5

    iget v11, v5, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;->appVersion:I

    .line 260
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->getAppVersion()I

    move-result v12

    if-eq v11, v12, :cond_7

    :cond_5
    const/4 v11, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    .line 263
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    if-eqz v11, :cond_2

    .line 264
    move-object/from16 v0, p0

    iput-wide v8, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mLastBackupRestoreTime:J

    .line 269
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->getCurrentStateJournal()Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;

    move-result-object v7

    .line 270
    .local v7, "state":Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;
    const-string v11, "#"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v7, v1}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->writeRowToBackup(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 260
    .end local v7    # "state":Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;
    :cond_7
    const/4 v11, 0x0

    goto :goto_4
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 10
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .prologue
    .line 337
    iget-boolean v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->restoreSuccessful:Z

    if-nez v6, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mDeviceProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    if-nez v6, :cond_2

    .line 344
    new-instance v6, Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget-object v7, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .line 345
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->initDeviceProfileData(Lnet/oneplus/h2launcher/InvariantDeviceProfile;)Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    move-result-object v6

    iput-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mDeviceProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    .line 346
    new-instance v6, Lnet/oneplus/h2launcher/AssetCache;

    iget-object v7, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    invoke-direct {v6, v7, v8}, Lnet/oneplus/h2launcher/AssetCache;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V

    iput-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 349
    :cond_2
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v2

    .line 350
    .local v2, "dataSize":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mBuffer:[B

    array-length v6, v6

    if-ge v6, v2, :cond_3

    .line 351
    new-array v6, v2, [B

    iput-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mBuffer:[B

    .line 354
    :cond_3
    :try_start_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mBuffer:[B

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v2}, Landroid/app/backup/BackupDataInputStream;->read([BII)I

    move-result v1

    .line 356
    .local v1, "bytesRead":I
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "backupKey":Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 360
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 362
    const-string v7, "LauncherBackupHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;

    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->keyToBackupKey(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " received after "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "#"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v6, 0x0

    iput-boolean v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->restoreSuccessful:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    .end local v0    # "backupKey":Ljava/lang/String;
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v3

    .line 403
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "LauncherBackupHelper"

    const-string v7, "ignoring unparsable backup entry"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 367
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "backupKey":Ljava/lang/String;
    .restart local v1    # "bytesRead":I
    :cond_4
    :try_start_1
    new-instance v4, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;

    invoke-direct {v4}, Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;-><init>()V

    .line 368
    .local v4, "journal":Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mBuffer:[B

    invoke-static {v6, v2}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->readCheckedBytes([BI)[B

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    .line 369
    invoke-direct {p0, v4}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->applyJournal(Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;)V

    .line 370
    invoke-direct {p0, v4}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->isBackupCompatible(Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;)Z

    move-result v6

    iput-boolean v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->restoreSuccessful:Z

    goto/16 :goto_0

    .line 374
    .end local v4    # "journal":Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;
    :cond_5
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 378
    :cond_6
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->backupKeyToKey(Ljava/lang/String;)Lnet/oneplus/h2launcher/backup/BackupProtos$Key;

    move-result-object v5

    .line 379
    .local v5, "key":Lnet/oneplus/h2launcher/backup/BackupProtos$Key;
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    iget v6, v5, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->type:I

    packed-switch v6, :pswitch_data_0

    .line 398
    const-string v6, "LauncherBackupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown restore entity type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lnet/oneplus/h2launcher/backup/BackupProtos$Key;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 382
    :pswitch_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mBuffer:[B

    invoke-direct {p0, v5, v6, v2}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->restoreFavorite(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;[BI)V

    goto/16 :goto_0

    .line 386
    :pswitch_1
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mBuffer:[B

    invoke-direct {p0, v5, v6, v2}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->restoreScreen(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;[BI)V

    goto/16 :goto_0

    .line 390
    :pswitch_2
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mBuffer:[B

    invoke-direct {p0, v5, v6, v2}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->restoreIcon(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;[BI)V

    goto/16 :goto_0

    .line 394
    :pswitch_3
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mBuffer:[B

    invoke-direct {p0, v5, v6, v2}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->restoreWidget(Lnet/oneplus/h2launcher/backup/BackupProtos$Key;[BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public shouldAttemptWorkspaceMigration()Z
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->migrationCompatibleProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 414
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->getCurrentStateJournal()Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->writeJournal(Landroid/os/ParcelFileDescriptor;Lnet/oneplus/h2launcher/backup/BackupProtos$Journal;)V

    .line 415
    return-void
.end method
