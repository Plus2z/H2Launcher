.class Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"

# interfaces
.implements Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;
.implements Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field mListener:Lnet/oneplus/h2launcher/LauncherProviderChangeListener;

.field private mMaxItemId:J

.field private mMaxScreenId:J

.field private mNewDbCreated:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, -0x1

    .line 564
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 556
    iput-wide v4, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 557
    iput-wide v4, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mNewDbCreated:Z

    .line 565
    invoke-static {p1}, Lnet/oneplus/h2launcher/oos/StyleManager;->init(Landroid/content/Context;)V

    .line 566
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 567
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 569
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->ensureTableExist()V

    .line 573
    iget-wide v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 574
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 576
    :cond_0
    iget-wide v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 577
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->initializeMaxScreenId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 579
    :cond_1
    return-void
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->loadDefaultQuickPageItems(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private addScreenIdIfNecessary(J)Z
    .locals 7
    .param p1, "screenId"    # J

    .prologue
    .line 951
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->hasScreenId(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 952
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getMaxScreenRank()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 954
    .local v0, "rank":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 955
    .local v1, "v":Landroid/content/ContentValues;
    const-string v2, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 956
    const-string v2, "screenRank"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 957
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 958
    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getWorkspaceScreensTable()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 957
    invoke-static {p0, v2, v3, v4, v1}, Lnet/oneplus/h2launcher/LauncherProvider;->dbInsertAndCheck(Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 959
    const/4 v2, 0x0

    .line 962
    .end local v0    # "rank":I
    .end local v1    # "v":Landroid/content/ContentValues;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private ensureTableExist()V
    .locals 8

    .prologue
    .line 582
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v1

    .line 583
    .local v1, "provider":Lnet/oneplus/h2launcher/LauncherProvider;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getFavoritesTable()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lnet/oneplus/h2launcher/LauncherProvider;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    .line 584
    .local v0, "favoritesTableExist":Z
    if-nez v0, :cond_0

    .line 585
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v2

    .line 587
    .local v2, "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v6

    .line 586
    invoke-virtual {v2, v6}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v4

    .line 589
    .local v4, "userSerialNumber":J
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 592
    .end local v2    # "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    .end local v4    # "userSerialNumber":J
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getWorkspaceScreensTable()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lnet/oneplus/h2launcher/LauncherProvider;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    .line 593
    .local v3, "workspaceScreensTableExist":Z
    if-nez v3, :cond_1

    .line 594
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-static {v6}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 596
    :cond_1
    return-void
.end method

.method private getMaxScreenRank()I
    .locals 6

    .prologue
    .line 979
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 980
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT MAX(screenRank) FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 981
    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getWorkspaceScreensTable()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 980
    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 984
    .local v0, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 985
    .local v2, "maxRankIndex":I
    const/4 v3, -0x1

    .line 986
    .local v3, "rank":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 987
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 989
    :cond_0
    if-eqz v0, :cond_1

    .line 990
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 993
    :cond_1
    return v3
.end method

.method private hasScreenId(J)Z
    .locals 7
    .param p1, "screenId"    # J

    .prologue
    const/4 v3, 0x0

    .line 966
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 967
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getWorkspaceScreensTable()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 969
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 970
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 971
    .local v1, "count":I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 972
    if-lez v1, :cond_0

    const/4 v3, 0x1

    .line 974
    .end local v1    # "count":I
    :cond_0
    return v3
.end method

.method private initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 889
    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getFavoritesTable()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/oneplus/h2launcher/LauncherProvider;->getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private initializeMaxScreenId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 906
    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getWorkspaceScreensTable()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/oneplus/h2launcher/LauncherProvider;->getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private loadDefaultQuickPageItems(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 28
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1025
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/oos/StyleManager;->getQuickPageDefaultTiles()I

    move-result v26

    .line 1026
    .local v26, "xmlResourceId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v27

    .line 1027
    .local v27, "xmlResourceParser":Landroid/content/res/XmlResourceParser;
    const/4 v11, 0x0

    .line 1030
    .local v11, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v27 .. v27}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v16

    .line 1031
    .local v16, "eventType":I
    const/16 v17, 0x0

    .local v17, "idCounter":I
    move/from16 v18, v17

    .line 1033
    .end local v17    # "idCounter":I
    .local v18, "idCounter":I
    :goto_0
    const/4 v3, 0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_6

    .line 1034
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 1035
    .local v23, "values":Landroid/content/ContentValues;
    const/4 v15, 0x0

    .line 1036
    .local v15, "element":Ljava/lang/String;
    packed-switch v16, :pswitch_data_0

    :cond_0
    :pswitch_0
    move/from16 v17, v18

    .line 1089
    .end local v18    # "idCounter":I
    .restart local v17    # "idCounter":I
    :goto_1
    invoke-interface/range {v27 .. v27}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    move/from16 v18, v17

    .line 1090
    .end local v17    # "idCounter":I
    .restart local v18    # "idCounter":I
    goto :goto_0

    :pswitch_1
    move/from16 v17, v18

    .line 1038
    .end local v18    # "idCounter":I
    .restart local v17    # "idCounter":I
    goto :goto_1

    .line 1040
    .end local v17    # "idCounter":I
    .restart local v18    # "idCounter":I
    :pswitch_2
    invoke-interface/range {v27 .. v27}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1042
    const-string v3, "quickpage"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1043
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .line 1045
    const-string v3, "http://schemas.android.com/apk/res-auto/net.oneplus.h2launcher"

    const-string v4, "type"

    move-object/from16 v0, v27

    invoke-interface {v0, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1046
    .local v22, "type":Ljava/lang/String;
    const-string v3, "http://schemas.android.com/apk/res-auto/net.oneplus.h2launcher"

    const-string v4, "size"

    move-object/from16 v0, v27

    invoke-interface {v0, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1048
    .local v21, "size":Ljava/lang/String;
    const-string v3, "http://schemas.android.com/apk/res-auto/net.oneplus.h2launcher"

    const-string v4, "packageName"

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v3, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v20

    .line 1049
    .local v20, "packageNameRes":I
    const/16 v19, 0x0

    .line 1050
    .local v19, "packageName":Ljava/lang/String;
    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_1

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1053
    :cond_1
    const-string v3, "http://schemas.android.com/apk/res-auto/net.oneplus.h2launcher"

    const-string v4, "className"

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v3, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    .line 1054
    .local v13, "classNameRes":I
    const/4 v12, 0x0

    .line 1055
    .local v12, "className":Ljava/lang/String;
    const/4 v3, -0x1

    if-eq v13, v3, :cond_2

    .line 1056
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1058
    :cond_2
    const-string v3, "type"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const-string v3, "size"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const/4 v3, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 1062
    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_3

    const/4 v3, -0x1

    if-eq v13, v3, :cond_3

    .line 1063
    const-string v3, "http://schemas.android.com/apk/res-auto/net.oneplus.h2launcher"

    const-string v4, "widgetId"

    move-object/from16 v0, v27

    invoke-interface {v0, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1064
    .local v25, "widget_id":Ljava/lang/String;
    new-instance v24, Landroid/content/ComponentName;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    .local v24, "widgetComponentName":Landroid/content/ComponentName;
    const-string v3, "component"

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const-string v3, "widgetId"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const-string v6, "type = ?  AND component LIKE ? "

    .line 1069
    .local v6, "selection":Ljava/lang/String;
    const-string v4, "quickPage"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "type"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "component"

    aput-object v7, v5, v3

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v22, v7, v3

    const/4 v3, 0x1

    .line 1070
    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    .line 1069
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1079
    .end local v6    # "selection":Ljava/lang/String;
    .end local v24    # "widgetComponentName":Landroid/content/ComponentName;
    .end local v25    # "widget_id":Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v23, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1080
    const-string v3, "_id"

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "idCounter":I
    .restart local v17    # "idCounter":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1081
    const-string v3, "quickPage"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-static {v0, v1, v3, v4, v2}, Lnet/oneplus/h2launcher/LauncherProvider;->dbInsertAndCheck(Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 1092
    .end local v12    # "className":Ljava/lang/String;
    .end local v13    # "classNameRes":I
    .end local v15    # "element":Ljava/lang/String;
    .end local v16    # "eventType":I
    .end local v17    # "idCounter":I
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "packageNameRes":I
    .end local v21    # "size":Ljava/lang/String;
    .end local v22    # "type":Ljava/lang/String;
    .end local v23    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    move-object v14, v3

    .line 1093
    .local v14, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    if-eqz v11, :cond_4

    .line 1096
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1099
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    return-void

    .line 1074
    .restart local v12    # "className":Ljava/lang/String;
    .restart local v13    # "classNameRes":I
    .restart local v15    # "element":Ljava/lang/String;
    .restart local v16    # "eventType":I
    .restart local v18    # "idCounter":I
    .restart local v19    # "packageName":Ljava/lang/String;
    .restart local v20    # "packageNameRes":I
    .restart local v21    # "size":Ljava/lang/String;
    .restart local v22    # "type":Ljava/lang/String;
    .restart local v23    # "values":Landroid/content/ContentValues;
    :cond_5
    :try_start_2
    const-string v6, "type = ? "

    .line 1075
    .restart local v6    # "selection":Ljava/lang/String;
    const-string v4, "quickPage"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "type"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v22, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    goto :goto_2

    .line 1095
    .end local v6    # "selection":Ljava/lang/String;
    .end local v12    # "className":Ljava/lang/String;
    .end local v13    # "classNameRes":I
    .end local v15    # "element":Ljava/lang/String;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "packageNameRes":I
    .end local v21    # "size":Ljava/lang/String;
    .end local v22    # "type":Ljava/lang/String;
    .end local v23    # "values":Landroid/content/ContentValues;
    :cond_6
    if-eqz v11, :cond_4

    .line 1096
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 1095
    .end local v16    # "eventType":I
    .end local v18    # "idCounter":I
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_7

    .line 1096
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3

    .line 1092
    :catch_1
    move-exception v3

    move-object v14, v3

    goto :goto_3

    .line 1036
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private replaceComponentName(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v6, 0x0

    .line 744
    if-nez p1, :cond_1

    .line 745
    const-string v4, "LauncherProvider"

    const-string v5, "replaceComponentName: SQLiteDatabase is null. "

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->sTableName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 749
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_2

    .line 750
    const-string v4, "LauncherProvider"

    const-string v5, "replaceComponentName: cursor is null. Should not be here!"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 753
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_3

    .line 754
    const-string v4, "LauncherProvider"

    const-string v5, "replaceComponentName: cursor is empty. Should not be here!"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 757
    :cond_3
    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    if-nez v4, :cond_4

    .line 758
    const-string v4, "LauncherProvider"

    const-string v5, "replaceComponentName: mContext is null. Should not be here!"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 763
    :cond_4
    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v5, "net.oneplus.launcher.device.prefs"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 764
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    .line 765
    .local v3, "replaced":Z
    if-eqz v2, :cond_5

    .line 766
    const-string v4, "replace_1+market_to_oppo_market"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 771
    :goto_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v5, "com.oppo.market"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/Utilities;->isPackageValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 772
    .local v1, "hasOppoMarket":Z
    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "replaceOneplusMarketToOppo: replaced= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", oppo market exist= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 775
    invoke-direct {p0, p1, v0, v2}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->replaceOneplusMarketToOppo(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Landroid/content/SharedPreferences;)V

    goto/16 :goto_0

    .line 768
    .end local v1    # "hasOppoMarket":Z
    :cond_5
    const-string v4, "LauncherProvider"

    const-string v5, "replaceComponentName: prefs is null. Should not be here!"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private replaceOneplusMarketToOppo(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Landroid/content/SharedPreferences;)V
    .locals 16
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 780
    if-nez p1, :cond_1

    .line 781
    const-string v12, "LauncherProvider"

    const-string v13, "replaceOneplusMarketToOppo: SQLiteDatabase is null. "

    invoke-static {v12, v13}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    :try_start_0
    const-string v12, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 787
    .local v5, "idIndex":I
    const-string v12, "intent"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 789
    .local v10, "intentIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 790
    :cond_2
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 791
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 792
    .local v6, "id":J
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 793
    .local v9, "intentDescription":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v8, 0x0

    .line 795
    .local v8, "intent":Landroid/content/Intent;
    :goto_2
    if-eqz v8, :cond_2

    .line 799
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 800
    .local v3, "cn":Landroid/content/ComponentName;
    if-eqz v3, :cond_2

    .line 804
    const-string v12, "com.oneplus.market"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 805
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.oneplus.market"

    const-string v14, "com.oppo.market"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 807
    .local v2, "className":Ljava/lang/String;
    new-instance v12, Landroid/content/ComponentName;

    const-string v13, "com.oppo.market"

    invoke-direct {v12, v13, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 808
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UPDATE "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->sTableName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " SET "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "intent"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " = \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    .line 809
    invoke-virtual {v8, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' WHERE "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_id"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 811
    .local v11, "update":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 813
    const-string v12, "LauncherProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "replaceOneplusMarketToOppo: update= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v12, "LauncherProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "replaceOneplusMarketToOppo: Change it. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 817
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v5    # "idIndex":I
    .end local v6    # "id":J
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "intentDescription":Ljava/lang/String;
    .end local v10    # "intentIndex":I
    .end local v11    # "update":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 818
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v12, "LauncherProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "replaceOneplusMarketToOppo: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 822
    if-eqz p3, :cond_6

    .line 823
    invoke-interface/range {p3 .. p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "replace_1+market_to_oppo_market"

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 828
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 829
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 831
    if-eqz p2, :cond_0

    .line 832
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 793
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v5    # "idIndex":I
    .restart local v6    # "id":J
    .restart local v9    # "intentDescription":Ljava/lang/String;
    .restart local v10    # "intentIndex":I
    :cond_3
    const/4 v12, 0x0

    .line 794
    :try_start_2
    invoke-static {v9, v12}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    goto/16 :goto_2

    .line 822
    .end local v6    # "id":J
    .end local v9    # "intentDescription":Ljava/lang/String;
    :cond_4
    if-eqz p3, :cond_5

    .line 823
    invoke-interface/range {p3 .. p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "replace_1+market_to_oppo_market"

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 828
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 829
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 831
    if-eqz p2, :cond_0

    .line 832
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 825
    :cond_5
    const-string v12, "LauncherProvider"

    const-string v13, "replaceOneplusMarketToOppo: prefs is null."

    invoke-static {v12, v13}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v5    # "idIndex":I
    .end local v10    # "intentIndex":I
    .restart local v4    # "ex":Ljava/lang/Exception;
    :cond_6
    const-string v12, "LauncherProvider"

    const-string v13, "replaceOneplusMarketToOppo: prefs is null."

    invoke-static {v12, v13}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 822
    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    if-eqz p3, :cond_8

    .line 823
    invoke-interface/range {p3 .. p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "replace_1+market_to_oppo_market"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 828
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 829
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 831
    if-eqz p2, :cond_7

    .line 832
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v12

    .line 825
    :cond_8
    const-string v13, "LauncherProvider"

    const-string v14, "replaceOneplusMarketToOppo: prefs is null."

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private setFlagEmptyDbCreated()V
    .locals 5

    .prologue
    .line 654
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, "spKey":Ljava/lang/String;
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 656
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "EMPTY_DATABASE_CREATED"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 657
    return-void
.end method

.method private setFlagJustLoadedOldDb()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 648
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "spKey":Ljava/lang/String;
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 650
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "EMPTY_DATABASE_CREATED"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 651
    return-void
.end method


# virtual methods
.method public checkId(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 880
    const-string v2, "_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 881
    .local v0, "id":J
    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getWorkspaceScreensTable()Ljava/lang/String;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 882
    iget-wide v2, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 886
    :goto_0
    return-void

    .line 884
    :cond_0
    iget-wide v2, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    goto :goto_0
.end method

.method convertShortcutsToLauncherActivities(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 848
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->convertShortcutsToLauncherActivities(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 849
    return-void
.end method

.method public createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getFavoritesTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getWorkspaceScreensTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 843
    const-string v0, "DROP TABLE IF EXISTS quickPage"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 845
    return-void
.end method

.method public declared-synchronized generateNewItemId()J
    .locals 4

    .prologue
    .line 863
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 864
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max item id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 866
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 867
    iget-wide v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxItemId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0
.end method

.method public generateNewScreenId()J
    .locals 4

    .prologue
    .line 898
    iget-wide v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 899
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max screen id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_0
    iget-wide v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 902
    iget-wide v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    return-wide v0
.end method

.method initializeExternalAdd(Landroid/content/ContentValues;)Z
    .locals 12
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v7, 0x0

    .line 911
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v4

    .line 912
    .local v4, "id":J
    const-string v10, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 916
    const-string v10, "itemType"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 917
    .local v6, "itemType":Ljava/lang/Integer;
    if-eqz v6, :cond_1

    .line 918
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    const-string v10, "appWidgetId"

    .line 919
    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 921
    iget-object v10, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 922
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    const-string v10, "appWidgetProvider"

    .line 923
    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 922
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 925
    .local v2, "cn":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 927
    :try_start_0
    iget-object v10, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v10}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 928
    .local v0, "appWidgetId":I
    const-string v10, "appWidgetId"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 929
    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_1

    .line 946
    .end local v0    # "appWidgetId":I
    .end local v1    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v2    # "cn":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return v7

    .line 932
    .restart local v1    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .restart local v2    # "cn":Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    .line 933
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v10, "LauncherProvider"

    const-string v11, "Failed to initialize external widget"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 942
    .end local v1    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const-string v10, "screen"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 943
    .local v8, "screenId":J
    invoke-direct {p0, v8, v9}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->addScreenIdIfNecessary(J)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 946
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 872
    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getFavoritesTable()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lnet/oneplus/h2launcher/LauncherProvider;->dbInsertAndCheck(Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lnet/oneplus/h2launcher/AutoInstallsLayout;)I
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "loader"    # Lnet/oneplus/h2launcher/AutoInstallsLayout;

    .prologue
    .line 997
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 999
    .local v3, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p2, p1, v3}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I

    move-result v0

    .line 1002
    .local v0, "count":I
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1003
    const/4 v2, 0x0

    .line 1004
    .local v2, "rank":I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1005
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1006
    .local v1, "id":Ljava/lang/Long;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1007
    const-string v6, "_id"

    invoke-virtual {v4, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1008
    const-string v6, "screenRank"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1009
    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getWorkspaceScreensTable()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, p1, v6, v7, v4}, Lnet/oneplus/h2launcher/LauncherProvider;->dbInsertAndCheck(Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 1010
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Failed initialize screen tablefrom default layout"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1013
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 1014
    goto :goto_0

    .line 1017
    .end local v1    # "id":Ljava/lang/Long;
    :cond_1
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v6

    iput-wide v6, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 1018
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->initializeMaxScreenId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v6

    iput-wide v6, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 1020
    return v0
.end method

.method migrateLauncher2Shortcuts(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)V
    .locals 63
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1102
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1103
    .local v4, "resolver":Landroid/content/ContentResolver;
    const/4 v13, 0x0

    .line 1104
    .local v13, "c":Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 1105
    .local v21, "count":I
    const/16 v22, 0x0

    .line 1108
    .local v22, "curScreen":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    const-string v9, "title ASC"

    move-object/from16 v5, p2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 1114
    :goto_0
    if-eqz v13, :cond_1a

    .line 1116
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_19

    .line 1117
    const-string v5, "_id"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 1118
    .local v38, "idIndex":I
    const-string v5, "intent"

    .line 1119
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 1120
    .local v43, "intentIndex":I
    const-string v5, "title"

    .line 1121
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v55

    .line 1122
    .local v55, "titleIndex":I
    const-string v5, "iconType"

    .line 1123
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 1124
    .local v37, "iconTypeIndex":I
    const-string v5, "icon"

    .line 1125
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 1126
    .local v34, "iconIndex":I
    const-string v5, "iconPackage"

    .line 1127
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 1128
    .local v35, "iconPackageIndex":I
    const-string v5, "iconResource"

    .line 1129
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 1130
    .local v36, "iconResourceIndex":I
    const-string v5, "container"

    .line 1131
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 1132
    .local v20, "containerIndex":I
    const-string v5, "itemType"

    .line 1133
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 1134
    .local v46, "itemTypeIndex":I
    const-string v5, "screen"

    .line 1135
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    .line 1136
    .local v52, "screenIndex":I
    const-string v5, "cellX"

    .line 1137
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1138
    .local v15, "cellXIndex":I
    const-string v5, "cellY"

    .line 1139
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1140
    .local v17, "cellYIndex":I
    const-string v5, "uri"

    .line 1141
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v56

    .line 1142
    .local v56, "uriIndex":I
    const-string v5, "displayMode"

    .line 1143
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 1144
    .local v25, "displayModeIndex":I
    const-string v5, "profileId"

    .line 1145
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v49

    .line 1147
    .local v49, "profileIndex":I
    const/16 v33, 0x0

    .line 1148
    .local v33, "i":I
    const/16 v23, 0x0

    .line 1149
    .local v23, "curX":I
    const/16 v24, 0x0

    .line 1151
    .local v24, "curY":I
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v12

    .line 1152
    .local v12, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {v12}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v48

    .line 1153
    .local v48, "profile":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    move-object/from16 v0, v48

    iget v0, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    move/from16 v62, v0

    .line 1154
    .local v62, "width":I
    move-object/from16 v0, v48

    iget v0, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    move/from16 v29, v0

    .line 1155
    .local v29, "height":I
    move-object/from16 v0, v48

    iget v0, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numHotseatIcons:I

    move/from16 v31, v0

    .line 1157
    .local v31, "hotseatWidth":I
    new-instance v53, Ljava/util/HashSet;

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v5

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 1159
    .local v53, "seenIntents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v54, Ljava/util/ArrayList;

    invoke-direct/range {v54 .. v54}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    .local v54, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1161
    .local v28, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v30, Landroid/util/SparseArray;

    invoke-direct/range {v30 .. v30}, Landroid/util/SparseArray;-><init>()V

    .line 1163
    .local v30, "hotseat":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1164
    move/from16 v0, v46

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    .line 1165
    .local v45, "itemType":I
    if-eqz v45, :cond_1

    const/4 v5, 0x1

    move/from16 v0, v45

    if-eq v0, v5, :cond_1

    const/4 v5, 0x2

    move/from16 v0, v45

    if-ne v0, v5, :cond_0

    .line 1171
    :cond_1
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1172
    .local v14, "cellX":I
    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1173
    .local v16, "cellY":I
    move/from16 v0, v52

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v51

    .line 1174
    .local v51, "screen":I
    move/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1175
    .local v19, "container":I
    move/from16 v0, v43

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 1177
    .local v44, "intentStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v58

    .line 1180
    .local v58, "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    const/4 v5, -0x1

    move/from16 v0, v49

    if-eq v0, v5, :cond_2

    move/from16 v0, v49

    invoke-interface {v13, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1181
    move/from16 v0, v49

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v60, v0

    .line 1182
    .local v60, "userSerialNumber":J
    move-object/from16 v0, v58

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getUserForSerialNumber(J)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v57

    .line 1190
    .local v57, "userHandle":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :goto_2
    if-nez v57, :cond_3

    .line 1191
    const-string v5, "LauncherProvider"

    const-string v6, "skipping deleted user"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1382
    .end local v12    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    .end local v14    # "cellX":I
    .end local v15    # "cellXIndex":I
    .end local v16    # "cellY":I
    .end local v17    # "cellYIndex":I
    .end local v19    # "container":I
    .end local v20    # "containerIndex":I
    .end local v23    # "curX":I
    .end local v24    # "curY":I
    .end local v25    # "displayModeIndex":I
    .end local v28    # "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v29    # "height":I
    .end local v30    # "hotseat":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ContentValues;>;"
    .end local v31    # "hotseatWidth":I
    .end local v33    # "i":I
    .end local v34    # "iconIndex":I
    .end local v35    # "iconPackageIndex":I
    .end local v36    # "iconResourceIndex":I
    .end local v37    # "iconTypeIndex":I
    .end local v38    # "idIndex":I
    .end local v43    # "intentIndex":I
    .end local v44    # "intentStr":Ljava/lang/String;
    .end local v45    # "itemType":I
    .end local v46    # "itemTypeIndex":I
    .end local v48    # "profile":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .end local v49    # "profileIndex":I
    .end local v51    # "screen":I
    .end local v52    # "screenIndex":I
    .end local v53    # "seenIntents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v54    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v55    # "titleIndex":I
    .end local v56    # "uriIndex":I
    .end local v57    # "userHandle":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v58    # "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    .end local v60    # "userSerialNumber":J
    .end local v62    # "width":I
    :catchall_0
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1186
    .restart local v12    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    .restart local v14    # "cellX":I
    .restart local v15    # "cellXIndex":I
    .restart local v16    # "cellY":I
    .restart local v17    # "cellYIndex":I
    .restart local v19    # "container":I
    .restart local v20    # "containerIndex":I
    .restart local v23    # "curX":I
    .restart local v24    # "curY":I
    .restart local v25    # "displayModeIndex":I
    .restart local v28    # "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v29    # "height":I
    .restart local v30    # "hotseat":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ContentValues;>;"
    .restart local v31    # "hotseatWidth":I
    .restart local v33    # "i":I
    .restart local v34    # "iconIndex":I
    .restart local v35    # "iconPackageIndex":I
    .restart local v36    # "iconResourceIndex":I
    .restart local v37    # "iconTypeIndex":I
    .restart local v38    # "idIndex":I
    .restart local v43    # "intentIndex":I
    .restart local v44    # "intentStr":Ljava/lang/String;
    .restart local v45    # "itemType":I
    .restart local v46    # "itemTypeIndex":I
    .restart local v48    # "profile":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .restart local v49    # "profileIndex":I
    .restart local v51    # "screen":I
    .restart local v52    # "screenIndex":I
    .restart local v53    # "seenIntents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v54    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v55    # "titleIndex":I
    .restart local v56    # "uriIndex":I
    .restart local v58    # "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    .restart local v62    # "width":I
    :cond_2
    :try_start_2
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v57

    .line 1187
    .restart local v57    # "userHandle":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    move-object/from16 v0, v58

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v60

    .restart local v60    # "userSerialNumber":J
    goto :goto_2

    .line 1195
    :cond_3
    const-string v5, "LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "migrating \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1196
    move/from16 v0, v55

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1198
    invoke-static/range {v19 .. v19}, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->containerToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v51

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 1195
    invoke-static {v5, v6, v7}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1202
    const/4 v5, 0x2

    move/from16 v0, v45

    if-eq v0, v5, :cond_7

    .line 1207
    const/4 v5, 0x0

    :try_start_3
    move-object/from16 v0, v44

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v42

    .line 1215
    .local v42, "intent":Landroid/content/Intent;
    :try_start_4
    invoke-virtual/range {v42 .. v42}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 1216
    .local v18, "cn":Landroid/content/ComponentName;
    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1218
    const-string v5, "LauncherProvider"

    const-string v6, "skipping empty intent"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1208
    .end local v18    # "cn":Landroid/content/ComponentName;
    .end local v42    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v26

    .line 1210
    .local v26, "e":Ljava/net/URISyntaxException;
    const-string v5, "LauncherProvider"

    const-string v6, "skipping invalid intent uri"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1220
    .end local v26    # "e":Ljava/net/URISyntaxException;
    .restart local v18    # "cn":Landroid/content/ComponentName;
    .restart local v42    # "intent":Landroid/content/Intent;
    :cond_4
    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 1221
    move-object/from16 v0, v18

    move-object/from16 v1, v57

    invoke-static {v5, v0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->isValidPackageActivity(Landroid/content/Context;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1224
    const-string v5, "LauncherProvider"

    const-string v6, "skipping item whose component no longer exists."

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1227
    :cond_5
    const/16 v5, -0x64

    move/from16 v0, v19

    if-ne v0, v5, :cond_7

    .line 1235
    const/4 v5, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1236
    invoke-virtual/range {v42 .. v42}, Landroid/content/Intent;->getFlags()I

    move-result v27

    .line 1237
    .local v27, "flags":I
    const/4 v5, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1238
    const/4 v5, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v47

    .line 1239
    .local v47, "key":Ljava/lang/String;
    move-object/from16 v0, v42

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1240
    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1241
    const-string v5, "LauncherProvider"

    const-string v6, "skipping duplicate"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1244
    :cond_6
    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1249
    .end local v18    # "cn":Landroid/content/ComponentName;
    .end local v27    # "flags":I
    .end local v42    # "intent":Landroid/content/Intent;
    .end local v47    # "key":Ljava/lang/String;
    :cond_7
    new-instance v59, Landroid/content/ContentValues;

    invoke-interface {v13}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    move-object/from16 v0, v59

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1250
    .local v59, "values":Landroid/content/ContentValues;
    const-string v5, "_id"

    move/from16 v0, v38

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1251
    const-string v5, "intent"

    move-object/from16 v0, v59

    move-object/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const-string v5, "title"

    move/from16 v0, v55

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const-string v5, "iconType"

    .line 1254
    move/from16 v0, v37

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1253
    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1255
    const-string v5, "icon"

    move/from16 v0, v34

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1256
    const-string v5, "iconPackage"

    .line 1257
    move/from16 v0, v35

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1256
    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    const-string v5, "iconResource"

    .line 1259
    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1258
    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const-string v5, "itemType"

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1261
    const-string v5, "appWidgetId"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1262
    const-string v5, "uri"

    move/from16 v0, v56

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const-string v5, "displayMode"

    .line 1264
    move/from16 v0, v25

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1263
    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1265
    const-string v5, "profileId"

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1267
    const/16 v5, -0x65

    move/from16 v0, v19

    if-ne v0, v5, :cond_8

    .line 1268
    move-object/from16 v0, v30

    move/from16 v1, v51

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1271
    :cond_8
    const/16 v5, -0x64

    move/from16 v0, v19

    if-eq v0, v5, :cond_9

    .line 1273
    const-string v5, "screen"

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1274
    const-string v5, "cellX"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1275
    const-string v5, "cellY"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1281
    :cond_9
    const-string v5, "container"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1283
    const/4 v5, 0x2

    move/from16 v0, v45

    if-eq v0, v5, :cond_a

    .line 1284
    move-object/from16 v0, v54

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1286
    :cond_a
    move-object/from16 v0, v28

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1292
    .end local v14    # "cellX":I
    .end local v16    # "cellY":I
    .end local v19    # "container":I
    .end local v44    # "intentStr":Ljava/lang/String;
    .end local v45    # "itemType":I
    .end local v51    # "screen":I
    .end local v57    # "userHandle":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v58    # "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    .end local v59    # "values":Landroid/content/ContentValues;
    .end local v60    # "userSerialNumber":J
    :cond_b
    invoke-virtual/range {v30 .. v30}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1293
    .local v10, "N":I
    const/16 v39, 0x0

    .local v39, "idx":I
    :goto_3
    move/from16 v0, v39

    if-ge v0, v10, :cond_f

    .line 1294
    move-object/from16 v0, v30

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v32

    .line 1295
    .local v32, "hotseatX":I
    move-object/from16 v0, v30

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/ContentValues;

    .line 1297
    .restart local v59    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, v48

    iget v5, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatAllAppsRank:I

    move/from16 v0, v32

    if-ne v0, v5, :cond_d

    .line 1299
    :cond_c
    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move/from16 v1, v31

    if-ge v0, v1, :cond_d

    .line 1300
    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_c

    .line 1302
    const-string v5, "screen"

    .line 1303
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1302
    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1308
    :cond_d
    move/from16 v0, v32

    move/from16 v1, v31

    if-lt v0, v1, :cond_e

    .line 1310
    const-string v5, "container"

    const/16 v6, -0x64

    .line 1311
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1310
    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1293
    :cond_e
    add-int/lit8 v39, v39, 0x1

    goto :goto_3

    .line 1315
    .end local v32    # "hotseatX":I
    .end local v59    # "values":Landroid/content/ContentValues;
    :cond_f
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    .local v11, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1319
    move-object/from16 v0, v54

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1322
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/ContentValues;

    .line 1323
    .restart local v59    # "values":Landroid/content/ContentValues;
    const-string v6, "container"

    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, -0x64

    if-ne v6, v7, :cond_10

    .line 1329
    const-string v6, "screen"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1330
    const-string v6, "cellX"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1331
    const-string v6, "cellY"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1332
    add-int/lit8 v6, v23, 0x1

    rem-int v23, v6, v62

    .line 1333
    if-nez v23, :cond_11

    .line 1334
    add-int/lit8 v24, v24, 0x1

    .line 1337
    :cond_11
    add-int/lit8 v6, v29, -0x1

    move/from16 v0, v24

    if-ne v0, v6, :cond_10

    .line 1338
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->generateNewScreenId()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v22, v0

    .line 1339
    const/16 v24, 0x0

    goto :goto_4

    .line 1343
    .end local v59    # "values":Landroid/content/ContentValues;
    :cond_12
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_16

    .line 1344
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1346
    :try_start_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/content/ContentValues;

    .line 1347
    .local v50, "row":Landroid/content/ContentValues;
    if-eqz v50, :cond_13

    .line 1348
    const-string v6, "favorites"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v50

    invoke-static {v0, v1, v6, v7, v2}, Lnet/oneplus/h2launcher/LauncherProvider;->dbInsertAndCheck(Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-wide v40

    .line 1350
    .local v40, "insertId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v40, v6

    if-gez v6, :cond_14

    .line 1358
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1382
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1396
    .end local v10    # "N":I
    .end local v11    # "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v12    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    .end local v15    # "cellXIndex":I
    .end local v17    # "cellYIndex":I
    .end local v20    # "containerIndex":I
    .end local v23    # "curX":I
    .end local v24    # "curY":I
    .end local v25    # "displayModeIndex":I
    .end local v28    # "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v29    # "height":I
    .end local v30    # "hotseat":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ContentValues;>;"
    .end local v31    # "hotseatWidth":I
    .end local v33    # "i":I
    .end local v34    # "iconIndex":I
    .end local v35    # "iconPackageIndex":I
    .end local v36    # "iconResourceIndex":I
    .end local v37    # "iconTypeIndex":I
    .end local v38    # "idIndex":I
    .end local v39    # "idx":I
    .end local v40    # "insertId":J
    .end local v43    # "intentIndex":I
    .end local v46    # "itemTypeIndex":I
    .end local v48    # "profile":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .end local v49    # "profileIndex":I
    .end local v50    # "row":Landroid/content/ContentValues;
    .end local v52    # "screenIndex":I
    .end local v53    # "seenIntents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v54    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v55    # "titleIndex":I
    .end local v56    # "uriIndex":I
    .end local v62    # "width":I
    :goto_6
    return-void

    .line 1353
    .restart local v10    # "N":I
    .restart local v11    # "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v12    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    .restart local v15    # "cellXIndex":I
    .restart local v17    # "cellYIndex":I
    .restart local v20    # "containerIndex":I
    .restart local v23    # "curX":I
    .restart local v24    # "curY":I
    .restart local v25    # "displayModeIndex":I
    .restart local v28    # "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v29    # "height":I
    .restart local v30    # "hotseat":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ContentValues;>;"
    .restart local v31    # "hotseatWidth":I
    .restart local v33    # "i":I
    .restart local v34    # "iconIndex":I
    .restart local v35    # "iconPackageIndex":I
    .restart local v36    # "iconResourceIndex":I
    .restart local v37    # "iconTypeIndex":I
    .restart local v38    # "idIndex":I
    .restart local v39    # "idx":I
    .restart local v40    # "insertId":J
    .restart local v43    # "intentIndex":I
    .restart local v46    # "itemTypeIndex":I
    .restart local v48    # "profile":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .restart local v49    # "profileIndex":I
    .restart local v50    # "row":Landroid/content/ContentValues;
    .restart local v52    # "screenIndex":I
    .restart local v53    # "seenIntents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v54    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v55    # "titleIndex":I
    .restart local v56    # "uriIndex":I
    .restart local v62    # "width":I
    :cond_14
    add-int/lit8 v21, v21, 0x1

    .line 1355
    goto :goto_5

    .line 1356
    .end local v40    # "insertId":J
    .end local v50    # "row":Landroid/content/ContentValues;
    :cond_15
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1358
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1362
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1364
    const/16 v33, 0x0

    :goto_7
    move/from16 v0, v33

    move/from16 v1, v22

    if-gt v0, v1, :cond_18

    .line 1365
    :try_start_9
    new-instance v59, Landroid/content/ContentValues;

    invoke-direct/range {v59 .. v59}, Landroid/content/ContentValues;-><init>()V

    .line 1366
    .restart local v59    # "values":Landroid/content/ContentValues;
    const-string v5, "_id"

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1367
    const-string v5, "screenRank"

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1368
    const-string v5, "workspaceScreens"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v59

    invoke-static {v0, v1, v5, v6, v2}, Lnet/oneplus/h2launcher/LauncherProvider;->dbInsertAndCheck(Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-wide v40

    .line 1370
    .restart local v40    # "insertId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v40, v6

    if-gez v5, :cond_17

    .line 1376
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1382
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 1358
    .end local v40    # "insertId":J
    .end local v59    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v5

    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1364
    .restart local v40    # "insertId":J
    .restart local v59    # "values":Landroid/content/ContentValues;
    :cond_17
    add-int/lit8 v33, v33, 0x1

    goto :goto_7

    .line 1374
    .end local v40    # "insertId":J
    .end local v59    # "values":Landroid/content/ContentValues;
    :cond_18
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1376
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1379
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1382
    .end local v10    # "N":I
    .end local v11    # "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v12    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    .end local v15    # "cellXIndex":I
    .end local v17    # "cellYIndex":I
    .end local v20    # "containerIndex":I
    .end local v23    # "curX":I
    .end local v24    # "curY":I
    .end local v25    # "displayModeIndex":I
    .end local v28    # "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v29    # "height":I
    .end local v30    # "hotseat":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ContentValues;>;"
    .end local v31    # "hotseatWidth":I
    .end local v33    # "i":I
    .end local v34    # "iconIndex":I
    .end local v35    # "iconPackageIndex":I
    .end local v36    # "iconResourceIndex":I
    .end local v37    # "iconTypeIndex":I
    .end local v38    # "idIndex":I
    .end local v39    # "idx":I
    .end local v43    # "intentIndex":I
    .end local v46    # "itemTypeIndex":I
    .end local v48    # "profile":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .end local v49    # "profileIndex":I
    .end local v52    # "screenIndex":I
    .end local v53    # "seenIntents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v54    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v55    # "titleIndex":I
    .end local v56    # "uriIndex":I
    .end local v62    # "width":I
    :cond_19
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1386
    :cond_1a
    const-string v5, "LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "migrated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " icons from Launcher2 into "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v22, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " screens"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1390
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->setFlagJustLoadedOldDb()V

    .line 1393
    invoke-direct/range {p0 .. p1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 1394
    invoke-direct/range {p0 .. p1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->initializeMaxScreenId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    goto/16 :goto_6

    .line 1376
    .restart local v10    # "N":I
    .restart local v11    # "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v12    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    .restart local v15    # "cellXIndex":I
    .restart local v17    # "cellYIndex":I
    .restart local v20    # "containerIndex":I
    .restart local v23    # "curX":I
    .restart local v24    # "curY":I
    .restart local v25    # "displayModeIndex":I
    .restart local v28    # "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v29    # "height":I
    .restart local v30    # "hotseat":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ContentValues;>;"
    .restart local v31    # "hotseatWidth":I
    .restart local v33    # "i":I
    .restart local v34    # "iconIndex":I
    .restart local v35    # "iconPackageIndex":I
    .restart local v36    # "iconResourceIndex":I
    .restart local v37    # "iconTypeIndex":I
    .restart local v38    # "idIndex":I
    .restart local v39    # "idx":I
    .restart local v43    # "intentIndex":I
    .restart local v46    # "itemTypeIndex":I
    .restart local v48    # "profile":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .restart local v49    # "profileIndex":I
    .restart local v52    # "screenIndex":I
    .restart local v53    # "seenIntents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v54    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v55    # "titleIndex":I
    .restart local v56    # "uriIndex":I
    .restart local v62    # "width":I
    :catchall_2
    move-exception v5

    :try_start_e
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1109
    .end local v10    # "N":I
    .end local v11    # "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v12    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    .end local v15    # "cellXIndex":I
    .end local v17    # "cellYIndex":I
    .end local v20    # "containerIndex":I
    .end local v23    # "curX":I
    .end local v24    # "curY":I
    .end local v25    # "displayModeIndex":I
    .end local v28    # "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v29    # "height":I
    .end local v30    # "hotseat":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ContentValues;>;"
    .end local v31    # "hotseatWidth":I
    .end local v33    # "i":I
    .end local v34    # "iconIndex":I
    .end local v35    # "iconPackageIndex":I
    .end local v36    # "iconResourceIndex":I
    .end local v37    # "iconTypeIndex":I
    .end local v38    # "idIndex":I
    .end local v39    # "idx":I
    .end local v43    # "intentIndex":I
    .end local v46    # "itemTypeIndex":I
    .end local v48    # "profile":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .end local v49    # "profileIndex":I
    .end local v52    # "screenIndex":I
    .end local v53    # "seenIntents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v54    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v55    # "titleIndex":I
    .end local v56    # "uriIndex":I
    .end local v62    # "width":I
    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 606
    const-wide/16 v4, 0x1

    iput-wide v4, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 607
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 608
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mNewDbCreated:Z

    .line 610
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    .line 612
    .local v0, "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v1

    .line 611
    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v2

    .line 614
    .local v2, "userSerialNumber":J
    invoke-static {p1, v2, v3}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 615
    invoke-static {p1}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 616
    invoke-static {p1}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addQuickPageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 619
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v1, :cond_0

    .line 620
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 628
    new-instance v1, Lnet/oneplus/h2launcher/MainThreadExecutor;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/MainThreadExecutor;-><init>()V

    new-instance v4, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper$1;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper$1;-><init>(Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;)V

    invoke-virtual {v1, v4}, Lnet/oneplus/h2launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 640
    :cond_0
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v4

    iput-wide v4, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 641
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->setFlagEmptyDbCreated()V

    .line 644
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->processAllUsers(Ljava/util/List;Landroid/content/Context;)V

    .line 645
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 729
    const-string v0, "LauncherProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database version downgrade from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Wiping databse."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 732
    return-void
.end method

.method public onMaxItemIdChange(J)V
    .locals 1
    .param p1, "itemid"    # J

    .prologue
    .line 1405
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->updateMaxItemId(J)V

    .line 1406
    return-void
.end method

.method public onMaxScreenIdChange(J)V
    .locals 1
    .param p1, "screenid"    # J

    .prologue
    .line 1400
    iput-wide p1, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 1401
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 736
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 737
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->replaceComponentName(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 738
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/16 v4, -0x64

    .line 661
    const-string v1, "LauncherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgrade triggered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newVersion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    move v0, p2

    .line 664
    .local v0, "version":I
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isStandardLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 665
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, p0}, Lnet/oneplus/h2launcher/launcherProviderHelper/O2UpgradeHelper;->upgrade(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ILnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;)I

    move-result v0

    .line 673
    :cond_0
    :goto_0
    if-ne v0, v4, :cond_3

    .line 674
    const-string v1, "LauncherProvider"

    const-string v2, "Destroying all old data."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 724
    :cond_1
    :goto_1
    return-void

    .line 666
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    invoke-static {p2}, Lnet/oneplus/h2launcher/launcherProviderHelper/H2UpgradeHelper;->upgrade(I)I

    move-result v0

    .line 668
    if-eq v0, v4, :cond_0

    .line 669
    invoke-static {p1, p2, p0}, Lnet/oneplus/h2launcher/launcherProviderHelper/H2UpgradeHelper;->upgradeToOOS(Landroid/database/sqlite/SQLiteDatabase;ILnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;)I

    move-result v0

    goto :goto_0

    .line 679
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 719
    const/16 v1, 0x1f

    if-eq p3, v1, :cond_1

    .line 721
    const-string v1, "LauncherProvider"

    const-string v2, "Destroying all old data."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 681
    :pswitch_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lnet/oneplus/h2launcher/launcherProviderHelper/UpgradeHelper;->convertAppComponentName(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 682
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->MigrationPref(Landroid/content/Context;)V

    .line 686
    :pswitch_1
    const-string v1, "LauncherProvider"

    const-string v2, "onUpgrade - migrateShortcutsToSeparateTable"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/LauncherProvider;->migrateShortcutsToSeparateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 690
    :pswitch_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->MigrationComOnePlusPref(Landroid/content/Context;)V

    .line 692
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getLayoutStyle()I

    move-result v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->saveLayoutStyle(I)V

    .line 694
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->reloadStyleConfigurationInfo()V

    .line 695
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->reloadStyleResourceInfo()V

    .line 697
    invoke-static {p1, p0}, Lnet/oneplus/h2launcher/launcherProviderHelper/UpgradeHelper;->addInternalClockWidget(Landroid/database/sqlite/SQLiteDatabase;Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;)V

    .line 699
    :pswitch_3
    invoke-static {p1}, Lnet/oneplus/h2launcher/LauncherProvider;->access$300(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 700
    const-string v1, "DROP TABLE IF EXISTS quickPage"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 701
    invoke-static {p1}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addQuickPageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 705
    :cond_4
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isO2Device()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isStandardLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 706
    invoke-static {p1}, Lnet/oneplus/h2launcher/launcherProviderHelper/UpgradeHelper;->moveAllItemsdown(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 708
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->isSearchBarStyleHidden(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 709
    const-string v1, "LauncherProvider"

    const-string v2, "onUpgrade - addGoogleSearchBarWidget"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->getWorkspaceColumns()I

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 710
    invoke-static {p1, p0, v1, v2}, Lnet/oneplus/h2launcher/launcherProviderHelper/UpgradeHelper;->addGoogleSearchBarWidget(Landroid/database/sqlite/SQLiteDatabase;Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;ILandroid/content/Context;)V

    .line 712
    const/4 v1, 0x0

    sput-object v1, Lnet/oneplus/h2launcher/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    goto/16 :goto_1

    .line 679
    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "addRankColumn"    # Z

    .prologue
    .line 852
    invoke-static {p1, p2}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z

    move-result v0

    return v0
.end method

.method public updateMaxItemId(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 876
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 877
    return-void
.end method

.method public wasNewDbCreated()Z
    .locals 1

    .prologue
    .line 599
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mNewDbCreated:Z

    return v0
.end method
