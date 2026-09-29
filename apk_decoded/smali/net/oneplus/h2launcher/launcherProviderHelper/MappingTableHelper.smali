.class public Lnet/oneplus/h2launcher/launcherProviderHelper/MappingTableHelper;
.super Ljava/lang/Object;
.source "MappingTableHelper.java"


# static fields
.field public static final APP_CM_MAPPING_JSON:Ljava/lang/String; = "appCnMapping.json"

.field public static final KEY_APP:Ljava/lang/String; = "app"

.field public static final KEY_DST:Ljava/lang/String; = "dst"

.field public static final KEY_SRC:Ljava/lang/String; = "src"

.field private static final TAG:Ljava/lang/String; = "MappingTableHelper"

.field public static final VALUE_DELETE:Ljava/lang/String; = "delete"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAppMappingTable(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lnet/oneplus/h2launcher/launcherProviderHelper/MappingTableHelper;->loadJSONFromAsset(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 25
    .local v6, "json":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v4, "hashMapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/content/ComponentName;>;"
    if-eqz v6, :cond_4

    .line 29
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v8, "obj":Lorg/json/JSONObject;
    const-string v11, "app"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 31
    .local v7, "jsonArray":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .line 32
    .local v10, "srcName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 33
    .local v2, "dstName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 34
    .local v9, "srcCn":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 36
    .local v1, "dstCn":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 37
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 38
    .local v0, "appObj":Lorg/json/JSONObject;
    const-string v11, "src"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 39
    const-string v11, "dst"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v1, 0x0

    .line 43
    if-eqz v10, :cond_0

    .line 44
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 45
    :cond_0
    if-eqz v2, :cond_3

    .line 46
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 51
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    .line 52
    invoke-virtual {v4, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 47
    :cond_3
    const-string v11, "delete"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v2, v11, :cond_1

    .line 48
    const/4 v1, 0x0

    goto :goto_1

    .line 56
    .end local v0    # "appObj":Lorg/json/JSONObject;
    .end local v1    # "dstCn":Landroid/content/ComponentName;
    .end local v2    # "dstName":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "obj":Lorg/json/JSONObject;
    .end local v9    # "srcCn":Landroid/content/ComponentName;
    .end local v10    # "srcName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 57
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 62
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_4
    :goto_2
    return-object v4

    .line 58
    :catch_1
    move-exception v3

    .line 59
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static loadJSONFromAsset(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v3, 0x0

    .line 68
    .local v3, "json":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "appCnMapping.json"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 69
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 70
    .local v5, "size":I
    new-array v0, v5, [B

    .line 71
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 72
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 73
    new-instance v4, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v4, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "json":Ljava/lang/String;
    .local v4, "json":Ljava/lang/String;
    move-object v3, v4

    .line 79
    .end local v0    # "buffer":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "json":Ljava/lang/String;
    .end local v5    # "size":I
    .restart local v3    # "json":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    const/4 v4, 0x0

    goto :goto_0
.end method
