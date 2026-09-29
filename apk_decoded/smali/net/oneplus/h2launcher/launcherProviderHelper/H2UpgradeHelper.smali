.class public Lnet/oneplus/h2launcher/launcherProviderHelper/H2UpgradeHelper;
.super Ljava/lang/Object;
.source "H2UpgradeHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H2UpgradeHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AddInternalClockWidget(Landroid/database/sqlite/SQLiteDatabase;Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;)V
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "dataBaseHelperCallback"    # Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 136
    :try_start_0
    const-string v4, "favorites"

    invoke-static {p0, v4}, Lnet/oneplus/h2launcher/launcherProviderHelper/H2UpgradeHelper;->getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    .line 137
    .local v2, "id":J
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 138
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 139
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 140
    const-string v4, "container"

    const/16 v5, -0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    const-string v4, "screen"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v4, "cellX"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string v4, "cellY"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string v4, "spanX"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const-string v4, "spanY"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string v4, "itemType"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string v4, "appWidgetId"

    const/16 v5, -0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    const-string v4, "appWidgetProvider"

    const-string v5, "net.oneplus.h2launcher/net.oneplus.h2launcher.internalwidget.clock.ClockWidget"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v4, "favorites"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 152
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 153
    invoke-interface {p1, v2, v3}, Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;->onMaxItemIdChange(J)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 160
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "id":J
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "ex":Landroid/database/SQLException;
    :try_start_1
    const-string v4, "H2UpgradeHelper"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method static getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 167
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

    .line 169
    .local v0, "c":Landroid/database/Cursor;
    const-wide/16 v2, -0x1

    .line 170
    .local v2, "id":J
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 173
    :cond_0
    if-eqz v0, :cond_1

    .line 174
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 178
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

    .line 181
    :cond_2
    return-wide v2
.end method

