.class public Lnet/oneplus/h2launcher/launcherProviderHelper/O2UpgradeHelper;
.super Ljava/lang/Object;
.source "O2UpgradeHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "O2UpgradeHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addContentColumn(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 239
    :try_start_0
    const-string v1, "ALTER TABLE quickPage ADD COLUMN content TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 247
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "ex":Landroid/database/SQLException;
    :try_start_1
    const-string v1, "O2UpgradeHelper"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    const/4 v1, 0x0

    .line 245
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static addProfileColumn(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)Z
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-static {p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    .line 134
    .local v0, "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v2

    .line 135
    .local v2, "userSerialNumber":J
    const-string v1, "profileId"

    invoke-static {p0, v1, v2, v3}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v1

    return v1
.end method

.method private static addSizeColumn(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 224
    :try_start_0
    const-string v1, "ALTER TABLE quickPage ADD COLUMN size INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 233
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "ex":Landroid/database/SQLException;
    :try_start_1
    const-string v1, "O2UpgradeHelper"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    const/4 v1, 0x0

    .line 231
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public static recreateWorkspaceTable(Landroid/database/sqlite/SQLiteDatabase;Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;)Z
    .locals 19
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "dataBaseHelperCallback"    # Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;

    .prologue
    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 177
    :try_start_0
    const-string v3, "workspaceScreens"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "screenRank"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 181
    .local v10, "c":Landroid/database/Cursor;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    .local v16, "sortedIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v14, 0x0

    .line 184
    .local v14, "maxId":J
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 186
    .local v13, "id":Ljava/lang/Long;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v14

    goto :goto_0

    .line 192
    .end local v13    # "id":Ljava/lang/Long;
    :cond_1
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 195
    const-string v2, "DROP TABLE IF EXISTS workspaceScreens"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    invoke-static/range {p0 .. p0}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addOrgWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 199
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 200
    .local v17, "total":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_2

    .line 201
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 202
    .local v18, "values":Landroid/content/ContentValues;
    const-string v3, "_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    const-string v2, "screenRank"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    invoke-static/range {v18 .. v18}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 205
    const-string v2, "workspaceScreens"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 200
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 192
    .end local v12    # "i":I
    .end local v17    # "total":I
    .end local v18    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v14    # "maxId":J
    .end local v16    # "sortedIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_0
    move-exception v11

    .line 211
    .local v11, "ex":Landroid/database/SQLException;
    :try_start_3
    const-string v2, "O2UpgradeHelper"

    invoke-virtual {v11}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 212
    const/4 v2, 0x0

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 216
    .end local v11    # "ex":Landroid/database/SQLException;
    :goto_2
    return v2

    .line 207
    .restart local v10    # "c":Landroid/database/Cursor;
    .restart local v12    # "i":I
    .restart local v14    # "maxId":J
    .restart local v16    # "sortedIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v17    # "total":I
    :cond_2
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 208
    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;->onMaxScreenIdChange(J)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 216
    const/4 v2, 0x1

    goto :goto_2

    .line 214
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v12    # "i":I
    .end local v14    # "maxId":J
    .end local v16    # "sortedIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v17    # "total":I
    :catchall_1
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private static removeOrphanedItems(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 142
    const-string v0, "DELETE FROM favorites WHERE screen NOT IN (SELECT _id FROM workspaceScreens) AND container = -100"

    .line 149
    .local v0, "removeOrphanedDesktopItems":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    const-string v1, "DELETE FROM favorites WHERE container <> -100 AND container <> -101 AND container NOT IN (SELECT _id FROM favorites WHERE itemType = 2)"

    .line 166
    .local v1, "removeOrphanedFolderItems":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public static upgrade(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ILnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "dataBaseHelperCallback"    # Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;

    .prologue
    const-wide/16 v6, 0x0

    const/16 v2, -0x64

    .line 24
    const-string v3, "O2UpgradeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpgrade triggered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    move v1, p2

    .line 26
    .local v1, "version":I
    packed-switch v1, :pswitch_data_0

    :goto_0
    move v2, v1

    .line 126
    :cond_0
    :goto_1
    return v2

    .line 32
    :pswitch_0
    invoke-interface {p3, v6, v7}, Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;->onMaxScreenIdChange(J)V

    .line 33
    invoke-static {p1}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addOrgWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    :pswitch_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 39
    :try_start_0
    const-string v3, "ALTER TABLE favorites ADD COLUMN appWidgetProvider TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 51
    :pswitch_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 54
    :try_start_1
    const-string v3, "ALTER TABLE favorites ADD COLUMN modified INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    const-string v3, "ALTER TABLE workspaceScreens ADD COLUMN modified INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 68
    :pswitch_3
    const-string v3, "restored"

    invoke-static {p1, v3, v6, v7}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    :pswitch_4
    invoke-static {p0}, Lnet/oneplus/h2launcher/LauncherClings;->markFirstRunClingDismissed(Landroid/content/Context;)V

    .line 89
    :pswitch_5
    invoke-static {p1}, Lnet/oneplus/h2launcher/launcherProviderHelper/O2UpgradeHelper;->removeOrphanedItems(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    :pswitch_6
    invoke-static {p1, p0}, Lnet/oneplus/h2launcher/launcherProviderHelper/O2UpgradeHelper;->addProfileColumn(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    :pswitch_7
    const/4 v3, 0x1

    invoke-static {p1, v3}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    :pswitch_8
    invoke-static {p1, p3}, Lnet/oneplus/h2launcher/launcherProviderHelper/O2UpgradeHelper;->recreateWorkspaceTable(Landroid/database/sqlite/SQLiteDatabase;Lnet/oneplus/h2launcher/launcherProviderHelper/DataBaseHelperCallback;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    :pswitch_9
    const-string v3, "options"

    invoke-static {p1, v3, v6, v7}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    :pswitch_a
    invoke-static {p0}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->markExistingUsersForNoFolderCreation(Landroid/content/Context;)V

    .line 118
    :pswitch_b
    const-string v2, "favorites"

    invoke-static {p1, v2, p0}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->convertShortcutsToLauncherActivities(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;)V

    .line 120
    :pswitch_c
    invoke-static {p1}, Lnet/oneplus/h2launcher/launcherProviderHelper/O2UpgradeHelper;->addSizeColumn(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 121
    invoke-static {p1}, Lnet/oneplus/h2launcher/launcherProviderHelper/O2UpgradeHelper;->addContentColumn(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 124
    :pswitch_d
    const/16 v1, 0x1b

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "ex":Landroid/database/SQLException;
    :try_start_2
    const-string v3, "O2UpgradeHelper"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 59
    :catch_1
    move-exception v0

    .line 60
    .restart local v0    # "ex":Landroid/database/SQLException;
    :try_start_3
    const-string v3, "O2UpgradeHelper"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_1
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 26
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
