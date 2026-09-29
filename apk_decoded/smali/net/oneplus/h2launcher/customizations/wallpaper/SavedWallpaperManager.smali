.class public Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperManager;
.super Ljava/lang/Object;
.source "SavedWallpaperManager.java"


# static fields
.field public static final INVALID_IMAGE_ID:I = -0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteImage(Landroid/content/Context;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 102
    invoke-static {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperManager;->getImageFilenames(Landroid/content/Context;I)Landroid/util/Pair;

    move-result-object v1

    .line 103
    .local v1, "filenames":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 104
    sget-object v7, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No files found for image id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-direct {v2, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v2, "imageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_1

    .line 109
    sget-object v7, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to delete file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-direct {v4, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .local v4, "thumbFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_2

    .line 113
    sget-object v7, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to delete file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_2
    invoke-static {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;

    move-result-object v7

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 117
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "saved_wallpaper_images"

    .line 118
    .local v3, "table":Ljava/lang/String;
    const-string v5, "id = ?"

    .line 119
    .local v5, "where":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 120
    .local v6, "whereArgs":[Ljava/lang/String;
    const-string v7, "saved_wallpaper_images"

    const-string v8, "id = ?"

    invoke-virtual {v0, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getImageFilenames(Landroid/content/Context;I)Landroid/util/Pair;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 128
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v12, "saved_wallpaper_images"

    .line 129
    .local v12, "table":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "image_thumbnail"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "image"

    aput-object v3, v2, v1

    .line 133
    .local v2, "columns":[Ljava/lang/String;
    const-string v11, "id = ?"

    .line 134
    .local v11, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    .line 135
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v1, "saved_wallpaper_images"

    const-string v3, "id = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 136
    .local v10, "result":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 137
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 138
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 139
    .local v13, "thumbFilename":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 140
    .local v9, "imageFilename":Ljava/lang/String;
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 141
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v13, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    .end local v9    # "imageFilename":Ljava/lang/String;
    .end local v13    # "thumbFilename":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getImageId(Landroid/content/Context;II)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screen"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 75
    const/4 v10, -0x1

    .line 76
    .local v10, "imageId":I
    invoke-static {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 77
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v11, "saved_wallpaper_images"

    .line 78
    .local v11, "table":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "id"

    aput-object v5, v2, v1

    .line 79
    .local v2, "columns":[Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s = ? AND %s = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "screen"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "orientation"

    aput-object v8, v6, v7

    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    .line 83
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 84
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v1, "saved_wallpaper_images"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 85
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 86
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 87
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 88
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 90
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_1
    return v10
.end method

.method public static loadThumbnailsAndImageIdList(Landroid/content/Context;)Ljava/util/List;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/SavedWallpaperTile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static/range {p0 .. p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 34
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v15, "saved_wallpaper_images"

    .line 35
    .local v15, "table":Ljava/lang/String;
    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "id"

    aput-object v5, v3, v2

    const/4 v2, 0x1

    const-string v5, "image_thumbnail"

    aput-object v5, v3, v2

    const/4 v2, 0x2

    const-string v5, "image"

    aput-object v5, v3, v2

    const/4 v2, 0x3

    const-string v5, "mask_color"

    aput-object v5, v3, v2

    const/4 v2, 0x4

    const-string v5, "orientation"

    aput-object v5, v3, v2

    const/4 v2, 0x5

    const-string v5, "source_uri"

    aput-object v5, v3, v2

    .line 43
    .local v3, "columns":[Ljava/lang/String;
    const-string v13, "id DESC"

    .line 44
    .local v13, "orderBy":Ljava/lang/String;
    const-string v2, "saved_wallpaper_images"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "id DESC"

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 46
    .local v14, "result":Landroid/database/Cursor;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v17, "tiles":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/SavedWallpaperTile;>;"
    :cond_0
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 49
    .local v12, "filename":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v11, v2, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 51
    .local v16, "thumb":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_0

    .line 52
    new-instance v4, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/SavedWallpaperTile;

    const/4 v2, 0x0

    .line 53
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v6, Ljava/io/File;

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const/4 v7, 0x2

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-direct {v7, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v2, 0x3

    .line 56
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v2, 0x4

    .line 57
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v2, 0x5

    .line 58
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/SavedWallpaperTile;-><init>(ILjava/io/File;Landroid/graphics/drawable/Drawable;IILjava/lang/String;)V

    .line 60
    .local v4, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/SavedWallpaperTile;
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v4    # "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/SavedWallpaperTile;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "filename":Ljava/lang/String;
    .end local v16    # "thumb":Landroid/graphics/Bitmap;
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 64
    return-object v17
.end method

.method public static saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;[BIIILjava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "imageBytes"    # [B
    .param p3, "screen"    # I
    .param p4, "maskColor"    # I
    .param p5, "orientation"    # I
    .param p6, "sourceUri"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 164
    .local v2, "directory":Ljava/io/File;
    :try_start_0
    const-string v10, "wallpaper"

    const-string v11, ""

    invoke-static {v10, v11, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 165
    .local v4, "imageFile":Ljava/io/File;
    const-string v10, "wallpaperthumb"

    const-string v11, ""

    invoke-static {v10, v11, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 171
    .local v7, "thumbFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 172
    .local v6, "mode":I
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    .local v5, "imageFileStream":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 173
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 172
    .local v8, "thumbFileStream":Ljava/io/FileOutputStream;
    const/4 v11, 0x0

    .line 175
    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 176
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x5f

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v13, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 177
    if-eqz v8, :cond_0

    if-eqz v11, :cond_3

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    if-eqz v12, :cond_6

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 182
    :cond_1
    :goto_1
    invoke-static {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;

    move-result-object v10

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 183
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 184
    .local v9, "values":Landroid/content/ContentValues;
    const-string v10, "image_thumbnail"

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v10, "image"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v10, "screen"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string v10, "mask_color"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    const-string v10, "orientation"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string v10, "source_uri"

    move-object/from16 v0, p6

    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v10, "saved_wallpaper_images"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 192
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "imageFile":Ljava/io/File;
    .end local v5    # "imageFileStream":Ljava/io/FileOutputStream;
    .end local v6    # "mode":I
    .end local v7    # "thumbFile":Ljava/io/File;
    .end local v8    # "thumbFileStream":Ljava/io/FileOutputStream;
    .end local v9    # "values":Landroid/content/ContentValues;
    :goto_2
    return-object v10

    .line 166
    :catch_0
    move-exception v3

    .line 167
    .local v3, "e":Ljava/io/IOException;
    sget-object v10, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperManager;->TAG:Ljava/lang/String;

    const-string v11, "Cannot create wallpaper files"

    invoke-static {v10, v11}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v10, 0x0

    goto :goto_2

    .line 177
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "imageFile":Ljava/io/File;
    .restart local v5    # "imageFileStream":Ljava/io/FileOutputStream;
    .restart local v6    # "mode":I
    .restart local v7    # "thumbFile":Ljava/io/File;
    .restart local v8    # "thumbFileStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v10

    :try_start_6
    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 172
    .end local v8    # "thumbFileStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v10

    :try_start_7
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 177
    :catchall_0
    move-exception v11

    move-object v14, v11

    move-object v11, v10

    move-object v10, v14

    :goto_3
    if-eqz v5, :cond_2

    if-eqz v11, :cond_7

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_2
    :goto_4
    :try_start_9
    throw v10
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .end local v5    # "imageFileStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v3

    .line 178
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v10, Lnet/oneplus/h2launcher/customizations/wallpaper/SavedWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed writing images to storage "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v10, 0x0

    goto :goto_2

    .line 177
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "imageFileStream":Ljava/io/FileOutputStream;
    .restart local v8    # "thumbFileStream":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    .end local v8    # "thumbFileStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v11, v12

    goto :goto_3

    .line 172
    .restart local v8    # "thumbFileStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v10

    :try_start_b
    throw v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 177
    :catchall_2
    move-exception v11

    move-object v14, v11

    move-object v11, v10

    move-object v10, v14

    :goto_5
    if-eqz v8, :cond_4

    if-eqz v11, :cond_5

    :try_start_c
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_4
    :goto_6
    :try_start_d
    throw v10

    :catch_5
    move-exception v13

    invoke-virtual {v11, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_6

    :catch_6
    move-exception v10

    :try_start_e
    invoke-virtual {v12, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_1

    .end local v8    # "thumbFileStream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v12

    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_4

    .restart local v8    # "thumbFileStream":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v10

    goto :goto_5
.end method