.method private static isNeedUpdateScreenId(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 15
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 50
    const-string v12, "H2UpgradeHelper"

    const-string v13, "isNeedUpdateScreenId (+) "

    invoke-static {v12, v13}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v4, 0x0

    .line 52
    .local v4, "isNeedUpdate":Z
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 54
    :try_start_0
    const-string v3, "SELECT MIN(%s) FROM %s where %s = %d"

    .line 55
    .local v3, "format":Ljava/lang/String;
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "screen"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "favorites"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "container"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/16 v14, -0x64

    .line 56
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 55
    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 57
    .local v9, "sql":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {p0, v9, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 58
    .local v0, "cursorFavorites":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 59
    .local v8, "minScreenIdIndex":I
    const/4 v7, -0x1

    .line 60
    .local v7, "minScreenId":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 61
    const/4 v12, 0x0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 63
    :cond_0
    if-eqz v0, :cond_1

    .line 64
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_1
    const-string v3, "SELECT MIN(%s) FROM %s "

    .line 68
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "_id"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "workspaceScreens"

    aput-object v14, v12, v13

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 70
    const/4 v12, 0x0

    invoke-virtual {p0, v9, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 71
    .local v1, "cursorWorkspaceScreen":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 72
    .local v6, "minIdIndex":I
    const/4 v5, -0x1

    .line 73
    .local v5, "minId":I
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 74
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 76
    :cond_2
    if-eqz v1, :cond_3

    .line 77
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_3
    if-lez v7, :cond_4

    if-lez v5, :cond_4

    move v4, v10

    .line 80
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 86
    .end local v0    # "cursorFavorites":Landroid/database/Cursor;
    .end local v1    # "cursorWorkspaceScreen":Landroid/database/Cursor;
    .end local v3    # "format":Ljava/lang/String;
    .end local v5    # "minId":I
    .end local v6    # "minIdIndex":I
    .end local v7    # "minScreenId":I
    .end local v8    # "minScreenIdIndex":I
    .end local v9    # "sql":Ljava/lang/String;
    :goto_1
    const-string v12, "H2UpgradeHelper"

    const-string v13, "isNeedUpdateScreenId (-) needupdate = %b"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v10, v11

    invoke-static {v12, v13, v10}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return v4

    .restart local v0    # "cursorFavorites":Landroid/database/Cursor;
    .restart local v1    # "cursorWorkspaceScreen":Landroid/database/Cursor;
    .restart local v3    # "format":Ljava/lang/String;
    .restart local v5    # "minId":I
    .restart local v6    # "minIdIndex":I
    .restart local v7    # "minScreenId":I
    .restart local v8    # "minScreenIdIndex":I
    .restart local v9    # "sql":Ljava/lang/String;
    :cond_4
    move v4, v11

    .line 79
    goto :goto_0

    .line 81
    .end local v0    # "cursorFavorites":Landroid/database/Cursor;
    .end local v1    # "cursorWorkspaceScreen":Landroid/database/Cursor;
    .end local v3    # "format":Ljava/lang/String;
    .end local v5    # "minId":I
    .end local v6    # "minIdIndex":I
    .end local v7    # "minScreenId":I
    .end local v8    # "minScreenIdIndex":I
    .end local v9    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 82
    .local v2, "ex":Landroid/database/SQLException;
    :try_start_1
    const-string v12, "H2UpgradeHelper"

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v2    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v10

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v10
.end method

.method private static updateScreenId(Landroid/database/sqlite/SQLiteDatabase;Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;)V
    .locals 9
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "dataBaseHelperCallback"    # Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;

    .prologue
    .line 91
    const-string v6, "H2UpgradeHelper"

    const-string v7, "updateScreenId + "

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {p0}, Lnet/oneplus/h2launcher/launcherProviderHelper/H2UpgradeHelper;->isNeedUpdateScreenId(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 131
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 98
    :try_start_0
    const-string v2, "UPDATE %s SET %s = %s %d where %s = %d"

    .line 99
    .local v2, "format":Ljava/lang/String;
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "favorites"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "screen"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "screen"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, -0x1

    .line 100
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "container"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const/16 v8, -0x64

    .line 101
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 99
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "sql":Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    const-string v2, "UPDATE %s SET %s = %s %d"

    .line 105
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "workspaceScreens"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, -0x1

    .line 106
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 105
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    const-string v2, "SELECT MAX(%s) FROM %s "

    .line 110
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "screen"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "favorites"

    aput-object v8, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 112
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 113
    .local v0, "cursorWorkspaceScreen":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 114
    .local v4, "minIdIndex":I
    const/4 v3, -0x1

    .line 115
    .local v3, "maxId":I
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 116
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 118
    :cond_1
    if-eqz v0, :cond_2

    .line 119
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 123
    int-to-long v6, v3

    invoke-interface {p1, v6, v7}, Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;->onMaxScreenIdChange(J)V

    .line 124
    const-string v6, "H2UpgradeHelper"

    const-string v7, "success updateScreenId - "

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 130
    .end local v0    # "cursorWorkspaceScreen":Landroid/database/Cursor;
    .end local v2    # "format":Ljava/lang/String;
    .end local v3    # "maxId":I
    .end local v4    # "minIdIndex":I
    .end local v5    # "sql":Ljava/lang/String;
    :goto_1
    const-string v6, "H2UpgradeHelper"

    const-string v7, "updateScreenId - "

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "ex":Landroid/database/SQLException;
    :try_start_1
    const-string v6, "H2UpgradeHelper"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v1    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
.end method

.method public static upgrade(I)I
    .locals 1
    .param p0, "oldVersion"    # I

    .prologue
    .line 16
    move v0, p0

    .line 19
    .local v0, "version":I
    return v0
.end method

.method public static upgradeToOOS(Landroid/database/sqlite/SQLiteDatabase;ILnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;)I
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "oldVersion"    # I
    .param p2, "dataBaseHelperCallback"    # Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;

    .prologue
    const-wide/16 v4, 0x0

    const/16 v1, -0x64

    .line 23
    move v0, p1

    .line 24
    .local v0, "version":I
    packed-switch v0, :pswitch_data_0

    :goto_0
    move v1, v0

    .line 46
    :cond_0
    return v1

    .line 29
    :pswitch_0
    const-string v2, "H2UpgradeHelper"

    const-string v3, "add quickPageTable and column{RANK , OPTIONS} of favorites"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addQuickPageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 32
    invoke-static {p0, p2}, Lnet/oneplus/h2launcher/launcherProviderHelper/H2UpgradeHelper;->AddInternalClockWidget(Landroid/database/sqlite/SQLiteDatabase;Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;)V

    .line 34
    const-string v2, "rank"

    invoke-static {p0, v2, v4, v5}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    const-string v2, "options"

    invoke-static {p0, v2, v4, v5}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-static {p0, p2}, Lnet/oneplus/h2launcher/launcherProviderHelper/H2UpgradeHelper;->updateScreenId(Landroid/database/sqlite/SQLiteDatabase;Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;)V

    .line 43
    const/16 v0, 0x1b

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
