.class public Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SavedWallpaperDatabaseHelper.java"


# static fields
.field protected static final COLUMN_ID:Ljava/lang/String; = "id"

.field protected static final COLUMN_IMAGE_FILENAME:Ljava/lang/String; = "image"

.field protected static final COLUMN_IMAGE_THUMBNAIL_FILENAME:Ljava/lang/String; = "image_thumbnail"

.field protected static final COLUMN_IMAGE_TYPE:Ljava/lang/String; = "type"

.field protected static final COLUMN_MASK_COLOR:Ljava/lang/String; = "mask_color"

.field protected static final COLUMN_ORIENTATION:Ljava/lang/String; = "orientation"

.field protected static final COLUMN_SCREEN:Ljava/lang/String; = "screen"

.field protected static final COLUMN_SOURCE_URI:Ljava/lang/String; = "source_uri"

.field protected static final DB_VERSION:I = 0x6

.field protected static final IMAGE_TYPE_DEFAULT_VALUE:I = -0x1

.field protected static final MASK_COLOR_DEFAULT_VALUE:I = 0x0

.field protected static final ORIENTATION_DEFAULT_VALUE:I = 0x0

.field protected static final TABLE_SAVED_WALLPAPERS:Ljava/lang/String; = "saved_wallpaper_images"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const-string v0, "saved_wallpaper_images.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 41
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 158
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE saved_wallpaper_images ADD COLUMN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 167
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "ex":Landroid/database/SQLException;
    :try_start_1
    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    const/4 v1, 0x0

    .line 165
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private addTextColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const-string p3, ""

    .line 174
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 176
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE saved_wallpaper_images ADD COLUMN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT NOT NULL DEFAULT \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\';"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 185
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "ex":Landroid/database/SQLException;
    :try_start_1
    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    const/4 v1, 0x0

    .line 183
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 259
    const-string v0, "DROP TABLE IF EXISTS saved_wallpaper_images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 261
    return-void
.end method

.method private createSavedWallpaperTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 110
    const-string v0, "CREATE TABLE IF NOT EXISTS saved_wallpaper_images (id INTEGER NOT NULL, screen INTEGER NOT NULL, image_thumbnail TEXT NOT NULL, image TEXT NOT NULL, mask_color INTEGER NOT NULL, orientation INTEGER NOT NULL, source_uri TEXT NOT NULL, PRIMARY KEY (id ASC) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private deleteWallpaperFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete wallpaper file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-class v1, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->sInstance:Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->sInstance:Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;

    .line 48
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->sInstance:Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static moveFromCacheDirectoryIfNecessary(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "saved_wallpaper_images.db"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .local v0, "oldSavedImagesFile":Ljava/io/File;
    const-string v2, "saved_wallpaper_images.db"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 57
    .local v1, "savedImagesFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to rename file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method private purgeSavedWallpaperRecords(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 138
    const-string v0, "DELETE FROM saved_wallpaper_images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private purgeSavedWallpapers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 123
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "id"

    aput-object v1, v2, v0

    const-string v0, "image_thumbnail"

    aput-object v0, v2, v11

    const-string v0, "image"

    aput-object v0, v2, v12

    .line 125
    .local v2, "projection":[Ljava/lang/String;
    const-string v1, "saved_wallpaper_images"

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 126
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 129
    .local v10, "imageThumbFilename":Ljava/lang/String;
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 130
    .local v9, "imageFilename":Ljava/lang/String;
    invoke-direct {p0, v9}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->deleteWallpaperFile(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, v10}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->deleteWallpaperFile(Ljava/lang/String;)V

    .line 132
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 135
    .end local v9    # "imageFilename":Ljava/lang/String;
    .end local v10    # "imageThumbFilename":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private renameTypeColumn(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 189
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 192
    :try_start_0
    const-string v3, "saved_wallpaper_images_tmp"

    .line 193
    .local v3, "tempTableName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ALTER TABLE saved_wallpaper_images RENAME TO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->createSavedWallpaperTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 199
    const-string v1, "INSERT INTO %s(%s, %s, %s, %s, %s, %s, %s) SELECT %s, %s, %s, %s, %s, %s, %s FROM %s"

    .line 202
    .local v1, "format":Ljava/lang/String;
    const/16 v6, 0x10

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "saved_wallpaper_images"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "id"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "screen"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "image_thumbnail"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "image"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "mask_color"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "orientation"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "source_uri"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "id"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "type"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "image_thumbnail"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string v8, "image"

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string v8, "mask_color"

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-string v8, "orientation"

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const-string v8, "source_uri"

    aput-object v8, v6, v7

    const/16 v7, 0xf

    aput-object v3, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "sql":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 212
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DROP TABLE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 222
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "sql":Ljava/lang/String;
    .end local v3    # "tempTableName":Ljava/lang/String;
    :goto_0
    return v4

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v4, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v6, "failed to rename column \'type\', error=%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v4, v5

    goto :goto_0

    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method private swapTypeValues(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 226
    const/16 v1, -0x3e7

    .line 227
    .local v1, "tempScreenType":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 233
    :try_start_0
    const-string v6, "screen"

    const/16 v7, -0x3e7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v3, "screen = 0"

    .line 235
    .local v3, "whereClause":Ljava/lang/String;
    const-string v6, "saved_wallpaper_images"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v2, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 238
    const-string v6, "screen"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string v3, "screen = 1"

    .line 240
    const-string v6, "saved_wallpaper_images"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v2, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 243
    const-string v6, "screen"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    const-string v3, "screen = -999"

    .line 245
    const-string v6, "saved_wallpaper_images"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v2, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 248
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 255
    .end local v3    # "whereClause":Ljava/lang/String;
    :goto_0
    return v4

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v4, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v6, "failed to swap type values, error=%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v4, v5

    goto :goto_0

    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->createSavedWallpaperTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 71
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrade db from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    packed-switch p2, :pswitch_data_0

    .line 104
    :cond_0
    :goto_0
    if-eq p2, p3, :cond_1

    .line 105
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 107
    :cond_1
    :pswitch_0
    return-void

    .line 74
    :pswitch_1
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->purgeSavedWallpapers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 75
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->purgeSavedWallpaperRecords(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 76
    const-string v0, "type"

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, v0, v2, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    :pswitch_2
    const-string v0, "mask_color"

    invoke-direct {p0, p1, v0, v4, v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :pswitch_3
    const-string v0, "orientation"

    invoke-direct {p0, p1, v0, v4, v5}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :pswitch_4
    const-string v0, "source_uri"

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->addTextColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :pswitch_5
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->renameTypeColumn(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->swapTypeValues(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
