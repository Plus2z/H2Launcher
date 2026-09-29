.class public Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;
.super Ljava/lang/Object;
.source "WallpaperPreferenceMigration.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field static final WALLPAPER_PREFERENCE_VERSION:I = 0x1

.field private static final sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-class v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    .line 23
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    const-string v1, "wallpaper_0"

    const-string v2, "wallpaper_18"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    const-string v1, "wallpaper_1"

    const-string v2, "wallpaper_19"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    const-string v1, "wallpaper_2"

    const-string v2, "wallpaper_20"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    const-string v1, "wallpaper_3"

    const-string v2, "wallpaper_21"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    const-string v1, "wallpaper_4"

    const-string v2, "wallpaper_22"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    const-string v1, "wallpaper_5"

    const-string v2, "wallpaper_23"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    const-string v1, "wallpaper_6"

    const-string v2, "wallpaper_1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    const-string v1, "wallpaper_7"

    const-string v2, "wallpaper_2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    const-string v1, "wallpaper_8"

    const-string v2, "wallpaper_3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    const-string v1, "wallpaper_9"

    const-string v2, "wallpaper_4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    const-string v1, "wallpaper_10"

    const-string v2, "wallpaper_5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    const-string v1, "wallpaper_11"

    const-string v2, "wallpaper_16"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    const-string v1, "wallpaper_12"

    const-string v2, "wallpaper_6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    const-string v1, "wallpaper_13"

    const-string v2, "wallpaper_8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    const-string v1, "wallpaper_14"

    const-string v2, "wallpaper_9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    const-string v1, "wallpaper_15"

    const-string v2, "wallpaper_10"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    const-string v1, "wallpaper_16"

    const-string v2, "wallpaper_13"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onUpgrade(Landroid/content/Context;II)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 43
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->TAG:Ljava/lang/String;

    const-string v1, "onUpgrade: oldVersion=%d, newVersion=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    packed-switch p1, :pswitch_data_0

    .line 57
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->TAG:Ljava/lang/String;

    const-string v1, "wallpaper preference migration failed"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 49
    :pswitch_0
    invoke-static {p0}, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->updateResourceEntryName(Landroid/content/Context;)V

    .line 53
    :pswitch_1
    sget-object v0, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->TAG:Ljava/lang/String;

    const-string v1, "wallpaper preference migrated successfully"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static updateOnePlus3TResourceEntryName(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 70
    invoke-static {p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getRawWallpaperTile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "tileValue":Ljava/lang/String;
    sget-object v10, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->TAG:Ljava/lang/String;

    const-string v11, "current wallpaper tile info is %s"

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v6, v12, v13

    invoke-static {v10, v11, v12}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 74
    sget-object v10, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->TAG:Ljava/lang/String;

    const-string v11, "current wallpaper tile is empty, skip update res entry name"

    invoke-static {v10, v11}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-static {p0, v6}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->correctLauncherPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v5, "tile":Lorg/json/JSONObject;
    const-string v10, "type"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, "typeValue":Ljava/lang/String;
    invoke-static {v9}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->fromString(Ljava/lang/String;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    move-result-object v8

    .line 89
    .local v8, "type":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;
    sget-object v10, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->RESOURCE:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    invoke-virtual {v10, v8}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 90
    sget-object v10, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->TAG:Ljava/lang/String;

    const-string v11, "no need to update res entry name for type %s, skip migration"

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v8, v12, v13

    invoke-static {v10, v11, v12}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    .end local v5    # "tile":Lorg/json/JSONObject;
    .end local v8    # "type":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;
    .end local v9    # "typeValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lorg/json/JSONException;
    sget-object v10, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cannot create wallpaper tile info from JSON, error="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v5    # "tile":Lorg/json/JSONObject;
    .restart local v8    # "type":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;
    .restart local v9    # "typeValue":Ljava/lang/String;
    :cond_2
    const-string v10, "name"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 96
    sget-object v10, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->TAG:Ljava/lang/String;

    const-string v11, "empty wallpaper name, skip migration"

    invoke-static {v10, v11}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_3
    sget-object v10, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->sOnePlus3TWallpaperResEntryNameMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 103
    .local v2, "from":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 104
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 105
    .local v7, "to":Ljava/lang/String;
    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->deserialize(Landroid/content/Context;Ljava/lang/String;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v4

    .line 106
    .local v4, "newTile":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    if-nez v4, :cond_5

    .line 107
    sget-object v10, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->TAG:Ljava/lang/String;

    const-string v11, "failed to migrate wallpaper preference"

    invoke-static {v10, v11}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_5
    invoke-static {p0, v4}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperTile(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    goto/16 :goto_0
.end method

.method private static updateResourceEntryName(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->getDeviceTag()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "device":Ljava/lang/String;
    sget-object v1, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->TAG:Ljava/lang/String;

    const-string v2, "device is %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    const-string v1, "15811"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-static {p0}, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->updateOnePlus3TResourceEntryName(Landroid/content/Context;)V

    .line 67
    :cond_0
    return-void
.end method
