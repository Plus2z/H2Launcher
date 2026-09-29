.class Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;
.super Ljava/lang/Object;
.source "DynamicIconConfigCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/DynamicIconConfigCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreloadIconTask"
.end annotation


# instance fields
.field private final mApps:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mAssetPackName:Ljava/lang/String;

.field private mFinish:Z

.field private final mResources:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSerial:J

.field final synthetic this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/DynamicIconConfigCache;Ljava/lang/String;J[Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/DynamicIconConfigCache;
    .param p2, "assetPackName"    # Ljava/lang/String;
    .param p3, "userSerial"    # J
    .param p5, "refreshApps"    # [Landroid/content/ComponentName;

    .prologue
    .line 278
    iput-object p1, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p2, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->mAssetPackName:Ljava/lang/String;

    .line 280
    iput-wide p3, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->mUserSerial:J

    .line 281
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->mApps:Ljava/util/Stack;

    .line 282
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->mResources:Ljava/util/HashSet;

    .line 283
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p5

    if-ge v0, v1, :cond_0

    .line 284
    iget-object v1, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->mApps:Ljava/util/Stack;

    aget-object v2, p5, v0

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->mFinish:Z

    .line 287
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 291
    iget-object v8, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->mApps:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 292
    iget-object v8, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->mApps:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 293
    .local v0, "app":Landroid/content/ComponentName;
    new-instance v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    iget-object v8, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->mAssetPackName:Ljava/lang/String;

    invoke-direct {v1, v8}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    const/4 v2, 0x0

    .line 295
    .local v2, "dynamicIconByte":[B
    const-string v8, "none"

    iget-object v9, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->mAssetPackName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 296
    iget-object v8, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-static {v8}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->access$200(Lnet/oneplus/h2launcher/DynamicIconConfigCache;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v8, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-static {v8}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->access$300(Lnet/oneplus/h2launcher/DynamicIconConfigCache;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 297
    .local v6, "stream":Ljava/io/InputStream;
    const v8, 0x64000

    new-array v2, v8, [B

    .line 299
    :try_start_0
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    .line 300
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->parseConfig([B)Z

    .line 305
    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->verifyConfig(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)Z

    .line 316
    .end local v6    # "stream":Ljava/io/InputStream;
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->isValid()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 317
    iget-object v8, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->mResources:Ljava/util/HashSet;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->getAllDrawableResource()Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 318
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 319
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "profileId"

    iget-wide v10, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->mUserSerial:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 320
    const-string v8, "componentName"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v8, "assetPackName"

    iget-object v9, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->mAssetPackName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v8, "config"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 323
    iget-object v8, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-static {v8}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->access$200(Lnet/oneplus/h2launcher/DynamicIconConfigCache;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lnet/oneplus/h2launcher/IconProvider;->DYNAMIC_ICON_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 325
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->scheduleNext()V

    .line 333
    .end local v0    # "app":Landroid/content/ComponentName;
    .end local v1    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    .end local v2    # "dynamicIconByte":[B
    :goto_2
    return-void

    .line 301
    .restart local v0    # "app":Landroid/content/ComponentName;
    .restart local v1    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    .restart local v2    # "dynamicIconByte":[B
    .restart local v6    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 302
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 307
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "stream":Ljava/io/InputStream;
    :cond_2
    iget-object v8, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    iget-object v8, v8, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    iget-object v9, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->mAssetPackName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/AssetCache;->loadAssetPack(Ljava/lang/String;)Lnet/oneplus/h2launcher/IconPackHelper;

    move-result-object v4

    .line 308
    .local v4, "helper":Lnet/oneplus/h2launcher/IconPackHelper;
    if-eqz v4, :cond_0

    .line 309
    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/IconPackHelper;->getResourceIdForComponentNameDynamicIcon(Landroid/content/ComponentName;)I

    move-result v5

    .line 310
    .local v5, "id":I
    if-eqz v5, :cond_0

    .line 311
    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/IconPackHelper;->getDynamicIconForComponentName(Landroid/content/ComponentName;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-virtual {v1, v8}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->parseConfig(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 312
    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/IconPackHelper;->getDynamicIconByte(I)[B

    move-result-object v2

    goto :goto_1

    .line 327
    .end local v0    # "app":Landroid/content/ComponentName;
    .end local v1    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
    .end local v2    # "dynamicIconByte":[B
    .end local v4    # "helper":Lnet/oneplus/h2launcher/IconPackHelper;
    .end local v5    # "id":I
    :cond_3
    iget-boolean v8, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->mFinish:Z

    if-nez v8, :cond_4

    .line 328
    const/4 v8, 0x1

    iput-boolean v8, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->mFinish:Z

    .line 329
    iget-object v8, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    iget-object v8, v8, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    iget-object v9, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->mResources:Ljava/util/HashSet;

    iget-object v10, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->mAssetPackName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lnet/oneplus/h2launcher/AssetCache;->preloadDynamicIconDrawable(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 331
    :cond_4
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->scheduleNextTask()V

    goto :goto_2
.end method

.method public scheduleNext()V
    .locals 6

    .prologue
    .line 336
    iget-object v0, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    iget-object v0, v0, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v1, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->PRELOAD_ICON_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 337
    return-void
.end method

.method public scheduleNextTask()V
    .locals 8

    .prologue
    .line 340
    iget-object v1, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-static {v1}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->access$100(Lnet/oneplus/h2launcher/DynamicIconConfigCache;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 341
    iget-object v1, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-static {v1}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->access$100(Lnet/oneplus/h2launcher/DynamicIconConfigCache;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 342
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->access$002(Lnet/oneplus/h2launcher/DynamicIconConfigCache;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 343
    iget-object v1, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    iget-object v1, v1, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v2, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->PRELOAD_ICON_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 347
    .end local v0    # "r":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/DynamicIconConfigCache$PreloadIconTask;->this$0:Lnet/oneplus/h2launcher/DynamicIconConfigCache;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/DynamicIconConfigCache;->access$002(Lnet/oneplus/h2launcher/DynamicIconConfigCache;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method
