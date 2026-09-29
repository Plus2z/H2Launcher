.class Lcom/crashlytics/android/core/BinaryImagesConverter;
.super Ljava/lang/Object;
.source "BinaryImagesConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/BinaryImagesConverter$FileIdStrategy;
    }
.end annotation


# static fields
.field private static final DATA_DIR:Ljava/lang/String; = "/data"


# instance fields
.field private final context:Landroid/content/Context;

.field private final fileIdStrategy:Lcom/crashlytics/android/core/BinaryImagesConverter$FileIdStrategy;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/core/BinaryImagesConverter$FileIdStrategy;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileIdStrategy"    # Lcom/crashlytics/android/core/BinaryImagesConverter$FileIdStrategy;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/crashlytics/android/core/BinaryImagesConverter;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/crashlytics/android/core/BinaryImagesConverter;->fileIdStrategy:Lcom/crashlytics/android/core/BinaryImagesConverter$FileIdStrategy;

    .line 30
    return-void
.end method

.method private correctDataPath(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p1, "missingFile"    # Ljava/io/File;

    .prologue
    .line 93
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    move-object v2, p1

    .line 106
    .end local p1    # "missingFile":Ljava/io/File;
    .local v2, "missingFile":Ljava/io/File;
    :goto_0
    return-object v2

    .line 97
    .end local v2    # "missingFile":Ljava/io/File;
    .restart local p1    # "missingFile":Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    :try_start_0
    iget-object v3, p0, Lcom/crashlytics/android/core/BinaryImagesConverter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/crashlytics/android/core/BinaryImagesConverter;->context:Landroid/content/Context;

    .line 100
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 101
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1    # "missingFile":Ljava/io/File;
    .restart local v2    # "missingFile":Ljava/io/File;
    move-object p1, v2

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "missingFile":Ljava/io/File;
    .restart local p1    # "missingFile":Ljava/io/File;
    :cond_1
    :goto_1
    move-object v2, p1

    .line 106
    .end local p1    # "missingFile":Ljava/io/File;
    .restart local v2    # "missingFile":Ljava/io/File;
    goto :goto_0

    .line 102
    .end local v2    # "missingFile":Ljava/io/File;
    .restart local p1    # "missingFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "Error getting ApplicationInfo"

    invoke-interface {v3, v4, v5, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static createBinaryImageJson(Ljava/lang/String;Lcom/crashlytics/android/core/ProcMapEntry;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "mapEntry"    # Lcom/crashlytics/android/core/ProcMapEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 123
    .local v0, "binaryImage":Lorg/json/JSONObject;
    const-string v1, "base_address"

    iget-wide v2, p1, Lcom/crashlytics/android/core/ProcMapEntry;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 124
    const-string v1, "size"

    iget-wide v2, p1, Lcom/crashlytics/android/core/ProcMapEntry;->size:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 125
    const-string v1, "name"

    iget-object v2, p1, Lcom/crashlytics/android/core/ProcMapEntry;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v1, "uuid"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    return-object v0
.end method

.method private static generateBinaryImagesJsonString(Lorg/json/JSONArray;)[B
    .locals 5
    .param p0, "binaryImages"    # Lorg/json/JSONArray;

    .prologue
    .line 110
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 112
    .local v0, "binaryImagesObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "binary_images"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    :goto_0
    return-object v2

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Binary images string is null"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    const/4 v2, 0x0

    new-array v2, v2, [B

    goto :goto_0
.end method

.method private getLibraryFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "libFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/BinaryImagesConverter;->correctDataPath(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 89
    :cond_0
    return-object v0
.end method

.method private static isRelevant(Lcom/crashlytics/android/core/ProcMapEntry;)Z
    .locals 3
    .param p0, "mapEntry"    # Lcom/crashlytics/android/core/ProcMapEntry;

    .prologue
    const/4 v2, -0x1

    .line 139
    iget-object v0, p0, Lcom/crashlytics/android/core/ProcMapEntry;->perms:Ljava/lang/String;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/ProcMapEntry;->path:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static joinMapsEntries(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 133
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parseProcMapsJson(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 17
    .param p1, "rawProcMapsString"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 44
    .local v2, "binaryImagesJson":Lorg/json/JSONArray;
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    .local v11, "rawObj":Lorg/json/JSONObject;
    const-string v13, "maps"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 46
    .local v7, "maps":Lorg/json/JSONArray;
    invoke-static {v7}, Lcom/crashlytics/android/core/BinaryImagesConverter;->joinMapsEntries(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 52
    .local v9, "mapsString":Ljava/lang/String;
    const-string v13, "\\|"

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, "mapsEntries":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v13, v8

    if-ge v4, v13, :cond_1

    .line 55
    aget-object v5, v8, v4

    .line 56
    .local v5, "mapEntryString":Ljava/lang/String;
    invoke-static {v5}, Lcom/crashlytics/android/core/ProcMapEntryParser;->parse(Ljava/lang/String;)Lcom/crashlytics/android/core/ProcMapEntry;

    move-result-object v6

    .line 58
    .local v6, "mapInfo":Lcom/crashlytics/android/core/ProcMapEntry;
    if-eqz v6, :cond_0

    invoke-static {v6}, Lcom/crashlytics/android/core/BinaryImagesConverter;->isRelevant(Lcom/crashlytics/android/core/ProcMapEntry;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 54
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 47
    .end local v4    # "i":I
    .end local v5    # "mapEntryString":Ljava/lang/String;
    .end local v6    # "mapInfo":Lcom/crashlytics/android/core/ProcMapEntry;
    .end local v7    # "maps":Lorg/json/JSONArray;
    .end local v8    # "mapsEntries":[Ljava/lang/String;
    .end local v9    # "mapsString":Ljava/lang/String;
    .end local v11    # "rawObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 48
    .local v3, "e":Lorg/json/JSONException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v13

    const-string v14, "CrashlyticsCore"

    const-string v15, "Unable to parse proc maps string"

    invoke-interface {v13, v14, v15, v3}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_1
    return-object v2

    .line 62
    .restart local v4    # "i":I
    .restart local v5    # "mapEntryString":Ljava/lang/String;
    .restart local v6    # "mapInfo":Lcom/crashlytics/android/core/ProcMapEntry;
    .restart local v7    # "maps":Lorg/json/JSONArray;
    .restart local v8    # "mapsEntries":[Ljava/lang/String;
    .restart local v9    # "mapsString":Ljava/lang/String;
    .restart local v11    # "rawObj":Lorg/json/JSONObject;
    :cond_2
    iget-object v10, v6, Lcom/crashlytics/android/core/ProcMapEntry;->path:Ljava/lang/String;

    .line 63
    .local v10, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/crashlytics/android/core/BinaryImagesConverter;->getLibraryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 67
    .local v1, "binFile":Ljava/io/File;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/crashlytics/android/core/BinaryImagesConverter;->fileIdStrategy:Lcom/crashlytics/android/core/BinaryImagesConverter$FileIdStrategy;

    invoke-interface {v13, v1}, Lcom/crashlytics/android/core/BinaryImagesConverter$FileIdStrategy;->createId(Ljava/io/File;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v12

    .line 75
    .local v12, "uuid":Ljava/lang/String;
    :try_start_2
    invoke-static {v12, v6}, Lcom/crashlytics/android/core/BinaryImagesConverter;->createBinaryImageJson(Ljava/lang/String;Lcom/crashlytics/android/core/ProcMapEntry;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 76
    :catch_1
    move-exception v3

    .line 77
    .restart local v3    # "e":Lorg/json/JSONException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v13

    const-string v14, "CrashlyticsCore"

    const-string v15, "Could not create a binary image json string"

    invoke-interface {v13, v14, v15, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 68
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v12    # "uuid":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 69
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v13

    const-string v14, "CrashlyticsCore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not generate ID for file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v6, Lcom/crashlytics/android/core/ProcMapEntry;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method convert(Ljava/lang/String;)[B
    .locals 2
    .param p1, "raw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/BinaryImagesConverter;->parseProcMapsJson(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 34
    .local v0, "binaryImagesJson":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/crashlytics/android/core/BinaryImagesConverter;->generateBinaryImagesJsonString(Lorg/json/JSONArray;)[B

    move-result-object v1

    .line 36
    .local v1, "binaryImagesJsonString":[B
    return-object v1
.end method
