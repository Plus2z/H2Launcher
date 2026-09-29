.class public Lnet/oneplus/h2launcher/IconDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IconDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/IconDBHelper$CommonColumn;,
        Lnet/oneplus/h2launcher/IconDBHelper$AssetPack;,
        Lnet/oneplus/h2launcher/IconDBHelper$CustomLabel;,
        Lnet/oneplus/h2launcher/IconDBHelper$Sound;,
        Lnet/oneplus/h2launcher/IconDBHelper$DynamicIcon;,
        Lnet/oneplus/h2launcher/IconDBHelper$Icon;,
        Lnet/oneplus/h2launcher/IconDBHelper$Tables;
    }
.end annotation


# static fields
.field private static final DB_VERSION:I = 0xa

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lnet/oneplus/h2launcher/IconDBHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/IconDBHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const-string v0, "app_icons.db"

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 84
    return-void
.end method

.method private alterTableToVersion9(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 219
    :try_start_0
    const-string v1, "ALTER TABLE assetPack ADD COLUMN lastUpdated INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lnet/oneplus/h2launcher/IconDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alert table warning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clearDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 236
    const-string v0, "DROP TABLE IF EXISTS icons"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/IconDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 238
    return-void
.end method

.method private clearDynamicIconResource(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 229
    :try_start_0
    const-string v1, "delete from icons where iconType = 1 or iconType = 4"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lnet/oneplus/h2launcher/IconDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearDynamicIconResource warning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private migrateCustomInfo(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 26
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 160
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 161
    .local v7, "context":Landroid/content/Context;
    const-string v22, "custom_labels_shared_preferences"

    const/16 v23, 0x0

    .line 162
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 163
    .local v13, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v12

    .line 164
    .local v12, "labelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 165
    .local v19, "values":Landroid/content/ContentValues;
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v18

    .line 166
    .local v18, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    invoke-static {v7}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v20

    .line 167
    .local v20, "userId":J
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 168
    .local v6, "component":Ljava/lang/String;
    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 169
    .local v11, "label":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    .line 170
    const-string v23, "label"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v23, "componentName"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v23, "profileId"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    const-string v23, "customLabel"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 175
    .end local v6    # "component":Ljava/lang/String;
    .end local v11    # "label":Ljava/lang/String;
    :cond_0
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    const-string v22, "custom_icons_shared_preferences"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 177
    invoke-interface {v13}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v10

    .line 179
    .local v10, "iconMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_1
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 180
    .restart local v6    # "component":Ljava/lang/String;
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 181
    .local v14, "resPath":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 183
    :try_start_0
    const-string v23, ":"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 184
    .local v16, "resourcePath":[Ljava/lang/String;
    const/16 v23, 0x0

    aget-object v23, v16, v23

    const/16 v24, 0x1

    aget-object v24, v16, v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v7, v0, v1}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getCustomIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 185
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_1

    .line 186
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 187
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 188
    invoke-static {v4}, Lnet/oneplus/h2launcher/IconCache;->checkAndResizeIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 189
    .local v15, "resizeBitmap":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_2

    .line 190
    move-object v4, v15

    .line 194
    .end local v15    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v4, :cond_1

    .line 195
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 196
    .local v17, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v23, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v24, 0x64

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v4, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 197
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 198
    .local v5, "bytes":[B
    if-eqz v5, :cond_1

    array-length v0, v5

    move/from16 v23, v0

    if-lez v23, :cond_1

    .line 199
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    .line 200
    const-string v23, "icon"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 201
    const-string v23, "componentName"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v23, "profileId"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    const-string v23, "assetPackName"

    const-string v24, "custom"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v23, "iconType"

    const/16 v24, 0x3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    const-string v23, "icons"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 209
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "bytes":[B
    .end local v16    # "resourcePath":[Ljava/lang/String;
    .end local v17    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v9

    .line 210
    .local v9, "e":Ljava/lang/Exception;
    sget-object v23, Lnet/oneplus/h2launcher/IconDBHelper;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "migrate custom icon error, component = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", resource path = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 214
    .end local v6    # "component":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v14    # "resPath":Ljava/lang/String;
    :cond_3
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 88
    const-string v0, "CREATE TABLE IF NOT EXISTS icons (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, icon BLOB, icon_low_res BLOB, label TEXT, system_state TEXT, assetPackName TEXT, iconType INTEGER DEFAULT 0, PRIMARY KEY (componentName, profileId, assetPackName, iconType) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    const-string v0, "CREATE TABLE IF NOT EXISTS dynamicIcon (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, assetPackName TEXT, config BLOB, PRIMARY KEY (componentName, profileId, assetPackName) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    const-string v0, "CREATE TABLE IF NOT EXISTS sound (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, assetPackName TEXT, sound BLOB, PRIMARY KEY (componentName, profileId, assetPackName) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const-string v0, "CREATE TABLE IF NOT EXISTS customLabel (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, label TEXT, PRIMARY KEY (componentName, profileId) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    const-string v0, "CREATE TABLE IF NOT EXISTS assetPack (profileId INTEGER NOT NULL, assetPackName TEXT, version INTEGER NOT NULL DEFAULT 0, lastUpdated INTEGER NOT NULL DEFAULT 0, PRIMARY KEY (profileId, assetPackName) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 154
    if-eq p2, p3, :cond_0

    .line 155
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/IconDBHelper;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 157
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/16 v1, 0x8

    .line 136
    move v0, p2

    .line 137
    .local v0, "version":I
    if-ge v0, v1, :cond_0

    .line 138
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/IconDBHelper;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 139
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/IconDBHelper;->migrateCustomInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 140
    const/16 v0, 0x8

    .line 142
    :cond_0
    if-ne v0, v1, :cond_1

    .line 143
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/IconDBHelper;->alterTableToVersion9(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 144
    const/16 v0, 0x9

    .line 146
    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 147
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/IconDBHelper;->clearDynamicIconResource(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 148
    const/16 v0, 0xa

    .line 150
    :cond_2
    return-void
.end method
