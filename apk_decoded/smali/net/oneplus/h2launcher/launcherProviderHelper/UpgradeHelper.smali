.class public Lnet/oneplus/h2launcher/launcherProviderHelper/UpgradeHelper;
.super Ljava/lang/Object;
.source "UpgradeHelper.java"


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "UpgradeHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addGoogleSearchBarWidget(Landroid/database/sqlite/SQLiteDatabase;Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;ILandroid/content/Context;)V
    .locals 12
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "dataBaseHelperCallback"    # Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;
    .param p2, "WorkspaceColumns"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    const-string v5, "com.google.android.googlequicksearchbox"

    .line 190
    .local v5, "packageName":Ljava/lang/String;
    const-string v3, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    .line 191
    .local v3, "className":Ljava/lang/String;
    invoke-static {p3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 192
    .local v2, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    const/16 v9, 0x400

    invoke-direct {v0, p3, v9}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 193
    .local v0, "appWidgetHost":Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 194
    .local v1, "appWidgetId":I
    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v9}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 195
    const-string v9, "UpgradeHelper"

    const-string v10, "Unable to bind google quick search box"

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 201
    :try_start_0
    const-string v9, "standard_favorites"

    invoke-static {p0, v9}, Lnet/oneplus/h2launcher/launcherProviderHelper/UpgradeHelper;->getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    .line 202
    .local v6, "id":J
    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    .line 203
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 204
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    const-string v9, "container"

    const/16 v10, -0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v9, "screen"

    invoke-static {p0}, Lnet/oneplus/h2launcher/launcherProviderHelper/UpgradeHelper;->getFirstScreenIdFromDB(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v9, "cellX"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    const-string v9, "cellY"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    const-string v9, "spanX"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const-string v9, "spanY"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v9, "itemType"

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const-string v9, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    const-string v9, "appWidgetProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v9, "standard_favorites"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 216
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 217
    invoke-interface {p1, v6, v7}, Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;->onMaxItemIdChange(J)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 218
    .end local v6    # "id":J
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 219
    .local v4, "ex":Landroid/database/SQLException;
    :try_start_1
    const-string v9, "UpgradeHelper"

    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v4    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v9
.end method

.method public static addInternalClockWidget(Landroid/database/sqlite/SQLiteDatabase;Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;)V
    .locals 8
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "dataBaseHelperCallback"    # Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;

    .prologue
    .line 126
    const-string v5, "simplified_favorites"

    invoke-static {p0, v5}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    .line 127
    .local v1, "favoritesTableExist":Z
    if-nez v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 133
    :try_start_0
    const-string v5, "simplified_favorites"

    invoke-static {p0, v5}, Lnet/oneplus/h2launcher/launcherProviderHelper/UpgradeHelper;->getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    .line 134
    .local v2, "id":J
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 135
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    const-string v5, "container"

    const/16 v6, -0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    const-string v5, "screen"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    const-string v5, "cellX"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string v5, "cellY"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    const-string v5, "spanX"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v5, "spanY"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string v5, "itemType"

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string v5, "appWidgetId"

    const/16 v6, -0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const-string v5, "appWidgetProvider"

    const-string v6, "net.oneplus.h2launcher/net.oneplus.h2launcher.internalwidget.clock.ClockWidget"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v5, "simplified_favorites"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 149
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 150
    invoke-interface {p1, v2, v3}, Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;->onMaxItemIdChange(J)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 151
    .end local v2    # "id":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "ex":Landroid/database/SQLException;
    :try_start_1
    const-string v5, "UpgradeHelper"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public static convertAppComponentName(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 28
    const-string v12, "UpgradeHelper"

    const-string v13, "convertAppComponentName+"

    invoke-static {v12, v13}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static/range {p0 .. p0}, Lnet/oneplus/h2launcher/launcherProviderHelper/MappingTableHelper;->createAppMappingTable(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    .line 31
    .local v1, "appMappingTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/content/ComponentName;>;"
    invoke-static/range {p1 .. p1}, Lnet/oneplus/h2launcher/launcherProviderHelper/UpgradeHelper;->getFavoriteItemFromDB(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v4

    .line 32
    .local v4, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;>;"
    if-nez v4, :cond_0

    .line 33
    const-string v12, "UpgradeHelper"

    const-string v13, "convertAppComponentName favoriteItems == null"

    invoke-static {v12, v13}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 39
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;

    .line 40
    .local v5, "item":Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->getItemType()I

    move-result v13

    if-nez v13, :cond_1

    .line 43
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->getIntent()Ljava/lang/String;

    move-result-object v7

    .line 44
    .local v7, "strIntent":Ljava/lang/String;
    invoke-static {v7}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getComponentNameForApplication(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 45
    .local v2, "componentName":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 50
    const-string v8, "_id=?"

    .line 51
    .local v8, "strWhere":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_2

    .line 52
    const-string v13, "UpgradeHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "+delete Favorite: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v13, "favorites"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->getId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 54
    .local v6, "nRet":I
    const-string v13, "UpgradeHelper"

    const-string v14, "-delete Favorite: %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 73
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "item":Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;
    .end local v6    # "nRet":I
    .end local v7    # "strIntent":Ljava/lang/String;
    .end local v8    # "strWhere":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 74
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v12, "UpgradeHelper"

    const-string v13, "update Favorite fail"

    invoke-static {v12, v13, v3}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 78
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v12, "UpgradeHelper"

    const-string v13, "convertAppComponentName-"

    invoke-static {v12, v13}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 56
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v5    # "item":Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;
    .restart local v7    # "strIntent":Ljava/lang/String;
    .restart local v8    # "strWhere":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 57
    .local v9, "targetComponent":Landroid/content/ComponentName;
    const/4 v13, 0x0

    invoke-static {v13, v9}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->createAppIntent(ILandroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v10

    .line 59
    .local v10, "tartgetIntent":Landroid/content/Intent;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->setIntent(Ljava/lang/String;)V

    .line 61
    const-string v13, "UpgradeHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Update item from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v11, "value":Landroid/content/ContentValues;
    const-string v13, "intent"

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->getIntent()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v13, "UpgradeHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "+Update Favorite: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v13, "favorites"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 67
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->getId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 66
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v11, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 68
    .restart local v6    # "nRet":I
    const-string v13, "UpgradeHelper"

    const-string v14, "-update Favorite: %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 76
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "item":Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;
    .end local v6    # "nRet":I
    .end local v7    # "strIntent":Ljava/lang/String;
    .end local v8    # "strWhere":Ljava/lang/String;
    .end local v9    # "targetComponent":Landroid/content/ComponentName;
    .end local v10    # "tartgetIntent":Landroid/content/Intent;
    .end local v11    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v12

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 72
    :cond_3
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_2
.end method

.method private static getFavoriteItemFromDB(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 21
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v12, "items":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;>;"
    const/4 v9, 0x0

    .line 85
    .local v9, "c":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 88
    :try_start_0
    const-string v2, "favorites"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 90
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 91
    .local v15, "nIdIndex":I
    const-string v1, "intent"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 92
    .local v16, "nIntentIndex":I
    const-string v1, "appWidgetProvider"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 93
    .local v13, "nAppWidgetProviderIndex":I
    const-string v1, "itemType"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 95
    .local v18, "nItemTypeIndex":I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    new-instance v11, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;

    invoke-direct {v11}, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;-><init>()V

    .line 98
    .local v11, "item":Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 99
    .local v14, "nId":I
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 100
    .local v20, "strIntent":Ljava/lang/String;
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 101
    .local v19, "strAppWidgetProvider":Ljava/lang/String;
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 103
    .local v17, "nItemType":I
    invoke-virtual {v11, v14}, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->setId(I)V

    .line 104
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->setIntent(Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->setAppWidgetProvider(Ljava/lang/String;)V

    .line 106
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->setItemType(I)V

    .line 108
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 111
    .end local v11    # "item":Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;
    .end local v13    # "nAppWidgetProviderIndex":I
    .end local v14    # "nId":I
    .end local v15    # "nIdIndex":I
    .end local v16    # "nIntentIndex":I
    .end local v17    # "nItemType":I
    .end local v18    # "nItemTypeIndex":I
    .end local v19    # "strAppWidgetProvider":Ljava/lang/String;
    .end local v20    # "strIntent":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 112
    .local v10, "ex":Landroid/database/SQLException;
    :try_start_1
    invoke-interface {v12}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 115
    if-eqz v9, :cond_0

    .line 116
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 118
    .end local v10    # "ex":Landroid/database/SQLException;
    :cond_0
    :goto_1
    return-object v12

    .line 110
    .restart local v13    # "nAppWidgetProviderIndex":I
    .restart local v15    # "nIdIndex":I
    .restart local v16    # "nIntentIndex":I
    .restart local v18    # "nItemTypeIndex":I
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 115
    if-eqz v9, :cond_0

    .line 116
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 114
    .end local v13    # "nAppWidgetProviderIndex":I
    .end local v15    # "nIdIndex":I
    .end local v16    # "nIntentIndex":I
    .end local v18    # "nItemTypeIndex":I
    :catchall_0
    move-exception v1

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 115
    if-eqz v9, :cond_0

    .line 116
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private static getFirstScreenIdFromDB(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 13
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 248
    const/4 v8, 0x0

    .line 249
    .local v8, "c":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 251
    .local v10, "firstScreenId":I
    :try_start_0
    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getWorkspaceScreensTable()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 253
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 256
    .local v12, "nIdIndex":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 262
    :cond_0
    if-eqz v8, :cond_1

    .line 263
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_1
    const-string v0, "UpgradeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getFirstScreenIdFromDB] firstScreenId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v10

    .line 267
    .end local v10    # "firstScreenId":I
    .end local v12    # "nIdIndex":I
    .local v11, "firstScreenId":I
    :goto_0
    return v11

    .line 259
    .end local v11    # "firstScreenId":I
    .restart local v10    # "firstScreenId":I
    :catch_0
    move-exception v9

    .line 260
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "UpgradeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getFirstScreenIdFromDB] ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    if-eqz v8, :cond_2

    .line 263
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_2
    const-string v0, "UpgradeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getFirstScreenIdFromDB] firstScreenId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v10

    .line 267
    .end local v10    # "firstScreenId":I
    .restart local v11    # "firstScreenId":I
    goto :goto_0

    .line 262
    .end local v9    # "ex":Ljava/lang/Exception;
    .end local v11    # "firstScreenId":I
    .restart local v10    # "firstScreenId":I
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 263
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_3
    const-string v0, "UpgradeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getFirstScreenIdFromDB] firstScreenId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v10

    .line 267
    .end local v10    # "firstScreenId":I
    .restart local v11    # "firstScreenId":I
    goto :goto_0
.end method

.method static getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 230
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

    .line 232
    .local v0, "c":Landroid/database/Cursor;
    const-wide/16 v2, -0x1

    .line 233
    .local v2, "id":J
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 236
    :cond_0
    if-eqz v0, :cond_1

    .line 237
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 241
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

    .line 244
    :cond_2
    return-wide v2
.end method

.method public static moveAllItemsdown(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 164
    const-string v2, "UpgradeHelper"

    const-string v3, "moveAllItemsdown +"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 168
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v1, "strBuilder":Ljava/lang/StringBuilder;
    const-string v2, "UPDATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getFavoritesTable()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SET "

    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cellY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cellY + 1"

    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "container"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, -0x64

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    const-string v2, "UpgradeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[moveAllItemsdown] strBuilder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 184
    .end local v1    # "strBuilder":Ljava/lang/StringBuilder;
    :goto_0
    const-string v2, "UpgradeHelper"

    const-string v3, "moveAllItemsdown -"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "UpgradeHelper"

    const-string v3, "moveAllItemsdown fail"

    invoke-static {v2, v3, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
